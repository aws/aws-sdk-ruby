# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SageMakerGeospatial
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The geographic extent of the Earth Observation job.
    #
    # @note AreaOfInterest is a union - when making an API calls you must set exactly one of the members.
    #
    # @note AreaOfInterest is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AreaOfInterest corresponding to the set member.
    #
    # @!attribute [rw] area_of_interest_geometry
    #   A GeoJSON object representing the geographic extent in the
    #   coordinate space.
    #   @return [Types::AreaOfInterestGeometry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/AreaOfInterest AWS API Documentation
    #
    class AreaOfInterest < Struct.new(
      :area_of_interest_geometry,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AreaOfInterestGeometry < AreaOfInterest; end
      class Unknown < AreaOfInterest; end
    end

    # A GeoJSON object representing the geographic extent in the coordinate
    # space.
    #
    # @note AreaOfInterestGeometry is a union - when making an API calls you must set exactly one of the members.
    #
    # @note AreaOfInterestGeometry is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AreaOfInterestGeometry corresponding to the set member.
    #
    # @!attribute [rw] multi_polygon_geometry
    #   The structure representing the MultiPolygon Geometry.
    #   @return [Types::MultiPolygonGeometryInput]
    #
    # @!attribute [rw] polygon_geometry
    #   The structure representing Polygon Geometry.
    #   @return [Types::PolygonGeometryInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/AreaOfInterestGeometry AWS API Documentation
    #
    class AreaOfInterestGeometry < Struct.new(
      :multi_polygon_geometry,
      :polygon_geometry,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MultiPolygonGeometry < AreaOfInterestGeometry; end
      class PolygonGeometry < AreaOfInterestGeometry; end
      class Unknown < AreaOfInterestGeometry; end
    end

    # The structure containing the asset properties.
    #
    # @!attribute [rw] href
    #   Link to the asset object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/AssetValue AWS API Documentation
    #
    class AssetValue < Struct.new(
      :href)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input structure for the BandMath operation type. Defines Predefined
    # and CustomIndices to be computed using BandMath.
    #
    # @!attribute [rw] custom_indices
    #   CustomIndices that are computed.
    #   @return [Types::CustomIndicesInput]
    #
    # @!attribute [rw] predefined_indices
    #   One or many of the supported predefined indices to compute. Allowed
    #   values: `NDVI`, `EVI2`, `MSAVI`, `NDWI`, `NDMI`, `NDSI`, and
    #   `WDRVI`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/BandMathConfigInput AWS API Documentation
    #
    class BandMathConfigInput < Struct.new(
      :custom_indices,
      :predefined_indices)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input structure for CloudMasking operation type.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/CloudMaskingConfigInput AWS API Documentation
    #
    class CloudMaskingConfigInput < Aws::EmptyStructure; end

    # Input structure for Cloud Removal Operation type
    #
    # @!attribute [rw] algorithm_name
    #   The name of the algorithm used for cloud removal.
    #   @return [String]
    #
    # @!attribute [rw] interpolation_value
    #   The interpolation value you provide for cloud removal.
    #   @return [String]
    #
    # @!attribute [rw] target_bands
    #   TargetBands to be returned in the output of CloudRemoval operation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/CloudRemovalConfigInput AWS API Documentation
    #
    class CloudRemovalConfigInput < Struct.new(
      :algorithm_name,
      :interpolation_value,
      :target_bands)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updating or deleting a resource can cause an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource affected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input object defining the custom BandMath indices to compute.
    #
    # @!attribute [rw] operations
    #   A list of BandMath indices to compute.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/CustomIndicesInput AWS API Documentation
    #
    class CustomIndicesInput < Struct.new(
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Earth Observation job being
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/DeleteEarthObservationJobInput AWS API Documentation
    #
    class DeleteEarthObservationJobInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/DeleteEarthObservationJobOutput AWS API Documentation
    #
    class DeleteEarthObservationJobOutput < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Vector Enrichment job being
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/DeleteVectorEnrichmentJobInput AWS API Documentation
    #
    class DeleteVectorEnrichmentJobInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/DeleteVectorEnrichmentJobOutput AWS API Documentation
    #
    class DeleteVectorEnrichmentJobOutput < Aws::EmptyStructure; end

    # The structure representing the errors in an EarthObservationJob.
    #
    # @!attribute [rw] message
    #   A detailed message describing the error in an Earth Observation job.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of error in an Earth Observation job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/EarthObservationJobErrorDetails AWS API Documentation
    #
    class EarthObservationJobErrorDetails < Struct.new(
      :message,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the EoCloudCover filter.
    #
    # @!attribute [rw] lower_bound
    #   Lower bound for EoCloudCover.
    #   @return [Float]
    #
    # @!attribute [rw] upper_bound
    #   Upper bound for EoCloudCover.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/EoCloudCoverInput AWS API Documentation
    #
    class EoCloudCoverInput < Struct.new(
      :lower_bound,
      :upper_bound)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The input Amazon Resource Name (ARN) of the Earth Observation job
    #   being exported.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique token that guarantees that the call to this API is
    #   idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that you specified
    #   for the job.
    #   @return [String]
    #
    # @!attribute [rw] export_source_images
    #   The source images provided to the Earth Observation job being
    #   exported.
    #   @return [Boolean]
    #
    # @!attribute [rw] output_config
    #   An object containing information about the output file.
    #   @return [Types::OutputConfigInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ExportEarthObservationJobInput AWS API Documentation
    #
    class ExportEarthObservationJobInput < Struct.new(
      :arn,
      :client_token,
      :execution_role_arn,
      :export_source_images,
      :output_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The output Amazon Resource Name (ARN) of the Earth Observation job
    #   being exported.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time.
    #   @return [Time]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that you specified
    #   for the job.
    #   @return [String]
    #
    # @!attribute [rw] export_source_images
    #   The source images provided to the Earth Observation job being
    #   exported.
    #   @return [Boolean]
    #
    # @!attribute [rw] export_status
    #   The status of the results of the Earth Observation job being
    #   exported.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   An object containing information about the output file.
    #   @return [Types::OutputConfigInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ExportEarthObservationJobOutput AWS API Documentation
    #
    class ExportEarthObservationJobOutput < Struct.new(
      :arn,
      :creation_time,
      :execution_role_arn,
      :export_source_images,
      :export_status,
      :output_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure for returning the export error details in a
    # GetEarthObservationJob.
    #
    # @!attribute [rw] export_results
    #   The structure for returning the export error details while exporting
    #   results of an Earth Observation job.
    #   @return [Types::ExportErrorDetailsOutput]
    #
    # @!attribute [rw] export_source_images
    #   The structure for returning the export error details while exporting
    #   the source images of an Earth Observation job.
    #   @return [Types::ExportErrorDetailsOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ExportErrorDetails AWS API Documentation
    #
    class ExportErrorDetails < Struct.new(
      :export_results,
      :export_source_images)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the errors in an export EarthObservationJob
    # operation.
    #
    # @!attribute [rw] message
    #   A detailed message describing the error in an export
    #   EarthObservationJob operation.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of error in an export EarthObservationJob operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ExportErrorDetailsOutput AWS API Documentation
    #
    class ExportErrorDetailsOutput < Struct.new(
      :message,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure containing the Amazon S3 path to export the Earth
    # Observation job output.
    #
    # @!attribute [rw] kms_key_id
    #   The Key Management Service key ID for server-side encryption.
    #   @return [String]
    #
    # @!attribute [rw] s3_uri
    #   The URL to the Amazon S3 data input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ExportS3DataInput AWS API Documentation
    #
    class ExportS3DataInput < Struct.new(
      :kms_key_id,
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Vector Enrichment job.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique token that guarantees that the call to this API is
    #   idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM rolewith permission to
    #   upload to the location in OutputConfig.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   Output location information for exporting Vector Enrichment Job
    #   results.
    #   @return [Types::ExportVectorEnrichmentJobOutputConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ExportVectorEnrichmentJobInput AWS API Documentation
    #
    class ExportVectorEnrichmentJobInput < Struct.new(
      :arn,
      :client_token,
      :execution_role_arn,
      :output_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Vector Enrichment job being
    #   exported.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time.
    #   @return [Time]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role with permission to
    #   upload to the location in OutputConfig.
    #   @return [String]
    #
    # @!attribute [rw] export_status
    #   The status of the results the Vector Enrichment job being exported.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   Output location information for exporting Vector Enrichment Job
    #   results.
    #   @return [Types::ExportVectorEnrichmentJobOutputConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ExportVectorEnrichmentJobOutput AWS API Documentation
    #
    class ExportVectorEnrichmentJobOutput < Struct.new(
      :arn,
      :creation_time,
      :execution_role_arn,
      :export_status,
      :output_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing information about the output file.
    #
    # @!attribute [rw] s3_data
    #   The input structure for Amazon S3 data; representing the Amazon S3
    #   location of the input data objects.
    #   @return [Types::VectorEnrichmentJobS3Data]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ExportVectorEnrichmentJobOutputConfig AWS API Documentation
    #
    class ExportVectorEnrichmentJobOutputConfig < Struct.new(
      :s3_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the filters supported by a
    # RasterDataCollection.
    #
    # @!attribute [rw] maximum
    #   The maximum value of the filter.
    #   @return [Float]
    #
    # @!attribute [rw] minimum
    #   The minimum value of the filter.
    #   @return [Float]
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the filter being used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :maximum,
      :minimum,
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input configuration information for the geomosaic.
    #
    # @!attribute [rw] algorithm_name
    #   The name of the algorithm being used for geomosaic.
    #   @return [String]
    #
    # @!attribute [rw] target_bands
    #   The target bands for geomosaic.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/GeoMosaicConfigInput AWS API Documentation
    #
    class GeoMosaicConfigInput < Struct.new(
      :algorithm_name,
      :target_bands)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing a Geometry in terms of Type and Coordinates
    # as per GeoJson spec.
    #
    # @!attribute [rw] coordinates
    #   The coordinates of the GeoJson Geometry.
    #   @return [Array<Array<Array<Float>>>]
    #
    # @!attribute [rw] type
    #   GeoJson Geometry types like Polygon and MultiPolygon.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/Geometry AWS API Documentation
    #
    class Geometry < Struct.new(
      :coordinates,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Earth Observation job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/GetEarthObservationJobInput AWS API Documentation
    #
    class GetEarthObservationJobInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Earth Observation job.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the initiated Earth Observation job.
    #   @return [Time]
    #
    # @!attribute [rw] duration_in_seconds
    #   The duration of Earth Observation job, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] error_details
    #   Details about the errors generated during the Earth Observation job.
    #   @return [Types::EarthObservationJobErrorDetails]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that you specified
    #   for the job.
    #   @return [String]
    #
    # @!attribute [rw] export_error_details
    #   Details about the errors generated during ExportEarthObservationJob.
    #   @return [Types::ExportErrorDetails]
    #
    # @!attribute [rw] export_status
    #   The status of the Earth Observation job.
    #   @return [String]
    #
    # @!attribute [rw] input_config
    #   Input data for the Earth Observation job.
    #   @return [Types::InputConfigOutput]
    #
    # @!attribute [rw] job_config
    #   An object containing information about the job configuration.
    #   @return [Types::JobConfigInput]
    #
    # @!attribute [rw] kms_key_id
    #   The Key Management Service key ID for server-side encryption.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Earth Observation job.
    #   @return [String]
    #
    # @!attribute [rw] output_bands
    #   Bands available in the output of an operation.
    #   @return [Array<Types::OutputBand>]
    #
    # @!attribute [rw] status
    #   The status of a previously initiated Earth Observation job.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Each tag consists of a key and a value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/GetEarthObservationJobOutput AWS API Documentation
    #
    class GetEarthObservationJobOutput < Struct.new(
      :arn,
      :creation_time,
      :duration_in_seconds,
      :error_details,
      :execution_role_arn,
      :export_error_details,
      :export_status,
      :input_config,
      :job_config,
      :kms_key_id,
      :name,
      :output_bands,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the raster data collection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/GetRasterDataCollectionInput AWS API Documentation
    #
    class GetRasterDataCollectionInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the raster data collection.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the raster data collection.
    #   @return [String]
    #
    # @!attribute [rw] description_page_url
    #   The URL of the description page.
    #   @return [String]
    #
    # @!attribute [rw] image_source_bands
    #   The list of image source bands in the raster data collection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the raster data collection.
    #   @return [String]
    #
    # @!attribute [rw] supported_filters
    #   The filters supported by the raster data collection.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] tags
    #   Each tag consists of a key and a value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The raster data collection type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/GetRasterDataCollectionOutput AWS API Documentation
    #
    class GetRasterDataCollectionOutput < Struct.new(
      :arn,
      :description,
      :description_page_url,
      :image_source_bands,
      :name,
      :supported_filters,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the tile operation.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that you specify.
    #   @return [String]
    #
    # @!attribute [rw] image_assets
    #   The particular assets or bands to tile.
    #   @return [Array<String>]
    #
    # @!attribute [rw] image_mask
    #   Determines whether or not to return a valid data mask.
    #   @return [Boolean]
    #
    # @!attribute [rw] output_data_type
    #   The output data type of the tile operation.
    #   @return [String]
    #
    # @!attribute [rw] output_format
    #   The data format of the output tile. The formats include .npy, .png
    #   and .jpg.
    #   @return [String]
    #
    # @!attribute [rw] property_filters
    #   Property filters for the imagery to tile.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   Determines what part of the Earth Observation job to tile. 'INPUT'
    #   or 'OUTPUT' are the valid options.
    #   @return [String]
    #
    # @!attribute [rw] time_range_filter
    #   Time range filter applied to imagery to find the images to tile.
    #   @return [String]
    #
    # @!attribute [rw] x
    #   The x coordinate of the tile input.
    #   @return [Integer]
    #
    # @!attribute [rw] y
    #   The y coordinate of the tile input.
    #   @return [Integer]
    #
    # @!attribute [rw] z
    #   The z coordinate of the tile input.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/GetTileInput AWS API Documentation
    #
    class GetTileInput < Struct.new(
      :arn,
      :execution_role_arn,
      :image_assets,
      :image_mask,
      :output_data_type,
      :output_format,
      :property_filters,
      :target,
      :time_range_filter,
      :x,
      :y,
      :z)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] binary_file
    #   The output binary file.
    #   @return [IO]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/GetTileOutput AWS API Documentation
    #
    class GetTileOutput < Struct.new(
      :binary_file)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Vector Enrichment job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/GetVectorEnrichmentJobInput AWS API Documentation
    #
    class GetVectorEnrichmentJobInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Vector Enrichment job.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time.
    #   @return [Time]
    #
    # @!attribute [rw] duration_in_seconds
    #   The duration of the Vector Enrichment job, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] error_details
    #   Details about the errors generated during the Vector Enrichment job.
    #   @return [Types::VectorEnrichmentJobErrorDetails]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that you specified
    #   for the job.
    #   @return [String]
    #
    # @!attribute [rw] export_error_details
    #   Details about the errors generated during the
    #   ExportVectorEnrichmentJob.
    #   @return [Types::VectorEnrichmentJobExportErrorDetails]
    #
    # @!attribute [rw] export_status
    #   The export status of the Vector Enrichment job being initiated.
    #   @return [String]
    #
    # @!attribute [rw] input_config
    #   Input configuration information for the Vector Enrichment job.
    #   @return [Types::VectorEnrichmentJobInputConfig]
    #
    # @!attribute [rw] job_config
    #   An object containing information about the job configuration.
    #   @return [Types::VectorEnrichmentJobConfig]
    #
    # @!attribute [rw] kms_key_id
    #   The Key Management Service key ID for server-side encryption.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Vector Enrichment job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the initiated Vector Enrichment job.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Each tag consists of a key and a value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of the Vector Enrichment job being initiated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/GetVectorEnrichmentJobOutput AWS API Documentation
    #
    class GetVectorEnrichmentJobOutput < Struct.new(
      :arn,
      :creation_time,
      :duration_in_seconds,
      :error_details,
      :execution_role_arn,
      :export_error_details,
      :export_status,
      :input_config,
      :job_config,
      :kms_key_id,
      :name,
      :status,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input configuration information.
    #
    # @!attribute [rw] previous_earth_observation_job_arn
    #   The Amazon Resource Name (ARN) of the previous Earth Observation
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] raster_data_collection_query
    #   The structure representing the RasterDataCollection Query consisting
    #   of the Area of Interest, RasterDataCollectionArn,TimeRange and
    #   Property Filters.
    #   @return [Types::RasterDataCollectionQueryInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/InputConfigInput AWS API Documentation
    #
    class InputConfigInput < Struct.new(
      :previous_earth_observation_job_arn,
      :raster_data_collection_query)
      SENSITIVE = []
      include Aws::Structure
    end

    # The InputConfig for an EarthObservationJob response.
    #
    # @!attribute [rw] previous_earth_observation_job_arn
    #   The Amazon Resource Name (ARN) of the previous Earth Observation
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] raster_data_collection_query
    #   The structure representing the RasterDataCollection Query consisting
    #   of the Area of Interest, RasterDataCollectionArn,
    #   RasterDataCollectionName, TimeRange, and Property Filters.
    #   @return [Types::RasterDataCollectionQueryOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/InputConfigOutput AWS API Documentation
    #
    class InputConfigOutput < Struct.new(
      :previous_earth_observation_job_arn,
      :raster_data_collection_query)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception, or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing the items in the response for
    # SearchRasterDataCollection.
    #
    # @!attribute [rw] assets
    #   This is a dictionary of Asset Objects data associated with the Item
    #   that can be downloaded or streamed, each with a unique key.
    #   @return [Hash<String,Types::AssetValue>]
    #
    # @!attribute [rw] date_time
    #   The searchable date and time of the item, in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] geometry
    #   The item Geometry in GeoJson format.
    #   @return [Types::Geometry]
    #
    # @!attribute [rw] id
    #   A unique Id for the source item.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   This field contains additional properties of the item.
    #   @return [Types::Properties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ItemSource AWS API Documentation
    #
    class ItemSource < Struct.new(
      :assets,
      :date_time,
      :geometry,
      :id,
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input structure for the JobConfig in an EarthObservationJob.
    #
    # @note JobConfigInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @note JobConfigInput is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of JobConfigInput corresponding to the set member.
    #
    # @!attribute [rw] band_math_config
    #   An object containing information about the job configuration for
    #   BandMath.
    #   @return [Types::BandMathConfigInput]
    #
    # @!attribute [rw] cloud_masking_config
    #   An object containing information about the job configuration for
    #   cloud masking.
    #   @return [Types::CloudMaskingConfigInput]
    #
    # @!attribute [rw] cloud_removal_config
    #   An object containing information about the job configuration for
    #   cloud removal.
    #   @return [Types::CloudRemovalConfigInput]
    #
    # @!attribute [rw] geo_mosaic_config
    #   An object containing information about the job configuration for
    #   geomosaic.
    #   @return [Types::GeoMosaicConfigInput]
    #
    # @!attribute [rw] land_cover_segmentation_config
    #   An object containing information about the job configuration for
    #   land cover segmentation.
    #   @return [Types::LandCoverSegmentationConfigInput]
    #
    # @!attribute [rw] resampling_config
    #   An object containing information about the job configuration for
    #   resampling.
    #   @return [Types::ResamplingConfigInput]
    #
    # @!attribute [rw] stack_config
    #   An object containing information about the job configuration for a
    #   Stacking Earth Observation job.
    #   @return [Types::StackConfigInput]
    #
    # @!attribute [rw] temporal_statistics_config
    #   An object containing information about the job configuration for
    #   temporal statistics.
    #   @return [Types::TemporalStatisticsConfigInput]
    #
    # @!attribute [rw] zonal_statistics_config
    #   An object containing information about the job configuration for
    #   zonal statistics.
    #   @return [Types::ZonalStatisticsConfigInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/JobConfigInput AWS API Documentation
    #
    class JobConfigInput < Struct.new(
      :band_math_config,
      :cloud_masking_config,
      :cloud_removal_config,
      :geo_mosaic_config,
      :land_cover_segmentation_config,
      :resampling_config,
      :stack_config,
      :temporal_statistics_config,
      :zonal_statistics_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class BandMathConfig < JobConfigInput; end
      class CloudMaskingConfig < JobConfigInput; end
      class CloudRemovalConfig < JobConfigInput; end
      class GeoMosaicConfig < JobConfigInput; end
      class LandCoverSegmentationConfig < JobConfigInput; end
      class ResamplingConfig < JobConfigInput; end
      class StackConfig < JobConfigInput; end
      class TemporalStatisticsConfig < JobConfigInput; end
      class ZonalStatisticsConfig < JobConfigInput; end
      class Unknown < JobConfigInput; end
    end

    # The input structure for Land Cover Operation type.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/LandCoverSegmentationConfigInput AWS API Documentation
    #
    class LandCoverSegmentationConfigInput < Aws::EmptyStructure; end

    # The structure representing Land Cloud Cover property for Landsat data
    # collection.
    #
    # @!attribute [rw] lower_bound
    #   The minimum value for Land Cloud Cover property filter. This will
    #   filter items having Land Cloud Cover greater than or equal to this
    #   value.
    #   @return [Float]
    #
    # @!attribute [rw] upper_bound
    #   The maximum value for Land Cloud Cover property filter. This will
    #   filter items having Land Cloud Cover less than or equal to this
    #   value.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/LandsatCloudCoverLandInput AWS API Documentation
    #
    class LandsatCloudCoverLandInput < Struct.new(
      :lower_bound,
      :upper_bound)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The total number of items to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous response was truncated, you receive this token. Use
    #   it in your next request to receive the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The parameter by which to sort the results.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   An optional value that specifies whether you want the results sorted
    #   in `Ascending` or `Descending` order.
    #   @return [String]
    #
    # @!attribute [rw] status_equals
    #   A filter that retrieves only jobs with a specific status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ListEarthObservationJobInput AWS API Documentation
    #
    class ListEarthObservationJobInput < Struct.new(
      :max_results,
      :next_token,
      :sort_by,
      :sort_order,
      :status_equals)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] earth_observation_job_summaries
    #   Contains summary information about the Earth Observation jobs.
    #   @return [Array<Types::ListEarthObservationJobOutputConfig>]
    #
    # @!attribute [rw] next_token
    #   If the previous response was truncated, you receive this token. Use
    #   it in your next request to receive the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ListEarthObservationJobOutput AWS API Documentation
    #
    class ListEarthObservationJobOutput < Struct.new(
      :earth_observation_job_summaries,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # An object containing information about the output file.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the list of the Earth Observation
    #   jobs.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time.
    #   @return [Time]
    #
    # @!attribute [rw] duration_in_seconds
    #   The duration of the session, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The names of the Earth Observation jobs in the list.
    #   @return [String]
    #
    # @!attribute [rw] operation_type
    #   The operation type for an Earth Observation job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the list of the Earth Observation jobs.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Each tag consists of a key and a value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ListEarthObservationJobOutputConfig AWS API Documentation
    #
    class ListEarthObservationJobOutputConfig < Struct.new(
      :arn,
      :creation_time,
      :duration_in_seconds,
      :name,
      :operation_type,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The total number of items to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous response was truncated, you receive this token. Use
    #   it in your next request to receive the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ListRasterDataCollectionsInput AWS API Documentation
    #
    class ListRasterDataCollectionsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the previous response was truncated, you receive this token. Use
    #   it in your next request to receive the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] raster_data_collection_summaries
    #   Contains summary information about the raster data collection.
    #   @return [Array<Types::RasterDataCollectionMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ListRasterDataCollectionsOutput AWS API Documentation
    #
    class ListRasterDataCollectionsOutput < Struct.new(
      :next_token,
      :raster_data_collection_summaries)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Each tag consists of a key and a value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous response was truncated, you receive this token. Use
    #   it in your next request to receive the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The parameter by which to sort the results.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   An optional value that specifies whether you want the results sorted
    #   in `Ascending` or `Descending` order.
    #   @return [String]
    #
    # @!attribute [rw] status_equals
    #   A filter that retrieves only jobs with a specific status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ListVectorEnrichmentJobInput AWS API Documentation
    #
    class ListVectorEnrichmentJobInput < Struct.new(
      :max_results,
      :next_token,
      :sort_by,
      :sort_order,
      :status_equals)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the previous response was truncated, you receive this token. Use
    #   it in your next request to receive the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] vector_enrichment_job_summaries
    #   Contains summary information about the Vector Enrichment jobs.
    #   @return [Array<Types::ListVectorEnrichmentJobOutputConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ListVectorEnrichmentJobOutput AWS API Documentation
    #
    class ListVectorEnrichmentJobOutput < Struct.new(
      :next_token,
      :vector_enrichment_job_summaries)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # An object containing information about the output file.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the list of the Vector Enrichment
    #   jobs.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time.
    #   @return [Time]
    #
    # @!attribute [rw] duration_in_seconds
    #   The duration of the session, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The names of the Vector Enrichment jobs in the list.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Vector Enrichment jobs list.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Each tag consists of a key and a value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of the list of Vector Enrichment jobs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ListVectorEnrichmentJobOutputConfig AWS API Documentation
    #
    class ListVectorEnrichmentJobOutputConfig < Struct.new(
      :arn,
      :creation_time,
      :duration_in_seconds,
      :name,
      :status,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input structure for Map Matching operation type.
    #
    # @!attribute [rw] id_attribute_name
    #   The field name for the data that describes the identifier
    #   representing a collection of GPS points belonging to an individual
    #   trace.
    #   @return [String]
    #
    # @!attribute [rw] timestamp_attribute_name
    #   The name of the timestamp attribute.
    #   @return [String]
    #
    # @!attribute [rw] x_attribute_name
    #   The name of the X-attribute
    #   @return [String]
    #
    # @!attribute [rw] y_attribute_name
    #   The name of the Y-attribute
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/MapMatchingConfig AWS API Documentation
    #
    class MapMatchingConfig < Struct.new(
      :id_attribute_name,
      :timestamp_attribute_name,
      :x_attribute_name,
      :y_attribute_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing Polygon Geometry based on the [GeoJson
    # spec][1].
    #
    #
    #
    # [1]: https://www.rfc-editor.org/rfc/rfc7946#section-3.1.6
    #
    # @!attribute [rw] coordinates
    #   The coordinates of the multipolygon geometry.
    #   @return [Array<Array<Array<Array<Float>>>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/MultiPolygonGeometryInput AWS API Documentation
    #
    class MultiPolygonGeometryInput < Struct.new(
      :coordinates)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an arithmetic operation to compute spectral index.
    #
    # @!attribute [rw] equation
    #   Textual representation of the math operation; Equation used to
    #   compute the spectral index.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the operation.
    #   @return [String]
    #
    # @!attribute [rw] output_type
    #   The type of the operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/Operation AWS API Documentation
    #
    class Operation < Struct.new(
      :equation,
      :name,
      :output_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single EarthObservationJob output band.
    #
    # @!attribute [rw] band_name
    #   The name of the band.
    #   @return [String]
    #
    # @!attribute [rw] output_data_type
    #   The datatype of the output band.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/OutputBand AWS API Documentation
    #
    class OutputBand < Struct.new(
      :band_name,
      :output_data_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response structure for an OutputConfig returned by an
    # ExportEarthObservationJob.
    #
    # @!attribute [rw] s3_data
    #   Path to Amazon S3 storage location for the output configuration
    #   file.
    #   @return [Types::ExportS3DataInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/OutputConfigInput AWS API Documentation
    #
    class OutputConfigInput < Struct.new(
      :s3_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # OutputResolution Configuration indicating the target resolution for
    # the output of Resampling operation.
    #
    # @!attribute [rw] user_defined
    #   User Defined Resolution for the output of Resampling operation
    #   defined by value and unit.
    #   @return [Types::UserDefined]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/OutputResolutionResamplingInput AWS API Documentation
    #
    class OutputResolutionResamplingInput < Struct.new(
      :user_defined)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input structure representing Output Resolution for Stacking
    # Operation.
    #
    # @!attribute [rw] predefined
    #   A string value representing Predefined Output Resolution for a
    #   stacking operation. Allowed values are `HIGHEST`, `LOWEST`, and
    #   `AVERAGE`.
    #   @return [String]
    #
    # @!attribute [rw] user_defined
    #   The structure representing User Output Resolution for a Stacking
    #   operation defined as a value and unit.
    #   @return [Types::UserDefined]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/OutputResolutionStackInput AWS API Documentation
    #
    class OutputResolutionStackInput < Struct.new(
      :predefined,
      :user_defined)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input structure for specifying Platform. Platform refers to the
    # unique name of the specific platform the instrument is attached to.
    # For satellites it is the name of the satellite, eg. landsat-8
    # (Landsat-8), sentinel-2a.
    #
    # @!attribute [rw] comparison_operator
    #   The ComparisonOperator to use with PlatformInput.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the platform.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/PlatformInput AWS API Documentation
    #
    class PlatformInput < Struct.new(
      :comparison_operator,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing Polygon Geometry based on the [GeoJson
    # spec][1].
    #
    #
    #
    # [1]: https://www.rfc-editor.org/rfc/rfc7946#section-3.1.6
    #
    # @!attribute [rw] coordinates
    #   Coordinates representing a Polygon based on the [GeoJson spec][1].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc7946#section-3.1.6
    #   @return [Array<Array<Array<Float>>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/PolygonGeometryInput AWS API Documentation
    #
    class PolygonGeometryInput < Struct.new(
      :coordinates)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties associated with the Item.
    #
    # @!attribute [rw] eo_cloud_cover
    #   Estimate of cloud cover.
    #   @return [Float]
    #
    # @!attribute [rw] landsat_cloud_cover_land
    #   Land cloud cover for Landsat Data Collection.
    #   @return [Float]
    #
    # @!attribute [rw] platform
    #   Platform property. Platform refers to the unique name of the
    #   specific platform the instrument is attached to. For satellites it
    #   is the name of the satellite, eg. landsat-8 (Landsat-8),
    #   sentinel-2a.
    #   @return [String]
    #
    # @!attribute [rw] view_off_nadir
    #   The angle from the sensor between nadir (straight down) and the
    #   scene center. Measured in degrees (0-90).
    #   @return [Float]
    #
    # @!attribute [rw] view_sun_azimuth
    #   The sun azimuth angle. From the scene center point on the ground,
    #   this is the angle between truth north and the sun. Measured
    #   clockwise in degrees (0-360).
    #   @return [Float]
    #
    # @!attribute [rw] view_sun_elevation
    #   The sun elevation angle. The angle from the tangent of the scene
    #   center point to the sun. Measured from the horizon in degrees
    #   (-90-90). Negative values indicate the sun is below the horizon,
    #   e.g. sun elevation of -10° means the data was captured during
    #   [nautical twilight][1].
    #
    #
    #
    #   [1]: https://www.timeanddate.com/astronomy/different-types-twilight.html
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/Properties AWS API Documentation
    #
    class Properties < Struct.new(
      :eo_cloud_cover,
      :landsat_cloud_cover_land,
      :platform,
      :view_off_nadir,
      :view_sun_azimuth,
      :view_sun_elevation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single searchable property to search on.
    #
    # @note Property is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Property is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Property corresponding to the set member.
    #
    # @!attribute [rw] eo_cloud_cover
    #   The structure representing EoCloudCover property filter containing a
    #   lower bound and upper bound.
    #   @return [Types::EoCloudCoverInput]
    #
    # @!attribute [rw] landsat_cloud_cover_land
    #   The structure representing Land Cloud Cover property filter for
    #   Landsat collection containing a lower bound and upper bound.
    #   @return [Types::LandsatCloudCoverLandInput]
    #
    # @!attribute [rw] platform
    #   The structure representing Platform property filter consisting of
    #   value and comparison operator.
    #   @return [Types::PlatformInput]
    #
    # @!attribute [rw] view_off_nadir
    #   The structure representing ViewOffNadir property filter containing a
    #   lower bound and upper bound.
    #   @return [Types::ViewOffNadirInput]
    #
    # @!attribute [rw] view_sun_azimuth
    #   The structure representing ViewSunAzimuth property filter containing
    #   a lower bound and upper bound.
    #   @return [Types::ViewSunAzimuthInput]
    #
    # @!attribute [rw] view_sun_elevation
    #   The structure representing ViewSunElevation property filter
    #   containing a lower bound and upper bound.
    #   @return [Types::ViewSunElevationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/Property AWS API Documentation
    #
    class Property < Struct.new(
      :eo_cloud_cover,
      :landsat_cloud_cover_land,
      :platform,
      :view_off_nadir,
      :view_sun_azimuth,
      :view_sun_elevation,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class EoCloudCover < Property; end
      class LandsatCloudCoverLand < Property; end
      class Platform < Property; end
      class ViewOffNadir < Property; end
      class ViewSunAzimuth < Property; end
      class ViewSunElevation < Property; end
      class Unknown < Property; end
    end

    # The structure representing a single PropertyFilter.
    #
    # @!attribute [rw] property
    #   Represents a single property to match with when searching a raster
    #   data collection.
    #   @return [Types::Property]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/PropertyFilter AWS API Documentation
    #
    class PropertyFilter < Struct.new(
      :property)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of PropertyFilter objects.
    #
    # @!attribute [rw] logical_operator
    #   The Logical Operator used to combine the Property Filters.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   A list of Property Filters.
    #   @return [Array<Types::PropertyFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/PropertyFilters AWS API Documentation
    #
    class PropertyFilters < Struct.new(
      :logical_operator,
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response object containing details for a specific
    # RasterDataCollection.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the raster data collection.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the raster data collection.
    #   @return [String]
    #
    # @!attribute [rw] description_page_url
    #   The description URL of the raster data collection.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the raster data collection.
    #   @return [String]
    #
    # @!attribute [rw] supported_filters
    #   The list of filters supported by the raster data collection.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] tags
    #   Each tag consists of a key and a value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of raster data collection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/RasterDataCollectionMetadata AWS API Documentation
    #
    class RasterDataCollectionMetadata < Struct.new(
      :arn,
      :description,
      :description_page_url,
      :name,
      :supported_filters,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input structure for Raster Data Collection Query containing the
    # Area of Interest, TimeRange Filters, and Property Filters.
    #
    # @!attribute [rw] area_of_interest
    #   The area of interest being queried for the raster data collection.
    #   @return [Types::AreaOfInterest]
    #
    # @!attribute [rw] property_filters
    #   The list of Property filters used in the Raster Data Collection
    #   Query.
    #   @return [Types::PropertyFilters]
    #
    # @!attribute [rw] raster_data_collection_arn
    #   The Amazon Resource Name (ARN) of the raster data collection.
    #   @return [String]
    #
    # @!attribute [rw] time_range_filter
    #   The TimeRange Filter used in the RasterDataCollection Query.
    #   @return [Types::TimeRangeFilterInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/RasterDataCollectionQueryInput AWS API Documentation
    #
    class RasterDataCollectionQueryInput < Struct.new(
      :area_of_interest,
      :property_filters,
      :raster_data_collection_arn,
      :time_range_filter)
      SENSITIVE = [:time_range_filter]
      include Aws::Structure
    end

    # The output structure contains the Raster Data Collection Query input
    # along with some additional metadata.
    #
    # @!attribute [rw] area_of_interest
    #   The Area of Interest used in the search.
    #   @return [Types::AreaOfInterest]
    #
    # @!attribute [rw] property_filters
    #   Property filters used in the search.
    #   @return [Types::PropertyFilters]
    #
    # @!attribute [rw] raster_data_collection_arn
    #   The ARN of the Raster Data Collection against which the search is
    #   done.
    #   @return [String]
    #
    # @!attribute [rw] raster_data_collection_name
    #   The name of the raster data collection.
    #   @return [String]
    #
    # @!attribute [rw] time_range_filter
    #   The TimeRange filter used in the search.
    #   @return [Types::TimeRangeFilterOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/RasterDataCollectionQueryOutput AWS API Documentation
    #
    class RasterDataCollectionQueryOutput < Struct.new(
      :area_of_interest,
      :property_filters,
      :raster_data_collection_arn,
      :raster_data_collection_name,
      :time_range_filter)
      SENSITIVE = [:time_range_filter]
      include Aws::Structure
    end

    # This is a RasterDataCollectionQueryInput containing AreaOfInterest,
    # Time Range filter and Property filters.
    #
    # @!attribute [rw] area_of_interest
    #   The Area of interest to be used in the search query.
    #   @return [Types::AreaOfInterest]
    #
    # @!attribute [rw] band_filter
    #   The list of Bands to be displayed in the result for each item.
    #   @return [Array<String>]
    #
    # @!attribute [rw] property_filters
    #   The Property Filters used in the search query.
    #   @return [Types::PropertyFilters]
    #
    # @!attribute [rw] time_range_filter
    #   The TimeRange Filter used in the search query.
    #   @return [Types::TimeRangeFilterInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/RasterDataCollectionQueryWithBandFilterInput AWS API Documentation
    #
    class RasterDataCollectionQueryWithBandFilterInput < Struct.new(
      :area_of_interest,
      :band_filter,
      :property_filters,
      :time_range_filter)
      SENSITIVE = [:time_range_filter]
      include Aws::Structure
    end

    # The structure representing input for resampling operation.
    #
    # @!attribute [rw] algorithm_name
    #   The name of the algorithm used for resampling.
    #   @return [String]
    #
    # @!attribute [rw] output_resolution
    #   The structure representing output resolution (in target
    #   georeferenced units) of the result of resampling operation.
    #   @return [Types::OutputResolutionResamplingInput]
    #
    # @!attribute [rw] target_bands
    #   Bands used in the operation. If no target bands are specified, it
    #   uses all bands available in the input.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ResamplingConfigInput AWS API Documentation
    #
    class ResamplingConfigInput < Struct.new(
      :algorithm_name,
      :output_resolution,
      :target_bands)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request references a resource which does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource that was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input structure for Reverse Geocoding operation type.
    #
    # @!attribute [rw] x_attribute_name
    #   The field name for the data that describes x-axis coordinate, eg.
    #   longitude of a point.
    #   @return [String]
    #
    # @!attribute [rw] y_attribute_name
    #   The field name for the data that describes y-axis coordinate, eg.
    #   latitude of a point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ReverseGeocodingConfig AWS API Documentation
    #
    class ReverseGeocodingConfig < Struct.new(
      :x_attribute_name,
      :y_attribute_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the raster data collection.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous response was truncated, you receive this token. Use
    #   it in your next request to receive the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] raster_data_collection_query
    #   RasterDataCollectionQuery consisting of [AreaOfInterest(AOI)][1],
    #   [PropertyFilters][2] and [TimeRangeFilterInput][3] used in
    #   [SearchRasterDataCollection][4].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_geospatial_AreaOfInterest.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_geospatial_PropertyFilter.html
    #   [3]: https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_geospatial_TimeRangeFilterInput.html
    #   [4]: https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_geospatial_SearchRasterDataCollection.html
    #   @return [Types::RasterDataCollectionQueryWithBandFilterInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/SearchRasterDataCollectionInput AWS API Documentation
    #
    class SearchRasterDataCollectionInput < Struct.new(
      :arn,
      :next_token,
      :raster_data_collection_query)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] approximate_result_count
    #   Approximate number of results in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   List of items matching the Raster DataCollectionQuery.
    #   @return [Array<Types::ItemSource>]
    #
    # @!attribute [rw] next_token
    #   If the previous response was truncated, you receive this token. Use
    #   it in your next request to receive the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/SearchRasterDataCollectionOutput AWS API Documentation
    #
    class SearchRasterDataCollectionOutput < Struct.new(
      :approximate_result_count,
      :items,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # You have exceeded the service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource affected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input structure for Stacking Operation.
    #
    # @!attribute [rw] output_resolution
    #   The structure representing output resolution (in target
    #   georeferenced units) of the result of stacking operation.
    #   @return [Types::OutputResolutionStackInput]
    #
    # @!attribute [rw] target_bands
    #   A list of bands to be stacked in the specified order. When the
    #   parameter is not provided, all the available bands in the data
    #   collection are stacked in the alphabetical order of their asset
    #   names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/StackConfigInput AWS API Documentation
    #
    class StackConfigInput < Struct.new(
      :output_resolution,
      :target_bands)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique token that guarantees that the call to this API is
    #   idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that you specified
    #   for the job.
    #   @return [String]
    #
    # @!attribute [rw] input_config
    #   Input configuration information for the Earth Observation job.
    #   @return [Types::InputConfigInput]
    #
    # @!attribute [rw] job_config
    #   An object containing information about the job configuration.
    #   @return [Types::JobConfigInput]
    #
    # @!attribute [rw] kms_key_id
    #   The Key Management Service key ID for server-side encryption.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Earth Observation job.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Each tag consists of a key and a value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/StartEarthObservationJobInput AWS API Documentation
    #
    class StartEarthObservationJobInput < Struct.new(
      :client_token,
      :execution_role_arn,
      :input_config,
      :job_config,
      :kms_key_id,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Earth Observation job.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time.
    #   @return [Time]
    #
    # @!attribute [rw] duration_in_seconds
    #   The duration of the session, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that you specified
    #   for the job.
    #   @return [String]
    #
    # @!attribute [rw] input_config
    #   Input configuration information for the Earth Observation job.
    #   @return [Types::InputConfigOutput]
    #
    # @!attribute [rw] job_config
    #   An object containing information about the job configuration.
    #   @return [Types::JobConfigInput]
    #
    # @!attribute [rw] kms_key_id
    #   The Key Management Service key ID for server-side encryption.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Earth Observation job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Earth Observation job.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Each tag consists of a key and a value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/StartEarthObservationJobOutput AWS API Documentation
    #
    class StartEarthObservationJobOutput < Struct.new(
      :arn,
      :creation_time,
      :duration_in_seconds,
      :execution_role_arn,
      :input_config,
      :job_config,
      :kms_key_id,
      :name,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique token that guarantees that the call to this API is
    #   idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that you specified
    #   for the job.
    #   @return [String]
    #
    # @!attribute [rw] input_config
    #   Input configuration information for the Vector Enrichment job.
    #   @return [Types::VectorEnrichmentJobInputConfig]
    #
    # @!attribute [rw] job_config
    #   An object containing information about the job configuration.
    #   @return [Types::VectorEnrichmentJobConfig]
    #
    # @!attribute [rw] kms_key_id
    #   The Key Management Service key ID for server-side encryption.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Vector Enrichment job.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Each tag consists of a key and a value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/StartVectorEnrichmentJobInput AWS API Documentation
    #
    class StartVectorEnrichmentJobInput < Struct.new(
      :client_token,
      :execution_role_arn,
      :input_config,
      :job_config,
      :kms_key_id,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Vector Enrichment job.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time.
    #   @return [Time]
    #
    # @!attribute [rw] duration_in_seconds
    #   The duration of the Vector Enrichment job, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that you specified
    #   for the job.
    #   @return [String]
    #
    # @!attribute [rw] input_config
    #   Input configuration information for starting the Vector Enrichment
    #   job.
    #   @return [Types::VectorEnrichmentJobInputConfig]
    #
    # @!attribute [rw] job_config
    #   An object containing information about the job configuration.
    #   @return [Types::VectorEnrichmentJobConfig]
    #
    # @!attribute [rw] kms_key_id
    #   The Key Management Service key ID for server-side encryption.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Vector Enrichment job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Vector Enrichment job being started.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Each tag consists of a key and a value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of the Vector Enrichment job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/StartVectorEnrichmentJobOutput AWS API Documentation
    #
    class StartVectorEnrichmentJobOutput < Struct.new(
      :arn,
      :creation_time,
      :duration_in_seconds,
      :execution_role_arn,
      :input_config,
      :job_config,
      :kms_key_id,
      :name,
      :status,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Earth Observation job being
    #   stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/StopEarthObservationJobInput AWS API Documentation
    #
    class StopEarthObservationJobInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/StopEarthObservationJobOutput AWS API Documentation
    #
    class StopEarthObservationJobOutput < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Vector Enrichment job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/StopVectorEnrichmentJobInput AWS API Documentation
    #
    class StopVectorEnrichmentJobInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/StopVectorEnrichmentJobOutput AWS API Documentation
    #
    class StopVectorEnrichmentJobOutput < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Each tag consists of a key and a value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The structure representing the configuration for Temporal Statistics
    # operation.
    #
    # @!attribute [rw] group_by
    #   The input for the temporal statistics grouping by time frequency
    #   option.
    #   @return [String]
    #
    # @!attribute [rw] statistics
    #   The list of the statistics method options.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_bands
    #   The list of target band names for the temporal statistic to
    #   calculate.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/TemporalStatisticsConfigInput AWS API Documentation
    #
    class TemporalStatisticsConfigInput < Struct.new(
      :group_by,
      :statistics,
      :target_bands)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for the time-range filter.
    #
    # @!attribute [rw] end_time
    #   The end time for the time-range filter.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   The start time for the time-range filter.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/TimeRangeFilterInput AWS API Documentation
    #
    class TimeRangeFilterInput < Struct.new(
      :end_time,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output structure of the time range filter.
    #
    # @!attribute [rw] end_time
    #   The ending time for the time range filter.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   The starting time for the time range filter.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/TimeRangeFilterOutput AWS API Documentation
    #
    class TimeRangeFilterOutput < Struct.new(
      :end_time,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Keys of the tags you want to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # The output resolution (in target georeferenced units) of the result of
    # the operation
    #
    # @!attribute [rw] unit
    #   The units for output resolution of the result.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for output resolution of the result.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/UserDefined AWS API Documentation
    #
    class UserDefined < Struct.new(
      :unit,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # It contains configs such as ReverseGeocodingConfig and
    # MapMatchingConfig.
    #
    # @note VectorEnrichmentJobConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note VectorEnrichmentJobConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of VectorEnrichmentJobConfig corresponding to the set member.
    #
    # @!attribute [rw] map_matching_config
    #   The input structure for Map Matching operation type.
    #   @return [Types::MapMatchingConfig]
    #
    # @!attribute [rw] reverse_geocoding_config
    #   The input structure for Reverse Geocoding operation type.
    #   @return [Types::ReverseGeocodingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/VectorEnrichmentJobConfig AWS API Documentation
    #
    class VectorEnrichmentJobConfig < Struct.new(
      :map_matching_config,
      :reverse_geocoding_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MapMatchingConfig < VectorEnrichmentJobConfig; end
      class ReverseGeocodingConfig < VectorEnrichmentJobConfig; end
      class Unknown < VectorEnrichmentJobConfig; end
    end

    # The input structure for the data source that represents the storage
    # type of the input data objects.
    #
    # @note VectorEnrichmentJobDataSourceConfigInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @note VectorEnrichmentJobDataSourceConfigInput is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of VectorEnrichmentJobDataSourceConfigInput corresponding to the set member.
    #
    # @!attribute [rw] s3_data
    #   The input structure for the Amazon S3 data that represents the
    #   Amazon S3 location of the input data objects.
    #   @return [Types::VectorEnrichmentJobS3Data]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/VectorEnrichmentJobDataSourceConfigInput AWS API Documentation
    #
    class VectorEnrichmentJobDataSourceConfigInput < Struct.new(
      :s3_data,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3Data < VectorEnrichmentJobDataSourceConfigInput; end
      class Unknown < VectorEnrichmentJobDataSourceConfigInput; end
    end

    # VectorEnrichmentJob error details in response from
    # GetVectorEnrichmentJob.
    #
    # @!attribute [rw] error_message
    #   A message that you define and then is processed and rendered by the
    #   Vector Enrichment job when the error occurs.
    #   @return [String]
    #
    # @!attribute [rw] error_type
    #   The type of error generated during the Vector Enrichment job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/VectorEnrichmentJobErrorDetails AWS API Documentation
    #
    class VectorEnrichmentJobErrorDetails < Struct.new(
      :error_message,
      :error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # VectorEnrichmentJob export error details in response from
    # GetVectorEnrichmentJob.
    #
    # @!attribute [rw] message
    #   The message providing details about the errors generated during the
    #   Vector Enrichment job.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The output error details for an Export operation on a Vector
    #   Enrichment job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/VectorEnrichmentJobExportErrorDetails AWS API Documentation
    #
    class VectorEnrichmentJobExportErrorDetails < Struct.new(
      :message,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input structure for the InputConfig in a VectorEnrichmentJob.
    #
    # @!attribute [rw] data_source_config
    #   The input structure for the data source that represents the storage
    #   type of the input data objects.
    #   @return [Types::VectorEnrichmentJobDataSourceConfigInput]
    #
    # @!attribute [rw] document_type
    #   The input structure that defines the data source file type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/VectorEnrichmentJobInputConfig AWS API Documentation
    #
    class VectorEnrichmentJobInputConfig < Struct.new(
      :data_source_config,
      :document_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 data for the Vector Enrichment job.
    #
    # @!attribute [rw] kms_key_id
    #   The Key Management Service key ID for server-side encryption.
    #   @return [String]
    #
    # @!attribute [rw] s3_uri
    #   The URL to the Amazon S3 data for the Vector Enrichment job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/VectorEnrichmentJobS3Data AWS API Documentation
    #
    class VectorEnrichmentJobS3Data < Struct.new(
      :kms_key_id,
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input structure for specifying ViewOffNadir property filter.
    # ViewOffNadir refers to the angle from the sensor between nadir
    # (straight down) and the scene center. Measured in degrees (0-90).
    #
    # @!attribute [rw] lower_bound
    #   The minimum value for ViewOffNadir property filter. This filters
    #   items having ViewOffNadir greater than or equal to this value.
    #   @return [Float]
    #
    # @!attribute [rw] upper_bound
    #   The maximum value for ViewOffNadir property filter. This filters
    #   items having ViewOffNadir lesser than or equal to this value.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ViewOffNadirInput AWS API Documentation
    #
    class ViewOffNadirInput < Struct.new(
      :lower_bound,
      :upper_bound)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input structure for specifying ViewSunAzimuth property filter.
    # ViewSunAzimuth refers to the Sun azimuth angle. From the scene center
    # point on the ground, this is the angle between truth north and the
    # sun. Measured clockwise in degrees (0-360).
    #
    # @!attribute [rw] lower_bound
    #   The minimum value for ViewSunAzimuth property filter. This filters
    #   items having ViewSunAzimuth greater than or equal to this value.
    #   @return [Float]
    #
    # @!attribute [rw] upper_bound
    #   The maximum value for ViewSunAzimuth property filter. This filters
    #   items having ViewSunAzimuth lesser than or equal to this value.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ViewSunAzimuthInput AWS API Documentation
    #
    class ViewSunAzimuthInput < Struct.new(
      :lower_bound,
      :upper_bound)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input structure for specifying ViewSunElevation angle property
    # filter.
    #
    # @!attribute [rw] lower_bound
    #   The lower bound to view the sun elevation.
    #   @return [Float]
    #
    # @!attribute [rw] upper_bound
    #   The upper bound to view the sun elevation.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ViewSunElevationInput AWS API Documentation
    #
    class ViewSunElevationInput < Struct.new(
      :lower_bound,
      :upper_bound)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure representing input configuration of ZonalStatistics
    # operation.
    #
    # @!attribute [rw] statistics
    #   List of zonal statistics to compute.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_bands
    #   Bands used in the operation. If no target bands are specified, it
    #   uses all bands available input.
    #   @return [Array<String>]
    #
    # @!attribute [rw] zone_s3_path
    #   The Amazon S3 path pointing to the GeoJSON containing the polygonal
    #   zones.
    #   @return [String]
    #
    # @!attribute [rw] zone_s3_path_kms_key_id
    #   The Amazon Resource Name (ARN) or an ID of a Amazon Web Services Key
    #   Management Service (Amazon Web Services KMS) key that Amazon
    #   SageMaker uses to decrypt your output artifacts with Amazon S3
    #   server-side encryption. The SageMaker execution role must have
    #   `kms:GenerateDataKey` permission.
    #
    #   The `KmsKeyId` can be any of the following formats:
    #
    #   * // KMS Key ID
    #
    #     `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * // Amazon Resource Name (ARN) of a KMS Key
    #
    #     `"arn:aws:kms:<region>:<account>:key/<key-id-12ab-34cd-56ef-1234567890ab>"`
    #
    #   For more information about key identifiers, see [Key identifiers
    #   (KeyID)][1] in the Amazon Web Services Key Management Service
    #   (Amazon Web Services KMS) documentation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ZonalStatisticsConfigInput AWS API Documentation
    #
    class ZonalStatisticsConfigInput < Struct.new(
      :statistics,
      :target_bands,
      :zone_s3_path,
      :zone_s3_path_kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
