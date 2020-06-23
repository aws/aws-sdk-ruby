# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ImportExport
  module Types

    # A discrete item that contains the description and URL of an artifact
    # (such as a PDF).
    #
    # @!attribute [rw] description
    #   The associated description for this object.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL for a given Artifact.
    #   @return [String]
    #
    class Artifact < Struct.new(
      :description,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The account specified does not have the appropriate bucket
    # permissions.
    #
    # @!attribute [rw] message
    #   The human-readable description of a particular error.
    #   @return [String]
    #
    class BucketPermissionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input structure for the CancelJob operation.
    #
    # @note When making an API call, you may pass CancelJobInput
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         api_version: "APIVersion",
    #       }
    #
    # @!attribute [rw] job_id
    #   A unique identifier which refers to a particular job.
    #   @return [String]
    #
    # @!attribute [rw] api_version
    #   Specifies the version of the client tool.
    #   @return [String]
    #
    class CancelJobInput < Struct.new(
      :job_id,
      :api_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output structure for the CancelJob operation.
    #
    # @!attribute [rw] success
    #   Specifies whether (true) or not (false) AWS Import/Export updated
    #   your job.
    #   @return [Boolean]
    #
    class CancelJobOutput < Struct.new(
      :success)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified job ID has been canceled and is no longer valid.
    #
    # @!attribute [rw] message
    #   The human-readable description of a particular error.
    #   @return [String]
    #
    class CanceledJobIdException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input structure for the CreateJob operation.
    #
    # @note When making an API call, you may pass CreateJobInput
    #   data as a hash:
    #
    #       {
    #         job_type: "Import", # required, accepts Import, Export
    #         manifest: "Manifest", # required
    #         manifest_addendum: "ManifestAddendum",
    #         validate_only: false, # required
    #         api_version: "APIVersion",
    #       }
    #
    # @!attribute [rw] job_type
    #   Specifies whether the job to initiate is an import or export job.
    #   @return [String]
    #
    # @!attribute [rw] manifest
    #   The UTF-8 encoded text of the manifest file.
    #   @return [String]
    #
    # @!attribute [rw] manifest_addendum
    #   For internal use only.
    #   @return [String]
    #
    # @!attribute [rw] validate_only
    #   Validate the manifest and parameter values in the request but do not
    #   actually create a job.
    #   @return [Boolean]
    #
    # @!attribute [rw] api_version
    #   Specifies the version of the client tool.
    #   @return [String]
    #
    class CreateJobInput < Struct.new(
      :job_type,
      :manifest,
      :manifest_addendum,
      :validate_only,
      :api_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output structure for the CreateJob operation.
    #
    # @!attribute [rw] job_id
    #   A unique identifier which refers to a particular job.
    #   @return [String]
    #
    # @!attribute [rw] job_type
    #   Specifies whether the job to initiate is an import or export job.
    #   @return [String]
    #
    # @!attribute [rw] signature
    #   An encrypted code used to authenticate the request and response, for
    #   example, "DV+TpDfx1/TdSE9ktyK9k/bDTVI=". Only use this value is
    #   you want to create the signature file yourself. Generally you should
    #   use the SignatureFileContents value.
    #   @return [String]
    #
    # @!attribute [rw] signature_file_contents
    #   The actual text of the SIGNATURE file to be written to disk.
    #   @return [String]
    #
    # @!attribute [rw] warning_message
    #   An optional message notifying you of non-fatal issues with the job,
    #   such as use of an incompatible Amazon S3 bucket name.
    #   @return [String]
    #
    # @!attribute [rw] artifact_list
    #   A collection of artifacts.
    #   @return [Array<Types::Artifact>]
    #
    class CreateJobOutput < Struct.new(
      :job_id,
      :job_type,
      :signature,
      :signature_file_contents,
      :warning_message,
      :artifact_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Each account can create only a certain number of jobs per day. If you
    # need to create more than this, please contact
    # awsimportexport@amazon.com to explain your particular use case.
    #
    # @!attribute [rw] message
    #   The human-readable description of a particular error.
    #   @return [String]
    #
    class CreateJobQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that the specified job has expired out of the system.
    #
    # @!attribute [rw] message
    #   The human-readable description of a particular error.
    #   @return [String]
    #
    class ExpiredJobIdException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetShippingLabelInput
    #   data as a hash:
    #
    #       {
    #         job_ids: ["GenericString"], # required
    #         name: "name",
    #         company: "company",
    #         phone_number: "phoneNumber",
    #         country: "country",
    #         state_or_province: "stateOrProvince",
    #         city: "city",
    #         postal_code: "postalCode",
    #         street1: "street1",
    #         street2: "street2",
    #         street3: "street3",
    #         api_version: "APIVersion",
    #       }
    #
    # @!attribute [rw] job_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   Specifies the name of the person responsible for shipping this
    #   package.
    #   @return [String]
    #
    # @!attribute [rw] company
    #   Specifies the name of the company that will ship this package.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   Specifies the phone number of the person responsible for shipping
    #   this package.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   Specifies the name of your country for the return address.
    #   @return [String]
    #
    # @!attribute [rw] state_or_province
    #   Specifies the name of your state or your province for the return
    #   address.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   Specifies the name of your city for the return address.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   Specifies the postal code for the return address.
    #   @return [String]
    #
    # @!attribute [rw] street1
    #   Specifies the first part of the street address for the return
    #   address, for example 1234 Main Street.
    #   @return [String]
    #
    # @!attribute [rw] street2
    #   Specifies the optional second part of the street address for the
    #   return address, for example Suite 100.
    #   @return [String]
    #
    # @!attribute [rw] street3
    #   Specifies the optional third part of the street address for the
    #   return address, for example c/o Jane Doe.
    #   @return [String]
    #
    # @!attribute [rw] api_version
    #   Specifies the version of the client tool.
    #   @return [String]
    #
    class GetShippingLabelInput < Struct.new(
      :job_ids,
      :name,
      :company,
      :phone_number,
      :country,
      :state_or_province,
      :city,
      :postal_code,
      :street1,
      :street2,
      :street3,
      :api_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] shipping_label_url
    #   @return [String]
    #
    # @!attribute [rw] warning
    #   @return [String]
    #
    class GetShippingLabelOutput < Struct.new(
      :shipping_label_url,
      :warning)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input structure for the GetStatus operation.
    #
    # @note When making an API call, you may pass GetStatusInput
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         api_version: "APIVersion",
    #       }
    #
    # @!attribute [rw] job_id
    #   A unique identifier which refers to a particular job.
    #   @return [String]
    #
    # @!attribute [rw] api_version
    #   Specifies the version of the client tool.
    #   @return [String]
    #
    class GetStatusInput < Struct.new(
      :job_id,
      :api_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output structure for the GetStatus operation.
    #
    # @!attribute [rw] job_id
    #   A unique identifier which refers to a particular job.
    #   @return [String]
    #
    # @!attribute [rw] job_type
    #   Specifies whether the job to initiate is an import or export job.
    #   @return [String]
    #
    # @!attribute [rw] location_code
    #   A token representing the location of the storage device, such as
    #   "AtAWS".
    #   @return [String]
    #
    # @!attribute [rw] location_message
    #   A more human readable form of the physical location of the storage
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] progress_code
    #   A token representing the state of the job, such as "Started".
    #   @return [String]
    #
    # @!attribute [rw] progress_message
    #   A more human readable form of the job status.
    #   @return [String]
    #
    # @!attribute [rw] carrier
    #   Name of the shipping company. This value is included when the
    #   LocationCode is "Returned".
    #   @return [String]
    #
    # @!attribute [rw] tracking_number
    #   The shipping tracking number assigned by AWS Import/Export to the
    #   storage device when it's returned to you. We return this value when
    #   the LocationCode is "Returned".
    #   @return [String]
    #
    # @!attribute [rw] log_bucket
    #   Amazon S3 bucket for user logs.
    #   @return [String]
    #
    # @!attribute [rw] log_key
    #   The key where the user logs were stored.
    #   @return [String]
    #
    # @!attribute [rw] error_count
    #   Number of errors. We return this value when the ProgressCode is
    #   Success or SuccessWithErrors.
    #   @return [Integer]
    #
    # @!attribute [rw] signature
    #   An encrypted code used to authenticate the request and response, for
    #   example, "DV+TpDfx1/TdSE9ktyK9k/bDTVI=". Only use this value is
    #   you want to create the signature file yourself. Generally you should
    #   use the SignatureFileContents value.
    #   @return [String]
    #
    # @!attribute [rw] signature_file_contents
    #   An encrypted code used to authenticate the request and response, for
    #   example, "DV+TpDfx1/TdSE9ktyK9k/bDTVI=". Only use this value is
    #   you want to create the signature file yourself. Generally you should
    #   use the SignatureFileContents value.
    #   @return [String]
    #
    # @!attribute [rw] current_manifest
    #   The last manifest submitted, which will be used to process the job.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   Timestamp of the CreateJob request in ISO8601 date format. For
    #   example "2010-03-28T20:27:35Z".
    #   @return [Time]
    #
    # @!attribute [rw] artifact_list
    #   A collection of artifacts.
    #   @return [Array<Types::Artifact>]
    #
    class GetStatusOutput < Struct.new(
      :job_id,
      :job_type,
      :location_code,
      :location_message,
      :progress_code,
      :progress_message,
      :carrier,
      :tracking_number,
      :log_bucket,
      :log_key,
      :error_count,
      :signature,
      :signature_file_contents,
      :current_manifest,
      :creation_date,
      :artifact_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The AWS Access Key ID specified in the request did not match the
    # manifest's accessKeyId value. The manifest and the request
    # authentication must use the same AWS Access Key ID.
    #
    # @!attribute [rw] message
    #   The human-readable description of a particular error.
    #   @return [String]
    #
    class InvalidAccessKeyIdException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The address specified in the manifest is invalid.
    #
    # @!attribute [rw] message
    #   The human-readable description of a particular error.
    #   @return [String]
    #
    class InvalidAddressException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more customs parameters was invalid. Please correct and
    # resubmit.
    #
    # @!attribute [rw] message
    #   The human-readable description of a particular error.
    #   @return [String]
    #
    class InvalidCustomsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # File system specified in export manifest is invalid.
    #
    # @!attribute [rw] message
    #   The human-readable description of a particular error.
    #   @return [String]
    #
    class InvalidFileSystemException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The JOBID was missing, not found, or not associated with the AWS
    # account.
    #
    # @!attribute [rw] message
    #   The human-readable description of a particular error.
    #   @return [String]
    #
    class InvalidJobIdException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more manifest fields was invalid. Please correct and resubmit.
    #
    # @!attribute [rw] message
    #   The human-readable description of a particular error.
    #   @return [String]
    #
    class InvalidManifestFieldException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more parameters had an invalid value.
    #
    # @!attribute [rw] message
    #   The human-readable description of a particular error.
    #   @return [String]
    #
    class InvalidParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client tool version is invalid.
    #
    # @!attribute [rw] message
    #   The human-readable description of a particular error.
    #   @return [String]
    #
    class InvalidVersionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Representation of a job returned by the ListJobs operation.
    #
    # @!attribute [rw] job_id
    #   A unique identifier which refers to a particular job.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   Timestamp of the CreateJob request in ISO8601 date format. For
    #   example "2010-03-28T20:27:35Z".
    #   @return [Time]
    #
    # @!attribute [rw] is_canceled
    #   Indicates whether the job was canceled.
    #   @return [Boolean]
    #
    # @!attribute [rw] job_type
    #   Specifies whether the job to initiate is an import or export job.
    #   @return [String]
    #
    class Job < Struct.new(
      :job_id,
      :creation_date,
      :is_canceled,
      :job_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input structure for the ListJobs operation.
    #
    # @note When making an API call, you may pass ListJobsInput
    #   data as a hash:
    #
    #       {
    #         max_jobs: 1,
    #         marker: "Marker",
    #         api_version: "APIVersion",
    #       }
    #
    # @!attribute [rw] max_jobs
    #   Sets the maximum number of jobs returned in the response. If there
    #   are additional jobs that were not returned because MaxJobs was
    #   exceeded, the response contains
    #   &lt;IsTruncated&gt;true&lt;/IsTruncated&gt;. To return the
    #   additional jobs, see Marker.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Specifies the JOBID to start after when listing the jobs created
    #   with your account. AWS Import/Export lists your jobs in reverse
    #   chronological order. See MaxJobs.
    #   @return [String]
    #
    # @!attribute [rw] api_version
    #   Specifies the version of the client tool.
    #   @return [String]
    #
    class ListJobsInput < Struct.new(
      :max_jobs,
      :marker,
      :api_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output structure for the ListJobs operation.
    #
    # @!attribute [rw] jobs
    #   A list container for Jobs returned by the ListJobs operation.
    #   @return [Array<Types::Job>]
    #
    # @!attribute [rw] is_truncated
    #   Indicates whether the list of jobs was truncated. If true, then call
    #   ListJobs again using the last JobId element as the marker.
    #   @return [Boolean]
    #
    class ListJobsOutput < Struct.new(
      :jobs,
      :is_truncated)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your manifest is not well-formed.
    #
    # @!attribute [rw] message
    #   The human-readable description of a particular error.
    #   @return [String]
    #
    class MalformedManifestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more required customs parameters was missing from the manifest.
    #
    # @!attribute [rw] message
    #   The human-readable description of a particular error.
    #   @return [String]
    #
    class MissingCustomsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more required fields were missing from the manifest file.
    # Please correct and resubmit.
    #
    # @!attribute [rw] message
    #   The human-readable description of a particular error.
    #   @return [String]
    #
    class MissingManifestFieldException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more required parameters was missing from the request.
    #
    # @!attribute [rw] message
    #   The human-readable description of a particular error.
    #   @return [String]
    #
    class MissingParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your manifest file contained buckets from multiple regions. A job is
    # restricted to buckets from one region. Please correct and resubmit.
    #
    # @!attribute [rw] message
    #   The human-readable description of a particular error.
    #   @return [String]
    #
    class MultipleRegionsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified bucket does not exist. Create the specified bucket or
    # change the manifest's bucket, exportBucket, or logBucket field to a
    # bucket that the account, as specified by the manifest's Access Key
    # ID, has write permissions to.
    #
    # @!attribute [rw] message
    #   The human-readable description of a particular error.
    #   @return [String]
    #
    class NoSuchBucketException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS Import/Export cannot cancel the job
    #
    # @!attribute [rw] message
    #   The human-readable description of a particular error.
    #   @return [String]
    #
    class UnableToCancelJobIdException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS Import/Export cannot update the job
    #
    # @!attribute [rw] message
    #   The human-readable description of a particular error.
    #   @return [String]
    #
    class UnableToUpdateJobIdException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input structure for the UpateJob operation.
    #
    # @note When making an API call, you may pass UpdateJobInput
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         manifest: "Manifest", # required
    #         job_type: "Import", # required, accepts Import, Export
    #         validate_only: false, # required
    #         api_version: "APIVersion",
    #       }
    #
    # @!attribute [rw] job_id
    #   A unique identifier which refers to a particular job.
    #   @return [String]
    #
    # @!attribute [rw] manifest
    #   The UTF-8 encoded text of the manifest file.
    #   @return [String]
    #
    # @!attribute [rw] job_type
    #   Specifies whether the job to initiate is an import or export job.
    #   @return [String]
    #
    # @!attribute [rw] validate_only
    #   Validate the manifest and parameter values in the request but do not
    #   actually create a job.
    #   @return [Boolean]
    #
    # @!attribute [rw] api_version
    #   Specifies the version of the client tool.
    #   @return [String]
    #
    class UpdateJobInput < Struct.new(
      :job_id,
      :manifest,
      :job_type,
      :validate_only,
      :api_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output structure for the UpateJob operation.
    #
    # @!attribute [rw] success
    #   Specifies whether (true) or not (false) AWS Import/Export updated
    #   your job.
    #   @return [Boolean]
    #
    # @!attribute [rw] warning_message
    #   An optional message notifying you of non-fatal issues with the job,
    #   such as use of an incompatible Amazon S3 bucket name.
    #   @return [String]
    #
    # @!attribute [rw] artifact_list
    #   A collection of artifacts.
    #   @return [Array<Types::Artifact>]
    #
    class UpdateJobOutput < Struct.new(
      :success,
      :warning_message,
      :artifact_list)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
