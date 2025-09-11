# frozen_string_literal: true

# This is generated code!

module Aws::MedicalImaging
  # This module contains the types returned by client operations.
  module Types

    # <p>The user does not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updating or deleting a resource can cause an inconsistent state.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Copy the destination image set.</p>
    # @!attribute image_set_id
    #   <p>The image set identifier for the destination image set.</p>
    #   @return [String]
    # @!attribute latest_version_id
    #   <p>The latest version identifier for the destination image set.</p>
    #   @return [String]
    class CopyDestinationImageSet < Struct.new(
      :image_set_id,
      :latest_version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Copy the image set properties of the destination image set.</p>
    # @!attribute image_set_id
    #   <p>The image set identifier of the copied image set properties.</p>
    #   @return [String]
    # @!attribute latest_version_id
    #   <p>The latest version identifier for the destination image set properties.</p>
    #   @return [String]
    # @!attribute image_set_state
    #   <p>The image set state of the destination image set properties.</p>
    #   @return [String]
    # @!attribute image_set_workflow_status
    #   <p>The image set workflow status of the destination image set properties.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the destination image set properties were created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the destination image set properties were last updated.</p>
    #   @return [Time]
    # @!attribute image_set_arn
    #   <p>The Amazon Resource Name (ARN) assigned to the destination image set.</p>
    #   @return [String]
    class CopyDestinationImageSetProperties < Struct.new(
      :image_set_id,
      :latest_version_id,
      :image_set_state,
      :image_set_workflow_status,
      :created_at,
      :updated_at,
      :image_set_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Copy image set information.</p>
    # @!attribute source_image_set
    #   <p>The source image set.</p>
    #   @return [Types::CopySourceImageSetInformation]
    # @!attribute destination_image_set
    #   <p>The destination image set.</p>
    #   @return [Types::CopyDestinationImageSet]
    class CopyImageSetInformation < Struct.new(
      :source_image_set,
      :destination_image_set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute source_image_set_id
    #   <p>The source image set identifier.</p>
    #   @return [String]
    # @!attribute copy_image_set_information
    #   <p>Copy image set information.</p>
    #   @return [Types::CopyImageSetInformation]
    # @!attribute force
    #   <p>Providing this parameter will force completion of the <code>CopyImageSet</code> operation, even if there are inconsistent Patient, Study, and/or Series level metadata elements between the <code>sourceImageSet</code> and <code>destinationImageSet</code>.</p>
    #   @return [Boolean]
    # @!attribute promote_to_primary
    #   <p>Providing this parameter will configure the <code>CopyImageSet</code> operation to promote the given image set to the primary DICOM hierarchy. If successful, a new primary image set ID will be returned as the destination image set.</p>
    #   @return [Boolean]
    class CopyImageSetRequest < Struct.new(
      :datastore_id,
      :source_image_set_id,
      :copy_image_set_information,
      :force,
      :promote_to_primary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute source_image_set_properties
    #   <p>The properties of the source image set.</p>
    #   @return [Types::CopySourceImageSetProperties]
    # @!attribute destination_image_set_properties
    #   <p>The properties of the destination image set.</p>
    #   @return [Types::CopyDestinationImageSetProperties]
    class CopyImageSetResponse < Struct.new(
      :datastore_id,
      :source_image_set_properties,
      :destination_image_set_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Copy source image set information.</p>
    # @!attribute latest_version_id
    #   <p>The latest version identifier for the source image set.</p>
    #   @return [String]
    # @!attribute dicom_copies
    #   <p>Contains <code>MetadataCopies</code> structure and wraps information related to specific copy use cases. For example, when copying subsets.</p>
    #   @return [Types::MetadataCopies]
    class CopySourceImageSetInformation < Struct.new(
      :latest_version_id,
      :dicom_copies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Copy source image set properties.</p>
    # @!attribute image_set_id
    #   <p>The image set identifier for the copied source image set.</p>
    #   @return [String]
    # @!attribute latest_version_id
    #   <p>The latest version identifier for the copied source image set.</p>
    #   @return [String]
    # @!attribute image_set_state
    #   <p>The image set state of the copied source image set.</p>
    #   @return [String]
    # @!attribute image_set_workflow_status
    #   <p>The workflow status of the copied source image set.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the source image set properties were created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the source image set properties were updated.</p>
    #   @return [Time]
    # @!attribute image_set_arn
    #   <p>The Amazon Resource Name (ARN) assigned to the source image set.</p>
    #   @return [String]
    class CopySourceImageSetProperties < Struct.new(
      :image_set_id,
      :latest_version_id,
      :image_set_state,
      :image_set_workflow_status,
      :created_at,
      :updated_at,
      :image_set_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_name
    #   <p>The data store name.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier for API idempotency.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags provided when creating a data store.</p>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) assigned to the Key Management Service (KMS) key for accessing encrypted data.</p>
    #   @return [String]
    class CreateDatastoreRequest < Struct.new(
      :datastore_name,
      :client_token,
      :tags,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute datastore_status
    #   <p>The data store status.</p>
    #   @return [String]
    class CreateDatastoreResponse < Struct.new(
      :datastore_id,
      :datastore_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Properties of the import job.</p>
    # @!attribute job_id
    #   <p>The import job identifier.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The import job name.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The filters for listing import jobs based on status.</p>
    #   @return [String]
    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) that grants permissions to access medical imaging resources.</p>
    #   @return [String]
    # @!attribute ended_at
    #   <p>The timestamp for when the import job was ended.</p>
    #   @return [Time]
    # @!attribute submitted_at
    #   <p>The timestamp for when the import job was submitted.</p>
    #   @return [Time]
    # @!attribute input_s3_uri
    #   <p>The input prefix path for the S3 bucket that contains the DICOM P10 files to be imported.</p>
    #   @return [String]
    # @!attribute output_s3_uri
    #   <p>The output prefix of the S3 bucket to upload the results of the DICOM import job.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message thrown if an import job fails.</p>
    #   @return [String]
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
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of import job.</p>
    # @!attribute job_id
    #   <p>The import job identifier.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The import job name.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The filters for listing import jobs based on status.</p>
    #   @return [String]
    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) that grants permissions to access medical imaging resources.</p>
    #   @return [String]
    # @!attribute ended_at
    #   <p>The timestamp when an import job ended.</p>
    #   @return [Time]
    # @!attribute submitted_at
    #   <p>The timestamp when an import job was submitted.</p>
    #   @return [Time]
    # @!attribute message
    #   <p>The error message thrown if an import job fails.</p>
    #   @return [String]
    class DICOMImportJobSummary < Struct.new(
      :job_id,
      :job_name,
      :job_status,
      :datastore_id,
      :data_access_role_arn,
      :ended_at,
      :submitted_at,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The aggregated structure to store DICOM study date and study time for search capabilities.</p>
    # @!attribute dicom_study_date
    #   <p>The DICOM study date provided in <code>yyMMdd</code> format.</p>
    #   @return [String]
    # @!attribute dicom_study_time
    #   <p>The DICOM study time provided in <code>HHmmss.FFFFFF</code> format.</p>
    #   @return [String]
    class DICOMStudyDateAndTime < Struct.new(
      :dicom_study_date,
      :dicom_study_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The DICOM attributes returned as a part of a response. Each image set has these properties as part of a search result.</p>
    # @!attribute dicom_patient_id
    #   <p>The unique identifier for a patient in a DICOM Study.</p>
    #   @return [String]
    # @!attribute dicom_patient_name
    #   <p>The patient name.</p>
    #   @return [String]
    # @!attribute dicom_patient_birth_date
    #   <p>The patient birth date.</p>
    #   @return [String]
    # @!attribute dicom_patient_sex
    #   <p>The patient sex.</p>
    #   @return [String]
    # @!attribute dicom_study_instance_uid
    #   <p>The DICOM provided identifier for the Study Instance UID.</p>
    #   @return [String]
    # @!attribute dicom_study_id
    #   <p>The DICOM provided identifier for the Study ID.</p>
    #   @return [String]
    # @!attribute dicom_study_description
    #   <p>The DICOM provided Study Description.</p>
    #   @return [String]
    # @!attribute dicom_number_of_study_related_series
    #   <p>The total number of series in the DICOM study.</p>
    #   @return [Integer]
    # @!attribute dicom_number_of_study_related_instances
    #   <p>The total number of instances in the DICOM study.</p>
    #   @return [Integer]
    # @!attribute dicom_accession_number
    #   <p>The accession number for the DICOM study.</p>
    #   @return [String]
    # @!attribute dicom_series_instance_uid
    #   <p>The DICOM provided identifier for the Series Instance UID.</p>
    #   @return [String]
    # @!attribute dicom_series_modality
    #   <p>The DICOM provided identifier for the series Modality.</p>
    #   @return [String]
    # @!attribute dicom_series_body_part
    #   <p>The DICOM provided identifier for the series Body Part Examined.</p>
    #   @return [String]
    # @!attribute dicom_series_number
    #   <p>The DICOM provided identifier for the Series Number.</p>
    #   @return [Integer]
    # @!attribute dicom_study_date
    #   <p>The study date.</p>
    #   @return [String]
    # @!attribute dicom_study_time
    #   <p>The study time.</p>
    #   @return [String]
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
      :dicom_study_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:dicom_number_of_study_related_series] = 0 unless options.key?(:dicom_number_of_study_related_series)
        options[:dicom_number_of_study_related_instances] = 0 unless options.key?(:dicom_number_of_study_related_instances)
        super
      end
    end

    # <p>The object containing <code>removableAttributes</code> and <code>updatableAttributes</code>.</p>
    # @!attribute removable_attributes
    #   <p>The DICOM tags to be removed from <code>ImageSetMetadata</code>.</p>
    #   @return [String]
    # @!attribute updatable_attributes
    #   <p>The DICOM tags that need to be updated in <code>ImageSetMetadata</code>.</p>
    #   @return [String]
    class DICOMUpdates < Struct.new(
      :removable_attributes,
      :updatable_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The properties associated with the data store.</p>
    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute datastore_name
    #   <p>The data store name.</p>
    #   @return [String]
    # @!attribute datastore_status
    #   <p>The data store status.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) assigned to the Key Management Service (KMS) key for accessing encrypted data.</p>
    #   @return [String]
    # @!attribute datastore_arn
    #   <p>The Amazon Resource Name (ARN) for the data store.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the data store was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the data store was last updated.</p>
    #   @return [Time]
    class DatastoreProperties < Struct.new(
      :datastore_id,
      :datastore_name,
      :datastore_status,
      :kms_key_arn,
      :datastore_arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>List of summaries of data stores.</p>
    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute datastore_name
    #   <p>The data store name.</p>
    #   @return [String]
    # @!attribute datastore_status
    #   <p>The data store status.</p>
    #   @return [String]
    # @!attribute datastore_arn
    #   <p>The Amazon Resource Name (ARN) for the data store.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the data store was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the data store was last updated.</p>
    #   @return [Time]
    class DatastoreSummary < Struct.new(
      :datastore_id,
      :datastore_name,
      :datastore_status,
      :datastore_arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    class DeleteDatastoreRequest < Struct.new(
      :datastore_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute datastore_status
    #   <p>The data store status.</p>
    #   @return [String]
    class DeleteDatastoreResponse < Struct.new(
      :datastore_id,
      :datastore_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute image_set_id
    #   <p>The image set identifier.</p>
    #   @return [String]
    class DeleteImageSetRequest < Struct.new(
      :datastore_id,
      :image_set_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute image_set_id
    #   <p>The image set identifier.</p>
    #   @return [String]
    # @!attribute image_set_state
    #   <p>The image set state.</p>
    #   @return [String]
    # @!attribute image_set_workflow_status
    #   <p>The image set workflow status.</p>
    #   @return [String]
    class DeleteImageSetResponse < Struct.new(
      :datastore_id,
      :image_set_id,
      :image_set_state,
      :image_set_workflow_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The import job identifier.</p>
    #   @return [String]
    class GetDICOMImportJobRequest < Struct.new(
      :datastore_id,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_properties
    #   <p>The properties of the import job.</p>
    #   @return [Types::DICOMImportJobProperties]
    class GetDICOMImportJobResponse < Struct.new(
      :job_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    class GetDatastoreRequest < Struct.new(
      :datastore_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_properties
    #   <p>The data store properties.</p>
    #   @return [Types::DatastoreProperties]
    class GetDatastoreResponse < Struct.new(
      :datastore_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute image_set_id
    #   <p>The image set identifier.</p>
    #   @return [String]
    # @!attribute image_frame_information
    #   <p>Information about the image frame (pixel data) identifier.</p>
    #   @return [Types::ImageFrameInformation]
    class GetImageFrameRequest < Struct.new(
      :datastore_id,
      :image_set_id,
      :image_frame_information,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_frame_blob
    #   <p>The blob containing the aggregated image frame information.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The format in which the image frame information is returned to the customer. Default is <code>application/octet-stream</code>.</p> <note> <ul> <li> <p>If the stored transfer syntax is <code>1.2.840.10008.1.2.1</code>, the returned <code>contentType</code> is <code>application/octet-stream</code>.</p> </li> </ul> <ul> <li> <p>If the stored transfer syntax is <code>1.2.840.10008.1.2.4.50</code>, the returned <code>contentType</code> is <code>image/jpeg</code>.</p> </li> </ul> <ul> <li> <p>If the stored transfer syntax is <code>1.2.840.10008.1.2.4.91</code>, the returned <code>contentType</code> is <code>image/j2c</code>.</p> </li> </ul> <ul> <li> <p>If the stored transfer syntax is MPEG2, <code>1.2.840.10008.1.2.4.100</code>, <code>1.2.840.10008.1.2.4.100.1</code>, <code>1.2.840.10008.1.2.4.101</code>, or <code>1.2.840.10008.1.2.4.101.1</code>, the returned <code>contentType</code> is <code>video/mpeg</code>.</p> </li> </ul> <ul> <li> <p>If the stored transfer syntax is MPEG-4 AVC/H.264, UID <code>1.2.840.10008.1.2.4.102</code>, <code>1.2.840.10008.1.2.4.102.1</code>, <code>1.2.840.10008.1.2.4.103</code>, <code>1.2.840.10008.1.2.4.103.1</code>, <code>1.2.840.10008.1.2.4.104</code>, <code>1.2.840.10008.1.2.4.104.1</code>, <code>1.2.840.10008.1.2.4.105</code>, <code>1.2.840.10008.1.2.4.105.1</code>, <code>1.2.840.10008.1.2.4.106</code>, or <code>1.2.840.10008.1.2.4.106.1</code>, the returned <code>contentType</code> is <code>video/mp4</code>.</p> </li> </ul> <ul> <li> <p>If the stored transfer syntax is HEVC/H.265, UID <code>1.2.840.10008.1.2.4.107</code> or <code>1.2.840.10008.1.2.4.108</code>, the returned <code>contentType</code> is <code>video/H256</code>.</p> </li> </ul> <ul> <li> <p>If the stored transfer syntax is <code>1.2.840.10008.1.2.4.202</code> or if the stored transfer syntax is <i>missing</i>, the returned <code>contentType</code> is <code>image/jph</code>.</p> </li> </ul> <ul> <li> <p>If the stored transfer syntax is <code>1.2.840.10008.1.2.4.203</code>, the returned contentType is <code>image/jphc</code>.</p> </li> </ul> </note>
    #   @return [String]
    class GetImageFrameResponse < Struct.new(
      :image_frame_blob,
      :content_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute image_set_id
    #   <p>The image set identifier.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The image set version identifier.</p>
    #   @return [String]
    class GetImageSetMetadataRequest < Struct.new(
      :datastore_id,
      :image_set_id,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_set_metadata_blob
    #   <p>The blob containing the aggregated metadata information for the image set.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The format in which the study metadata is returned to the customer. Default is <code>text/plain</code>.</p>
    #   @return [String]
    # @!attribute content_encoding
    #   <p>The compression format in which image set metadata attributes are returned.</p>
    #   @return [String]
    class GetImageSetMetadataResponse < Struct.new(
      :image_set_metadata_blob,
      :content_type,
      :content_encoding,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute image_set_id
    #   <p>The image set identifier.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The image set version identifier.</p>
    #   @return [String]
    class GetImageSetRequest < Struct.new(
      :datastore_id,
      :image_set_id,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute image_set_id
    #   <p>The image set identifier.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The image set version identifier.</p>
    #   @return [String]
    # @!attribute image_set_state
    #   <p>The image set state.</p>
    #   @return [String]
    # @!attribute image_set_workflow_status
    #   <p>The image set workflow status.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when image set properties were created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when image set properties were updated.</p>
    #   @return [Time]
    # @!attribute deleted_at
    #   <p>The timestamp when the image set properties were deleted.</p>
    #   @return [Time]
    # @!attribute message
    #   <p>The error message thrown if an image set action fails.</p>
    #   @return [String]
    # @!attribute image_set_arn
    #   <p>The Amazon Resource Name (ARN) assigned to the image set.</p>
    #   @return [String]
    # @!attribute overrides
    #   <p>This object contains the details of any overrides used while creating a specific image set version. If an image set was copied or updated using the <code>force</code> flag, this object will contain the <code>forced</code> flag.</p>
    #   @return [Types::Overrides]
    # @!attribute is_primary
    #   <p>The flag to determine whether the image set is primary or not.</p>
    #   @return [Boolean]
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
      :overrides,
      :is_primary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the image frame (pixel data) identifier.</p>
    # @!attribute image_frame_id
    #   <p>The image frame (pixel data) identifier.</p>
    #   @return [String]
    class ImageFrameInformation < Struct.new(
      :image_frame_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The image set properties.</p>
    # @!attribute image_set_id
    #   <p>The image set identifier.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The image set version identifier.</p>
    #   @return [String]
    # @!attribute image_set_state
    #   <p>The image set state.</p>
    #   @return [String]
    # @!attribute image_set_workflow_status
    #   <p>The image set workflow status.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the image set properties were created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the image set properties were updated.</p>
    #   @return [Time]
    # @!attribute deleted_at
    #   <p>The timestamp when the image set properties were deleted.</p>
    #   @return [Time]
    # @!attribute message
    #   <p>The error message thrown if an image set action fails.</p>
    #   @return [String]
    # @!attribute overrides
    #   <p>Contains details on overrides used when creating the returned version of an image set. For example, if <code>forced</code> exists, the <code>forced</code> flag was used when creating the image set.</p>
    #   @return [Types::Overrides]
    # @!attribute is_primary
    #   <p>The flag to determine whether the image set is primary or not.</p>
    #   @return [Boolean]
    class ImageSetProperties < Struct.new(
      :image_set_id,
      :version_id,
      :image_set_state,
      :image_set_workflow_status,
      :created_at,
      :updated_at,
      :deleted_at,
      :message,
      :overrides,
      :is_primary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of the image set metadata.</p>
    # @!attribute image_set_id
    #   <p>The image set identifier.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The image set version.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The time an image set is created. Sample creation date is provided in <code>1985-04-12T23:20:50.52Z</code> format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time an image set was last updated.</p>
    #   @return [Time]
    # @!attribute dicom_tags
    #   <p>The DICOM tags associated with the image set.</p>
    #   @return [Types::DICOMTags]
    # @!attribute is_primary
    #   <p>The flag to determine whether the image set is primary or not.</p>
    #   @return [Boolean]
    class ImageSetsMetadataSummary < Struct.new(
      :image_set_id,
      :version,
      :created_at,
      :updated_at,
      :dicom_tags,
      :is_primary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected error occurred during processing of the request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The filters for listing import jobs based on status.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token used to request the list of import jobs on the next page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The max results count. The upper bound is determined by load testing.</p>
    #   @return [Integer]
    class ListDICOMImportJobsRequest < Struct.new(
      :datastore_id,
      :job_status,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_summaries
    #   <p>A list of job summaries.</p>
    #   @return [Array<Types::DICOMImportJobSummary>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the list of import jobs on the next page.</p>
    #   @return [String]
    class ListDICOMImportJobsResponse < Struct.new(
      :job_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_status
    #   <p>The data store status.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token used to request the list of data stores on the next page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Valid Range: Minimum value of 1. Maximum value of 50.</p>
    #   @return [Integer]
    class ListDatastoresRequest < Struct.new(
      :datastore_status,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_summaries
    #   <p>The list of summaries of data stores.</p>
    #   @return [Array<Types::DatastoreSummary>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the list of data stores on the next page.</p>
    #   @return [String]
    class ListDatastoresResponse < Struct.new(
      :datastore_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute image_set_id
    #   <p>The image set identifier.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token used to request the list of image set versions on the next page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The max results count.</p>
    #   @return [Integer]
    class ListImageSetVersionsRequest < Struct.new(
      :datastore_id,
      :image_set_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_set_properties_list
    #   <p>Lists all properties associated with an image set.</p>
    #   @return [Array<Types::ImageSetProperties>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the list of image set versions on the next page.</p>
    #   @return [String]
    class ListImageSetVersionsResponse < Struct.new(
      :image_set_properties_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the medical imaging resource to list tags for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of all tags associated with a medical imaging resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains copiable <code>Attributes</code> structure and wraps information related to specific copy use cases. For example, when copying subsets.</p>
    # @!attribute copiable_attributes
    #   <p>The JSON string used to specify a subset of SOP Instances to copy from source to destination image set.</p>
    #   @return [String]
    class MetadataCopies < Struct.new(
      :copiable_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains DICOMUpdates.</p>
    # @!attribute dicom_updates
    #   <p>The object containing <code>removableAttributes</code> and <code>updatableAttributes</code>.</p>
    #   @return [Types::DICOMUpdates]
    # @!attribute revert_to_version_id
    #   <p>Specifies the previous image set version ID to revert the current image set back to.</p> <note> <p>You must provide either <code>revertToVersionId</code> or <code>DICOMUpdates</code> in your request. A <code>ValidationException</code> error is thrown if both parameters are provided at the same time.</p> </note>
    #   @return [String]
    class MetadataUpdates < Struct.new(
      :dicom_updates,
      :revert_to_version_id,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DICOMUpdates < MetadataUpdates; end
      class RevertToVersionId < MetadataUpdates; end
      class Unknown < MetadataUpdates; end
    end

    # <p>Specifies the overrides used in image set modification calls to <code>CopyImageSet</code> and <code>UpdateImageSetMetadata</code>.</p>
    # @!attribute forced
    #   <p>Providing this parameter will force completion of the <code>CopyImageSet</code> and <code>UpdateImageSetMetadata</code> actions, even if metadata is inconsistent at the Patient, Study, and/or Series levels.</p>
    #   @return [Boolean]
    class Overrides < Struct.new(
      :forced,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request references a resource which does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The search input attribute value.</p>
    # @!attribute dicom_patient_id
    #   <p>The patient ID input for search.</p>
    #   @return [String]
    # @!attribute dicom_accession_number
    #   <p>The DICOM accession number for search.</p>
    #   @return [String]
    # @!attribute dicom_study_id
    #   <p>The DICOM study ID for search.</p>
    #   @return [String]
    # @!attribute dicom_study_instance_uid
    #   <p>The DICOM study instance UID for search.</p>
    #   @return [String]
    # @!attribute dicom_series_instance_uid
    #   <p>The Series Instance UID input for search.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The created at time of the image set provided for search.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp input for search.</p>
    #   @return [Time]
    # @!attribute dicom_study_date_and_time
    #   <p>The aggregated structure containing DICOM study date and study time for search.</p>
    #   @return [Types::DICOMStudyDateAndTime]
    # @!attribute is_primary
    #   <p>The primary image set flag provided for search.</p>
    #   @return [Boolean]
    class SearchByAttributeValue < Struct.new(
      :dicom_patient_id,
      :dicom_accession_number,
      :dicom_study_id,
      :dicom_study_instance_uid,
      :dicom_series_instance_uid,
      :created_at,
      :updated_at,
      :dicom_study_date_and_time,
      :is_primary,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DICOMPatientId < SearchByAttributeValue; end
      class DICOMAccessionNumber < SearchByAttributeValue; end
      class DICOMStudyId < SearchByAttributeValue; end
      class DICOMStudyInstanceUID < SearchByAttributeValue; end
      class DICOMSeriesInstanceUID < SearchByAttributeValue; end
      class CreatedAt < SearchByAttributeValue; end
      class UpdatedAt < SearchByAttributeValue; end
      class DICOMStudyDateAndTime < SearchByAttributeValue; end
      class IsPrimary < SearchByAttributeValue; end
      class Unknown < SearchByAttributeValue; end
    end

    # <p>The search criteria.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute filters
    #   <p>The filters for the search criteria.</p>
    #   @return [Array<Types::SearchFilter>]
    # @!attribute sort
    #   <p>The sort input for search criteria.</p>
    #   @return [Types::Sort]
    class SearchCriteria < Struct.new(
      :filters,
      :sort,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The search filter.</p>
    # @!attribute values
    #   <p>The search filter values.</p>
    #   @return [Array<Types::SearchByAttributeValue>]
    # @!attribute operator
    #   <p>The search filter operator for <code>imageSetDateTime</code>.</p>
    #   @return [String]
    class SearchFilter < Struct.new(
      :values,
      :operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The identifier of the data store where the image sets reside.</p>
    #   @return [String]
    # @!attribute search_criteria
    #   <p>The search criteria that filters by applying a maximum of 1 item to <code>SearchByAttribute</code>.</p>
    #   @return [Types::SearchCriteria]
    # @!attribute max_results
    #   <p>The maximum number of results that can be returned in a search.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token used for pagination of results returned in the response. Use the token returned from the previous request to continue results where the previous request ended.</p>
    #   @return [String]
    class SearchImageSetsRequest < Struct.new(
      :datastore_id,
      :search_criteria,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_sets_metadata_summaries
    #   <p>The model containing the image set results.</p>
    #   @return [Array<Types::ImageSetsMetadataSummary>]
    # @!attribute sort
    #   <p>The sort order for image set search results.</p>
    #   @return [Types::Sort]
    # @!attribute next_token
    #   <p>The token for pagination results.</p>
    #   @return [String]
    class SearchImageSetsResponse < Struct.new(
      :image_sets_metadata_summaries,
      :sort,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request caused a service quota to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Sort search results.</p>
    # @!attribute sort_order
    #   <p>The sort order for search criteria.</p>
    #   @return [String]
    # @!attribute sort_field
    #   <p>The sort field for search criteria.</p>
    #   @return [String]
    class Sort < Struct.new(
      :sort_order,
      :sort_field,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The import job name.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that grants permission to access medical imaging resources.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier for API idempotency.</p>
    #   @return [String]
    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute input_s3_uri
    #   <p>The input prefix path for the S3 bucket that contains the DICOM files to be imported.</p>
    #   @return [String]
    # @!attribute output_s3_uri
    #   <p>The output prefix of the S3 bucket to upload the results of the DICOM import job.</p>
    #   @return [String]
    # @!attribute input_owner_account_id
    #   <p>The account ID of the source S3 bucket owner.</p>
    #   @return [String]
    class StartDICOMImportJobRequest < Struct.new(
      :job_name,
      :data_access_role_arn,
      :client_token,
      :datastore_id,
      :input_s3_uri,
      :output_s3_uri,
      :input_owner_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The import job identifier.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The import job status.</p>
    #   @return [String]
    # @!attribute submitted_at
    #   <p>The timestamp when the import job was submitted.</p>
    #   @return [Time]
    class StartDICOMImportJobResponse < Struct.new(
      :datastore_id,
      :job_id,
      :job_status,
      :submitted_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the medical imaging resource that tags are being added to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The user-specified key and value tag pairs added to a medical imaging resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the medical imaging resource that tags are being removed from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys for the tags to be removed from the medical imaging resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute image_set_id
    #   <p>The image set identifier.</p>
    #   @return [String]
    # @!attribute latest_version_id
    #   <p>The latest image set version identifier.</p>
    #   @return [String]
    # @!attribute force
    #   <p>Setting this flag will force the <code>UpdateImageSetMetadata</code> operation for the following attributes:</p> <ul> <li> <p> <code>Tag.StudyInstanceUID</code>, <code>Tag.SeriesInstanceUID</code>, <code>Tag.SOPInstanceUID</code>, and <code>Tag.StudyID</code> </p> </li> <li> <p>Adding, removing, or updating private tags for an individual SOP Instance</p> </li> </ul>
    #   @return [Boolean]
    # @!attribute update_image_set_metadata_updates
    #   <p>Update image set metadata updates.</p>
    #   @return [Types::MetadataUpdates]
    class UpdateImageSetMetadataRequest < Struct.new(
      :datastore_id,
      :image_set_id,
      :latest_version_id,
      :force,
      :update_image_set_metadata_updates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute image_set_id
    #   <p>The image set identifier.</p>
    #   @return [String]
    # @!attribute latest_version_id
    #   <p>The latest image set version identifier.</p>
    #   @return [String]
    # @!attribute image_set_state
    #   <p>The image set state.</p>
    #   @return [String]
    # @!attribute image_set_workflow_status
    #   <p>The image set workflow status.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when image set metadata was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when image set metadata was updated.</p>
    #   @return [Time]
    # @!attribute message
    #   <p>The error message thrown if an update image set metadata action fails.</p>
    #   @return [String]
    class UpdateImageSetMetadataResponse < Struct.new(
      :datastore_id,
      :image_set_id,
      :latest_version_id,
      :image_set_state,
      :image_set_workflow_status,
      :created_at,
      :updated_at,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints set by the service.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
