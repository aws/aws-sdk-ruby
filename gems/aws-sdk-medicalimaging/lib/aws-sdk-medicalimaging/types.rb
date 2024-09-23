# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MedicalImaging
  module Types

    # The user does not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updating or deleting a resource can cause an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Copy the destination image set.
    #
    # @!attribute [rw] image_set_id
    #   The image set identifier for the destination image set.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_id
    #   The latest version identifier for the destination image set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/CopyDestinationImageSet AWS API Documentation
    #
    class CopyDestinationImageSet < Struct.new(
      :image_set_id,
      :latest_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Copy the image set properties of the destination image set.
    #
    # @!attribute [rw] image_set_id
    #   The image set identifier of the copied image set properties.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_id
    #   The latest version identifier for the destination image set
    #   properties.
    #   @return [String]
    #
    # @!attribute [rw] image_set_state
    #   The image set state of the destination image set properties.
    #   @return [String]
    #
    # @!attribute [rw] image_set_workflow_status
    #   The image set workflow status of the destination image set
    #   properties.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the destination image set properties were
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the destination image set properties were last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] image_set_arn
    #   The Amazon Resource Name (ARN) assigned to the destination image
    #   set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/CopyDestinationImageSetProperties AWS API Documentation
    #
    class CopyDestinationImageSetProperties < Struct.new(
      :image_set_id,
      :latest_version_id,
      :image_set_state,
      :image_set_workflow_status,
      :created_at,
      :updated_at,
      :image_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Copy image set information.
    #
    # @!attribute [rw] source_image_set
    #   The source image set.
    #   @return [Types::CopySourceImageSetInformation]
    #
    # @!attribute [rw] destination_image_set
    #   The destination image set.
    #   @return [Types::CopyDestinationImageSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/CopyImageSetInformation AWS API Documentation
    #
    class CopyImageSetInformation < Struct.new(
      :source_image_set,
      :destination_image_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] source_image_set_id
    #   The source image set identifier.
    #   @return [String]
    #
    # @!attribute [rw] copy_image_set_information
    #   Copy image set information.
    #   @return [Types::CopyImageSetInformation]
    #
    # @!attribute [rw] force
    #   Setting this flag will force the `CopyImageSet` operation, even if
    #   Patient, Study, or Series level metadata are mismatched across the
    #   `sourceImageSet` and `destinationImageSet`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/CopyImageSetRequest AWS API Documentation
    #
    class CopyImageSetRequest < Struct.new(
      :datastore_id,
      :source_image_set_id,
      :copy_image_set_information,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] source_image_set_properties
    #   The properties of the source image set.
    #   @return [Types::CopySourceImageSetProperties]
    #
    # @!attribute [rw] destination_image_set_properties
    #   The properties of the destination image set.
    #   @return [Types::CopyDestinationImageSetProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/CopyImageSetResponse AWS API Documentation
    #
    class CopyImageSetResponse < Struct.new(
      :datastore_id,
      :source_image_set_properties,
      :destination_image_set_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Copy source image set information.
    #
    # @!attribute [rw] latest_version_id
    #   The latest version identifier for the source image set.
    #   @return [String]
    #
    # @!attribute [rw] dicom_copies
    #   Contains `MetadataCopies` structure and wraps information related to
    #   specific copy use cases. For example, when copying subsets.
    #   @return [Types::MetadataCopies]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/CopySourceImageSetInformation AWS API Documentation
    #
    class CopySourceImageSetInformation < Struct.new(
      :latest_version_id,
      :dicom_copies)
      SENSITIVE = []
      include Aws::Structure
    end

    # Copy source image set properties.
    #
    # @!attribute [rw] image_set_id
    #   The image set identifier for the copied source image set.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_id
    #   The latest version identifier for the copied source image set.
    #   @return [String]
    #
    # @!attribute [rw] image_set_state
    #   The image set state of the copied source image set.
    #   @return [String]
    #
    # @!attribute [rw] image_set_workflow_status
    #   The workflow status of the copied source image set.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the source image set properties were created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the source image set properties were updated.
    #   @return [Time]
    #
    # @!attribute [rw] image_set_arn
    #   The Amazon Resource Name (ARN) assigned to the source image set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/CopySourceImageSetProperties AWS API Documentation
    #
    class CopySourceImageSetProperties < Struct.new(
      :image_set_id,
      :latest_version_id,
      :image_set_state,
      :image_set_workflow_status,
      :created_at,
      :updated_at,
      :image_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_name
    #   The data store name.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for API idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags provided when creating a data store.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) assigned to the Key Management
    #   Service (KMS) key for accessing encrypted data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/CreateDatastoreRequest AWS API Documentation
    #
    class CreateDatastoreRequest < Struct.new(
      :datastore_name,
      :client_token,
      :tags,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] datastore_status
    #   The data store status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/CreateDatastoreResponse AWS API Documentation
    #
    class CreateDatastoreResponse < Struct.new(
      :datastore_id,
      :datastore_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties of the import job.
    #
    # @!attribute [rw] job_id
    #   The import job identifier.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The import job name.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The filters for listing import jobs based on status.
    #   @return [String]
    #
    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) that grants permissions to access
    #   medical imaging resources.
    #   @return [String]
    #
    # @!attribute [rw] ended_at
    #   The timestamp for when the import job was ended.
    #   @return [Time]
    #
    # @!attribute [rw] submitted_at
    #   The timestamp for when the import job was submitted.
    #   @return [Time]
    #
    # @!attribute [rw] input_s3_uri
    #   The input prefix path for the S3 bucket that contains the DICOM P10
    #   files to be imported.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_uri
    #   The output prefix of the S3 bucket to upload the results of the
    #   DICOM import job.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message thrown if an import job fails.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/DICOMImportJobProperties AWS API Documentation
    #
    class DICOMImportJobProperties < Struct.new(
      :job_id,
      :job_name,
      :job_status,
      :datastore_id,
      :data_access_role_arn,
      :ended_at,
      :submitted_at,
      :input_s3_uri,
      :output_s3_uri,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of import job.
    #
    # @!attribute [rw] job_id
    #   The import job identifier.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The import job name.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The filters for listing import jobs based on status.
    #   @return [String]
    #
    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) that grants permissions to access
    #   medical imaging resources.
    #   @return [String]
    #
    # @!attribute [rw] ended_at
    #   The timestamp when an import job ended.
    #   @return [Time]
    #
    # @!attribute [rw] submitted_at
    #   The timestamp when an import job was submitted.
    #   @return [Time]
    #
    # @!attribute [rw] message
    #   The error message thrown if an import job fails.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/DICOMImportJobSummary AWS API Documentation
    #
    class DICOMImportJobSummary < Struct.new(
      :job_id,
      :job_name,
      :job_status,
      :datastore_id,
      :data_access_role_arn,
      :ended_at,
      :submitted_at,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The aggregated structure to store DICOM study date and study time for
    # search capabilities.
    #
    # @!attribute [rw] dicom_study_date
    #   The DICOM study date provided in `yyMMdd` format.
    #   @return [String]
    #
    # @!attribute [rw] dicom_study_time
    #   The DICOM study time provided in `HHmmss.FFFFFF` format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/DICOMStudyDateAndTime AWS API Documentation
    #
    class DICOMStudyDateAndTime < Struct.new(
      :dicom_study_date,
      :dicom_study_time)
      SENSITIVE = [:dicom_study_date, :dicom_study_time]
      include Aws::Structure
    end

    # The DICOM attributes returned as a part of a response. Each image set
    # has these properties as part of a search result.
    #
    # @!attribute [rw] dicom_patient_id
    #   The unique identifier for a patient in a DICOM Study.
    #   @return [String]
    #
    # @!attribute [rw] dicom_patient_name
    #   The patient name.
    #   @return [String]
    #
    # @!attribute [rw] dicom_patient_birth_date
    #   The patient birth date.
    #   @return [String]
    #
    # @!attribute [rw] dicom_patient_sex
    #   The patient sex.
    #   @return [String]
    #
    # @!attribute [rw] dicom_study_instance_uid
    #   The DICOM provided identifier for the Study Instance UID.
    #   @return [String]
    #
    # @!attribute [rw] dicom_study_id
    #   The DICOM provided identifier for the Study ID.
    #   @return [String]
    #
    # @!attribute [rw] dicom_study_description
    #   The DICOM provided Study Description.
    #   @return [String]
    #
    # @!attribute [rw] dicom_number_of_study_related_series
    #   The total number of series in the DICOM study.
    #   @return [Integer]
    #
    # @!attribute [rw] dicom_number_of_study_related_instances
    #   The total number of instances in the DICOM study.
    #   @return [Integer]
    #
    # @!attribute [rw] dicom_accession_number
    #   The accession number for the DICOM study.
    #   @return [String]
    #
    # @!attribute [rw] dicom_series_instance_uid
    #   The DICOM provided identifier for the Series Instance UID.
    #   @return [String]
    #
    # @!attribute [rw] dicom_series_modality
    #   The DICOM provided identifier for the series Modality.
    #   @return [String]
    #
    # @!attribute [rw] dicom_series_body_part
    #   The DICOM provided identifier for the series Body Part Examined.
    #   @return [String]
    #
    # @!attribute [rw] dicom_series_number
    #   The DICOM provided identifier for the Series Number.
    #   @return [Integer]
    #
    # @!attribute [rw] dicom_study_date
    #   The study date.
    #   @return [String]
    #
    # @!attribute [rw] dicom_study_time
    #   The study time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/DICOMTags AWS API Documentation
    #
    class DICOMTags < Struct.new(
      :dicom_patient_id,
      :dicom_patient_name,
      :dicom_patient_birth_date,
      :dicom_patient_sex,
      :dicom_study_instance_uid,
      :dicom_study_id,
      :dicom_study_description,
      :dicom_number_of_study_related_series,
      :dicom_number_of_study_related_instances,
      :dicom_accession_number,
      :dicom_series_instance_uid,
      :dicom_series_modality,
      :dicom_series_body_part,
      :dicom_series_number,
      :dicom_study_date,
      :dicom_study_time)
      SENSITIVE = [:dicom_patient_id, :dicom_patient_name, :dicom_patient_birth_date, :dicom_patient_sex, :dicom_study_instance_uid, :dicom_study_id, :dicom_study_description, :dicom_accession_number, :dicom_series_instance_uid, :dicom_series_modality, :dicom_series_body_part, :dicom_series_number, :dicom_study_date, :dicom_study_time]
      include Aws::Structure
    end

    # The object containing `removableAttributes` and `updatableAttributes`.
    #
    # @!attribute [rw] removable_attributes
    #   The DICOM tags to be removed from `ImageSetMetadata`.
    #   @return [String]
    #
    # @!attribute [rw] updatable_attributes
    #   The DICOM tags that need to be updated in `ImageSetMetadata`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/DICOMUpdates AWS API Documentation
    #
    class DICOMUpdates < Struct.new(
      :removable_attributes,
      :updatable_attributes)
      SENSITIVE = [:removable_attributes, :updatable_attributes]
      include Aws::Structure
    end

    # The properties associated with the data store.
    #
    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] datastore_name
    #   The data store name.
    #   @return [String]
    #
    # @!attribute [rw] datastore_status
    #   The data store status.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) assigned to the Key Management
    #   Service (KMS) key for accessing encrypted data.
    #   @return [String]
    #
    # @!attribute [rw] datastore_arn
    #   The Amazon Resource Name (ARN) for the data store.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the data store was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the data store was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/DatastoreProperties AWS API Documentation
    #
    class DatastoreProperties < Struct.new(
      :datastore_id,
      :datastore_name,
      :datastore_status,
      :kms_key_arn,
      :datastore_arn,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of summaries of data stores.
    #
    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] datastore_name
    #   The data store name.
    #   @return [String]
    #
    # @!attribute [rw] datastore_status
    #   The data store status.
    #   @return [String]
    #
    # @!attribute [rw] datastore_arn
    #   The Amazon Resource Name (ARN) for the data store.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the data store was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the data store was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/DatastoreSummary AWS API Documentation
    #
    class DatastoreSummary < Struct.new(
      :datastore_id,
      :datastore_name,
      :datastore_status,
      :datastore_arn,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/DeleteDatastoreRequest AWS API Documentation
    #
    class DeleteDatastoreRequest < Struct.new(
      :datastore_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] datastore_status
    #   The data store status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/DeleteDatastoreResponse AWS API Documentation
    #
    class DeleteDatastoreResponse < Struct.new(
      :datastore_id,
      :datastore_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] image_set_id
    #   The image set identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/DeleteImageSetRequest AWS API Documentation
    #
    class DeleteImageSetRequest < Struct.new(
      :datastore_id,
      :image_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] image_set_id
    #   The image set identifier.
    #   @return [String]
    #
    # @!attribute [rw] image_set_state
    #   The image set state.
    #   @return [String]
    #
    # @!attribute [rw] image_set_workflow_status
    #   The image set workflow status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/DeleteImageSetResponse AWS API Documentation
    #
    class DeleteImageSetResponse < Struct.new(
      :datastore_id,
      :image_set_id,
      :image_set_state,
      :image_set_workflow_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The import job identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/GetDICOMImportJobRequest AWS API Documentation
    #
    class GetDICOMImportJobRequest < Struct.new(
      :datastore_id,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_properties
    #   The properties of the import job.
    #   @return [Types::DICOMImportJobProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/GetDICOMImportJobResponse AWS API Documentation
    #
    class GetDICOMImportJobResponse < Struct.new(
      :job_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/GetDatastoreRequest AWS API Documentation
    #
    class GetDatastoreRequest < Struct.new(
      :datastore_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_properties
    #   The data store properties.
    #   @return [Types::DatastoreProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/GetDatastoreResponse AWS API Documentation
    #
    class GetDatastoreResponse < Struct.new(
      :datastore_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] image_set_id
    #   The image set identifier.
    #   @return [String]
    #
    # @!attribute [rw] image_frame_information
    #   Information about the image frame (pixel data) identifier.
    #   @return [Types::ImageFrameInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/GetImageFrameRequest AWS API Documentation
    #
    class GetImageFrameRequest < Struct.new(
      :datastore_id,
      :image_set_id,
      :image_frame_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_frame_blob
    #   The blob containing the aggregated image frame information.
    #   @return [IO]
    #
    # @!attribute [rw] content_type
    #   The format in which the image frame information is returned to the
    #   customer. Default is `application/octet-stream`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/GetImageFrameResponse AWS API Documentation
    #
    class GetImageFrameResponse < Struct.new(
      :image_frame_blob,
      :content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] image_set_id
    #   The image set identifier.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The image set version identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/GetImageSetMetadataRequest AWS API Documentation
    #
    class GetImageSetMetadataRequest < Struct.new(
      :datastore_id,
      :image_set_id,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_set_metadata_blob
    #   The blob containing the aggregated metadata information for the
    #   image set.
    #   @return [IO]
    #
    # @!attribute [rw] content_type
    #   The format in which the study metadata is returned to the customer.
    #   Default is `text/plain`.
    #   @return [String]
    #
    # @!attribute [rw] content_encoding
    #   The compression format in which image set metadata attributes are
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/GetImageSetMetadataResponse AWS API Documentation
    #
    class GetImageSetMetadataResponse < Struct.new(
      :image_set_metadata_blob,
      :content_type,
      :content_encoding)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] image_set_id
    #   The image set identifier.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The image set version identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/GetImageSetRequest AWS API Documentation
    #
    class GetImageSetRequest < Struct.new(
      :datastore_id,
      :image_set_id,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] image_set_id
    #   The image set identifier.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The image set version identifier.
    #   @return [String]
    #
    # @!attribute [rw] image_set_state
    #   The image set state.
    #   @return [String]
    #
    # @!attribute [rw] image_set_workflow_status
    #   The image set workflow status.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when image set properties were created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when image set properties were updated.
    #   @return [Time]
    #
    # @!attribute [rw] deleted_at
    #   The timestamp when the image set properties were deleted.
    #   @return [Time]
    #
    # @!attribute [rw] message
    #   The error message thrown if an image set action fails.
    #   @return [String]
    #
    # @!attribute [rw] image_set_arn
    #   The Amazon Resource Name (ARN) assigned to the image set.
    #   @return [String]
    #
    # @!attribute [rw] overrides
    #   This object contains the details of any overrides used while
    #   creating a specific image set version. If an image set was copied or
    #   updated using the `force` flag, this object will contain the
    #   `forced` flag.
    #   @return [Types::Overrides]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/GetImageSetResponse AWS API Documentation
    #
    class GetImageSetResponse < Struct.new(
      :datastore_id,
      :image_set_id,
      :version_id,
      :image_set_state,
      :image_set_workflow_status,
      :created_at,
      :updated_at,
      :deleted_at,
      :message,
      :image_set_arn,
      :overrides)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the image frame (pixel data) identifier.
    #
    # @!attribute [rw] image_frame_id
    #   The image frame (pixel data) identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/ImageFrameInformation AWS API Documentation
    #
    class ImageFrameInformation < Struct.new(
      :image_frame_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The image set properties.
    #
    # @!attribute [rw] image_set_id
    #   The image set identifier.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The image set version identifier.
    #   @return [String]
    #
    # @!attribute [rw] image_set_state
    #   The image set state.
    #   @return [String]
    #
    # @!attribute [rw] image_set_workflow_status
    #   The image set workflow status.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the image set properties were created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the image set properties were updated.
    #   @return [Time]
    #
    # @!attribute [rw] deleted_at
    #   The timestamp when the image set properties were deleted.
    #   @return [Time]
    #
    # @!attribute [rw] message
    #   The error message thrown if an image set action fails.
    #   @return [String]
    #
    # @!attribute [rw] overrides
    #   Contains details on overrides used when creating the returned
    #   version of an image set. For example, if `forced` exists, the
    #   `forced` flag was used when creating the image set.
    #   @return [Types::Overrides]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/ImageSetProperties AWS API Documentation
    #
    class ImageSetProperties < Struct.new(
      :image_set_id,
      :version_id,
      :image_set_state,
      :image_set_workflow_status,
      :created_at,
      :updated_at,
      :deleted_at,
      :message,
      :overrides)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of the image set metadata.
    #
    # @!attribute [rw] image_set_id
    #   The image set identifier.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The image set version.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The time an image set is created. Sample creation date is provided
    #   in `1985-04-12T23:20:50.52Z` format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time an image set was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] dicom_tags
    #   The DICOM tags associated with the image set.
    #   @return [Types::DICOMTags]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/ImageSetsMetadataSummary AWS API Documentation
    #
    class ImageSetsMetadataSummary < Struct.new(
      :image_set_id,
      :version,
      :created_at,
      :updated_at,
      :dicom_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error occurred during processing of the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The filters for listing import jobs based on status.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to request the list of import jobs on the
    #   next page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The max results count. The upper bound is determined by load
    #   testing.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/ListDICOMImportJobsRequest AWS API Documentation
    #
    class ListDICOMImportJobsRequest < Struct.new(
      :datastore_id,
      :job_status,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_summaries
    #   A list of job summaries.
    #   @return [Array<Types::DICOMImportJobSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the list of import jobs on the
    #   next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/ListDICOMImportJobsResponse AWS API Documentation
    #
    class ListDICOMImportJobsResponse < Struct.new(
      :job_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_status
    #   The data store status.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to request the list of data stores on the
    #   next page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Valid Range: Minimum value of 1. Maximum value of 50.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/ListDatastoresRequest AWS API Documentation
    #
    class ListDatastoresRequest < Struct.new(
      :datastore_status,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_summaries
    #   The list of summaries of data stores.
    #   @return [Array<Types::DatastoreSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the list of data stores on the
    #   next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/ListDatastoresResponse AWS API Documentation
    #
    class ListDatastoresResponse < Struct.new(
      :datastore_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] image_set_id
    #   The image set identifier.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to request the list of image set versions
    #   on the next page.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The max results count.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/ListImageSetVersionsRequest AWS API Documentation
    #
    class ListImageSetVersionsRequest < Struct.new(
      :datastore_id,
      :image_set_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_set_properties_list
    #   Lists all properties associated with an image set.
    #   @return [Array<Types::ImageSetProperties>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the list of image set versions
    #   on the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/ListImageSetVersionsResponse AWS API Documentation
    #
    class ListImageSetVersionsResponse < Struct.new(
      :image_set_properties_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the medical imaging resource to
    #   list tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of all tags associated with a medical imaging resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains copiable `Attributes` structure and wraps information related
    # to specific copy use cases. For example, when copying subsets.
    #
    # @!attribute [rw] copiable_attributes
    #   The JSON string used to specify a subset of SOP Instances to copy
    #   from source to destination image set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/MetadataCopies AWS API Documentation
    #
    class MetadataCopies < Struct.new(
      :copiable_attributes)
      SENSITIVE = [:copiable_attributes]
      include Aws::Structure
    end

    # Contains DICOMUpdates.
    #
    # @note MetadataUpdates is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] dicom_updates
    #   The object containing `removableAttributes` and
    #   `updatableAttributes`.
    #   @return [Types::DICOMUpdates]
    #
    # @!attribute [rw] revert_to_version_id
    #   Specifies the previous image set version ID to revert the current
    #   image set back to.
    #
    #   <note markdown="1"> You must provide either `revertToVersionId` or `DICOMUpdates` in
    #   your request. A `ValidationException` error is thrown if both
    #   parameters are provided at the same time.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/MetadataUpdates AWS API Documentation
    #
    class MetadataUpdates < Struct.new(
      :dicom_updates,
      :revert_to_version_id,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DicomUpdates < MetadataUpdates; end
      class RevertToVersionId < MetadataUpdates; end
      class Unknown < MetadataUpdates; end
    end

    # Specifies the overrides used in image set modification calls to
    # `CopyImageSet` and `UpdateImageSetMetadata`.
    #
    # @!attribute [rw] forced
    #   Setting this flag will force the `CopyImageSet` and
    #   `UpdateImageSetMetadata` operations, even if Patient, Study, or
    #   Series level metadata are mismatched.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/Overrides AWS API Documentation
    #
    class Overrides < Struct.new(
      :forced)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request references a resource which does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The search input attribute value.
    #
    # @note SearchByAttributeValue is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] dicom_patient_id
    #   The patient ID input for search.
    #   @return [String]
    #
    # @!attribute [rw] dicom_accession_number
    #   The DICOM accession number for search.
    #   @return [String]
    #
    # @!attribute [rw] dicom_study_id
    #   The DICOM study ID for search.
    #   @return [String]
    #
    # @!attribute [rw] dicom_study_instance_uid
    #   The DICOM study instance UID for search.
    #   @return [String]
    #
    # @!attribute [rw] dicom_series_instance_uid
    #   The Series Instance UID input for search.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The created at time of the image set provided for search.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp input for search.
    #   @return [Time]
    #
    # @!attribute [rw] dicom_study_date_and_time
    #   The aggregated structure containing DICOM study date and study time
    #   for search.
    #   @return [Types::DICOMStudyDateAndTime]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/SearchByAttributeValue AWS API Documentation
    #
    class SearchByAttributeValue < Struct.new(
      :dicom_patient_id,
      :dicom_accession_number,
      :dicom_study_id,
      :dicom_study_instance_uid,
      :dicom_series_instance_uid,
      :created_at,
      :updated_at,
      :dicom_study_date_and_time,
      :unknown)
      SENSITIVE = [:dicom_patient_id, :dicom_accession_number, :dicom_study_id, :dicom_study_instance_uid, :dicom_series_instance_uid]
      include Aws::Structure
      include Aws::Structure::Union

      class DicomPatientId < SearchByAttributeValue; end
      class DicomAccessionNumber < SearchByAttributeValue; end
      class DicomStudyId < SearchByAttributeValue; end
      class DicomStudyInstanceUid < SearchByAttributeValue; end
      class DicomSeriesInstanceUid < SearchByAttributeValue; end
      class CreatedAt < SearchByAttributeValue; end
      class UpdatedAt < SearchByAttributeValue; end
      class DicomStudyDateAndTime < SearchByAttributeValue; end
      class Unknown < SearchByAttributeValue; end
    end

    # The search criteria.
    #
    # @!attribute [rw] filters
    #   The filters for the search criteria.
    #   @return [Array<Types::SearchFilter>]
    #
    # @!attribute [rw] sort
    #   The sort input for search criteria.
    #   @return [Types::Sort]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/SearchCriteria AWS API Documentation
    #
    class SearchCriteria < Struct.new(
      :filters,
      :sort)
      SENSITIVE = []
      include Aws::Structure
    end

    # The search filter.
    #
    # @!attribute [rw] values
    #   The search filter values.
    #   @return [Array<Types::SearchByAttributeValue>]
    #
    # @!attribute [rw] operator
    #   The search filter operator for `imageSetDateTime`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/SearchFilter AWS API Documentation
    #
    class SearchFilter < Struct.new(
      :values,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The identifier of the data store where the image sets reside.
    #   @return [String]
    #
    # @!attribute [rw] search_criteria
    #   The search criteria that filters by applying a maximum of 1 item to
    #   `SearchByAttribute`.
    #   @return [Types::SearchCriteria]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that can be returned in a search.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token used for pagination of results returned in the response.
    #   Use the token returned from the previous request to continue results
    #   where the previous request ended.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/SearchImageSetsRequest AWS API Documentation
    #
    class SearchImageSetsRequest < Struct.new(
      :datastore_id,
      :search_criteria,
      :max_results,
      :next_token)
      SENSITIVE = [:search_criteria]
      include Aws::Structure
    end

    # @!attribute [rw] image_sets_metadata_summaries
    #   The model containing the image set results.
    #   @return [Array<Types::ImageSetsMetadataSummary>]
    #
    # @!attribute [rw] sort
    #   The sort order for image set search results.
    #   @return [Types::Sort]
    #
    # @!attribute [rw] next_token
    #   The token for pagination results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/SearchImageSetsResponse AWS API Documentation
    #
    class SearchImageSetsResponse < Struct.new(
      :image_sets_metadata_summaries,
      :sort,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request caused a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sort search results.
    #
    # @!attribute [rw] sort_order
    #   The sort order for search criteria.
    #   @return [String]
    #
    # @!attribute [rw] sort_field
    #   The sort field for search criteria.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/Sort AWS API Documentation
    #
    class Sort < Struct.new(
      :sort_order,
      :sort_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   The import job name.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants
    #   permission to access medical imaging resources.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for API idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] input_s3_uri
    #   The input prefix path for the S3 bucket that contains the DICOM
    #   files to be imported.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_uri
    #   The output prefix of the S3 bucket to upload the results of the
    #   DICOM import job.
    #   @return [String]
    #
    # @!attribute [rw] input_owner_account_id
    #   The account ID of the source S3 bucket owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/StartDICOMImportJobRequest AWS API Documentation
    #
    class StartDICOMImportJobRequest < Struct.new(
      :job_name,
      :data_access_role_arn,
      :client_token,
      :datastore_id,
      :input_s3_uri,
      :output_s3_uri,
      :input_owner_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The import job identifier.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The import job status.
    #   @return [String]
    #
    # @!attribute [rw] submitted_at
    #   The timestamp when the import job was submitted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/StartDICOMImportJobResponse AWS API Documentation
    #
    class StartDICOMImportJobResponse < Struct.new(
      :datastore_id,
      :job_id,
      :job_status,
      :submitted_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the medical imaging resource that
    #   tags are being added to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The user-specified key and value tag pairs added to a medical
    #   imaging resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the medical imaging resource that
    #   tags are being removed from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys for the tags to be removed from the medical imaging
    #   resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] image_set_id
    #   The image set identifier.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_id
    #   The latest image set version identifier.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   Setting this flag will force the `UpdateImageSetMetadata` operation
    #   for the following attributes:
    #
    #   * `Tag.StudyInstanceUID`, `Tag.SeriesInstanceUID`,
    #     `Tag.SOPInstanceUID`, and `Tag.StudyID`
    #
    #   * Adding, removing, or updating private tags for an individual SOP
    #     Instance
    #   @return [Boolean]
    #
    # @!attribute [rw] update_image_set_metadata_updates
    #   Update image set metadata updates.
    #   @return [Types::MetadataUpdates]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/UpdateImageSetMetadataRequest AWS API Documentation
    #
    class UpdateImageSetMetadataRequest < Struct.new(
      :datastore_id,
      :image_set_id,
      :latest_version_id,
      :force,
      :update_image_set_metadata_updates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] image_set_id
    #   The image set identifier.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_id
    #   The latest image set version identifier.
    #   @return [String]
    #
    # @!attribute [rw] image_set_state
    #   The image set state.
    #   @return [String]
    #
    # @!attribute [rw] image_set_workflow_status
    #   The image set workflow status.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when image set metadata was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when image set metadata was updated.
    #   @return [Time]
    #
    # @!attribute [rw] message
    #   The error message thrown if an update image set metadata action
    #   fails.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/UpdateImageSetMetadataResponse AWS API Documentation
    #
    class UpdateImageSetMetadataResponse < Struct.new(
      :datastore_id,
      :image_set_id,
      :latest_version_id,
      :image_set_state,
      :image_set_workflow_status,
      :created_at,
      :updated_at,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints set by the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medical-imaging-2023-07-19/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

