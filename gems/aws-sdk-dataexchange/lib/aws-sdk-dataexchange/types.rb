# frozen_string_literal: true

# This is generated code!

module Aws::DataExchange
  # This module contains the types returned by client operations.
  module Types

    # @!attribute data_grant_arn
    #   <p>The Amazon Resource Name (ARN) of the data grant to accept.</p>
    #   @return [String]
    class AcceptDataGrantRequest < Struct.new(
      nil,
      :data_grant_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the accepted data grant.</p>
    #   @return [String]
    # @!attribute sender_principal
    #   <p>The Amazon Web Services account ID of the data grant sender.</p>
    #   @return [String]
    # @!attribute receiver_principal
    #   <p>The Amazon Web Services account ID of the data grant receiver.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the accepted data grant.</p>
    #   @return [String]
    # @!attribute acceptance_state
    #   <p>The acceptance state of the data grant.</p>
    #   @return [String]
    # @!attribute accepted_at
    #   <p>The timestamp of when the data grant was accepted.</p>
    #   @return [Time]
    # @!attribute ends_at
    #   <p>The timestamp of when access to the associated data set ends.</p>
    #   @return [Time]
    # @!attribute grant_distribution_scope
    #   <p>The distribution scope for the data grant.</p>
    #   @return [String]
    # @!attribute data_set_id
    #   <p>The ID of the data set associated to the data grant.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the data grant.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the accepted data grant.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the data grant was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the data grant was last updated.</p>
    #   @return [Time]
    class AcceptDataGrantResponse < Struct.new(
      nil,
      :name,
      :sender_principal,
      :receiver_principal,
      :description,
      :acceptance_state,
      :accepted_at,
      :ends_at,
      :grant_distribution_scope,
      :data_set_id,
      :id,
      :arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Access to the resource is denied.</p>
    # @!attribute message
    #   <p>Access to the resource is denied.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>What occurs after a certain event.</p>
    # @!attribute export_revision_to_s3
    #   <p>Details for the export revision to Amazon S3 action.</p>
    #   @return [Types::AutoExportRevisionToS3RequestDetails]
    class Action < Struct.new(
      nil,
      :export_revision_to_s3,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The API Gateway API that is the asset.</p>
    # @!attribute api_description
    #   <p>The API description of the API asset.</p>
    #   @return [String]
    # @!attribute api_endpoint
    #   <p>The API endpoint of the API asset.</p>
    #   @return [String]
    # @!attribute api_id
    #   <p>The unique identifier of the API asset.</p>
    #   @return [String]
    # @!attribute api_key
    #   <p>The API key of the API asset.</p>
    #   @return [String]
    # @!attribute api_name
    #   <p>The API name of the API asset.</p>
    #   @return [String]
    # @!attribute api_specification_download_url
    #   <p>The download URL of the API specification of the API asset.</p>
    #   @return [String]
    # @!attribute api_specification_download_url_expires_at
    #   <p>The date and time that the upload URL expires, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute protocol_type
    #   <p>The protocol type of the API asset.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The stage of the API asset.</p>
    #   @return [String]
    class ApiGatewayApiAsset < Struct.new(
      nil,
      :api_description,
      :api_endpoint,
      :api_id,
      :api_key,
      :api_name,
      :api_specification_download_url,
      :api_specification_download_url_expires_at,
      :protocol_type,
      :stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The destination for the asset.</p>
    # @!attribute asset_id
    #   <p>The unique identifier for the asset.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The Amazon S3 bucket that is the destination for the asset.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The name of the object in Amazon S3 for the asset.</p>
    #   @return [String]
    class AssetDestinationEntry < Struct.new(
      nil,
      :asset_id,
      :bucket,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the asset.</p>
    # @!attribute s3_snapshot_asset
    #   <p>The Amazon S3 object that is the asset.</p>
    #   @return [Types::S3SnapshotAsset]
    # @!attribute redshift_data_share_asset
    #   <p>The Amazon Redshift datashare that is the asset.</p>
    #   @return [Types::RedshiftDataShareAsset]
    # @!attribute api_gateway_api_asset
    #   <p>Information about the API Gateway API asset.</p>
    #   @return [Types::ApiGatewayApiAsset]
    # @!attribute s3_data_access_asset
    #   <p>The Amazon S3 data access that is the asset.</p>
    #   @return [Types::S3DataAccessAsset]
    # @!attribute lake_formation_data_permission_asset
    #   <p>The AWS Lake Formation data permission that is the asset.</p>
    #   @return [Types::LakeFormationDataPermissionAsset]
    class AssetDetails < Struct.new(
      nil,
      :s3_snapshot_asset,
      :redshift_data_share_asset,
      :api_gateway_api_asset,
      :s3_data_access_asset,
      :lake_formation_data_permission_asset,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An asset in AWS Data Exchange is a piece of data (Amazon S3 object) or a means of
    #          fulfilling data (Amazon Redshift datashare or Amazon API Gateway API, AWS Lake Formation
    #          data permission, or Amazon S3 data access). The asset can be a structured data file, an
    #          image file, or some other data file that can be stored as an Amazon S3 object, an Amazon
    #          API Gateway API, or an Amazon Redshift datashare, an AWS Lake Formation data permission, or
    #          an Amazon S3 data access. When you create an import job for your files, API Gateway APIs,
    #          Amazon Redshift datashares, AWS Lake Formation data permission, or Amazon S3 data access,
    #          you create an asset in AWS Data Exchange.</p>
    # @!attribute arn
    #   <p>The ARN for the asset.</p>
    #   @return [String]
    # @!attribute asset_details
    #   <p>Details about the asset.</p>
    #   @return [Types::AssetDetails]
    # @!attribute asset_type
    #   <p>The type of asset that is added to a data set.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the asset was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this asset.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the asset.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the asset. When importing from Amazon S3, the Amazon S3 object key is used
    #            as the asset name. When exporting to Amazon S3, the asset name is used as default target
    #            Amazon S3 object key. When importing from Amazon API Gateway API, the API name is used as
    #            the asset name. When importing from Amazon Redshift, the datashare name is used as the
    #            asset name. When importing from AWS Lake Formation, the static values of "Database(s)
    #            included in LF-tag policy" or "Table(s) included in LF-tag policy" are used as the asset
    #            name.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this asset.</p>
    #   @return [String]
    # @!attribute source_id
    #   <p>The asset ID of the owned asset corresponding to the entitled asset being viewed. This
    #            parameter is returned when an asset owner is viewing the entitled copy of its owned
    #            asset.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time that the asset was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    class AssetEntry < Struct.new(
      nil,
      :arn,
      :asset_details,
      :asset_type,
      :created_at,
      :data_set_id,
      :id,
      :name,
      :revision_id,
      :source_id,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source of the assets.</p>
    # @!attribute bucket
    #   <p>The Amazon S3 bucket that's part of the source of the asset.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The name of the object in Amazon S3 for the asset.</p>
    #   @return [String]
    class AssetSourceEntry < Struct.new(
      nil,
      :bucket,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A revision destination is the Amazon S3 bucket folder destination to where the export
    #          will be sent.</p>
    # @!attribute bucket
    #   <p>The Amazon S3 bucket that is the destination for the event action.</p>
    #   @return [String]
    # @!attribute key_pattern
    #   <p>A string representing the pattern for generated names of the individual assets in the
    #            revision. For more information about key patterns, see <a href="https://docs.aws.amazon.com/data-exchange/latest/userguide/jobs.html#revision-export-keypatterns">Key patterns when exporting revisions</a>.</p>
    #   @return [String]
    class AutoExportRevisionDestinationEntry < Struct.new(
      nil,
      :bucket,
      :key_pattern,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the operation to be performed by the job.</p>
    # @!attribute encryption
    #   <p>Encryption configuration for the auto export job.</p>
    #   @return [Types::ExportServerSideEncryption]
    # @!attribute revision_destination
    #   <p>A revision destination is the Amazon S3 bucket folder destination to where the export
    #            will be sent.</p>
    #   @return [Types::AutoExportRevisionDestinationEntry]
    class AutoExportRevisionToS3RequestDetails < Struct.new(
      nil,
      :encryption,
      :revision_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The unique identifier for a job.</p>
    #   @return [String]
    class CancelJobInput < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request couldn't be completed because it conflicted with the current state of the
    #          resource.</p>
    # @!attribute message
    #   <p>The request couldn't be completed because it conflicted with the current state of the
    #            resource.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier for the resource with the conflict.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource with the conflict.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the data grant.</p>
    #   @return [String]
    # @!attribute grant_distribution_scope
    #   <p>The distribution scope of the data grant.</p>
    #   @return [String]
    # @!attribute receiver_principal
    #   <p>The Amazon Web Services account ID of the data grant receiver.</p>
    #   @return [String]
    # @!attribute source_data_set_id
    #   <p>The ID of the data set used to create the data grant.</p>
    #   @return [String]
    # @!attribute ends_at
    #   <p>The timestamp of when access to the associated data set ends.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the data grant.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the data grant. A tag is a key-value pair.</p>
    #   @return [Hash<String, String>]
    class CreateDataGrantRequest < Struct.new(
      nil,
      :name,
      :grant_distribution_scope,
      :receiver_principal,
      :source_data_set_id,
      :ends_at,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the data grant.</p>
    #   @return [String]
    # @!attribute sender_principal
    #   <p>The Amazon Web Services account ID of the data grant sender.</p>
    #   @return [String]
    # @!attribute receiver_principal
    #   <p>The Amazon Web Services account ID of the data grant receiver.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data grant.</p>
    #   @return [String]
    # @!attribute acceptance_state
    #   <p>The acceptance state of the data grant.</p>
    #   @return [String]
    # @!attribute accepted_at
    #   <p>The timestamp of when the data grant was accepted.</p>
    #   @return [Time]
    # @!attribute ends_at
    #   <p>The timestamp of when access to the associated data set ends.</p>
    #   @return [Time]
    # @!attribute grant_distribution_scope
    #   <p>The distribution scope for the data grant.</p>
    #   @return [String]
    # @!attribute data_set_id
    #   <p>The ID of the data set associated to the data grant.</p>
    #   @return [String]
    # @!attribute source_data_set_id
    #   <p>The ID of the data set used to create the data grant.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the data grant.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the data grant.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the data grant was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the data grant was last updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags associated to the data grant. A tag is a key-value pair.</p>
    #   @return [Hash<String, String>]
    class CreateDataGrantResponse < Struct.new(
      nil,
      :name,
      :sender_principal,
      :receiver_principal,
      :description,
      :acceptance_state,
      :accepted_at,
      :ends_at,
      :grant_distribution_scope,
      :data_set_id,
      :source_data_set_id,
      :id,
      :arn,
      :created_at,
      :updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_type
    #   <p>The type of asset that is added to a data set.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the data set. This value can be up to 16,348 characters long.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data set.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A data set tag is an optional label that you can assign to a data set when you create
    #            it. Each tag consists of a key and an optional value, both of which you define. When you
    #            use tagging, you can also use tag-based access control in IAM policies to control access to
    #            these data sets and revisions.</p>
    #   @return [Hash<String, String>]
    class CreateDataSetInput < Struct.new(
      nil,
      :asset_type,
      :description,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the data set.</p>
    #   @return [String]
    # @!attribute asset_type
    #   <p>The type of asset that is added to a data set.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the data set was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description for the data set.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the data set.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data set.</p>
    #   @return [String]
    # @!attribute origin
    #   <p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED
    #            to the account (for subscribers).</p>
    #   @return [String]
    # @!attribute origin_details
    #   <p>If the origin of this data set is ENTITLED, includes the details for the product on AWS
    #            Marketplace.</p>
    #   @return [Types::OriginDetails]
    # @!attribute source_id
    #   <p>The data set ID of the owned data set corresponding to the entitled data set being
    #            viewed. This parameter is returned when a data set owner is viewing the entitled copy of
    #            its owned data set.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the data set.</p>
    #   @return [Hash<String, String>]
    # @!attribute updated_at
    #   <p>The date and time that the data set was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    class CreateDataSetOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action
    #   <p>What occurs after a certain event.</p>
    #   @return [Types::Action]
    # @!attribute event
    #   <p>What occurs to start an action.</p>
    #   @return [Types::Event]
    # @!attribute tags
    #   <p>Key-value pairs that you can associate with the event action.</p>
    #   @return [Hash<String, String>]
    class CreateEventActionInput < Struct.new(
      nil,
      :action,
      :event,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action
    #   <p>What occurs after a certain event.</p>
    #   @return [Types::Action]
    # @!attribute arn
    #   <p>The ARN for the event action.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the event action was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute event
    #   <p>What occurs to start an action.</p>
    #   @return [Types::Event]
    # @!attribute id
    #   <p>The unique identifier for the event action.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the event action.</p>
    #   @return [Hash<String, String>]
    # @!attribute updated_at
    #   <p>The date and time that the event action was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    class CreateEventActionOutput < Struct.new(
      nil,
      :action,
      :arn,
      :created_at,
      :event,
      :id,
      :tags,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute details
    #   <p>The details for the CreateJob request.</p>
    #   @return [Types::RequestDetails]
    # @!attribute type
    #   <p>The type of job to be created.</p>
    #   @return [String]
    class CreateJobInput < Struct.new(
      nil,
      :details,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the job.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the job was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute details
    #   <p>Details about the job.</p>
    #   @return [Types::ResponseDetails]
    # @!attribute errors
    #   <p>The errors associated with jobs.</p>
    #   @return [Array<Types::JobError>]
    # @!attribute id
    #   <p>The unique identifier for the job.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the job.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The job type.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time that the job was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    class CreateJobOutput < Struct.new(
      nil,
      :arn,
      :created_at,
      :details,
      :errors,
      :id,
      :state,
      :type,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comment
    #   <p>An optional comment about the revision.</p>
    #   @return [String]
    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A revision tag is an optional label that you can assign to a revision when you create
    #            it. Each tag consists of a key and an optional value, both of which you define. When you
    #            use tagging, you can also use tag-based access control in IAM policies to control access to
    #            these data sets and revisions.</p>
    #   @return [Hash<String, String>]
    class CreateRevisionInput < Struct.new(
      nil,
      :comment,
      :data_set_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the revision.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>An optional comment about the revision.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the revision was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with the data set revision.</p>
    #   @return [String]
    # @!attribute finalized
    #   <p>To publish a revision to a data set in a product, the revision must first be finalized.
    #            Finalizing a revision tells AWS Data Exchange that your changes to the assets in the
    #            revision are complete. After it's in this read-only state, you can publish the revision to
    #            your products. Finalized revisions can be published through the AWS Data Exchange console
    #            or the AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API
    #            action. When using the API, revisions are uniquely identified by their ARN.</p>
    #   @return [Boolean]
    # @!attribute id
    #   <p>The unique identifier for the revision.</p>
    #   @return [String]
    # @!attribute source_id
    #   <p>The revision ID of the owned revision corresponding to the entitled revision being
    #            viewed. This parameter is returned when a revision owner is viewing the entitled copy of
    #            its owned revision.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the revision.</p>
    #   @return [Hash<String, String>]
    # @!attribute updated_at
    #   <p>The date and time that the revision was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute revocation_comment
    #   <p>A required comment to inform subscribers of the reason their access to the revision was
    #            revoked.</p>
    #   @return [String]
    # @!attribute revoked
    #   <p>A status indicating that subscribers' access to the revision was revoked.</p>
    #   @return [Boolean]
    # @!attribute revoked_at
    #   <p>The date and time that the revision was revoked, in ISO 8601 format.</p>
    #   @return [Time]
    class CreateRevisionOutput < Struct.new(
      nil,
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
      :revoked_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:finalized] = false unless options.key?(:finalized)
        options[:revoked] = false unless options.key?(:revoked)
        super
      end
    end

    # <p>Details of the operation to create an Amazon S3 data access from an S3 bucket.</p>
    # @!attribute asset_source
    #   <p>Details about the S3 data access source asset.</p>
    #   @return [Types::S3DataAccessAssetSourceEntry]
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with the creation of this Amazon S3
    #            data access.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for a revision.</p>
    #   @return [String]
    class CreateS3DataAccessFromS3BucketRequestDetails < Struct.new(
      nil,
      :asset_source,
      :data_set_id,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the response of the operation to create an S3 data access from an S3
    #          bucket.</p>
    # @!attribute asset_source
    #   <p>Details about the asset source from an Amazon S3 bucket.</p>
    #   @return [Types::S3DataAccessAssetSourceEntry]
    # @!attribute data_set_id
    #   <p>The unique identifier for this data set.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for the revision.</p>
    #   @return [String]
    class CreateS3DataAccessFromS3BucketResponseDetails < Struct.new(
      nil,
      :asset_source,
      :data_set_id,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a data grant.</p>
    # @!attribute name
    #   <p>The name of the data grant.</p>
    #   @return [String]
    # @!attribute sender_principal
    #   <p>The Amazon Web Services account ID of the data grant sender.</p>
    #   @return [String]
    # @!attribute receiver_principal
    #   <p>The Amazon Web Services account ID of the data grant receiver.</p>
    #   @return [String]
    # @!attribute acceptance_state
    #   <p>The acceptance state of the data grant.</p>
    #   @return [String]
    # @!attribute accepted_at
    #   <p>The timestamp of when the data grant was accepted.</p>
    #   @return [Time]
    # @!attribute ends_at
    #   <p>The timestamp of when access to the associated data set ends.</p>
    #   @return [Time]
    # @!attribute data_set_id
    #   <p>The ID of the data set associated to the data grant.</p>
    #   @return [String]
    # @!attribute source_data_set_id
    #   <p>The ID of the data set used to create the data grant.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the data grant.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the data grant.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the data grant was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the data grant was last updated.</p>
    #   @return [Time]
    class DataGrantSummaryEntry < Struct.new(
      nil,
      :name,
      :sender_principal,
      :receiver_principal,
      :acceptance_state,
      :accepted_at,
      :ends_at,
      :data_set_id,
      :source_data_set_id,
      :id,
      :arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A data set is an AWS resource with one or more revisions.</p>
    # @!attribute arn
    #   <p>The ARN for the data set.</p>
    #   @return [String]
    # @!attribute asset_type
    #   <p>The type of asset that is added to a data set.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the data set was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description for the data set.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the data set.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data set.</p>
    #   @return [String]
    # @!attribute origin
    #   <p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED
    #            to the account (for subscribers).</p>
    #   @return [String]
    # @!attribute origin_details
    #   <p>If the origin of this data set is ENTITLED, includes the details for the product on AWS
    #            Marketplace.</p>
    #   @return [Types::OriginDetails]
    # @!attribute source_id
    #   <p>The data set ID of the owned data set corresponding to the entitled data set being
    #            viewed. This parameter is returned when a data set owner is viewing the entitled copy of
    #            its owned data set.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time that the data set was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    class DataSetEntry < Struct.new(
      nil,
      :arn,
      :asset_type,
      :created_at,
      :description,
      :id,
      :name,
      :origin,
      :origin_details,
      :source_id,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Extra details specific to a data update type notification.</p>
    # @!attribute data_updated_at
    #   <p>A
    #            datetime in the past when the data was updated. This typically means that the underlying
    #            resource supporting the data set was updated.</p>
    #   @return [Time]
    class DataUpdateRequestDetails < Struct.new(
      nil,
      :data_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The LF-tag policy for database resources.</p>
    # @!attribute expression
    #   <p>A list of LF-tag conditions that apply to database resources.</p>
    #   @return [Array<Types::LFTag>]
    class DatabaseLFTagPolicy < Struct.new(
      nil,
      :expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The LF-tag policy and permissions for database resources.</p>
    # @!attribute expression
    #   <p>A list of LF-tag conditions that apply to database resources.</p>
    #   @return [Array<Types::LFTag>]
    # @!attribute permissions
    #   <p>The permissions granted to subscribers on database resources.</p>
    #   @return [Array<String>]
    class DatabaseLFTagPolicyAndPermissions < Struct.new(
      nil,
      :expression,
      :permissions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The unique identifier for an asset.</p>
    #   @return [String]
    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for a revision.</p>
    #   @return [String]
    class DeleteAssetInput < Struct.new(
      nil,
      :asset_id,
      :data_set_id,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_grant_id
    #   <p>The ID of the data grant to delete.</p>
    #   @return [String]
    class DeleteDataGrantRequest < Struct.new(
      nil,
      :data_grant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #   @return [String]
    class DeleteDataSetInput < Struct.new(
      nil,
      :data_set_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_action_id
    #   <p>The unique identifier for the event action.</p>
    #   @return [String]
    class DeleteEventActionInput < Struct.new(
      nil,
      :event_action_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for a revision.</p>
    #   @return [String]
    class DeleteRevisionInput < Struct.new(
      nil,
      :data_set_id,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Extra details specific to a deprecation type notification.</p>
    # @!attribute deprecation_at
    #   <p>A
    #            datetime in the future when the data set will be deprecated.</p>
    #   @return [Time]
    class DeprecationRequestDetails < Struct.new(
      nil,
      :deprecation_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the job error.</p>
    # @!attribute import_asset_from_signed_url_job_error_details
    #   <p>Information about the job error.</p>
    #   @return [Types::ImportAssetFromSignedUrlJobErrorDetails]
    # @!attribute import_assets_from_s3_job_error_details
    #   <p>Details about the job error.</p>
    #   @return [Array<Types::AssetSourceEntry>]
    class Details < Struct.new(
      nil,
      :import_asset_from_signed_url_job_error_details,
      :import_assets_from_s3_job_error_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>What occurs to start an action.</p>
    # @!attribute revision_published
    #   <p>What occurs to start the revision publish action.</p>
    #   @return [Types::RevisionPublished]
    class Event < Struct.new(
      nil,
      :revision_published,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An event action is an object that defines the relationship between a specific event and
    #          an automated action that will be taken on behalf of the customer.</p>
    # @!attribute action
    #   <p>What occurs after a certain event.</p>
    #   @return [Types::Action]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the event action.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the event action was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute event
    #   <p>What occurs to start an action.</p>
    #   @return [Types::Event]
    # @!attribute id
    #   <p>The unique identifier for the event action.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time that the event action was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    class EventActionEntry < Struct.new(
      nil,
      :action,
      :arn,
      :created_at,
      :event,
      :id,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the operation to be performed by the job.</p>
    # @!attribute asset_id
    #   <p>The unique identifier for the asset that is exported to a signed URL.</p>
    #   @return [String]
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this export job.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this export request.</p>
    #   @return [String]
    class ExportAssetToSignedUrlRequestDetails < Struct.new(
      nil,
      :asset_id,
      :data_set_id,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the export to signed URL response.</p>
    # @!attribute asset_id
    #   <p>The unique identifier for the asset associated with this export job.</p>
    #   @return [String]
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this export job.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this export response.</p>
    #   @return [String]
    # @!attribute signed_url
    #   <p>The signed URL for the export request.</p>
    #   @return [String]
    # @!attribute signed_url_expires_at
    #   <p>The date and time that the signed URL expires, in ISO 8601 format.</p>
    #   @return [Time]
    class ExportAssetToSignedUrlResponseDetails < Struct.new(
      nil,
      :asset_id,
      :data_set_id,
      :revision_id,
      :signed_url,
      :signed_url_expires_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the operation to be performed by the job.</p>
    # @!attribute asset_destinations
    #   <p>The destination for the asset.</p>
    #   @return [Array<Types::AssetDestinationEntry>]
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this export job.</p>
    #   @return [String]
    # @!attribute encryption
    #   <p>Encryption configuration for the export job.</p>
    #   @return [Types::ExportServerSideEncryption]
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this export request.</p>
    #   @return [String]
    class ExportAssetsToS3RequestDetails < Struct.new(
      nil,
      :asset_destinations,
      :data_set_id,
      :encryption,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the export to Amazon S3 response.</p>
    # @!attribute asset_destinations
    #   <p>The destination in Amazon S3 where the asset is exported.</p>
    #   @return [Array<Types::AssetDestinationEntry>]
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this export job.</p>
    #   @return [String]
    # @!attribute encryption
    #   <p>Encryption configuration of the export job.</p>
    #   @return [Types::ExportServerSideEncryption]
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this export response.</p>
    #   @return [String]
    class ExportAssetsToS3ResponseDetails < Struct.new(
      nil,
      :asset_destinations,
      :data_set_id,
      :encryption,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the operation to be performed by the job.</p>
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this export job.</p>
    #   @return [String]
    # @!attribute encryption
    #   <p>Encryption configuration for the export job.</p>
    #   @return [Types::ExportServerSideEncryption]
    # @!attribute revision_destinations
    #   <p>The destination for the revision.</p>
    #   @return [Array<Types::RevisionDestinationEntry>]
    class ExportRevisionsToS3RequestDetails < Struct.new(
      nil,
      :data_set_id,
      :encryption,
      :revision_destinations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the export revisions to Amazon S3 response.</p>
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this export job.</p>
    #   @return [String]
    # @!attribute encryption
    #   <p>Encryption configuration of the export job.</p>
    #   @return [Types::ExportServerSideEncryption]
    # @!attribute revision_destinations
    #   <p>The destination in Amazon S3 where the revision is exported.</p>
    #   @return [Array<Types::RevisionDestinationEntry>]
    # @!attribute event_action_arn
    #   <p>The Amazon Resource Name (ARN) of the event action.</p>
    #   @return [String]
    class ExportRevisionsToS3ResponseDetails < Struct.new(
      nil,
      :data_set_id,
      :encryption,
      :revision_destinations,
      :event_action_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Encryption configuration of the export job. Includes the encryption type in addition to
    #          the AWS KMS key. The KMS key is only necessary if you chose the KMS encryption type.</p>
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS KMS key you want to use to encrypt the Amazon
    #            S3 objects. This parameter is required if you choose aws:kms as an encryption type.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of server side encryption used for encrypting the objects in Amazon S3.</p>
    #   @return [String]
    class ExportServerSideEncryption < Struct.new(
      nil,
      :kms_key_arn,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The unique identifier for an asset.</p>
    #   @return [String]
    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for a revision.</p>
    #   @return [String]
    class GetAssetInput < Struct.new(
      nil,
      :asset_id,
      :data_set_id,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the asset.</p>
    #   @return [String]
    # @!attribute asset_details
    #   <p>Details about the asset.</p>
    #   @return [Types::AssetDetails]
    # @!attribute asset_type
    #   <p>The type of asset that is added to a data set.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the asset was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this asset.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the asset.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the asset. When importing from Amazon S3, the Amazon S3 object key is used
    #            as the asset name. When exporting to Amazon S3, the asset name is used as default target
    #            Amazon S3 object key. When importing from Amazon API Gateway API, the API name is used as
    #            the asset name. When importing from Amazon Redshift, the datashare name is used as the
    #            asset name. When importing from AWS Lake Formation, the static values of "Database(s)
    #            included in the LF-tag policy" or "Table(s) included in the LF-tag policy" are used as the
    #            asset name.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this asset.</p>
    #   @return [String]
    # @!attribute source_id
    #   <p>The asset ID of the owned asset corresponding to the entitled asset being viewed. This
    #            parameter is returned when an asset owner is viewing the entitled copy of its owned
    #            asset.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time that the asset was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    class GetAssetOutput < Struct.new(
      nil,
      :arn,
      :asset_details,
      :asset_type,
      :created_at,
      :data_set_id,
      :id,
      :name,
      :revision_id,
      :source_id,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_grant_id
    #   <p>The ID of the data grant.</p>
    #   @return [String]
    class GetDataGrantRequest < Struct.new(
      nil,
      :data_grant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the data grant.</p>
    #   @return [String]
    # @!attribute sender_principal
    #   <p>The Amazon Web Services account ID of the data grant sender.</p>
    #   @return [String]
    # @!attribute receiver_principal
    #   <p>The Amazon Web Services account ID of the data grant receiver.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data grant.</p>
    #   @return [String]
    # @!attribute acceptance_state
    #   <p>The acceptance state of the data grant.</p>
    #   @return [String]
    # @!attribute accepted_at
    #   <p>The timestamp of when the data grant was accepted.</p>
    #   @return [Time]
    # @!attribute ends_at
    #   <p>The timestamp of when access to the associated data set ends.</p>
    #   @return [Time]
    # @!attribute grant_distribution_scope
    #   <p>The distribution scope for the data grant.</p>
    #   @return [String]
    # @!attribute data_set_id
    #   <p>The ID of the data set associated to the data grant.</p>
    #   @return [String]
    # @!attribute source_data_set_id
    #   <p>The ID of the data set used to create the data grant.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the data grant.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the data grant.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the data grant was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the data grant was last updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags associated to the data grant. A tag is a key-value pair.</p>
    #   @return [Hash<String, String>]
    class GetDataGrantResponse < Struct.new(
      nil,
      :name,
      :sender_principal,
      :receiver_principal,
      :description,
      :acceptance_state,
      :accepted_at,
      :ends_at,
      :grant_distribution_scope,
      :data_set_id,
      :source_data_set_id,
      :id,
      :arn,
      :created_at,
      :updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #   @return [String]
    class GetDataSetInput < Struct.new(
      nil,
      :data_set_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the data set.</p>
    #   @return [String]
    # @!attribute asset_type
    #   <p>The type of asset that is added to a data set.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the data set was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description for the data set.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the data set.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data set.</p>
    #   @return [String]
    # @!attribute origin
    #   <p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED
    #            to the account (for subscribers).</p>
    #   @return [String]
    # @!attribute origin_details
    #   <p>If the origin of this data set is ENTITLED, includes the details for the product on AWS
    #            Marketplace.</p>
    #   @return [Types::OriginDetails]
    # @!attribute source_id
    #   <p>The data set ID of the owned data set corresponding to the entitled data set being
    #            viewed. This parameter is returned when a data set owner is viewing the entitled copy of
    #            its owned data set.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the data set.</p>
    #   @return [Hash<String, String>]
    # @!attribute updated_at
    #   <p>The date and time that the data set was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    class GetDataSetOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_action_id
    #   <p>The unique identifier for the event action.</p>
    #   @return [String]
    class GetEventActionInput < Struct.new(
      nil,
      :event_action_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action
    #   <p>What occurs after a certain event.</p>
    #   @return [Types::Action]
    # @!attribute arn
    #   <p>The ARN for the event action.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the event action was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute event
    #   <p>What occurs to start an action.</p>
    #   @return [Types::Event]
    # @!attribute id
    #   <p>The unique identifier for the event action.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the event action.</p>
    #   @return [Hash<String, String>]
    # @!attribute updated_at
    #   <p>The date and time that the event action was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    class GetEventActionOutput < Struct.new(
      nil,
      :action,
      :arn,
      :created_at,
      :event,
      :id,
      :tags,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The unique identifier for a job.</p>
    #   @return [String]
    class GetJobInput < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the job.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the job was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute details
    #   <p>Details about the job.</p>
    #   @return [Types::ResponseDetails]
    # @!attribute errors
    #   <p>The errors associated with jobs.</p>
    #   @return [Array<Types::JobError>]
    # @!attribute id
    #   <p>The unique identifier for the job.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the job.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The job type.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time that the job was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    class GetJobOutput < Struct.new(
      nil,
      :arn,
      :created_at,
      :details,
      :errors,
      :id,
      :state,
      :type,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_grant_arn
    #   <p>The Amazon Resource Name (ARN) of the data grant.</p>
    #   @return [String]
    class GetReceivedDataGrantRequest < Struct.new(
      nil,
      :data_grant_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the data grant.</p>
    #   @return [String]
    # @!attribute sender_principal
    #   <p>The Amazon Web Services account ID of the data grant sender.</p>
    #   @return [String]
    # @!attribute receiver_principal
    #   <p>The Amazon Web Services account ID of the data grant receiver.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data grant.</p>
    #   @return [String]
    # @!attribute acceptance_state
    #   <p>The acceptance state of the data grant.</p>
    #   @return [String]
    # @!attribute accepted_at
    #   <p>The timestamp of when the data grant was accepted.</p>
    #   @return [Time]
    # @!attribute ends_at
    #   <p>The timestamp of when access to the associated data set ends.</p>
    #   @return [Time]
    # @!attribute grant_distribution_scope
    #   <p>The distribution scope for the data grant.</p>
    #   @return [String]
    # @!attribute data_set_id
    #   <p>The ID of the data set associated to the data grant.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the data grant.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the data grant.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the data grant was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the data grant was last updated.</p>
    #   @return [Time]
    class GetReceivedDataGrantResponse < Struct.new(
      nil,
      :name,
      :sender_principal,
      :receiver_principal,
      :description,
      :acceptance_state,
      :accepted_at,
      :ends_at,
      :grant_distribution_scope,
      :data_set_id,
      :id,
      :arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for a revision.</p>
    #   @return [String]
    class GetRevisionInput < Struct.new(
      nil,
      :data_set_id,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the revision.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>An optional comment about the revision.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the revision was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with the data set revision.</p>
    #   @return [String]
    # @!attribute finalized
    #   <p>To publish a revision to a data set in a product, the revision must first be finalized.
    #            Finalizing a revision tells AWS Data Exchange that your changes to the assets in the
    #            revision are complete. After it's in this read-only state, you can publish the revision to
    #            your products. Finalized revisions can be published through the AWS Data Exchange console
    #            or the AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API
    #            action. When using the API, revisions are uniquely identified by their ARN.</p>
    #   @return [Boolean]
    # @!attribute id
    #   <p>The unique identifier for the revision.</p>
    #   @return [String]
    # @!attribute source_id
    #   <p>The revision ID of the owned revision corresponding to the entitled revision being
    #            viewed. This parameter is returned when a revision owner is viewing the entitled copy of
    #            its owned revision.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the revision.</p>
    #   @return [Hash<String, String>]
    # @!attribute updated_at
    #   <p>The date and time that the revision was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute revocation_comment
    #   <p>A required comment to inform subscribers of the reason their access to the revision was
    #            revoked.</p>
    #   @return [String]
    # @!attribute revoked
    #   <p>A status indicating that subscribers' access to the revision was revoked.</p>
    #   @return [Boolean]
    # @!attribute revoked_at
    #   <p>The date and time that the revision was revoked, in ISO 8601 format.</p>
    #   @return [Time]
    class GetRevisionOutput < Struct.new(
      nil,
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
      :revoked_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:finalized] = false unless options.key?(:finalized)
        options[:revoked] = false unless options.key?(:revoked)
        super
      end
    end

    # <p>The request details.</p>
    # @!attribute api_description
    #   <p>The API description. Markdown supported.</p>
    #   @return [String]
    # @!attribute api_id
    #   <p>The API Gateway API ID.</p>
    #   @return [String]
    # @!attribute api_key
    #   <p>The API Gateway API key.</p>
    #   @return [String]
    # @!attribute api_name
    #   <p>The API name.</p>
    #   @return [String]
    # @!attribute api_specification_md5_hash
    #   <p>The Base64-encoded MD5 hash of the OpenAPI 3.0 JSON API specification file. It is used
    #            to ensure the integrity of the file.</p>
    #   @return [String]
    # @!attribute data_set_id
    #   <p>The data set ID.</p>
    #   @return [String]
    # @!attribute protocol_type
    #   <p>The protocol type.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision ID.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The API stage.</p>
    #   @return [String]
    class ImportAssetFromApiGatewayApiRequestDetails < Struct.new(
      nil,
      :api_description,
      :api_id,
      :api_key,
      :api_name,
      :api_specification_md5_hash,
      :data_set_id,
      :protocol_type,
      :revision_id,
      :stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response details.</p>
    # @!attribute api_description
    #   <p>The API description.</p>
    #   @return [String]
    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute api_key
    #   <p>The API key.</p>
    #   @return [String]
    # @!attribute api_name
    #   <p>The API name.</p>
    #   @return [String]
    # @!attribute api_specification_md5_hash
    #   <p>The Base64-encoded Md5 hash for the API asset, used to ensure the integrity of the API
    #            at that location.</p>
    #   @return [String]
    # @!attribute api_specification_upload_url
    #   <p>The upload URL of the API specification.</p>
    #   @return [String]
    # @!attribute api_specification_upload_url_expires_at
    #   <p>The date and time that the upload URL expires, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute data_set_id
    #   <p>The data set ID.</p>
    #   @return [String]
    # @!attribute protocol_type
    #   <p>The protocol type.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision ID.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The API stage.</p>
    #   @return [String]
    class ImportAssetFromApiGatewayApiResponseDetails < Struct.new(
      nil,
      :api_description,
      :api_id,
      :api_key,
      :api_name,
      :api_specification_md5_hash,
      :api_specification_upload_url,
      :api_specification_upload_url_expires_at,
      :data_set_id,
      :protocol_type,
      :revision_id,
      :stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the job error.</p>
    # @!attribute asset_name
    #   <p>Details about the job error.</p>
    #   @return [String]
    class ImportAssetFromSignedUrlJobErrorDetails < Struct.new(
      nil,
      :asset_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the operation to be performed by the job.</p>
    # @!attribute asset_name
    #   <p>The name of the asset. When importing from Amazon S3, the Amazon S3 object key is used
    #            as the asset name.</p>
    #   @return [String]
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this import job.</p>
    #   @return [String]
    # @!attribute md5_hash
    #   <p>The Base64-encoded Md5 hash for the asset, used to ensure the integrity of the file at
    #            that location.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this import request.</p>
    #   @return [String]
    class ImportAssetFromSignedUrlRequestDetails < Struct.new(
      nil,
      :asset_name,
      :data_set_id,
      :md5_hash,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details in the response for an import request, including the signed URL and other
    #          information.</p>
    # @!attribute asset_name
    #   <p>The name for the asset associated with this import job.</p>
    #   @return [String]
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this import job.</p>
    #   @return [String]
    # @!attribute md5_hash
    #   <p>The Base64-encoded Md5 hash for the asset, used to ensure the integrity of the file at
    #            that location.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this import response.</p>
    #   @return [String]
    # @!attribute signed_url
    #   <p>The signed URL.</p>
    #   @return [String]
    # @!attribute signed_url_expires_at
    #   <p>The time and date at which the signed URL expires, in ISO 8601 format.</p>
    #   @return [Time]
    class ImportAssetFromSignedUrlResponseDetails < Struct.new(
      nil,
      :asset_name,
      :data_set_id,
      :md5_hash,
      :revision_id,
      :signed_url,
      :signed_url_expires_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the assets imported from an AWS Lake Formation tag policy request.</p>
    # @!attribute catalog_id
    #   <p>The identifier for the AWS Glue Data Catalog.</p>
    #   @return [String]
    # @!attribute database
    #   <p>A structure for the database object.</p>
    #   @return [Types::DatabaseLFTagPolicyAndPermissions]
    # @!attribute table
    #   <p>A structure for the table object.</p>
    #   @return [Types::TableLFTagPolicyAndPermissions]
    # @!attribute role_arn
    #   <p>The IAM role's ARN that allows AWS Data Exchange to assume the role and grant and revoke
    #            permissions of subscribers to AWS Lake Formation data permissions.</p>
    #   @return [String]
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this import job.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this import job.</p>
    #   @return [String]
    class ImportAssetsFromLakeFormationTagPolicyRequestDetails < Struct.new(
      nil,
      :catalog_id,
      :database,
      :table,
      :role_arn,
      :data_set_id,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details from an import AWS Lake Formation tag policy job response.</p>
    # @!attribute catalog_id
    #   <p>The identifier for the AWS Glue Data Catalog.</p>
    #   @return [String]
    # @!attribute database
    #   <p>A structure for the database object.</p>
    #   @return [Types::DatabaseLFTagPolicyAndPermissions]
    # @!attribute table
    #   <p>A structure for the table object.</p>
    #   @return [Types::TableLFTagPolicyAndPermissions]
    # @!attribute role_arn
    #   <p>The IAM role's ARN that allows AWS Data Exchange to assume the role and grant and revoke
    #            permissions to AWS Lake Formation data permissions.</p>
    #   @return [String]
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this import job.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this import job.</p>
    #   @return [String]
    class ImportAssetsFromLakeFormationTagPolicyResponseDetails < Struct.new(
      nil,
      :catalog_id,
      :database,
      :table,
      :role_arn,
      :data_set_id,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details from an import from Amazon Redshift datashare request.</p>
    # @!attribute asset_sources
    #   <p>A list of Amazon Redshift datashare assets.</p>
    #   @return [Array<Types::RedshiftDataShareAssetSourceEntry>]
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this import job.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this import job.</p>
    #   @return [String]
    class ImportAssetsFromRedshiftDataSharesRequestDetails < Struct.new(
      nil,
      :asset_sources,
      :data_set_id,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details from an import from Amazon Redshift datashare response.</p>
    # @!attribute asset_sources
    #   <p>A list of Amazon Redshift datashare asset sources.</p>
    #   @return [Array<Types::RedshiftDataShareAssetSourceEntry>]
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this import job.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this import job.</p>
    #   @return [String]
    class ImportAssetsFromRedshiftDataSharesResponseDetails < Struct.new(
      nil,
      :asset_sources,
      :data_set_id,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the operation to be performed by the job.</p>
    # @!attribute asset_sources
    #   <p>Is a list of Amazon S3 bucket and object key pairs.</p>
    #   @return [Array<Types::AssetSourceEntry>]
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this import job.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this import request.</p>
    #   @return [String]
    class ImportAssetsFromS3RequestDetails < Struct.new(
      nil,
      :asset_sources,
      :data_set_id,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details from an import from Amazon S3 response.</p>
    # @!attribute asset_sources
    #   <p>Is a list of Amazon S3 bucket and object key pairs.</p>
    #   @return [Array<Types::AssetSourceEntry>]
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this import job.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this import response.</p>
    #   @return [String]
    class ImportAssetsFromS3ResponseDetails < Struct.new(
      nil,
      :asset_sources,
      :data_set_id,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception occurred with the service.</p>
    # @!attribute message
    #   <p>The message identifying the service exception that occurred.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>AWS Data Exchange Jobs are asynchronous import or export operations used to create or
    #          copy assets. A data set owner can both import and export as they see fit. Someone with an
    #          entitlement to a data set can only export. Jobs are deleted 90 days after they are
    #          created.</p>
    # @!attribute arn
    #   <p>The ARN for the job.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the job was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute details
    #   <p>Details of the operation to be performed by the job, such as export destination details
    #            or import source details.</p>
    #   @return [Types::ResponseDetails]
    # @!attribute errors
    #   <p>Errors for jobs.</p>
    #   @return [Array<Types::JobError>]
    # @!attribute id
    #   <p>The unique identifier for the job.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the job.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The job type.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time that the job was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    class JobEntry < Struct.new(
      nil,
      :arn,
      :created_at,
      :details,
      :errors,
      :id,
      :state,
      :type,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error that occurred with the job request.</p>
    # @!attribute code
    #   <p>The code for the job error.</p>
    #   @return [String]
    # @!attribute details
    #   <p>The details about the job error.</p>
    #   @return [Types::Details]
    # @!attribute limit_name
    #   <p>The name of the limit that was reached.</p>
    #   @return [String]
    # @!attribute limit_value
    #   <p>The value of the exceeded limit.</p>
    #   @return [Float]
    # @!attribute message
    #   <p>The message related to the job error.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier for the resource related to the error.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource related to the error.</p>
    #   @return [String]
    class JobError < Struct.new(
      nil,
      :code,
      :details,
      :limit_name,
      :limit_value,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:limit_value] = 0 unless options.key?(:limit_value)
        super
      end
    end

    # <p>The Amazon Resource Name (ARN) of the AWS KMS key used to encrypt the shared S3
    #          objects.</p>
    # @!attribute kms_key_arn
    #   <p>The AWS KMS CMK (Key Management System Customer Managed Key) used to encrypt S3 objects
    #            in the shared S3 Bucket. AWS Data exchange will create a KMS grant for each subscriber to
    #            allow them to access and decrypt their entitled data that is encrypted using this KMS key
    #            specified.</p>
    #   @return [String]
    class KmsKeyToGrant < Struct.new(
      nil,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the AWS Lake Formation resource (Table or Database) included in the AWS
    #          Lake Formation data permission.</p>
    # @!attribute database
    #   <p>Details about the database resource included in the AWS Lake Formation data
    #            permission.</p>
    #   @return [Types::DatabaseLFTagPolicy]
    # @!attribute table
    #   <p>Details about the table resource included in the AWS Lake Formation data
    #            permission.</p>
    #   @return [Types::TableLFTagPolicy]
    class LFResourceDetails < Struct.new(
      nil,
      :database,
      :table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that allows an LF-admin to grant permissions on certain conditions.</p>
    # @!attribute tag_key
    #   <p>The key name for the LF-tag.</p>
    #   @return [String]
    # @!attribute tag_values
    #   <p>A list of LF-tag values.</p>
    #   @return [Array<String>]
    class LFTag < Struct.new(
      nil,
      :tag_key,
      :tag_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the LF-tag policy.</p>
    # @!attribute catalog_id
    #   <p>The identifier for the AWS Glue Data Catalog.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type for which the LF-tag policy applies.</p>
    #   @return [String]
    # @!attribute resource_details
    #   <p>Details for the Lake Formation Resources included in the LF-tag policy.</p>
    #   @return [Types::LFResourceDetails]
    class LFTagPolicyDetails < Struct.new(
      nil,
      :catalog_id,
      :resource_type,
      :resource_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The AWS Lake Formation data permission asset.</p>
    # @!attribute lake_formation_data_permission_details
    #   <p>Details about the AWS Lake Formation data permission.</p>
    #   @return [Types::LakeFormationDataPermissionDetails]
    # @!attribute lake_formation_data_permission_type
    #   <p>The data permission type.</p>
    #   @return [String]
    # @!attribute permissions
    #   <p>The permissions granted to the subscribers on the resource.</p>
    #   @return [Array<String>]
    # @!attribute role_arn
    #   <p>The IAM role's ARN that allows AWS Data Exchange to assume the role and grant and revoke
    #            permissions to AWS Lake Formation data permissions.</p>
    #   @return [String]
    class LakeFormationDataPermissionAsset < Struct.new(
      nil,
      :lake_formation_data_permission_details,
      :lake_formation_data_permission_type,
      :permissions,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the AWS Lake Formation data permission.</p>
    # @!attribute lf_tag_policy
    #   <p>Details about the LF-tag policy.</p>
    #   @return [Types::LFTagPolicyDetails]
    class LakeFormationDataPermissionDetails < Struct.new(
      nil,
      :lf_tag_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Extra details specific to the affected scope in this LF data set.</p>
    # @!attribute database
    #   <p>The
    #            underlying Glue database that the notification is referring to.</p>
    #   @return [String]
    # @!attribute table
    #   <p>The
    #            underlying Glue table that the notification is referring to.</p>
    #   @return [String]
    class LakeFormationTagPolicyDetails < Struct.new(
      nil,
      :database,
      :table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    #   @return [String]
    class ListDataGrantsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_grant_summaries
    #   <p>An object that contains a list of data grant information.</p>
    #   @return [Array<Types::DataGrantSummaryEntry>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    #   @return [String]
    class ListDataGrantsResponse < Struct.new(
      nil,
      :data_grant_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results returned by a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of
    #            results.</p>
    #   @return [String]
    class ListDataSetRevisionsInput < Struct.new(
      nil,
      :data_set_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of
    #            results.</p>
    #   @return [String]
    # @!attribute revisions
    #   <p>The asset objects listed by the request.</p>
    #   @return [Array<Types::RevisionEntry>]
    class ListDataSetRevisionsOutput < Struct.new(
      nil,
      :next_token,
      :revisions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results returned by a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of
    #            results.</p>
    #   @return [String]
    # @!attribute origin
    #   <p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED
    #            to the account (for subscribers).</p>
    #   @return [String]
    class ListDataSetsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :origin,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_sets
    #   <p>The data set objects listed by the request.</p>
    #   @return [Array<Types::DataSetEntry>]
    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of
    #            results.</p>
    #   @return [String]
    class ListDataSetsOutput < Struct.new(
      nil,
      :data_sets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_source_id
    #   <p>The unique identifier for the event source.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results returned by a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of
    #            results.</p>
    #   @return [String]
    class ListEventActionsInput < Struct.new(
      nil,
      :event_source_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_actions
    #   <p>The event action objects listed by the request.</p>
    #   @return [Array<Types::EventActionEntry>]
    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of
    #            results.</p>
    #   @return [String]
    class ListEventActionsOutput < Struct.new(
      nil,
      :event_actions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results returned by a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of
    #            results.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for a revision.</p>
    #   @return [String]
    class ListJobsInput < Struct.new(
      nil,
      :data_set_id,
      :max_results,
      :next_token,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute jobs
    #   <p>The jobs listed by the request.</p>
    #   @return [Array<Types::JobEntry>]
    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of
    #            results.</p>
    #   @return [String]
    class ListJobsOutput < Struct.new(
      nil,
      :jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    #   @return [String]
    # @!attribute acceptance_state
    #   <p>The acceptance state of the data grants to list.</p>
    #   @return [Array<String>]
    class ListReceivedDataGrantsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :acceptance_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_grant_summaries
    #   <p>An object that contains a list of received data grant information.</p>
    #   @return [Array<Types::ReceivedDataGrantSummariesEntry>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #            operation.</p>
    #   @return [String]
    class ListReceivedDataGrantsResponse < Struct.new(
      nil,
      :data_grant_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results returned by a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of
    #            results.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for a revision.</p>
    #   @return [String]
    class ListRevisionAssetsInput < Struct.new(
      nil,
      :data_set_id,
      :max_results,
      :next_token,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assets
    #   <p>The asset objects listed by the request.</p>
    #   @return [Array<Types::AssetEntry>]
    # @!attribute next_token
    #   <p>The token value retrieved from a previous call to access the next page of
    #            results.</p>
    #   @return [String]
    class ListRevisionAssetsOutput < Struct.new(
      nil,
      :assets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A label that consists of a customer-defined key and an optional value.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Extra details specific to this notification.</p>
    # @!attribute data_update
    #   <p>Extra
    #            details specific to a data update type notification.</p>
    #   @return [Types::DataUpdateRequestDetails]
    # @!attribute deprecation
    #   <p>Extra
    #            details specific to a deprecation type notification.</p>
    #   @return [Types::DeprecationRequestDetails]
    # @!attribute schema_change
    #   <p>Extra
    #            details specific to a schema change type notification.</p>
    #   @return [Types::SchemaChangeRequestDetails]
    class NotificationDetails < Struct.new(
      nil,
      :data_update,
      :deprecation,
      :schema_change,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the origin of the data set.</p>
    # @!attribute product_id
    #   <p>The product ID of the origin of the data set.</p>
    #   @return [String]
    # @!attribute data_grant_id
    #   <p>The ID of the data grant.</p>
    #   @return [String]
    class OriginDetails < Struct.new(
      nil,
      :product_id,
      :data_grant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a received data grant.</p>
    # @!attribute name
    #   <p>The name of the data grant.</p>
    #   @return [String]
    # @!attribute sender_principal
    #   <p>The Amazon Web Services account ID of the data grant sender.</p>
    #   @return [String]
    # @!attribute receiver_principal
    #   <p>The Amazon Web Services account ID of the data grant receiver.</p>
    #   @return [String]
    # @!attribute acceptance_state
    #   <p>The acceptance state of the data grant.</p>
    #   @return [String]
    # @!attribute accepted_at
    #   <p>The timestamp of when the data grant was accepted.</p>
    #   @return [Time]
    # @!attribute ends_at
    #   <p>The timestamp of when access to the associated data set ends.</p>
    #   @return [Time]
    # @!attribute data_set_id
    #   <p>The ID of the data set associated to the data grant.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the data grant.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the data grant.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the data grant was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the data grant was last updated.</p>
    #   @return [Time]
    class ReceivedDataGrantSummariesEntry < Struct.new(
      nil,
      :name,
      :sender_principal,
      :receiver_principal,
      :acceptance_state,
      :accepted_at,
      :ends_at,
      :data_set_id,
      :id,
      :arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Redshift datashare asset.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the datashare asset.</p>
    #   @return [String]
    class RedshiftDataShareAsset < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source of the Amazon Redshift datashare asset.</p>
    # @!attribute data_share_arn
    #   <p>The Amazon Resource Name (ARN) of the datashare asset.</p>
    #   @return [String]
    class RedshiftDataShareAssetSourceEntry < Struct.new(
      nil,
      :data_share_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Extra details specific to the affected scope in this Redshift data set.</p>
    # @!attribute arn
    #   <p>The
    #            ARN of the underlying Redshift data share that is being affected by this
    #            notification.</p>
    #   @return [String]
    # @!attribute database
    #   <p>The
    #            database name in the Redshift data share that is being affected by this
    #            notification.</p>
    #   @return [String]
    # @!attribute function
    #   <p>A
    #            function name in the Redshift database that is being affected by this notification.</p>
    #   @return [String]
    # @!attribute table
    #   <p>A
    #            table name in the Redshift database that is being affected by this notification.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>A
    #            schema name in the Redshift database that is being affected by this notification.</p>
    #   @return [String]
    # @!attribute view
    #   <p>A
    #            view name in the Redshift database that is being affected by this notification.</p>
    #   @return [String]
    class RedshiftDataShareDetails < Struct.new(
      nil,
      :arn,
      :database,
      :function,
      :table,
      :schema,
      :view,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details for the request.</p>
    # @!attribute export_asset_to_signed_url
    #   <p>Details about the export to signed URL request.</p>
    #   @return [Types::ExportAssetToSignedUrlRequestDetails]
    # @!attribute export_assets_to_s3
    #   <p>Details about the export to Amazon S3 request.</p>
    #   @return [Types::ExportAssetsToS3RequestDetails]
    # @!attribute export_revisions_to_s3
    #   <p>Details about the export to Amazon S3 request.</p>
    #   @return [Types::ExportRevisionsToS3RequestDetails]
    # @!attribute import_asset_from_signed_url
    #   <p>Details about the import from Amazon S3 request.</p>
    #   @return [Types::ImportAssetFromSignedUrlRequestDetails]
    # @!attribute import_assets_from_s3
    #   <p>Details about the import asset from API Gateway API request.</p>
    #   @return [Types::ImportAssetsFromS3RequestDetails]
    # @!attribute import_assets_from_redshift_data_shares
    #   <p>Details from an import from Amazon Redshift datashare request.</p>
    #   @return [Types::ImportAssetsFromRedshiftDataSharesRequestDetails]
    # @!attribute import_asset_from_api_gateway_api
    #   <p>Details about the import from signed URL request.</p>
    #   @return [Types::ImportAssetFromApiGatewayApiRequestDetails]
    # @!attribute create_s3_data_access_from_s3_bucket
    #   <p>Details of the request to create S3 data access from the Amazon S3 bucket.</p>
    #   @return [Types::CreateS3DataAccessFromS3BucketRequestDetails]
    # @!attribute import_assets_from_lake_formation_tag_policy
    #   <p>Request details for the ImportAssetsFromLakeFormationTagPolicy job.</p>
    #   @return [Types::ImportAssetsFromLakeFormationTagPolicyRequestDetails]
    class RequestDetails < Struct.new(
      nil,
      :export_asset_to_signed_url,
      :export_assets_to_s3,
      :export_revisions_to_s3,
      :import_asset_from_signed_url,
      :import_assets_from_s3,
      :import_assets_from_redshift_data_shares,
      :import_asset_from_api_gateway_api,
      :create_s3_data_access_from_s3_bucket,
      :import_assets_from_lake_formation_tag_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource couldn't be found.</p>
    # @!attribute message
    #   <p>The resource couldn't be found.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier for the resource that couldn't be found.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource that couldn't be found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for the response.</p>
    # @!attribute export_asset_to_signed_url
    #   <p>Details for the export to signed URL response.</p>
    #   @return [Types::ExportAssetToSignedUrlResponseDetails]
    # @!attribute export_assets_to_s3
    #   <p>Details for the export to Amazon S3 response.</p>
    #   @return [Types::ExportAssetsToS3ResponseDetails]
    # @!attribute export_revisions_to_s3
    #   <p>Details for the export revisions to Amazon S3 response.</p>
    #   @return [Types::ExportRevisionsToS3ResponseDetails]
    # @!attribute import_asset_from_signed_url
    #   <p>Details for the import from signed URL response.</p>
    #   @return [Types::ImportAssetFromSignedUrlResponseDetails]
    # @!attribute import_assets_from_s3
    #   <p>Details for the import from Amazon S3 response.</p>
    #   @return [Types::ImportAssetsFromS3ResponseDetails]
    # @!attribute import_assets_from_redshift_data_shares
    #   <p>Details from an import from Amazon Redshift datashare response.</p>
    #   @return [Types::ImportAssetsFromRedshiftDataSharesResponseDetails]
    # @!attribute import_asset_from_api_gateway_api
    #   <p>The response details.</p>
    #   @return [Types::ImportAssetFromApiGatewayApiResponseDetails]
    # @!attribute create_s3_data_access_from_s3_bucket
    #   <p>Response details from the CreateS3DataAccessFromS3Bucket job.</p>
    #   @return [Types::CreateS3DataAccessFromS3BucketResponseDetails]
    # @!attribute import_assets_from_lake_formation_tag_policy
    #   <p>Response details from the ImportAssetsFromLakeFormationTagPolicy job.</p>
    #   @return [Types::ImportAssetsFromLakeFormationTagPolicyResponseDetails]
    class ResponseDetails < Struct.new(
      nil,
      :export_asset_to_signed_url,
      :export_assets_to_s3,
      :export_revisions_to_s3,
      :import_asset_from_signed_url,
      :import_assets_from_s3,
      :import_assets_from_redshift_data_shares,
      :import_asset_from_api_gateway_api,
      :create_s3_data_access_from_s3_bucket,
      :import_assets_from_lake_formation_tag_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The destination where the assets in the revision will be exported.</p>
    # @!attribute bucket
    #   <p>The Amazon S3 bucket that is the destination for the assets in the revision.</p>
    #   @return [String]
    # @!attribute key_pattern
    #   <p>A string representing the pattern for generated names of the individual assets in the
    #            revision. For more information about key patterns, see <a href="https://docs.aws.amazon.com/data-exchange/latest/userguide/jobs.html#revision-export-keypatterns">Key patterns when exporting revisions</a>.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for the revision.</p>
    #   @return [String]
    class RevisionDestinationEntry < Struct.new(
      nil,
      :bucket,
      :key_pattern,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A revision is a container for one or more assets.</p>
    # @!attribute arn
    #   <p>The ARN for the revision.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>An optional comment about the revision.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the revision was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with the data set revision.</p>
    #   @return [String]
    # @!attribute finalized
    #   <p>To publish a revision to a data set in a product, the revision must first be finalized.
    #            Finalizing a revision tells AWS Data Exchange that your changes to the assets in the
    #            revision are complete. After it's in this read-only state, you can publish the revision to
    #            your products. Finalized revisions can be published through the AWS Data Exchange console
    #            or the AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API
    #            action. When using the API, revisions are uniquely identified by their ARN.</p>
    #   @return [Boolean]
    # @!attribute id
    #   <p>The unique identifier for the revision.</p>
    #   @return [String]
    # @!attribute source_id
    #   <p>The revision ID of the owned revision corresponding to the entitled revision being
    #            viewed. This parameter is returned when a revision owner is viewing the entitled copy of
    #            its owned revision.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time that the revision was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute revocation_comment
    #   <p>A required comment to inform subscribers of the reason their access to the revision was
    #            revoked.</p>
    #   @return [String]
    # @!attribute revoked
    #   <p>A status indicating that subscribers' access to the revision was revoked.</p>
    #   @return [Boolean]
    # @!attribute revoked_at
    #   <p>The date and time that the revision was revoked, in ISO 8601 format.</p>
    #   @return [Time]
    class RevisionEntry < Struct.new(
      nil,
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
      :revoked_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:finalized] = false unless options.key?(:finalized)
        options[:revoked] = false unless options.key?(:revoked)
        super
      end
    end

    # <p>Information about the published revision.</p>
    # @!attribute data_set_id
    #   <p>The data set ID of the published revision.</p>
    #   @return [String]
    class RevisionPublished < Struct.new(
      nil,
      :data_set_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for a revision.</p>
    #   @return [String]
    # @!attribute revocation_comment
    #   <p>A required comment to inform subscribers of the reason their access to the revision was
    #            revoked.</p>
    #   @return [String]
    class RevokeRevisionInput < Struct.new(
      nil,
      :data_set_id,
      :revision_id,
      :revocation_comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the revision.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>An optional comment about the revision.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the revision was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with the data set revision.</p>
    #   @return [String]
    # @!attribute finalized
    #   <p>To publish a revision to a data set in a product, the revision must first be finalized.
    #            Finalizing a revision tells AWS Data Exchange that changes to the assets in the revision
    #            are complete. After it's in this read-only state, you can publish the revision to your
    #            products. Finalized revisions can be published through the AWS Data Exchange console or the
    #            AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API action.
    #            When using the API, revisions are uniquely identified by their ARN.</p>
    #   @return [Boolean]
    # @!attribute id
    #   <p>The unique identifier for the revision.</p>
    #   @return [String]
    # @!attribute source_id
    #   <p>The revision ID of the owned revision corresponding to the entitled revision being
    #            viewed. This parameter is returned when a revision owner is viewing the entitled copy of
    #            its owned revision.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time that the revision was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute revocation_comment
    #   <p>A required comment to inform subscribers of the reason their access to the revision was
    #            revoked.</p>
    #   @return [String]
    # @!attribute revoked
    #   <p>A status indicating that subscribers' access to the revision was revoked.</p>
    #   @return [Boolean]
    # @!attribute revoked_at
    #   <p>The date and time that the revision was revoked, in ISO 8601 format.</p>
    #   @return [Time]
    class RevokeRevisionOutput < Struct.new(
      nil,
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
      :revoked_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:finalized] = false unless options.key?(:finalized)
        options[:revoked] = false unless options.key?(:revoked)
        super
      end
    end

    # <p>The Amazon S3 data access that is the asset.</p>
    # @!attribute bucket
    #   <p>The Amazon S3 bucket hosting data to be shared in the S3 data access.</p>
    #   @return [String]
    # @!attribute key_prefixes
    #   <p>The Amazon S3 bucket used for hosting shared data in the Amazon S3 data access.</p>
    #   @return [Array<String>]
    # @!attribute keys
    #   <p>S3 keys made available using this asset.</p>
    #   @return [Array<String>]
    # @!attribute s3_access_point_alias
    #   <p>The automatically-generated bucket-style alias for your Amazon S3 Access Point.
    #            Customers can access their entitled data using the S3 Access Point alias.</p>
    #   @return [String]
    # @!attribute s3_access_point_arn
    #   <p>The ARN for your Amazon S3 Access Point. Customers can also access their entitled data
    #            using the S3 Access Point ARN.</p>
    #   @return [String]
    # @!attribute kms_keys_to_grant
    #   <p> List of AWS KMS CMKs (Key Management System Customer Managed Keys) and ARNs used to
    #            encrypt S3 objects being shared in this S3 Data Access asset. Providers must include all
    #            AWS KMS keys used to encrypt these shared S3 objects.</p>
    #   @return [Array<Types::KmsKeyToGrant>]
    class S3DataAccessAsset < Struct.new(
      nil,
      :bucket,
      :key_prefixes,
      :keys,
      :s3_access_point_alias,
      :s3_access_point_arn,
      :kms_keys_to_grant,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Source details for an Amazon S3 data access asset.</p>
    # @!attribute bucket
    #   <p>The Amazon S3 bucket used for hosting shared data in the Amazon S3 data access.</p>
    #   @return [String]
    # @!attribute key_prefixes
    #   <p>Organizes Amazon S3 asset key prefixes stored in an Amazon S3 bucket.</p>
    #   @return [Array<String>]
    # @!attribute keys
    #   <p>The keys used to create the Amazon S3 data access.</p>
    #   @return [Array<String>]
    # @!attribute kms_keys_to_grant
    #   <p>List of AWS KMS CMKs (Key Management System Customer Managed Keys) and ARNs used to
    #            encrypt S3 objects being shared in this S3 Data Access asset.</p>
    #   @return [Array<Types::KmsKeyToGrant>]
    class S3DataAccessAssetSourceEntry < Struct.new(
      nil,
      :bucket,
      :key_prefixes,
      :keys,
      :kms_keys_to_grant,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Extra details specific to the affected scope in this S3 Data Access data set.</p>
    # @!attribute key_prefixes
    #   <p>A
    #            list of the key prefixes affected by this
    #            notification. This
    #            can have up to 50 entries.</p>
    #   @return [Array<String>]
    # @!attribute keys
    #   <p>A
    #            list of the keys affected by this
    #            notification. This
    #            can have up to 50 entries.</p>
    #   @return [Array<String>]
    class S3DataAccessDetails < Struct.new(
      nil,
      :key_prefixes,
      :keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon S3 object that is the asset.</p>
    # @!attribute size
    #   <p>The size of the Amazon S3 object that is the object.</p>
    #   @return [Float]
    class S3SnapshotAsset < Struct.new(
      nil,
      :size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:size] = 0 unless options.key?(:size)
        super
      end
    end

    # <p>Object encompassing information about a schema change to a single, particular field, a
    #          notification can have up to 100 of these.</p>
    # @!attribute name
    #   <p>Name
    #            of the changing
    #            field. This value
    #            can be up to 255 characters long.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Is
    #            the field being added, removed, or modified?</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description
    #            of what's changing about this
    #            field. This value
    #            can be up to 512 characters long.</p>
    #   @return [String]
    class SchemaChangeDetails < Struct.new(
      nil,
      :name,
      :type,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Extra details specific to this schema change type notification.</p>
    # @!attribute changes
    #   <p>List
    #            of schema changes happening in the scope of this
    #            notification. This
    #            can have up to 100 entries.</p>
    #   @return [Array<Types::SchemaChangeDetails>]
    # @!attribute schema_change_at
    #   <p>A
    #            date in the future when the schema change is taking effect.</p>
    #   @return [Time]
    class SchemaChangeRequestDetails < Struct.new(
      nil,
      :changes,
      :schema_change_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the scope of the notifications such as the affected resources.</p>
    # @!attribute lake_formation_tag_policies
    #   <p>Underlying
    #            LF resources that will be affected by this notification.</p>
    #   @return [Array<Types::LakeFormationTagPolicyDetails>]
    # @!attribute redshift_data_shares
    #   <p>Underlying
    #            Redshift resources that will be affected by this notification.</p>
    #   @return [Array<Types::RedshiftDataShareDetails>]
    # @!attribute s3_data_accesses
    #   <p>Underlying
    #            S3 resources that will be affected by this notification.</p>
    #   @return [Array<Types::S3DataAccessDetails>]
    class ScopeDetails < Struct.new(
      nil,
      :lake_formation_tag_policies,
      :redshift_data_shares,
      :s3_data_accesses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute body
    #   <p>The request body.</p>
    #   @return [String]
    # @!attribute query_string_parameters
    #   <p>Attach query string parameters to the end of the URI (for example,
    #            /v1/examplePath?exampleParam=exampleValue).</p>
    #   @return [Hash<String, String>]
    # @!attribute asset_id
    #   <p>Asset ID value for the API request.</p>
    #   @return [String]
    # @!attribute data_set_id
    #   <p>Data set ID value for the API request.</p>
    #   @return [String]
    # @!attribute request_headers
    #   <p>Any header value prefixed with x-amzn-dataexchange-header- will have that stripped
    #            before sending the Asset API request. Use this when you want to override a header that AWS
    #            Data Exchange uses. Alternatively, you can use the header without a prefix to the HTTP
    #            request.</p>
    #   @return [Hash<String, String>]
    # @!attribute method
    #   <p>HTTP method value for the API request. Alternatively, you can use the appropriate verb
    #            in your request.</p>
    #   @return [String]
    # @!attribute path
    #   <p>URI path value for the API request. Alternatively, you can set the URI path directly by
    #            invoking /v1/{pathValue}.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>Revision ID value for the API request.</p>
    #   @return [String]
    class SendApiAssetInput < Struct.new(
      nil,
      :body,
      :query_string_parameters,
      :asset_id,
      :data_set_id,
      :request_headers,
      :method,
      :path,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute body
    #   <p>The response body from the underlying API tracked by the API asset.</p>
    #   @return [String]
    # @!attribute response_headers
    #   <p>The response headers from the underlying API tracked by the API asset.</p>
    #   @return [Hash<String, String>]
    class SendApiAssetOutput < Struct.new(
      nil,
      :body,
      :response_headers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope
    #   <p>Affected
    #            scope of this notification such as the underlying resources affected by the notification
    #            event.</p>
    #   @return [Types::ScopeDetails]
    # @!attribute client_token
    #   <p>Idempotency
    #            key for the notification, this key allows us to deduplicate notifications that are sent in
    #            quick succession erroneously.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>Free-form
    #            text field for providers to add information about their notifications.</p>
    #   @return [String]
    # @!attribute data_set_id
    #   <p>Affected
    #            data set of the notification.</p>
    #   @return [String]
    # @!attribute details
    #   <p>Extra
    #            details specific to this notification type.</p>
    #   @return [Types::NotificationDetails]
    # @!attribute type
    #   <p>The
    #            type of the notification. Describing the kind of event the notification is alerting you
    #            to.</p>
    #   @return [String]
    class SendDataSetNotificationRequest < Struct.new(
      nil,
      :scope,
      :client_token,
      :comment,
      :data_set_id,
      :details,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class SendDataSetNotificationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request has exceeded the quotas imposed by the service.</p>
    # @!attribute limit_name
    #   <p>The name of the limit that was reached.</p>
    #   @return [String]
    # @!attribute limit_value
    #   <p>The value of the exceeded limit.</p>
    #   @return [Float]
    # @!attribute message
    #   <p>The request has exceeded the quotas imposed by the service.</p>
    #   @return [String]
    class ServiceLimitExceededException < Struct.new(
      nil,
      :limit_name,
      :limit_value,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:limit_value] = 0 unless options.key?(:limit_value)
        super
      end
    end

    # @!attribute job_id
    #   <p>The unique identifier for a job.</p>
    #   @return [String]
    class StartJobInput < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartJobOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The LF-tag policy for a table resource.</p>
    # @!attribute expression
    #   <p>A list of LF-tag conditions that apply to table resources.</p>
    #   @return [Array<Types::LFTag>]
    class TableLFTagPolicy < Struct.new(
      nil,
      :expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The LF-tag policy and permissions that apply to table resources.</p>
    # @!attribute expression
    #   <p>A list of LF-tag conditions that apply to table resources.</p>
    #   @return [Array<Types::LFTag>]
    # @!attribute permissions
    #   <p>The permissions granted to subscribers on table resources.</p>
    #   @return [Array<String>]
    class TableLFTagPolicyAndPermissions < Struct.new(
      nil,
      :expression,
      :permissions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A label that consists of a customer-defined key and an optional value.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The limit on the number of requests per second was exceeded.</p>
    # @!attribute message
    #   <p>The limit on the number of requests per second was exceeded.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The key tags.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset_id
    #   <p>The unique identifier for an asset.</p>
    #   @return [String]
    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the asset. When importing from Amazon S3, the Amazon S3 object key is used
    #            as the asset name. When exporting to Amazon S3, the asset name is used as default target
    #            Amazon S3 object key. When importing from Amazon API Gateway API, the API name is used as
    #            the asset name. When importing from Amazon Redshift, the datashare name is used as the
    #            asset name. When importing from AWS Lake Formation, the static values of "Database(s)
    #            included in the LF-tag policy" or "Table(s) included in LF-tag policy" are used as the
    #            name.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for a revision.</p>
    #   @return [String]
    class UpdateAssetInput < Struct.new(
      nil,
      :asset_id,
      :data_set_id,
      :name,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the asset.</p>
    #   @return [String]
    # @!attribute asset_details
    #   <p>Details about the asset.</p>
    #   @return [Types::AssetDetails]
    # @!attribute asset_type
    #   <p>The type of asset that is added to a data set.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the asset was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with this asset.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the asset.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the asset. When importing from Amazon S3, the Amazon S3 object key is used
    #            as the asset name. When exporting to Amazon S3, the asset name is used as default target
    #            Amazon S3 object key. When importing from Amazon API Gateway API, the API name is used as
    #            the asset name. When importing from Amazon Redshift, the datashare name is used as the
    #            asset name. When importing from AWS Lake Formation, the static values of "Database(s)
    #            included in the LF-tag policy"- or "Table(s) included in LF-tag policy" are used as the
    #            asset name.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The unique identifier for the revision associated with this asset.</p>
    #   @return [String]
    # @!attribute source_id
    #   <p>The asset ID of the owned asset corresponding to the entitled asset being viewed. This
    #            parameter is returned when an asset owner is viewing the entitled copy of its owned
    #            asset.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time that the asset was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    class UpdateAssetOutput < Struct.new(
      nil,
      :arn,
      :asset_details,
      :asset_type,
      :created_at,
      :data_set_id,
      :id,
      :name,
      :revision_id,
      :source_id,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the data set.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data set.</p>
    #   @return [String]
    class UpdateDataSetInput < Struct.new(
      nil,
      :data_set_id,
      :description,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the data set.</p>
    #   @return [String]
    # @!attribute asset_type
    #   <p>The type of asset that is added to a data set.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the data set was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description for the data set.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier for the data set.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data set.</p>
    #   @return [String]
    # @!attribute origin
    #   <p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED
    #            to the account (for subscribers).</p>
    #   @return [String]
    # @!attribute origin_details
    #   <p>If the origin of this data set is ENTITLED, includes the details for the product on AWS
    #            Marketplace.</p>
    #   @return [Types::OriginDetails]
    # @!attribute source_id
    #   <p>The data set ID of the owned data set corresponding to the entitled data set being
    #            viewed. This parameter is returned when a data set owner is viewing the entitled copy of
    #            its owned data set.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time that the data set was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    class UpdateDataSetOutput < Struct.new(
      nil,
      :arn,
      :asset_type,
      :created_at,
      :description,
      :id,
      :name,
      :origin,
      :origin_details,
      :source_id,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action
    #   <p>What occurs after a certain event.</p>
    #   @return [Types::Action]
    # @!attribute event_action_id
    #   <p>The unique identifier for the event action.</p>
    #   @return [String]
    class UpdateEventActionInput < Struct.new(
      nil,
      :action,
      :event_action_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute action
    #   <p>What occurs after a certain event.</p>
    #   @return [Types::Action]
    # @!attribute arn
    #   <p>The ARN for the event action.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the event action was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute event
    #   <p>What occurs to start an action.</p>
    #   @return [Types::Event]
    # @!attribute id
    #   <p>The unique identifier for the event action.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time that the event action was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    class UpdateEventActionOutput < Struct.new(
      nil,
      :action,
      :arn,
      :created_at,
      :event,
      :id,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comment
    #   <p>An optional comment about the revision.</p>
    #   @return [String]
    # @!attribute data_set_id
    #   <p>The unique identifier for a data set.</p>
    #   @return [String]
    # @!attribute finalized
    #   <p>Finalizing a revision tells AWS Data Exchange that your changes to the assets in the
    #            revision are complete. After it's in this read-only state, you can publish the revision to
    #            your products.</p>
    #   @return [Boolean]
    # @!attribute revision_id
    #   <p>The unique identifier for a revision.</p>
    #   @return [String]
    class UpdateRevisionInput < Struct.new(
      nil,
      :comment,
      :data_set_id,
      :finalized,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN for the revision.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>An optional comment about the revision.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the revision was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute data_set_id
    #   <p>The unique identifier for the data set associated with the data set revision.</p>
    #   @return [String]
    # @!attribute finalized
    #   <p>To publish a revision to a data set in a product, the revision must first be finalized.
    #            Finalizing a revision tells AWS Data Exchange that changes to the assets in the revision
    #            are complete. After it's in this read-only state, you can publish the revision to your
    #            products. Finalized revisions can be published through the AWS Data Exchange console or the
    #            AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API action.
    #            When using the API, revisions are uniquely identified by their ARN.</p>
    #   @return [Boolean]
    # @!attribute id
    #   <p>The unique identifier for the revision.</p>
    #   @return [String]
    # @!attribute source_id
    #   <p>The revision ID of the owned revision corresponding to the entitled revision being
    #            viewed. This parameter is returned when a revision owner is viewing the entitled copy of
    #            its owned revision.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time that the revision was last updated, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute revocation_comment
    #   <p>A required comment to inform subscribers of the reason their access to the revision was
    #            revoked.</p>
    #   @return [String]
    # @!attribute revoked
    #   <p>A status indicating that subscribers' access to the revision was revoked.</p>
    #   @return [Boolean]
    # @!attribute revoked_at
    #   <p>The date and time that the revision was revoked, in ISO 8601 format.</p>
    #   @return [Time]
    class UpdateRevisionOutput < Struct.new(
      nil,
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
      :revoked_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:finalized] = false unless options.key?(:finalized)
        options[:revoked] = false unless options.key?(:revoked)
        super
      end
    end

    # <p>The request was invalid.</p>
    # @!attribute message
    #   <p>The message that informs you about what was invalid about the request.</p>
    #   @return [String]
    # @!attribute exception_cause
    #   <p>The unique identifier for the resource that couldn't be found.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      :exception_cause,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
