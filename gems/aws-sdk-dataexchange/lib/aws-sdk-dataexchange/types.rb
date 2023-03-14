# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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

    # What occurs after a certain event.
    #
    # @!attribute [rw] export_revision_to_s3
    #   Details for the export revision to Amazon S3 action.
    #   @return [Types::AutoExportRevisionToS3RequestDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/Action AWS API Documentation
    #
    class Action < Struct.new(
      :export_revision_to_s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # The API Gateway API that is the asset.
    #
    # @!attribute [rw] api_description
    #   The API description of the API asset.
    #   @return [String]
    #
    # @!attribute [rw] api_endpoint
    #   The API endpoint of the API asset.
    #   @return [String]
    #
    # @!attribute [rw] api_id
    #   The unique identifier of the API asset.
    #   @return [String]
    #
    # @!attribute [rw] api_key
    #   The API key of the API asset.
    #   @return [String]
    #
    # @!attribute [rw] api_name
    #   The API name of the API asset.
    #   @return [String]
    #
    # @!attribute [rw] api_specification_download_url
    #   The download URL of the API specification of the API asset.
    #   @return [String]
    #
    # @!attribute [rw] api_specification_download_url_expires_at
    #   The date and time that the upload URL expires, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] protocol_type
    #   The protocol type of the API asset.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   The stage of the API asset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ApiGatewayApiAsset AWS API Documentation
    #
    class ApiGatewayApiAsset < Struct.new(
      :api_description,
      :api_endpoint,
      :api_id,
      :api_key,
      :api_name,
      :api_specification_download_url,
      :api_specification_download_url_expires_at,
      :protocol_type,
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The destination for the asset.
    #
    # @!attribute [rw] asset_id
    #   The unique identifier for the asset.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The Amazon S3 bucket that is the destination for the asset.
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

    # Details about the asset.
    #
    # @!attribute [rw] s3_snapshot_asset
    #   The Amazon S3 object that is the asset.
    #   @return [Types::S3SnapshotAsset]
    #
    # @!attribute [rw] redshift_data_share_asset
    #   The Amazon Redshift datashare that is the asset.
    #   @return [Types::RedshiftDataShareAsset]
    #
    # @!attribute [rw] api_gateway_api_asset
    #   Information about the API Gateway API asset.
    #   @return [Types::ApiGatewayApiAsset]
    #
    # @!attribute [rw] s3_data_access_asset
    #   The Amazon S3 data access that is the asset.
    #   @return [Types::S3DataAccessAsset]
    #
    # @!attribute [rw] lake_formation_data_permission_asset
    #   The AWS Lake Formation data permission that is the asset.
    #   @return [Types::LakeFormationDataPermissionAsset]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/AssetDetails AWS API Documentation
    #
    class AssetDetails < Struct.new(
      :s3_snapshot_asset,
      :redshift_data_share_asset,
      :api_gateway_api_asset,
      :s3_data_access_asset,
      :lake_formation_data_permission_asset)
      SENSITIVE = []
      include Aws::Structure
    end

    # An asset in AWS Data Exchange is a piece of data (Amazon S3 object) or
    # a means of fulfilling data (Amazon Redshift datashare or Amazon API
    # Gateway API, AWS Lake Formation data permission, or Amazon S3 data
    # access). The asset can be a structured data file, an image file, or
    # some other data file that can be stored as an Amazon S3 object, an
    # Amazon API Gateway API, or an Amazon Redshift datashare, an AWS Lake
    # Formation data permission, or an Amazon S3 data access. When you
    # create an import job for your files, API Gateway APIs, Amazon Redshift
    # datashares, AWS Lake Formation data permission, or Amazon S3 data
    # access, you create an asset in AWS Data Exchange.
    #
    # @!attribute [rw] arn
    #   The ARN for the asset.
    #   @return [String]
    #
    # @!attribute [rw] asset_details
    #   Details about the asset.
    #   @return [Types::AssetDetails]
    #
    # @!attribute [rw] asset_type
    #   The type of asset that is added to a data set.
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
    #   The name of the asset. When importing from Amazon S3, the Amazon S3
    #   object key is used as the asset name. When exporting to Amazon S3,
    #   the asset name is used as default target Amazon S3 object key. When
    #   importing from Amazon API Gateway API, the API name is used as the
    #   asset name. When importing from Amazon Redshift, the datashare name
    #   is used as the asset name. When importing from AWS Lake Formation,
    #   the static values of "Database(s) included in LF-tag policy" or
    #   "Table(s) included in LF-tag policy" are used as the asset name.
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
    # @!attribute [rw] bucket
    #   The Amazon S3 bucket that's part of the source of the asset.
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

    # A revision destination is the Amazon S3 bucket folder destination to
    # where the export will be sent.
    #
    # @!attribute [rw] bucket
    #   The Amazon S3 bucket that is the destination for the event action.
    #   @return [String]
    #
    # @!attribute [rw] key_pattern
    #   A string representing the pattern for generated names of the
    #   individual assets in the revision. For more information about key
    #   patterns, see [Key patterns when exporting revisions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/data-exchange/latest/userguide/jobs.html#revision-export-keypatterns
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/AutoExportRevisionDestinationEntry AWS API Documentation
    #
    class AutoExportRevisionDestinationEntry < Struct.new(
      :bucket,
      :key_pattern)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the operation to be performed by the job.
    #
    # @!attribute [rw] encryption
    #   Encryption configuration for the auto export job.
    #   @return [Types::ExportServerSideEncryption]
    #
    # @!attribute [rw] revision_destination
    #   A revision destination is the Amazon S3 bucket folder destination to
    #   where the export will be sent.
    #   @return [Types::AutoExportRevisionDestinationEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/AutoExportRevisionToS3RequestDetails AWS API Documentation
    #
    class AutoExportRevisionToS3RequestDetails < Struct.new(
      :encryption,
      :revision_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The unique identifier for a job.
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

    # @!attribute [rw] asset_type
    #   The type of asset that is added to a data set.
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
    #   The ARN for the data set.
    #   @return [String]
    #
    # @!attribute [rw] asset_type
    #   The type of asset that is added to a data set.
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
    # @!attribute [rw] tags
    #   The tags for the data set.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the data set was last updated, in ISO 8601
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

    # @!attribute [rw] action
    #   What occurs after a certain event.
    #   @return [Types::Action]
    #
    # @!attribute [rw] event
    #   What occurs to start an action.
    #   @return [Types::Event]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/CreateEventActionRequest AWS API Documentation
    #
    class CreateEventActionRequest < Struct.new(
      :action,
      :event)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   What occurs after a certain event.
    #   @return [Types::Action]
    #
    # @!attribute [rw] arn
    #   The ARN for the event action.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the event action was created, in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] event
    #   What occurs to start an action.
    #   @return [Types::Event]
    #
    # @!attribute [rw] id
    #   The unique identifier for the event action.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the event action was last updated, in ISO
    #   8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/CreateEventActionResponse AWS API Documentation
    #
    class CreateEventActionResponse < Struct.new(
      :action,
      :arn,
      :created_at,
      :event,
      :id,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The ARN for the job.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the job was created, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] details
    #   Details about the job.
    #   @return [Types::ResponseDetails]
    #
    # @!attribute [rw] errors
    #   The errors associated with jobs.
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

    # @!attribute [rw] comment
    #   An optional comment about the revision.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The unique identifier for a data set.
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
    #   The unique identifier for the data set associated with the data set
    #   revision.
    #   @return [String]
    #
    # @!attribute [rw] finalized
    #   To publish a revision to a data set in a product, the revision must
    #   first be finalized. Finalizing a revision tells AWS Data Exchange
    #   that your changes to the assets in the revision are complete. After
    #   it's in this read-only state, you can publish the revision to your
    #   products. Finalized revisions can be published through the AWS Data
    #   Exchange console or the AWS Marketplace Catalog API, using the
    #   StartChangeSet AWS Marketplace Catalog API action. When using the
    #   API, revisions are uniquely identified by their ARN.
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
    # @!attribute [rw] tags
    #   The tags for the revision.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the revision was last updated, in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] revocation_comment
    #   A required comment to inform subscribers of the reason their access
    #   to the revision was revoked.
    #   @return [String]
    #
    # @!attribute [rw] revoked
    #   A status indicating that subscribers' access to the revision was
    #   revoked.
    #   @return [Boolean]
    #
    # @!attribute [rw] revoked_at
    #   The date and time that the revision was revoked, in ISO 8601 format.
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
      :updated_at,
      :revocation_comment,
      :revoked,
      :revoked_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the operation to create an Amazon S3 data access from an S3
    # bucket.
    #
    # @!attribute [rw] asset_source
    #   Details about the S3 data access source asset.
    #   @return [Types::S3DataAccessAssetSourceEntry]
    #
    # @!attribute [rw] data_set_id
    #   The unique identifier for the data set associated with the creation
    #   of this Amazon S3 data access.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for a revision.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/CreateS3DataAccessFromS3BucketRequestDetails AWS API Documentation
    #
    class CreateS3DataAccessFromS3BucketRequestDetails < Struct.new(
      :asset_source,
      :data_set_id,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the response of the operation to create an S3 data
    # access from an S3 bucket.
    #
    # @!attribute [rw] asset_source
    #   Details about the asset source from an Amazon S3 bucket.
    #   @return [Types::S3DataAccessAssetSourceEntry]
    #
    # @!attribute [rw] data_set_id
    #   The unique identifier for this data set.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for the revision.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/CreateS3DataAccessFromS3BucketResponseDetails AWS API Documentation
    #
    class CreateS3DataAccessFromS3BucketResponseDetails < Struct.new(
      :asset_source,
      :data_set_id,
      :revision_id)
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
    #   The type of asset that is added to a data set.
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

    # The LF-tag policy for database resources.
    #
    # @!attribute [rw] expression
    #   A list of LF-tag conditions that apply to database resources.
    #   @return [Array<Types::LFTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/DatabaseLFTagPolicy AWS API Documentation
    #
    class DatabaseLFTagPolicy < Struct.new(
      :expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # The LF-tag policy and permissions for database resources.
    #
    # @!attribute [rw] expression
    #   A list of LF-tag conditions that apply to database resources.
    #   @return [Array<Types::LFTag>]
    #
    # @!attribute [rw] permissions
    #   The permissions granted to subscribers on database resources.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/DatabaseLFTagPolicyAndPermissions AWS API Documentation
    #
    class DatabaseLFTagPolicyAndPermissions < Struct.new(
      :expression,
      :permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_id
    #   The unique identifier for an asset.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The unique identifier for a data set.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for a revision.
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

    # @!attribute [rw] data_set_id
    #   The unique identifier for a data set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/DeleteDataSetRequest AWS API Documentation
    #
    class DeleteDataSetRequest < Struct.new(
      :data_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_action_id
    #   The unique identifier for the event action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/DeleteEventActionRequest AWS API Documentation
    #
    class DeleteEventActionRequest < Struct.new(
      :event_action_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_set_id
    #   The unique identifier for a data set.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for a revision.
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

    # Information about the job error.
    #
    # @!attribute [rw] import_asset_from_signed_url_job_error_details
    #   Information about the job error.
    #   @return [Types::ImportAssetFromSignedUrlJobErrorDetails]
    #
    # @!attribute [rw] import_assets_from_s3_job_error_details
    #   Details about the job error.
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

    # What occurs to start an action.
    #
    # @!attribute [rw] revision_published
    #   What occurs to start the revision publish action.
    #   @return [Types::RevisionPublished]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/Event AWS API Documentation
    #
    class Event < Struct.new(
      :revision_published)
      SENSITIVE = []
      include Aws::Structure
    end

    # An event action is an object that defines the relationship between a
    # specific event and an automated action that will be taken on behalf of
    # the customer.
    #
    # @!attribute [rw] action
    #   What occurs after a certain event.
    #   @return [Types::Action]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the event action.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the event action was created, in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] event
    #   What occurs to start an action.
    #   @return [Types::Event]
    #
    # @!attribute [rw] id
    #   The unique identifier for the event action.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the event action was last updated, in ISO
    #   8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/EventActionEntry AWS API Documentation
    #
    class EventActionEntry < Struct.new(
      :action,
      :arn,
      :created_at,
      :event,
      :id,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the operation to be performed by the job.
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

    # Details of the operation to be performed by the job.
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
    # @!attribute [rw] revision_destinations
    #   The destination for the revision.
    #   @return [Array<Types::RevisionDestinationEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ExportRevisionsToS3RequestDetails AWS API Documentation
    #
    class ExportRevisionsToS3RequestDetails < Struct.new(
      :data_set_id,
      :encryption,
      :revision_destinations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the export revisions to Amazon S3 response.
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
    # @!attribute [rw] revision_destinations
    #   The destination in Amazon S3 where the revision is exported.
    #   @return [Array<Types::RevisionDestinationEntry>]
    #
    # @!attribute [rw] event_action_arn
    #   The Amazon Resource Name (ARN) of the event action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ExportRevisionsToS3ResponseDetails AWS API Documentation
    #
    class ExportRevisionsToS3ResponseDetails < Struct.new(
      :data_set_id,
      :encryption,
      :revision_destinations,
      :event_action_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Encryption configuration of the export job. Includes the encryption
    # type in addition to the AWS KMS key. The KMS key is only necessary if
    # you chose the KMS encryption type.
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the AWS KMS key you want to use to
    #   encrypt the Amazon S3 objects. This parameter is required if you
    #   choose aws:kms as an encryption type.
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

    # @!attribute [rw] asset_id
    #   The unique identifier for an asset.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The unique identifier for a data set.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for a revision.
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
    #   The ARN for the asset.
    #   @return [String]
    #
    # @!attribute [rw] asset_details
    #   Details about the asset.
    #   @return [Types::AssetDetails]
    #
    # @!attribute [rw] asset_type
    #   The type of asset that is added to a data set.
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
    #   The name of the asset. When importing from Amazon S3, the Amazon S3
    #   object key is used as the asset name. When exporting to Amazon S3,
    #   the asset name is used as default target Amazon S3 object key. When
    #   importing from Amazon API Gateway API, the API name is used as the
    #   asset name. When importing from Amazon Redshift, the datashare name
    #   is used as the asset name. When importing from AWS Lake Formation,
    #   the static values of "Database(s) included in the LF-tag policy"
    #   or "Table(s) included in the LF-tag policy" are used as the asset
    #   name.
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

    # @!attribute [rw] data_set_id
    #   The unique identifier for a data set.
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
    #   The ARN for the data set.
    #   @return [String]
    #
    # @!attribute [rw] asset_type
    #   The type of asset that is added to a data set.
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
    # @!attribute [rw] tags
    #   The tags for the data set.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the data set was last updated, in ISO 8601
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

    # @!attribute [rw] event_action_id
    #   The unique identifier for the event action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/GetEventActionRequest AWS API Documentation
    #
    class GetEventActionRequest < Struct.new(
      :event_action_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   What occurs after a certain event.
    #   @return [Types::Action]
    #
    # @!attribute [rw] arn
    #   The ARN for the event action.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the event action was created, in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] event
    #   What occurs to start an action.
    #   @return [Types::Event]
    #
    # @!attribute [rw] id
    #   The unique identifier for the event action.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the event action was last updated, in ISO
    #   8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/GetEventActionResponse AWS API Documentation
    #
    class GetEventActionResponse < Struct.new(
      :action,
      :arn,
      :created_at,
      :event,
      :id,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The unique identifier for a job.
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
    #   The ARN for the job.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the job was created, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] details
    #   Details about the job.
    #   @return [Types::ResponseDetails]
    #
    # @!attribute [rw] errors
    #   The errors associated with jobs.
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

    # @!attribute [rw] data_set_id
    #   The unique identifier for a data set.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for a revision.
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
    #   The unique identifier for the data set associated with the data set
    #   revision.
    #   @return [String]
    #
    # @!attribute [rw] finalized
    #   To publish a revision to a data set in a product, the revision must
    #   first be finalized. Finalizing a revision tells AWS Data Exchange
    #   that your changes to the assets in the revision are complete. After
    #   it's in this read-only state, you can publish the revision to your
    #   products. Finalized revisions can be published through the AWS Data
    #   Exchange console or the AWS Marketplace Catalog API, using the
    #   StartChangeSet AWS Marketplace Catalog API action. When using the
    #   API, revisions are uniquely identified by their ARN.
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
    # @!attribute [rw] tags
    #   The tags for the revision.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the revision was last updated, in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] revocation_comment
    #   A required comment to inform subscribers of the reason their access
    #   to the revision was revoked.
    #   @return [String]
    #
    # @!attribute [rw] revoked
    #   A status indicating that subscribers' access to the revision was
    #   revoked.
    #   @return [Boolean]
    #
    # @!attribute [rw] revoked_at
    #   The date and time that the revision was revoked, in ISO 8601 format.
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
      :updated_at,
      :revocation_comment,
      :revoked,
      :revoked_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request details.
    #
    # @!attribute [rw] api_description
    #   The API description. Markdown supported.
    #   @return [String]
    #
    # @!attribute [rw] api_id
    #   The API Gateway API ID.
    #   @return [String]
    #
    # @!attribute [rw] api_key
    #   The API Gateway API key.
    #   @return [String]
    #
    # @!attribute [rw] api_name
    #   The API name.
    #   @return [String]
    #
    # @!attribute [rw] api_specification_md_5_hash
    #   The Base64-encoded MD5 hash of the OpenAPI 3.0 JSON API
    #   specification file. It is used to ensure the integrity of the file.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The data set ID.
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
    #   The protocol type.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The revision ID.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   The API stage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ImportAssetFromApiGatewayApiRequestDetails AWS API Documentation
    #
    class ImportAssetFromApiGatewayApiRequestDetails < Struct.new(
      :api_description,
      :api_id,
      :api_key,
      :api_name,
      :api_specification_md_5_hash,
      :data_set_id,
      :protocol_type,
      :revision_id,
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response details.
    #
    # @!attribute [rw] api_description
    #   The API description.
    #   @return [String]
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] api_key
    #   The API key.
    #   @return [String]
    #
    # @!attribute [rw] api_name
    #   The API name.
    #   @return [String]
    #
    # @!attribute [rw] api_specification_md_5_hash
    #   The Base64-encoded Md5 hash for the API asset, used to ensure the
    #   integrity of the API at that location.
    #   @return [String]
    #
    # @!attribute [rw] api_specification_upload_url
    #   The upload URL of the API specification.
    #   @return [String]
    #
    # @!attribute [rw] api_specification_upload_url_expires_at
    #   The date and time that the upload URL expires, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] data_set_id
    #   The data set ID.
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
    #   The protocol type.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The revision ID.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   The API stage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ImportAssetFromApiGatewayApiResponseDetails AWS API Documentation
    #
    class ImportAssetFromApiGatewayApiResponseDetails < Struct.new(
      :api_description,
      :api_id,
      :api_key,
      :api_name,
      :api_specification_md_5_hash,
      :api_specification_upload_url,
      :api_specification_upload_url_expires_at,
      :data_set_id,
      :protocol_type,
      :revision_id,
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the job error.
    #
    # @!attribute [rw] asset_name
    #   Details about the job error.
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
    # @!attribute [rw] asset_name
    #   The name of the asset. When importing from Amazon S3, the Amazon S3
    #   object key is used as the asset name.
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
    #   The name for the asset associated with this import job.
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

    # Details about the assets imported from an AWS Lake Formation tag
    # policy request.
    #
    # @!attribute [rw] catalog_id
    #   The identifier for the AWS Glue Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   A structure for the database object.
    #   @return [Types::DatabaseLFTagPolicyAndPermissions]
    #
    # @!attribute [rw] table
    #   A structure for the table object.
    #   @return [Types::TableLFTagPolicyAndPermissions]
    #
    # @!attribute [rw] role_arn
    #   The IAM role's ARN that allows AWS Data Exchange to assume the role
    #   and grant and revoke permissions of subscribers to AWS Lake
    #   Formation data permissions.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The unique identifier for the data set associated with this import
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for the revision associated with this import
    #   job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ImportAssetsFromLakeFormationTagPolicyRequestDetails AWS API Documentation
    #
    class ImportAssetsFromLakeFormationTagPolicyRequestDetails < Struct.new(
      :catalog_id,
      :database,
      :table,
      :role_arn,
      :data_set_id,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details from an import AWS Lake Formation tag policy job response.
    #
    # @!attribute [rw] catalog_id
    #   The identifier for the AWS Glue Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   A structure for the database object.
    #   @return [Types::DatabaseLFTagPolicyAndPermissions]
    #
    # @!attribute [rw] table
    #   A structure for the table object.
    #   @return [Types::TableLFTagPolicyAndPermissions]
    #
    # @!attribute [rw] role_arn
    #   The IAM role's ARN that allows AWS Data Exchange to assume the role
    #   and grant and revoke permissions to AWS Lake Formation data
    #   permissions.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The unique identifier for the data set associated with this import
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for the revision associated with this import
    #   job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ImportAssetsFromLakeFormationTagPolicyResponseDetails AWS API Documentation
    #
    class ImportAssetsFromLakeFormationTagPolicyResponseDetails < Struct.new(
      :catalog_id,
      :database,
      :table,
      :role_arn,
      :data_set_id,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details from an import from Amazon Redshift datashare request.
    #
    # @!attribute [rw] asset_sources
    #   A list of Amazon Redshift datashare assets.
    #   @return [Array<Types::RedshiftDataShareAssetSourceEntry>]
    #
    # @!attribute [rw] data_set_id
    #   The unique identifier for the data set associated with this import
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for the revision associated with this import
    #   job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ImportAssetsFromRedshiftDataSharesRequestDetails AWS API Documentation
    #
    class ImportAssetsFromRedshiftDataSharesRequestDetails < Struct.new(
      :asset_sources,
      :data_set_id,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details from an import from Amazon Redshift datashare response.
    #
    # @!attribute [rw] asset_sources
    #   A list of Amazon Redshift datashare asset sources.
    #   @return [Array<Types::RedshiftDataShareAssetSourceEntry>]
    #
    # @!attribute [rw] data_set_id
    #   The unique identifier for the data set associated with this import
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for the revision associated with this import
    #   job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ImportAssetsFromRedshiftDataSharesResponseDetails AWS API Documentation
    #
    class ImportAssetsFromRedshiftDataSharesResponseDetails < Struct.new(
      :asset_sources,
      :data_set_id,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the operation to be performed by the job.
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
    #   The details about the job error.
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

    # The Amazon Resource Name (ARN) of the AWS KMS key used to encrypt the
    # shared S3 objects.
    #
    # @!attribute [rw] kms_key_arn
    #   The AWS KMS CMK (Key Management System Customer Managed Key) used to
    #   encrypt S3 objects in the shared S3 Bucket. AWS Data exchange will
    #   create a KMS grant for each subscriber to allow them to access and
    #   decrypt their entitled data that is encrypted using this KMS key
    #   specified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/KmsKeyToGrant AWS API Documentation
    #
    class KmsKeyToGrant < Struct.new(
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the AWS Lake Formation resource (Table or Database)
    # included in the AWS Lake Formation data permission.
    #
    # @!attribute [rw] database
    #   Details about the database resource included in the AWS Lake
    #   Formation data permission.
    #   @return [Types::DatabaseLFTagPolicy]
    #
    # @!attribute [rw] table
    #   Details about the table resource included in the AWS Lake Formation
    #   data permission.
    #   @return [Types::TableLFTagPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/LFResourceDetails AWS API Documentation
    #
    class LFResourceDetails < Struct.new(
      :database,
      :table)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that allows an LF-admin to grant permissions on certain
    # conditions.
    #
    # @!attribute [rw] tag_key
    #   The key name for the LF-tag.
    #   @return [String]
    #
    # @!attribute [rw] tag_values
    #   A list of LF-tag values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/LFTag AWS API Documentation
    #
    class LFTag < Struct.new(
      :tag_key,
      :tag_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the LF-tag policy.
    #
    # @!attribute [rw] catalog_id
    #   The identifier for the AWS Glue Data Catalog.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type for which the LF-tag policy applies.
    #   @return [String]
    #
    # @!attribute [rw] resource_details
    #   Details for the Lake Formation Resources included in the LF-tag
    #   policy.
    #   @return [Types::LFResourceDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/LFTagPolicyDetails AWS API Documentation
    #
    class LFTagPolicyDetails < Struct.new(
      :catalog_id,
      :resource_type,
      :resource_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The AWS Lake Formation data permission asset.
    #
    # @!attribute [rw] lake_formation_data_permission_details
    #   Details about the AWS Lake Formation data permission.
    #   @return [Types::LakeFormationDataPermissionDetails]
    #
    # @!attribute [rw] lake_formation_data_permission_type
    #   The data permission type.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   The permissions granted to the subscribers on the resource.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   The IAM role's ARN that allows AWS Data Exchange to assume the role
    #   and grant and revoke permissions to AWS Lake Formation data
    #   permissions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/LakeFormationDataPermissionAsset AWS API Documentation
    #
    class LakeFormationDataPermissionAsset < Struct.new(
      :lake_formation_data_permission_details,
      :lake_formation_data_permission_type,
      :permissions,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the AWS Lake Formation data permission.
    #
    # @!attribute [rw] lf_tag_policy
    #   Details about the LF-tag policy.
    #   @return [Types::LFTagPolicyDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/LakeFormationDataPermissionDetails AWS API Documentation
    #
    class LakeFormationDataPermissionDetails < Struct.new(
      :lf_tag_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_set_id
    #   The unique identifier for a data set.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results returned by a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
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
    #   The asset objects listed by the request.
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

    # @!attribute [rw] max_results
    #   The maximum number of results returned by a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   A property that defines the data set as OWNED by the account (for
    #   providers) or ENTITLED to the account (for subscribers).
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
    #   The data set objects listed by the request.
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

    # @!attribute [rw] event_source_id
    #   The unique identifier for the event source.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results returned by a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ListEventActionsRequest AWS API Documentation
    #
    class ListEventActionsRequest < Struct.new(
      :event_source_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_actions
    #   The event action objects listed by the request.
    #   @return [Array<Types::EventActionEntry>]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ListEventActionsResponse AWS API Documentation
    #
    class ListEventActionsResponse < Struct.new(
      :event_actions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_set_id
    #   The unique identifier for a data set.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results returned by a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for a revision.
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
    #   The jobs listed by the request.
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

    # @!attribute [rw] data_set_id
    #   The unique identifier for a data set.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results returned by a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token value retrieved from a previous call to access the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for a revision.
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
    #   The asset objects listed by the request.
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

    # @!attribute [rw] resource_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies an AWS
    #   resource.
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
    #   A label that consists of a customer-defined key and an optional
    #   value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the origin of the data set.
    #
    # @!attribute [rw] product_id
    #   The product ID of the origin of the data set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/OriginDetails AWS API Documentation
    #
    class OriginDetails < Struct.new(
      :product_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Redshift datashare asset.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the datashare asset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/RedshiftDataShareAsset AWS API Documentation
    #
    class RedshiftDataShareAsset < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source of the Amazon Redshift datashare asset.
    #
    # @!attribute [rw] data_share_arn
    #   The Amazon Resource Name (ARN) of the datashare asset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/RedshiftDataShareAssetSourceEntry AWS API Documentation
    #
    class RedshiftDataShareAssetSourceEntry < Struct.new(
      :data_share_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details for the request.
    #
    # @!attribute [rw] export_asset_to_signed_url
    #   Details about the export to signed URL request.
    #   @return [Types::ExportAssetToSignedUrlRequestDetails]
    #
    # @!attribute [rw] export_assets_to_s3
    #   Details about the export to Amazon S3 request.
    #   @return [Types::ExportAssetsToS3RequestDetails]
    #
    # @!attribute [rw] export_revisions_to_s3
    #   Details about the export to Amazon S3 request.
    #   @return [Types::ExportRevisionsToS3RequestDetails]
    #
    # @!attribute [rw] import_asset_from_signed_url
    #   Details about the import from Amazon S3 request.
    #   @return [Types::ImportAssetFromSignedUrlRequestDetails]
    #
    # @!attribute [rw] import_assets_from_s3
    #   Details about the import asset from API Gateway API request.
    #   @return [Types::ImportAssetsFromS3RequestDetails]
    #
    # @!attribute [rw] import_assets_from_redshift_data_shares
    #   Details from an import from Amazon Redshift datashare request.
    #   @return [Types::ImportAssetsFromRedshiftDataSharesRequestDetails]
    #
    # @!attribute [rw] import_asset_from_api_gateway_api
    #   Details about the import from signed URL request.
    #   @return [Types::ImportAssetFromApiGatewayApiRequestDetails]
    #
    # @!attribute [rw] create_s3_data_access_from_s3_bucket
    #   Details of the request to create S3 data access from the Amazon S3
    #   bucket.
    #   @return [Types::CreateS3DataAccessFromS3BucketRequestDetails]
    #
    # @!attribute [rw] import_assets_from_lake_formation_tag_policy
    #   Request details for the ImportAssetsFromLakeFormationTagPolicy job.
    #   @return [Types::ImportAssetsFromLakeFormationTagPolicyRequestDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/RequestDetails AWS API Documentation
    #
    class RequestDetails < Struct.new(
      :export_asset_to_signed_url,
      :export_assets_to_s3,
      :export_revisions_to_s3,
      :import_asset_from_signed_url,
      :import_assets_from_s3,
      :import_assets_from_redshift_data_shares,
      :import_asset_from_api_gateway_api,
      :create_s3_data_access_from_s3_bucket,
      :import_assets_from_lake_formation_tag_policy)
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
    # @!attribute [rw] export_revisions_to_s3
    #   Details for the export revisions to Amazon S3 response.
    #   @return [Types::ExportRevisionsToS3ResponseDetails]
    #
    # @!attribute [rw] import_asset_from_signed_url
    #   Details for the import from signed URL response.
    #   @return [Types::ImportAssetFromSignedUrlResponseDetails]
    #
    # @!attribute [rw] import_assets_from_s3
    #   Details for the import from Amazon S3 response.
    #   @return [Types::ImportAssetsFromS3ResponseDetails]
    #
    # @!attribute [rw] import_assets_from_redshift_data_shares
    #   Details from an import from Amazon Redshift datashare response.
    #   @return [Types::ImportAssetsFromRedshiftDataSharesResponseDetails]
    #
    # @!attribute [rw] import_asset_from_api_gateway_api
    #   The response details.
    #   @return [Types::ImportAssetFromApiGatewayApiResponseDetails]
    #
    # @!attribute [rw] create_s3_data_access_from_s3_bucket
    #   Response details from the CreateS3DataAccessFromS3Bucket job.
    #   @return [Types::CreateS3DataAccessFromS3BucketResponseDetails]
    #
    # @!attribute [rw] import_assets_from_lake_formation_tag_policy
    #   Response details from the ImportAssetsFromLakeFormationTagPolicy
    #   job.
    #   @return [Types::ImportAssetsFromLakeFormationTagPolicyResponseDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ResponseDetails AWS API Documentation
    #
    class ResponseDetails < Struct.new(
      :export_asset_to_signed_url,
      :export_assets_to_s3,
      :export_revisions_to_s3,
      :import_asset_from_signed_url,
      :import_assets_from_s3,
      :import_assets_from_redshift_data_shares,
      :import_asset_from_api_gateway_api,
      :create_s3_data_access_from_s3_bucket,
      :import_assets_from_lake_formation_tag_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The destination where the assets in the revision will be exported.
    #
    # @!attribute [rw] bucket
    #   The Amazon S3 bucket that is the destination for the assets in the
    #   revision.
    #   @return [String]
    #
    # @!attribute [rw] key_pattern
    #   A string representing the pattern for generated names of the
    #   individual assets in the revision. For more information about key
    #   patterns, see [Key patterns when exporting revisions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/data-exchange/latest/userguide/jobs.html#revision-export-keypatterns
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for the revision.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/RevisionDestinationEntry AWS API Documentation
    #
    class RevisionDestinationEntry < Struct.new(
      :bucket,
      :key_pattern,
      :revision_id)
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
    #   The unique identifier for the data set associated with the data set
    #   revision.
    #   @return [String]
    #
    # @!attribute [rw] finalized
    #   To publish a revision to a data set in a product, the revision must
    #   first be finalized. Finalizing a revision tells AWS Data Exchange
    #   that your changes to the assets in the revision are complete. After
    #   it's in this read-only state, you can publish the revision to your
    #   products. Finalized revisions can be published through the AWS Data
    #   Exchange console or the AWS Marketplace Catalog API, using the
    #   StartChangeSet AWS Marketplace Catalog API action. When using the
    #   API, revisions are uniquely identified by their ARN.
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
    # @!attribute [rw] revocation_comment
    #   A required comment to inform subscribers of the reason their access
    #   to the revision was revoked.
    #   @return [String]
    #
    # @!attribute [rw] revoked
    #   A status indicating that subscribers' access to the revision was
    #   revoked.
    #   @return [Boolean]
    #
    # @!attribute [rw] revoked_at
    #   The date and time that the revision was revoked, in ISO 8601 format.
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
      :updated_at,
      :revocation_comment,
      :revoked,
      :revoked_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the published revision.
    #
    # @!attribute [rw] data_set_id
    #   The data set ID of the published revision.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/RevisionPublished AWS API Documentation
    #
    class RevisionPublished < Struct.new(
      :data_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_set_id
    #   The unique identifier for a data set.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for a revision.
    #   @return [String]
    #
    # @!attribute [rw] revocation_comment
    #   A required comment to inform subscribers of the reason their access
    #   to the revision was revoked.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/RevokeRevisionRequest AWS API Documentation
    #
    class RevokeRevisionRequest < Struct.new(
      :data_set_id,
      :revision_id,
      :revocation_comment)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The unique identifier for the data set associated with the data set
    #   revision.
    #   @return [String]
    #
    # @!attribute [rw] finalized
    #   To publish a revision to a data set in a product, the revision must
    #   first be finalized. Finalizing a revision tells AWS Data Exchange
    #   that changes to the assets in the revision are complete. After it's
    #   in this read-only state, you can publish the revision to your
    #   products. Finalized revisions can be published through the AWS Data
    #   Exchange console or the AWS Marketplace Catalog API, using the
    #   StartChangeSet AWS Marketplace Catalog API action. When using the
    #   API, revisions are uniquely identified by their ARN.
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
    # @!attribute [rw] revocation_comment
    #   A required comment to inform subscribers of the reason their access
    #   to the revision was revoked.
    #   @return [String]
    #
    # @!attribute [rw] revoked
    #   A status indicating that subscribers' access to the revision was
    #   revoked.
    #   @return [Boolean]
    #
    # @!attribute [rw] revoked_at
    #   The date and time that the revision was revoked, in ISO 8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/RevokeRevisionResponse AWS API Documentation
    #
    class RevokeRevisionResponse < Struct.new(
      :arn,
      :comment,
      :created_at,
      :data_set_id,
      :finalized,
      :id,
      :source_id,
      :updated_at,
      :revocation_comment,
      :revoked,
      :revoked_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 data access that is the asset.
    #
    # @!attribute [rw] bucket
    #   The Amazon S3 bucket hosting data to be shared in the S3 data
    #   access.
    #   @return [String]
    #
    # @!attribute [rw] key_prefixes
    #   The Amazon S3 bucket used for hosting shared data in the Amazon S3
    #   data access.
    #   @return [Array<String>]
    #
    # @!attribute [rw] keys
    #   S3 keys made available using this asset.
    #   @return [Array<String>]
    #
    # @!attribute [rw] s3_access_point_alias
    #   The automatically-generated bucket-style alias for your Amazon S3
    #   Access Point. Customers can access their entitled data using the S3
    #   Access Point alias.
    #   @return [String]
    #
    # @!attribute [rw] s3_access_point_arn
    #   The ARN for your Amazon S3 Access Point. Customers can also access
    #   their entitled data using the S3 Access Point ARN.
    #   @return [String]
    #
    # @!attribute [rw] kms_keys_to_grant
    #   List of AWS KMS CMKs (Key Management System Customer Managed Keys)
    #   and ARNs used to encrypt S3 objects being shared in this S3 Data
    #   Access asset. Providers must include all AWS KMS keys used to
    #   encrypt these shared S3 objects.
    #   @return [Array<Types::KmsKeyToGrant>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/S3DataAccessAsset AWS API Documentation
    #
    class S3DataAccessAsset < Struct.new(
      :bucket,
      :key_prefixes,
      :keys,
      :s3_access_point_alias,
      :s3_access_point_arn,
      :kms_keys_to_grant)
      SENSITIVE = []
      include Aws::Structure
    end

    # Source details for an Amazon S3 data access asset.
    #
    # @!attribute [rw] bucket
    #   The Amazon S3 bucket used for hosting shared data in the Amazon S3
    #   data access.
    #   @return [String]
    #
    # @!attribute [rw] key_prefixes
    #   Organizes Amazon S3 asset key prefixes stored in an Amazon S3
    #   bucket.
    #   @return [Array<String>]
    #
    # @!attribute [rw] keys
    #   The keys used to create the Amazon S3 data access.
    #   @return [Array<String>]
    #
    # @!attribute [rw] kms_keys_to_grant
    #   List of AWS KMS CMKs (Key Management System Customer Managed Keys)
    #   and ARNs used to encrypt S3 objects being shared in this S3 Data
    #   Access asset.
    #   @return [Array<Types::KmsKeyToGrant>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/S3DataAccessAssetSourceEntry AWS API Documentation
    #
    class S3DataAccessAssetSourceEntry < Struct.new(
      :bucket,
      :key_prefixes,
      :keys,
      :kms_keys_to_grant)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 object that is the asset.
    #
    # @!attribute [rw] size
    #   The size of the Amazon S3 object that is the object.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/S3SnapshotAsset AWS API Documentation
    #
    class S3SnapshotAsset < Struct.new(
      :size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] body
    #   The request body.
    #   @return [String]
    #
    # @!attribute [rw] query_string_parameters
    #   Attach query string parameters to the end of the URI (for example,
    #   /v1/examplePath?exampleParam=exampleValue).
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] asset_id
    #   Asset ID value for the API request.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   Data set ID value for the API request.
    #   @return [String]
    #
    # @!attribute [rw] request_headers
    #   Any header value prefixed with x-amzn-dataexchange-header- will have
    #   that stripped before sending the Asset API request. Use this when
    #   you want to override a header that AWS Data Exchange uses.
    #   Alternatively, you can use the header without a prefix to the HTTP
    #   request.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] method
    #   HTTP method value for the API request. Alternatively, you can use
    #   the appropriate verb in your request.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   URI path value for the API request. Alternatively, you can set the
    #   URI path directly by invoking /v1/\\\{pathValue\\}.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   Revision ID value for the API request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/SendApiAssetRequest AWS API Documentation
    #
    class SendApiAssetRequest < Struct.new(
      :body,
      :query_string_parameters,
      :asset_id,
      :data_set_id,
      :request_headers,
      :method,
      :path,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] body
    #   The response body from the underlying API tracked by the API asset.
    #   @return [String]
    #
    # @!attribute [rw] response_headers
    #   The response headers from the underlying API tracked by the API
    #   asset.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/SendApiAssetResponse AWS API Documentation
    #
    class SendApiAssetResponse < Struct.new(
      :body,
      :response_headers)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has exceeded the quotas imposed by the service.
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
    #   The request has exceeded the quotas imposed by the service.
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

    # @!attribute [rw] job_id
    #   The unique identifier for a job.
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

    # The LF-tag policy for a table resource.
    #
    # @!attribute [rw] expression
    #   A list of LF-tag conditions that apply to table resources.
    #   @return [Array<Types::LFTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/TableLFTagPolicy AWS API Documentation
    #
    class TableLFTagPolicy < Struct.new(
      :expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # The LF-tag policy and permissions that apply to table resources.
    #
    # @!attribute [rw] expression
    #   A list of LF-tag conditions that apply to table resources.
    #   @return [Array<Types::LFTag>]
    #
    # @!attribute [rw] permissions
    #   The permissions granted to subscribers on table resources.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/TableLFTagPolicyAndPermissions AWS API Documentation
    #
    class TableLFTagPolicyAndPermissions < Struct.new(
      :expression,
      :permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies an AWS
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A label that consists of a customer-defined key and an optional
    #   value.
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

    # @!attribute [rw] resource_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies an AWS
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The key tags.
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

    # @!attribute [rw] asset_id
    #   The unique identifier for an asset.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The unique identifier for a data set.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the asset. When importing from Amazon S3, the Amazon S3
    #   object key is used as the asset name. When exporting to Amazon S3,
    #   the asset name is used as default target Amazon S3 object key. When
    #   importing from Amazon API Gateway API, the API name is used as the
    #   asset name. When importing from Amazon Redshift, the datashare name
    #   is used as the asset name. When importing from AWS Lake Formation,
    #   the static values of "Database(s) included in the LF-tag policy"
    #   or "Table(s) included in LF-tag policy" are used as the name.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for a revision.
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
    #   The ARN for the asset.
    #   @return [String]
    #
    # @!attribute [rw] asset_details
    #   Details about the asset.
    #   @return [Types::AssetDetails]
    #
    # @!attribute [rw] asset_type
    #   The type of asset that is added to a data set.
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
    #   The name of the asset. When importing from Amazon S3, the Amazon S3
    #   object key is used as the asset name. When exporting to Amazon S3,
    #   the asset name is used as default target Amazon S3 object key. When
    #   importing from Amazon API Gateway API, the API name is used as the
    #   asset name. When importing from Amazon Redshift, the datashare name
    #   is used as the asset name. When importing from AWS Lake Formation,
    #   the static values of "Database(s) included in the LF-tag policy"-
    #   or "Table(s) included in LF-tag policy" are used as the asset
    #   name.
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

    # @!attribute [rw] data_set_id
    #   The unique identifier for a data set.
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
    #   The ARN for the data set.
    #   @return [String]
    #
    # @!attribute [rw] asset_type
    #   The type of asset that is added to a data set.
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

    # @!attribute [rw] action
    #   What occurs after a certain event.
    #   @return [Types::Action]
    #
    # @!attribute [rw] event_action_id
    #   The unique identifier for the event action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/UpdateEventActionRequest AWS API Documentation
    #
    class UpdateEventActionRequest < Struct.new(
      :action,
      :event_action_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action
    #   What occurs after a certain event.
    #   @return [Types::Action]
    #
    # @!attribute [rw] arn
    #   The ARN for the event action.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the event action was created, in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] event
    #   What occurs to start an action.
    #   @return [Types::Event]
    #
    # @!attribute [rw] id
    #   The unique identifier for the event action.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the event action was last updated, in ISO
    #   8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/UpdateEventActionResponse AWS API Documentation
    #
    class UpdateEventActionResponse < Struct.new(
      :action,
      :arn,
      :created_at,
      :event,
      :id,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] comment
    #   An optional comment about the revision.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The unique identifier for a data set.
    #   @return [String]
    #
    # @!attribute [rw] finalized
    #   Finalizing a revision tells AWS Data Exchange that your changes to
    #   the assets in the revision are complete. After it's in this
    #   read-only state, you can publish the revision to your products.
    #   @return [Boolean]
    #
    # @!attribute [rw] revision_id
    #   The unique identifier for a revision.
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
    #   The unique identifier for the data set associated with the data set
    #   revision.
    #   @return [String]
    #
    # @!attribute [rw] finalized
    #   To publish a revision to a data set in a product, the revision must
    #   first be finalized. Finalizing a revision tells AWS Data Exchange
    #   that changes to the assets in the revision are complete. After it's
    #   in this read-only state, you can publish the revision to your
    #   products. Finalized revisions can be published through the AWS Data
    #   Exchange console or the AWS Marketplace Catalog API, using the
    #   StartChangeSet AWS Marketplace Catalog API action. When using the
    #   API, revisions are uniquely identified by their ARN.
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
    # @!attribute [rw] revocation_comment
    #   A required comment to inform subscribers of the reason their access
    #   to the revision was revoked.
    #   @return [String]
    #
    # @!attribute [rw] revoked
    #   A status indicating that subscribers' access to the revision was
    #   revoked.
    #   @return [Boolean]
    #
    # @!attribute [rw] revoked_at
    #   The date and time that the revision was revoked, in ISO 8601 format.
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
      :updated_at,
      :revocation_comment,
      :revoked,
      :revoked_at)
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
    # @!attribute [rw] exception_cause
    #   The unique identifier for the resource that couldn't be found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dataexchange-2017-07-25/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :exception_cause)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
