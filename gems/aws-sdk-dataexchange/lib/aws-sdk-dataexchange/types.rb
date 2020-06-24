# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DataExchange
  module Types

    # Access to the resource is denied.
    #
    # @!attribute [rw] message
    #   Access to the resource is denied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The destination for the asset.
    #
    # @note When making an API call, you may pass AssetDestinationEntry
    #   data as a hash:
    #
    #       {
    #         asset_id: "Id", # required
    #         bucket: "__string", # required
    #         key: "__string",
    #       }
    #
    # @!attribute [rw] asset_id
    #   The unique identifier for the asset.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The S3 bucket that is the destination for the asset.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The name of the object in Amazon S3 for the asset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/AssetDestinationEntry AWS API Documentation
    #
    class AssetDestinationEntry < Struct.new(
      :asset_id,
      :bucket,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] s3_snapshot_asset
    #   The S3 object that is the asset.
    #   @return [Types::S3SnapshotAsset]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/AssetDetails AWS API Documentation
    #
    class AssetDetails < Struct.new(
      :s3_snapshot_asset)
      SENSITIVE = []
      include Aws::Structure
    end

    # An asset in AWS Data Exchange is a piece of data that can be stored as
    # an S3 object. The asset can be a structured data file, an image file,
    # or some other data file. When you create an import job for your files,
    # you create an asset in AWS Data Exchange for each of those files.
    #
    # @!attribute [rw] arn
    #   The ARN for the asset.
    #   @return [String]
    #
    # @!attribute [rw] asset_details
    #   Information about the asset, including its size.
    #   @return [Types::AssetDetails]
    #
    # @!attribute [rw] asset_type
    #   The type of file your data is stored in. Currently, the supported
    #   asset type is S3\_SNAPSHOT.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the asset was created, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] data_set_id
    #   The unique identifier for the data set associated with this asset.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the asset.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the asset. When importing from Amazon S3, the S3 object
    #   key is used as the asset name. When exporting to Amazon S3, the
    #   asset name is used as default target S3 object key.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for the revision associated with this asset.
    #   @return [String]
    #
    # @!attribute [rw] source_id
    #   The asset ID of the owned asset corresponding to the entitled asset
    #   being viewed. This parameter is returned when an asset owner is
    #   viewing the entitled copy of its owned asset.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the asset was last updated, in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/AssetEntry AWS API Documentation
    #
    class AssetEntry < Struct.new(
      :arn,
      :asset_details,
      :asset_type,
      :created_at,
      :data_set_id,
      :id,
      :name,
      :revision_id,
      :source_id,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source of the assets.
    #
    # @note When making an API call, you may pass AssetSourceEntry
    #   data as a hash:
    #
    #       {
    #         bucket: "__string", # required
    #         key: "__string", # required
    #       }
    #
    # @!attribute [rw] bucket
    #   The S3 bucket that's part of the source of the asset.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The name of the object in Amazon S3 for the asset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/AssetSourceEntry AWS API Documentation
    #
    class AssetSourceEntry < Struct.new(
      :bucket,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "__string", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/CancelJobRequest AWS API Documentation
    #
    class CancelJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request couldn't be completed because it conflicted with the
    # current state of the resource.
    #
    # @!attribute [rw] message
    #   The request couldn't be completed because it conflicted with the
    #   current state of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier for the resource with the conflict.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource with the conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to create a data set that contains one or more revisions.
    #
    # @note When making an API call, you may pass CreateDataSetRequest
    #   data as a hash:
    #
    #       {
    #         asset_type: "S3_SNAPSHOT", # required, accepts S3_SNAPSHOT
    #         description: "Description", # required
    #         name: "Name", # required
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] asset_type
    #   The type of file your data is stored in. Currently, the supported
    #   asset type is S3\_SNAPSHOT.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the data set. This value can be up to 16,348
    #   characters long.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data set.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A data set tag is an optional label that you can assign to a data
    #   set when you create it. Each tag consists of a key and an optional
    #   value, both of which you define. When you use tagging, you can also
    #   use tag-based access control in IAM policies to control access to
    #   these data sets and revisions.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/CreateDataSetRequest AWS API Documentation
    #
    class CreateDataSetRequest < Struct.new(
      :asset_type,
      :description,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   An Amazon Resource Name (ARN) that uniquely identifies an AWS
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] asset_type
    #   The type of file your data is stored in. Currently, the supported
    #   asset type is S3\_SNAPSHOT.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Dates and times in AWS Data Exchange are recorded in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of a resource.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the model.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   A property that defines the data set as OWNED by the account (for
    #   providers) or ENTITLED to the account (for subscribers). When an
    #   owned data set is published in a product, AWS Data Exchange creates
    #   a copy of the data set. Subscribers can access that copy of the data
    #   set as an entitled data set.
    #   @return [String]
    #
    # @!attribute [rw] origin_details
    #   @return [Types::OriginDetails]
    #
    # @!attribute [rw] source_id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   Dates and times in AWS Data Exchange are recorded in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/CreateDataSetResponse AWS API Documentation
    #
    class CreateDataSetResponse < Struct.new(
      :arn,
      :asset_type,
      :created_at,
      :description,
      :id,
      :name,
      :origin,
      :origin_details,
      :source_id,
      :tags,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CreateJob request. AWS Data Exchange Jobs are asynchronous import
    # or export operations used to create or copy assets. A data set owner
    # can both import and export as they see fit. Someone with an
    # entitlement to a data set can only export. Jobs are deleted 90 days
    # after they are created. Created jobs must be started with the StartJob
    # operation.
    #
    # @note When making an API call, you may pass CreateJobRequest
    #   data as a hash:
    #
    #       {
    #         details: { # required
    #           export_asset_to_signed_url: {
    #             asset_id: "Id", # required
    #             data_set_id: "Id", # required
    #             revision_id: "Id", # required
    #           },
    #           export_assets_to_s3: {
    #             asset_destinations: [ # required
    #               {
    #                 asset_id: "Id", # required
    #                 bucket: "__string", # required
    #                 key: "__string",
    #               },
    #             ],
    #             data_set_id: "Id", # required
    #             encryption: {
    #               kms_key_arn: "__string",
    #               type: "aws:kms", # required, accepts aws:kms, AES256
    #             },
    #             revision_id: "Id", # required
    #           },
    #           import_asset_from_signed_url: {
    #             asset_name: "AssetName", # required
    #             data_set_id: "Id", # required
    #             md_5_hash: "__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093", # required
    #             revision_id: "Id", # required
    #           },
    #           import_assets_from_s3: {
    #             asset_sources: [ # required
    #               {
    #                 bucket: "__string", # required
    #                 key: "__string", # required
    #               },
    #             ],
    #             data_set_id: "Id", # required
    #             revision_id: "Id", # required
    #           },
    #         },
    #         type: "IMPORT_ASSETS_FROM_S3", # required, accepts IMPORT_ASSETS_FROM_S3, IMPORT_ASSET_FROM_SIGNED_URL, EXPORT_ASSETS_TO_S3, EXPORT_ASSET_TO_SIGNED_URL
    #       }
    #
    # @!attribute [rw] details
    #   The details for the CreateJob request.
    #   @return [Types::RequestDetails]
    #
    # @!attribute [rw] type
    #   The type of job to be created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/CreateJobRequest AWS API Documentation
    #
    class CreateJobRequest < Struct.new(
      :details,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   An Amazon Resource Name (ARN) that uniquely identifies an AWS
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Dates and times in AWS Data Exchange are recorded in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] details
    #   Details for the response.
    #   @return [Types::ResponseDetails]
    #
    # @!attribute [rw] errors
    #   @return [Array<Types::JobError>]
    #
    # @!attribute [rw] id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Dates and times in AWS Data Exchange are recorded in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/CreateJobResponse AWS API Documentation
    #
    class CreateJobResponse < Struct.new(
      :arn,
      :created_at,
      :details,
      :errors,
      :id,
      :state,
      :type,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates a revision for a data set. When they're created, revisions
    # are not published to products, and therefore are not available to
    # subscribers. To publish a revision to a data set in a product, the
    # revision must first be finalized.
    #
    # @note When making an API call, you may pass CreateRevisionRequest
    #   data as a hash:
    #
    #       {
    #         comment: "__stringMin0Max16384",
    #         data_set_id: "__string", # required
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] comment
    #   An optional comment about the revision.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A revision tag is an optional label that you can assign to a
    #   revision when you create it. Each tag consists of a key and an
    #   optional value, both of which you define. When you use tagging, you
    #   can also use tag-based access control in IAM policies to control
    #   access to these data sets and revisions.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/CreateRevisionRequest AWS API Documentation
    #
    class CreateRevisionRequest < Struct.new(
      :comment,
      :data_set_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   An Amazon Resource Name (ARN) that uniquely identifies an AWS
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Dates and times in AWS Data Exchange are recorded in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] data_set_id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] finalized
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] source_id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   Dates and times in AWS Data Exchange are recorded in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/CreateRevisionResponse AWS API Documentation
    #
    class CreateRevisionResponse < Struct.new(
      :arn,
      :comment,
      :created_at,
      :data_set_id,
      :finalized,
      :id,
      :source_id,
      :tags,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A data set is an AWS resource with one or more revisions.
    #
    # @!attribute [rw] arn
    #   The ARN for the data set.
    #   @return [String]
    #
    # @!attribute [rw] asset_type
    #   The type of file your data is stored in. Currently, the supported
    #   asset type is S3\_SNAPSHOT.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the data set was created, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for the data set.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the data set.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data set.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   A property that defines the data set as OWNED by the account (for
    #   providers) or ENTITLED to the account (for subscribers).
    #   @return [String]
    #
    # @!attribute [rw] origin_details
    #   If the origin of this data set is ENTITLED, includes the details for
    #   the product on AWS Marketplace.
    #   @return [Types::OriginDetails]
    #
    # @!attribute [rw] source_id
    #   The data set ID of the owned data set corresponding to the entitled
    #   data set being viewed. This parameter is returned when a data set
    #   owner is viewing the entitled copy of its owned data set.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the data set was last updated, in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/DataSetEntry AWS API Documentation
    #
    class DataSetEntry < Struct.new(
      :arn,
      :asset_type,
      :created_at,
      :description,
      :id,
      :name,
      :origin,
      :origin_details,
      :source_id,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAssetRequest
    #   data as a hash:
    #
    #       {
    #         asset_id: "__string", # required
    #         data_set_id: "__string", # required
    #         revision_id: "__string", # required
    #       }
    #
    # @!attribute [rw] asset_id
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/DeleteAssetRequest AWS API Documentation
    #
    class DeleteAssetRequest < Struct.new(
      :asset_id,
      :data_set_id,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDataSetRequest
    #   data as a hash:
    #
    #       {
    #         data_set_id: "__string", # required
    #       }
    #
    # @!attribute [rw] data_set_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/DeleteDataSetRequest AWS API Documentation
    #
    class DeleteDataSetRequest < Struct.new(
      :data_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRevisionRequest
    #   data as a hash:
    #
    #       {
    #         data_set_id: "__string", # required
    #         revision_id: "__string", # required
    #       }
    #
    # @!attribute [rw] data_set_id
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/DeleteRevisionRequest AWS API Documentation
    #
    class DeleteRevisionRequest < Struct.new(
      :data_set_id,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] import_asset_from_signed_url_job_error_details
    #   @return [Types::ImportAssetFromSignedUrlJobErrorDetails]
    #
    # @!attribute [rw] import_assets_from_s3_job_error_details
    #   The list of sources for the assets.
    #   @return [Array<Types::AssetSourceEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/Details AWS API Documentation
    #
    class Details < Struct.new(
      :import_asset_from_signed_url_job_error_details,
      :import_assets_from_s3_job_error_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the operation to be performed by the job.
    #
    # @note When making an API call, you may pass ExportAssetToSignedUrlRequestDetails
    #   data as a hash:
    #
    #       {
    #         asset_id: "Id", # required
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #       }
    #
    # @!attribute [rw] asset_id
    #   The unique identifier for the asset that is exported to a signed
    #   URL.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The unique identifier for the data set associated with this export
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for the revision associated with this export
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ExportAssetToSignedUrlRequestDetails AWS API Documentation
    #
    class ExportAssetToSignedUrlRequestDetails < Struct.new(
      :asset_id,
      :data_set_id,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the export to signed URL response.
    #
    # @!attribute [rw] asset_id
    #   The unique identifier for the asset associated with this export job.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The unique identifier for the data set associated with this export
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for the revision associated with this export
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] signed_url
    #   The signed URL for the export request.
    #   @return [String]
    #
    # @!attribute [rw] signed_url_expires_at
    #   The date and time that the signed URL expires, in ISO 8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ExportAssetToSignedUrlResponseDetails AWS API Documentation
    #
    class ExportAssetToSignedUrlResponseDetails < Struct.new(
      :asset_id,
      :data_set_id,
      :revision_id,
      :signed_url,
      :signed_url_expires_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the operation to be performed by the job.
    #
    # @note When making an API call, you may pass ExportAssetsToS3RequestDetails
    #   data as a hash:
    #
    #       {
    #         asset_destinations: [ # required
    #           {
    #             asset_id: "Id", # required
    #             bucket: "__string", # required
    #             key: "__string",
    #           },
    #         ],
    #         data_set_id: "Id", # required
    #         encryption: {
    #           kms_key_arn: "__string",
    #           type: "aws:kms", # required, accepts aws:kms, AES256
    #         },
    #         revision_id: "Id", # required
    #       }
    #
    # @!attribute [rw] asset_destinations
    #   The destination for the asset.
    #   @return [Array<Types::AssetDestinationEntry>]
    #
    # @!attribute [rw] data_set_id
    #   The unique identifier for the data set associated with this export
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   Encryption configuration for the export job.
    #   @return [Types::ExportServerSideEncryption]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for the revision associated with this export
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ExportAssetsToS3RequestDetails AWS API Documentation
    #
    class ExportAssetsToS3RequestDetails < Struct.new(
      :asset_destinations,
      :data_set_id,
      :encryption,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the export to Amazon S3 response.
    #
    # @!attribute [rw] asset_destinations
    #   The destination in Amazon S3 where the asset is exported.
    #   @return [Array<Types::AssetDestinationEntry>]
    #
    # @!attribute [rw] data_set_id
    #   The unique identifier for the data set associated with this export
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   Encryption configuration of the export job.
    #   @return [Types::ExportServerSideEncryption]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for the revision associated with this export
    #   response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ExportAssetsToS3ResponseDetails AWS API Documentation
    #
    class ExportAssetsToS3ResponseDetails < Struct.new(
      :asset_destinations,
      :data_set_id,
      :encryption,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Encryption configuration of the export job. Includes the encryption
    # type as well as the AWS KMS key. The KMS key is only necessary if you
    # chose the KMS encryption type.
    #
    # @note When making an API call, you may pass ExportServerSideEncryption
    #   data as a hash:
    #
    #       {
    #         kms_key_arn: "__string",
    #         type: "aws:kms", # required, accepts aws:kms, AES256
    #       }
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the the AWS KMS key you want to
    #   use to encrypt the Amazon S3 objects. This parameter is required if
    #   you choose aws:kms as an encryption type.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of server side encryption used for encrypting the objects
    #   in Amazon S3.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ExportServerSideEncryption AWS API Documentation
    #
    class ExportServerSideEncryption < Struct.new(
      :kms_key_arn,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAssetRequest
    #   data as a hash:
    #
    #       {
    #         asset_id: "__string", # required
    #         data_set_id: "__string", # required
    #         revision_id: "__string", # required
    #       }
    #
    # @!attribute [rw] asset_id
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/GetAssetRequest AWS API Documentation
    #
    class GetAssetRequest < Struct.new(
      :asset_id,
      :data_set_id,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   An Amazon Resource Name (ARN) that uniquely identifies an AWS
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] asset_details
    #   @return [Types::AssetDetails]
    #
    # @!attribute [rw] asset_type
    #   The type of file your data is stored in. Currently, the supported
    #   asset type is S3\_SNAPSHOT.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Dates and times in AWS Data Exchange are recorded in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] data_set_id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the asset. When importing from Amazon S3, the S3 object
    #   key is used as the asset name. When exporting to Amazon S3, the
    #   asset name is used as default target S3 object key.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] source_id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Dates and times in AWS Data Exchange are recorded in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/GetAssetResponse AWS API Documentation
    #
    class GetAssetResponse < Struct.new(
      :arn,
      :asset_details,
      :asset_type,
      :created_at,
      :data_set_id,
      :id,
      :name,
      :revision_id,
      :source_id,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDataSetRequest
    #   data as a hash:
    #
    #       {
    #         data_set_id: "__string", # required
    #       }
    #
    # @!attribute [rw] data_set_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/GetDataSetRequest AWS API Documentation
    #
    class GetDataSetRequest < Struct.new(
      :data_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   An Amazon Resource Name (ARN) that uniquely identifies an AWS
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] asset_type
    #   The type of file your data is stored in. Currently, the supported
    #   asset type is S3\_SNAPSHOT.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Dates and times in AWS Data Exchange are recorded in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of a resource.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the model.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   A property that defines the data set as OWNED by the account (for
    #   providers) or ENTITLED to the account (for subscribers). When an
    #   owned data set is published in a product, AWS Data Exchange creates
    #   a copy of the data set. Subscribers can access that copy of the data
    #   set as an entitled data set.
    #   @return [String]
    #
    # @!attribute [rw] origin_details
    #   @return [Types::OriginDetails]
    #
    # @!attribute [rw] source_id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   Dates and times in AWS Data Exchange are recorded in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/GetDataSetResponse AWS API Documentation
    #
    class GetDataSetResponse < Struct.new(
      :arn,
      :asset_type,
      :created_at,
      :description,
      :id,
      :name,
      :origin,
      :origin_details,
      :source_id,
      :tags,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "__string", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/GetJobRequest AWS API Documentation
    #
    class GetJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   An Amazon Resource Name (ARN) that uniquely identifies an AWS
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Dates and times in AWS Data Exchange are recorded in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] details
    #   Details for the response.
    #   @return [Types::ResponseDetails]
    #
    # @!attribute [rw] errors
    #   @return [Array<Types::JobError>]
    #
    # @!attribute [rw] id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Dates and times in AWS Data Exchange are recorded in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/GetJobResponse AWS API Documentation
    #
    class GetJobResponse < Struct.new(
      :arn,
      :created_at,
      :details,
      :errors,
      :id,
      :state,
      :type,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRevisionRequest
    #   data as a hash:
    #
    #       {
    #         data_set_id: "__string", # required
    #         revision_id: "__string", # required
    #       }
    #
    # @!attribute [rw] data_set_id
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/GetRevisionRequest AWS API Documentation
    #
    class GetRevisionRequest < Struct.new(
      :data_set_id,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   An Amazon Resource Name (ARN) that uniquely identifies an AWS
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Dates and times in AWS Data Exchange are recorded in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] data_set_id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] finalized
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] source_id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   Dates and times in AWS Data Exchange are recorded in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/GetRevisionResponse AWS API Documentation
    #
    class GetRevisionResponse < Struct.new(
      :arn,
      :comment,
      :created_at,
      :data_set_id,
      :finalized,
      :id,
      :source_id,
      :tags,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_name
    #   The name of the asset. When importing from Amazon S3, the S3 object
    #   key is used as the asset name. When exporting to Amazon S3, the
    #   asset name is used as default target S3 object key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ImportAssetFromSignedUrlJobErrorDetails AWS API Documentation
    #
    class ImportAssetFromSignedUrlJobErrorDetails < Struct.new(
      :asset_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the operation to be performed by the job.
    #
    # @note When making an API call, you may pass ImportAssetFromSignedUrlRequestDetails
    #   data as a hash:
    #
    #       {
    #         asset_name: "AssetName", # required
    #         data_set_id: "Id", # required
    #         md_5_hash: "__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093", # required
    #         revision_id: "Id", # required
    #       }
    #
    # @!attribute [rw] asset_name
    #   The name of the asset. When importing from Amazon S3, the S3 object
    #   key is used as the asset name.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The unique identifier for the data set associated with this import
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] md_5_hash
    #   The Base64-encoded Md5 hash for the asset, used to ensure the
    #   integrity of the file at that location.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for the revision associated with this import
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ImportAssetFromSignedUrlRequestDetails AWS API Documentation
    #
    class ImportAssetFromSignedUrlRequestDetails < Struct.new(
      :asset_name,
      :data_set_id,
      :md_5_hash,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details in the response for an import request, including the
    # signed URL and other information.
    #
    # @!attribute [rw] asset_name
    #   The name for the asset associated with this import response.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The unique identifier for the data set associated with this import
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] md_5_hash
    #   The Base64-encoded Md5 hash for the asset, used to ensure the
    #   integrity of the file at that location.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for the revision associated with this import
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] signed_url
    #   The signed URL.
    #   @return [String]
    #
    # @!attribute [rw] signed_url_expires_at
    #   The time and date at which the signed URL expires, in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ImportAssetFromSignedUrlResponseDetails AWS API Documentation
    #
    class ImportAssetFromSignedUrlResponseDetails < Struct.new(
      :asset_name,
      :data_set_id,
      :md_5_hash,
      :revision_id,
      :signed_url,
      :signed_url_expires_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the operation to be performed by the job.
    #
    # @note When making an API call, you may pass ImportAssetsFromS3RequestDetails
    #   data as a hash:
    #
    #       {
    #         asset_sources: [ # required
    #           {
    #             bucket: "__string", # required
    #             key: "__string", # required
    #           },
    #         ],
    #         data_set_id: "Id", # required
    #         revision_id: "Id", # required
    #       }
    #
    # @!attribute [rw] asset_sources
    #   Is a list of S3 bucket and object key pairs.
    #   @return [Array<Types::AssetSourceEntry>]
    #
    # @!attribute [rw] data_set_id
    #   The unique identifier for the data set associated with this import
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for the revision associated with this import
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ImportAssetsFromS3RequestDetails AWS API Documentation
    #
    class ImportAssetsFromS3RequestDetails < Struct.new(
      :asset_sources,
      :data_set_id,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details from an import from Amazon S3 response.
    #
    # @!attribute [rw] asset_sources
    #   Is a list of Amazon S3 bucket and object key pairs.
    #   @return [Array<Types::AssetSourceEntry>]
    #
    # @!attribute [rw] data_set_id
    #   The unique identifier for the data set associated with this import
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for the revision associated with this import
    #   response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ImportAssetsFromS3ResponseDetails AWS API Documentation
    #
    class ImportAssetsFromS3ResponseDetails < Struct.new(
      :asset_sources,
      :data_set_id,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception occurred with the service.
    #
    # @!attribute [rw] message
    #   The message identifying the service exception that occurred.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS Data Exchange Jobs are asynchronous import or export operations
    # used to create or copy assets. A data set owner can both import and
    # export as they see fit. Someone with an entitlement to a data set can
    # only export. Jobs are deleted 90 days after they are created.
    #
    # @!attribute [rw] arn
    #   The ARN for the job.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the job was created, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] details
    #   Details of the operation to be performed by the job, such as export
    #   destination details or import source details.
    #   @return [Types::ResponseDetails]
    #
    # @!attribute [rw] errors
    #   Errors for jobs.
    #   @return [Array<Types::JobError>]
    #
    # @!attribute [rw] id
    #   The unique identifier for the job.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the job.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The job type.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the job was last updated, in ISO 8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/JobEntry AWS API Documentation
    #
    class JobEntry < Struct.new(
      :arn,
      :created_at,
      :details,
      :errors,
      :id,
      :state,
      :type,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error that occurred with the job request.
    #
    # @!attribute [rw] code
    #   The code for the job error.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   @return [Types::Details]
    #
    # @!attribute [rw] limit_name
    #   The name of the limit that was reached.
    #   @return [String]
    #
    # @!attribute [rw] limit_value
    #   The value of the exceeded limit.
    #   @return [Float]
    #
    # @!attribute [rw] message
    #   The message related to the job error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier for the resource related to the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource related to the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/JobError AWS API Documentation
    #
    class JobError < Struct.new(
      :code,
      :details,
      :limit_name,
      :limit_value,
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDataSetRevisionsRequest
    #   data as a hash:
    #
    #       {
    #         data_set_id: "__string", # required
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] data_set_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ListDataSetRevisionsRequest AWS API Documentation
    #
    class ListDataSetRevisionsRequest < Struct.new(
      :data_set_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] revisions
    #   @return [Array<Types::RevisionEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ListDataSetRevisionsResponse AWS API Documentation
    #
    class ListDataSetRevisionsResponse < Struct.new(
      :next_token,
      :revisions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDataSetsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #         origin: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ListDataSetsRequest AWS API Documentation
    #
    class ListDataSetsRequest < Struct.new(
      :max_results,
      :next_token,
      :origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_sets
    #   @return [Array<Types::DataSetEntry>]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ListDataSetsResponse AWS API Documentation
    #
    class ListDataSetsResponse < Struct.new(
      :data_sets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListJobsRequest
    #   data as a hash:
    #
    #       {
    #         data_set_id: "__string",
    #         max_results: 1,
    #         next_token: "__string",
    #         revision_id: "__string",
    #       }
    #
    # @!attribute [rw] data_set_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ListJobsRequest AWS API Documentation
    #
    class ListJobsRequest < Struct.new(
      :data_set_id,
      :max_results,
      :next_token,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   @return [Array<Types::JobEntry>]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ListJobsResponse AWS API Documentation
    #
    class ListJobsResponse < Struct.new(
      :jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRevisionAssetsRequest
    #   data as a hash:
    #
    #       {
    #         data_set_id: "__string", # required
    #         max_results: 1,
    #         next_token: "__string",
    #         revision_id: "__string", # required
    #       }
    #
    # @!attribute [rw] data_set_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ListRevisionAssetsRequest AWS API Documentation
    #
    class ListRevisionAssetsRequest < Struct.new(
      :data_set_id,
      :max_results,
      :next_token,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assets
    #   @return [Array<Types::AssetEntry>]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ListRevisionAssetsResponse AWS API Documentation
    #
    class ListRevisionAssetsResponse < Struct.new(
      :assets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/OriginDetails AWS API Documentation
    #
    class OriginDetails < Struct.new(
      :product_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details for the request.
    #
    # @note When making an API call, you may pass RequestDetails
    #   data as a hash:
    #
    #       {
    #         export_asset_to_signed_url: {
    #           asset_id: "Id", # required
    #           data_set_id: "Id", # required
    #           revision_id: "Id", # required
    #         },
    #         export_assets_to_s3: {
    #           asset_destinations: [ # required
    #             {
    #               asset_id: "Id", # required
    #               bucket: "__string", # required
    #               key: "__string",
    #             },
    #           ],
    #           data_set_id: "Id", # required
    #           encryption: {
    #             kms_key_arn: "__string",
    #             type: "aws:kms", # required, accepts aws:kms, AES256
    #           },
    #           revision_id: "Id", # required
    #         },
    #         import_asset_from_signed_url: {
    #           asset_name: "AssetName", # required
    #           data_set_id: "Id", # required
    #           md_5_hash: "__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093", # required
    #           revision_id: "Id", # required
    #         },
    #         import_assets_from_s3: {
    #           asset_sources: [ # required
    #             {
    #               bucket: "__string", # required
    #               key: "__string", # required
    #             },
    #           ],
    #           data_set_id: "Id", # required
    #           revision_id: "Id", # required
    #         },
    #       }
    #
    # @!attribute [rw] export_asset_to_signed_url
    #   Details about the export to signed URL request.
    #   @return [Types::ExportAssetToSignedUrlRequestDetails]
    #
    # @!attribute [rw] export_assets_to_s3
    #   Details about the export to Amazon S3 request.
    #   @return [Types::ExportAssetsToS3RequestDetails]
    #
    # @!attribute [rw] import_asset_from_signed_url
    #   Details about the import from signed URL request.
    #   @return [Types::ImportAssetFromSignedUrlRequestDetails]
    #
    # @!attribute [rw] import_assets_from_s3
    #   Details about the import from Amazon S3 request.
    #   @return [Types::ImportAssetsFromS3RequestDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/RequestDetails AWS API Documentation
    #
    class RequestDetails < Struct.new(
      :export_asset_to_signed_url,
      :export_assets_to_s3,
      :import_asset_from_signed_url,
      :import_assets_from_s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource couldn't be found.
    #
    # @!attribute [rw] message
    #   The resource couldn't be found.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier for the resource that couldn't be found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that couldn't be found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for the response.
    #
    # @!attribute [rw] export_asset_to_signed_url
    #   Details for the export to signed URL response.
    #   @return [Types::ExportAssetToSignedUrlResponseDetails]
    #
    # @!attribute [rw] export_assets_to_s3
    #   Details for the export to Amazon S3 response.
    #   @return [Types::ExportAssetsToS3ResponseDetails]
    #
    # @!attribute [rw] import_asset_from_signed_url
    #   Details for the import from signed URL response.
    #   @return [Types::ImportAssetFromSignedUrlResponseDetails]
    #
    # @!attribute [rw] import_assets_from_s3
    #   Details for the import from Amazon S3 response.
    #   @return [Types::ImportAssetsFromS3ResponseDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ResponseDetails AWS API Documentation
    #
    class ResponseDetails < Struct.new(
      :export_asset_to_signed_url,
      :export_assets_to_s3,
      :import_asset_from_signed_url,
      :import_assets_from_s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # A revision is a container for one or more assets.
    #
    # @!attribute [rw] arn
    #   The ARN for the revision.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   An optional comment about the revision.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the revision was created, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] data_set_id
    #   The unique identifier for the data set associated with this
    #   revision.
    #   @return [String]
    #
    # @!attribute [rw] finalized
    #   To publish a revision to a data set in a product, the revision must
    #   first be finalized. Finalizing a revision tells AWS Data Exchange
    #   that your changes to the assets in the revision are complete. After
    #   it's in this read-only state, you can publish the revision to your
    #   products.
    #
    #   Finalized revisions can be published through the AWS Data Exchange
    #   console or the AWS Marketplace Catalog API, using the StartChangeSet
    #   AWS Marketplace Catalog API action. When using the API, revisions
    #   are uniquely identified by their ARN.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   The unique identifier for the revision.
    #   @return [String]
    #
    # @!attribute [rw] source_id
    #   The revision ID of the owned revision corresponding to the entitled
    #   revision being viewed. This parameter is returned when a revision
    #   owner is viewing the entitled copy of its owned revision.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the revision was last updated, in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/RevisionEntry AWS API Documentation
    #
    class RevisionEntry < Struct.new(
      :arn,
      :comment,
      :created_at,
      :data_set_id,
      :finalized,
      :id,
      :source_id,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 object that is the asset.
    #
    # @!attribute [rw] size
    #   The size of the S3 object that is the object.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/S3SnapshotAsset AWS API Documentation
    #
    class S3SnapshotAsset < Struct.new(
      :size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has exceeded the quotas imposed by the service.
    #
    # @!attribute [rw] limit_name
    #   @return [String]
    #
    # @!attribute [rw] limit_value
    #   @return [Float]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ServiceLimitExceededException AWS API Documentation
    #
    class ServiceLimitExceededException < Struct.new(
      :limit_name,
      :limit_value,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "__string", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/StartJobRequest AWS API Documentation
    #
    class StartJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/StartJobResponse AWS API Documentation
    #
    class StartJobResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tags: { # required
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The limit on the number of requests per second was exceeded.
    #
    # @!attribute [rw] message
    #   The limit on the number of requests per second was exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tag_keys: ["__string"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to update an asset.
    #
    # @note When making an API call, you may pass UpdateAssetRequest
    #   data as a hash:
    #
    #       {
    #         asset_id: "__string", # required
    #         data_set_id: "__string", # required
    #         name: "AssetName", # required
    #         revision_id: "__string", # required
    #       }
    #
    # @!attribute [rw] asset_id
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the asset. When importing from Amazon S3, the S3 object
    #   key is used as the asset name. When exporting to Amazon S3, the
    #   asset name is used as default target S3 object key.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/UpdateAssetRequest AWS API Documentation
    #
    class UpdateAssetRequest < Struct.new(
      :asset_id,
      :data_set_id,
      :name,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   An Amazon Resource Name (ARN) that uniquely identifies an AWS
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] asset_details
    #   @return [Types::AssetDetails]
    #
    # @!attribute [rw] asset_type
    #   The type of file your data is stored in. Currently, the supported
    #   asset type is S3\_SNAPSHOT.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Dates and times in AWS Data Exchange are recorded in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] data_set_id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the asset. When importing from Amazon S3, the S3 object
    #   key is used as the asset name. When exporting to Amazon S3, the
    #   asset name is used as default target S3 object key.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] source_id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Dates and times in AWS Data Exchange are recorded in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/UpdateAssetResponse AWS API Documentation
    #
    class UpdateAssetResponse < Struct.new(
      :arn,
      :asset_details,
      :asset_type,
      :created_at,
      :data_set_id,
      :id,
      :name,
      :revision_id,
      :source_id,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to update a data set.
    #
    # @note When making an API call, you may pass UpdateDataSetRequest
    #   data as a hash:
    #
    #       {
    #         data_set_id: "__string", # required
    #         description: "Description",
    #         name: "Name",
    #       }
    #
    # @!attribute [rw] data_set_id
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the data set.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/UpdateDataSetRequest AWS API Documentation
    #
    class UpdateDataSetRequest < Struct.new(
      :data_set_id,
      :description,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   An Amazon Resource Name (ARN) that uniquely identifies an AWS
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] asset_type
    #   The type of file your data is stored in. Currently, the supported
    #   asset type is S3\_SNAPSHOT.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Dates and times in AWS Data Exchange are recorded in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of a resource.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the model.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   A property that defines the data set as OWNED by the account (for
    #   providers) or ENTITLED to the account (for subscribers). When an
    #   owned data set is published in a product, AWS Data Exchange creates
    #   a copy of the data set. Subscribers can access that copy of the data
    #   set as an entitled data set.
    #   @return [String]
    #
    # @!attribute [rw] origin_details
    #   @return [Types::OriginDetails]
    #
    # @!attribute [rw] source_id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Dates and times in AWS Data Exchange are recorded in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/UpdateDataSetResponse AWS API Documentation
    #
    class UpdateDataSetResponse < Struct.new(
      :arn,
      :asset_type,
      :created_at,
      :description,
      :id,
      :name,
      :origin,
      :origin_details,
      :source_id,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to update a revision.
    #
    # @note When making an API call, you may pass UpdateRevisionRequest
    #   data as a hash:
    #
    #       {
    #         comment: "__stringMin0Max16384",
    #         data_set_id: "__string", # required
    #         finalized: false,
    #         revision_id: "__string", # required
    #       }
    #
    # @!attribute [rw] comment
    #   An optional comment about the revision.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   @return [String]
    #
    # @!attribute [rw] finalized
    #   Finalizing a revision tells AWS Data Exchange that your changes to
    #   the assets in the revision are complete. After it's in this
    #   read-only state, you can publish the revision to your products.
    #   @return [Boolean]
    #
    # @!attribute [rw] revision_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/UpdateRevisionRequest AWS API Documentation
    #
    class UpdateRevisionRequest < Struct.new(
      :comment,
      :data_set_id,
      :finalized,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   An Amazon Resource Name (ARN) that uniquely identifies an AWS
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Dates and times in AWS Data Exchange are recorded in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] data_set_id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] finalized
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] source_id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Dates and times in AWS Data Exchange are recorded in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/UpdateRevisionResponse AWS API Documentation
    #
    class UpdateRevisionResponse < Struct.new(
      :arn,
      :comment,
      :created_at,
      :data_set_id,
      :finalized,
      :id,
      :source_id,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was invalid.
    #
    # @!attribute [rw] message
    #   The message that informs you about what was invalid about the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
