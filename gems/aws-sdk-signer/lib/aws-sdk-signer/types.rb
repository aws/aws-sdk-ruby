# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Signer
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_name
    #   The human-readable name of the signing profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_version
    #   The version of the signing profile.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The AWS Signer action permitted as part of cross-account
    #   permissions.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The AWS principal receiving cross-account permissions. This may be
    #   an IAM role or another AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   A unique identifier for the current profile revision.
    #   @return [String]
    #
    # @!attribute [rw] statement_id
    #   A unique identifier for the cross-account permission statement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/AddProfilePermissionRequest AWS API Documentation
    #
    class AddProfilePermissionRequest < Struct.new(
      :profile_name,
      :profile_version,
      :action,
      :principal,
      :revision_id,
      :statement_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] revision_id
    #   A unique identifier for the current profile revision.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/AddProfilePermissionResponse AWS API Documentation
    #
    class AddProfilePermissionResponse < Struct.new(
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request contains invalid parameters for the ARN or tags. This
    # exception also occurs when you call a tagging API on a cancelled
    # signing profile.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_name
    #   The name of the signing profile to be canceled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/CancelSigningProfileRequest AWS API Documentation
    #
    class CancelSigningProfileRequest < Struct.new(
      :profile_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource encountered a conflicting state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of the signing job on input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/DescribeSigningJobRequest AWS API Documentation
    #
    class DescribeSigningJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of the signing job on output.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The object that contains the name of your S3 bucket or your raw
    #   code.
    #   @return [Types::Source]
    #
    # @!attribute [rw] signing_material
    #   The Amazon Resource Name (ARN) of your code signing certificate.
    #   @return [Types::SigningMaterial]
    #
    # @!attribute [rw] platform_id
    #   The microcontroller platform to which your signed code image will be
    #   distributed.
    #   @return [String]
    #
    # @!attribute [rw] platform_display_name
    #   A human-readable name for the signing platform associated with the
    #   signing job.
    #   @return [String]
    #
    # @!attribute [rw] profile_name
    #   The name of the profile that initiated the signing operation.
    #   @return [String]
    #
    # @!attribute [rw] profile_version
    #   The version of the signing profile used to initiate the signing job.
    #   @return [String]
    #
    # @!attribute [rw] overrides
    #   A list of any overrides that were applied to the signing operation.
    #   @return [Types::SigningPlatformOverrides]
    #
    # @!attribute [rw] signing_parameters
    #   Map of user-assigned key-value pairs used during signing. These
    #   values contain any information that you specified for use in your
    #   signing job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_at
    #   Date and time that the signing job was created.
    #   @return [Time]
    #
    # @!attribute [rw] completed_at
    #   Date and time that the signing job was completed.
    #   @return [Time]
    #
    # @!attribute [rw] signature_expires_at
    #   Thr expiration timestamp for the signature generated by the signing
    #   job.
    #   @return [Time]
    #
    # @!attribute [rw] requested_by
    #   The IAM principal that requested the signing job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the signing job.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   String value that contains the status reason.
    #   @return [String]
    #
    # @!attribute [rw] revocation_record
    #   A revocation record if the signature generated by the signing job
    #   has been revoked. Contains a timestamp and the ID of the IAM entity
    #   that revoked the signature.
    #   @return [Types::SigningJobRevocationRecord]
    #
    # @!attribute [rw] signed_object
    #   Name of the S3 bucket where the signed code image is saved by code
    #   signing.
    #   @return [Types::SignedObject]
    #
    # @!attribute [rw] job_owner
    #   The AWS account ID of the job owner.
    #   @return [String]
    #
    # @!attribute [rw] job_invoker
    #   The IAM entity that initiated the signing job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/DescribeSigningJobResponse AWS API Documentation
    #
    class DescribeSigningJobResponse < Struct.new(
      :job_id,
      :source,
      :signing_material,
      :platform_id,
      :platform_display_name,
      :profile_name,
      :profile_version,
      :overrides,
      :signing_parameters,
      :created_at,
      :completed_at,
      :signature_expires_at,
      :requested_by,
      :status,
      :status_reason,
      :revocation_record,
      :signed_object,
      :job_owner,
      :job_invoker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Points to an `S3Destination` object that contains information about
    # your S3 bucket.
    #
    # @!attribute [rw] s3
    #   The `S3Destination` object.
    #   @return [Types::S3Destination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/Destination AWS API Documentation
    #
    class Destination < Struct.new(
      :s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # The encryption algorithm options that are available to a code signing
    # job.
    #
    # @!attribute [rw] allowed_values
    #   The set of accepted encryption algorithms that are allowed in a code
    #   signing job.
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_value
    #   The default encryption algorithm that is used by a code signing job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/EncryptionAlgorithmOptions AWS API Documentation
    #
    class EncryptionAlgorithmOptions < Struct.new(
      :allowed_values,
      :default_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] signature_timestamp
    #   The timestamp of the signature that validates the profile or job.
    #   @return [Time]
    #
    # @!attribute [rw] platform_id
    #   The ID of a signing platform.
    #   @return [String]
    #
    # @!attribute [rw] profile_version_arn
    #   The version of a signing profile.
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   The ARN of a signing job.
    #   @return [String]
    #
    # @!attribute [rw] certificate_hashes
    #   A list of composite signed hashes that identify certificates.
    #
    #   A certificate identifier consists of a subject certificate TBS hash
    #   (signed by the parent CA) combined with a parent CA TBS hash (signed
    #   by the parent CA’s CA). Root certificates are defined as their own
    #   CA.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/GetRevocationStatusRequest AWS API Documentation
    #
    class GetRevocationStatusRequest < Struct.new(
      :signature_timestamp,
      :platform_id,
      :profile_version_arn,
      :job_arn,
      :certificate_hashes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] revoked_entities
    #   A list of revoked entities (including one or more of the signing
    #   profile ARN, signing job ID, and certificate hash) supplied as input
    #   to the API.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/GetRevocationStatusResponse AWS API Documentation
    #
    class GetRevocationStatusResponse < Struct.new(
      :revoked_entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] platform_id
    #   The ID of the target signing platform.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/GetSigningPlatformRequest AWS API Documentation
    #
    class GetSigningPlatformRequest < Struct.new(
      :platform_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] platform_id
    #   The ID of the target signing platform.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the target signing platform.
    #   @return [String]
    #
    # @!attribute [rw] partner
    #   A list of partner entities that use the target signing platform.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The validation template that is used by the target signing platform.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category type of the target signing platform.
    #   @return [String]
    #
    # @!attribute [rw] signing_configuration
    #   A list of configurations applied to the target platform at signing.
    #   @return [Types::SigningConfiguration]
    #
    # @!attribute [rw] signing_image_format
    #   The format of the target platform's signing image.
    #   @return [Types::SigningImageFormat]
    #
    # @!attribute [rw] max_size_in_mb
    #   The maximum size (in MB) of the payload that can be signed by the
    #   target platform.
    #   @return [Integer]
    #
    # @!attribute [rw] revocation_supported
    #   A flag indicating whether signatures generated for the signing
    #   platform can be revoked.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/GetSigningPlatformResponse AWS API Documentation
    #
    class GetSigningPlatformResponse < Struct.new(
      :platform_id,
      :display_name,
      :partner,
      :target,
      :category,
      :signing_configuration,
      :signing_image_format,
      :max_size_in_mb,
      :revocation_supported)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_name
    #   The name of the target signing profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_owner
    #   The AWS account ID of the profile owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/GetSigningProfileRequest AWS API Documentation
    #
    class GetSigningProfileRequest < Struct.new(
      :profile_name,
      :profile_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_name
    #   The name of the target signing profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_version
    #   The current version of the signing profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_version_arn
    #   The signing profile ARN, including the profile version.
    #   @return [String]
    #
    # @!attribute [rw] revocation_record
    #   Revocation information for a signing profile.
    #   @return [Types::SigningProfileRevocationRecord]
    #
    # @!attribute [rw] signing_material
    #   The ARN of the certificate that the target profile uses for signing
    #   operations.
    #   @return [Types::SigningMaterial]
    #
    # @!attribute [rw] platform_id
    #   The ID of the platform that is used by the target signing profile.
    #   @return [String]
    #
    # @!attribute [rw] platform_display_name
    #   A human-readable name for the signing platform associated with the
    #   signing profile.
    #   @return [String]
    #
    # @!attribute [rw] signature_validity_period
    #   The validity period for a signing job.
    #   @return [Types::SignatureValidityPeriod]
    #
    # @!attribute [rw] overrides
    #   A list of overrides applied by the target signing profile for
    #   signing operations.
    #   @return [Types::SigningPlatformOverrides]
    #
    # @!attribute [rw] signing_parameters
    #   A map of key-value pairs for signing operations that is attached to
    #   the target signing profile.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The status of the target signing profile.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Reason for the status of the target signing profile.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the signing profile.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags associated with the signing profile.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/GetSigningProfileResponse AWS API Documentation
    #
    class GetSigningProfileResponse < Struct.new(
      :profile_name,
      :profile_version,
      :profile_version_arn,
      :revocation_record,
      :signing_material,
      :platform_id,
      :platform_display_name,
      :signature_validity_period,
      :overrides,
      :signing_parameters,
      :status,
      :status_reason,
      :arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The hash algorithms that are available to a code signing job.
    #
    # @!attribute [rw] allowed_values
    #   The set of accepted hash algorithms allowed in a code signing job.
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_value
    #   The default hash algorithm that is used in a code signing job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/HashAlgorithmOptions AWS API Documentation
    #
    class HashAlgorithmOptions < Struct.new(
      :allowed_values,
      :default_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal error occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/InternalServiceErrorException AWS API Documentation
    #
    class InternalServiceErrorException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_name
    #   Name of the signing profile containing the cross-account
    #   permissions.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   String for specifying the next set of paginated results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListProfilePermissionsRequest AWS API Documentation
    #
    class ListProfilePermissionsRequest < Struct.new(
      :profile_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] revision_id
    #   The identifier for the current revision of profile permissions.
    #   @return [String]
    #
    # @!attribute [rw] policy_size_bytes
    #   Total size of the policy associated with the Signing Profile in
    #   bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] permissions
    #   List of permissions associated with the Signing Profile.
    #   @return [Array<Types::Permission>]
    #
    # @!attribute [rw] next_token
    #   String for specifying the next set of paginated results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListProfilePermissionsResponse AWS API Documentation
    #
    class ListProfilePermissionsResponse < Struct.new(
      :revision_id,
      :policy_size_bytes,
      :permissions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   A status value with which to filter your results.
    #   @return [String]
    #
    # @!attribute [rw] platform_id
    #   The ID of microcontroller platform that you specified for the
    #   distribution of your code image.
    #   @return [String]
    #
    # @!attribute [rw] requested_by
    #   The IAM principal that requested the signing job.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of items to return in the response. Use
    #   this parameter when paginating results. If additional items exist
    #   beyond the number you specify, the `nextToken` element is set in the
    #   response. Use the `nextToken` value in a subsequent request to
    #   retrieve additional items.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   String for specifying the next set of paginated results to return.
    #   After you receive a response with truncated results, use this
    #   parameter in a subsequent request. Set it to the value of
    #   `nextToken` from the response that you just received.
    #   @return [String]
    #
    # @!attribute [rw] is_revoked
    #   Filters results to return only signing jobs with revoked signatures.
    #   @return [Boolean]
    #
    # @!attribute [rw] signature_expires_before
    #   Filters results to return only signing jobs with signatures expiring
    #   before a specified timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] signature_expires_after
    #   Filters results to return only signing jobs with signatures expiring
    #   after a specified timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] job_invoker
    #   Filters results to return only signing jobs initiated by a specified
    #   IAM entity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListSigningJobsRequest AWS API Documentation
    #
    class ListSigningJobsRequest < Struct.new(
      :status,
      :platform_id,
      :requested_by,
      :max_results,
      :next_token,
      :is_revoked,
      :signature_expires_before,
      :signature_expires_after,
      :job_invoker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   A list of your signing jobs.
    #   @return [Array<Types::SigningJob>]
    #
    # @!attribute [rw] next_token
    #   String for specifying the next set of paginated results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListSigningJobsResponse AWS API Documentation
    #
    class ListSigningJobsResponse < Struct.new(
      :jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] category
    #   The category type of a signing platform.
    #   @return [String]
    #
    # @!attribute [rw] partner
    #   Any partner entities connected to a signing platform.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The validation template that is used by the target signing platform.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned by this operation.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Value for specifying the next set of paginated results to return.
    #   After you receive a response with truncated results, use this
    #   parameter in a subsequent request. Set it to the value of
    #   `nextToken` from the response that you just received.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListSigningPlatformsRequest AWS API Documentation
    #
    class ListSigningPlatformsRequest < Struct.new(
      :category,
      :partner,
      :target,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] platforms
    #   A list of all platforms that match the request parameters.
    #   @return [Array<Types::SigningPlatform>]
    #
    # @!attribute [rw] next_token
    #   Value for specifying the next set of paginated results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListSigningPlatformsResponse AWS API Documentation
    #
    class ListSigningPlatformsResponse < Struct.new(
      :platforms,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] include_canceled
    #   Designates whether to include profiles with the status of
    #   `CANCELED`.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of profiles to be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Value for specifying the next set of paginated results to return.
    #   After you receive a response with truncated results, use this
    #   parameter in a subsequent request. Set it to the value of
    #   `nextToken` from the response that you just received.
    #   @return [String]
    #
    # @!attribute [rw] platform_id
    #   Filters results to return only signing jobs initiated for a
    #   specified signing platform.
    #   @return [String]
    #
    # @!attribute [rw] statuses
    #   Filters results to return only signing jobs with statuses in the
    #   specified list.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListSigningProfilesRequest AWS API Documentation
    #
    class ListSigningProfilesRequest < Struct.new(
      :include_canceled,
      :max_results,
      :next_token,
      :platform_id,
      :statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profiles
    #   A list of profiles that are available in the AWS account. This
    #   includes profiles with the status of `CANCELED` if the
    #   `includeCanceled` parameter is set to `true`.
    #   @return [Array<Types::SigningProfile>]
    #
    # @!attribute [rw] next_token
    #   Value for specifying the next set of paginated results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListSigningProfilesResponse AWS API Documentation
    #
    class ListSigningProfilesResponse < Struct.new(
      :profiles,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the signing profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags associated with the signing profile.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The signing profile was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A cross-account permission for a signing profile.
    #
    # @!attribute [rw] action
    #   An AWS Signer action permitted as part of cross-account permissions.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The AWS principal that has been granted a cross-account permission.
    #   @return [String]
    #
    # @!attribute [rw] statement_id
    #   A unique identifier for a cross-account permission statement.
    #   @return [String]
    #
    # @!attribute [rw] profile_version
    #   The signing profile version that a permission applies to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/Permission AWS API Documentation
    #
    class Permission < Struct.new(
      :action,
      :principal,
      :statement_id,
      :profile_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_name
    #   The name of the signing profile to be created.
    #   @return [String]
    #
    # @!attribute [rw] signing_material
    #   The AWS Certificate Manager certificate that will be used to sign
    #   code with the new signing profile.
    #   @return [Types::SigningMaterial]
    #
    # @!attribute [rw] signature_validity_period
    #   The default validity period override for any signature generated
    #   using this signing profile. If unspecified, the default is 135
    #   months.
    #   @return [Types::SignatureValidityPeriod]
    #
    # @!attribute [rw] platform_id
    #   The ID of the signing platform to be created.
    #   @return [String]
    #
    # @!attribute [rw] overrides
    #   A subfield of `platform`. This specifies any different configuration
    #   options that you want to apply to the chosen platform (such as a
    #   different `hash-algorithm` or `signing-algorithm`).
    #   @return [Types::SigningPlatformOverrides]
    #
    # @!attribute [rw] signing_parameters
    #   Map of key-value pairs for signing. These can include any
    #   information that you want to use during signing.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   Tags to be associated with the signing profile that is being
    #   created.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/PutSigningProfileRequest AWS API Documentation
    #
    class PutSigningProfileRequest < Struct.new(
      :profile_name,
      :signing_material,
      :signature_validity_period,
      :platform_id,
      :overrides,
      :signing_parameters,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the signing profile created.
    #   @return [String]
    #
    # @!attribute [rw] profile_version
    #   The version of the signing profile being created.
    #   @return [String]
    #
    # @!attribute [rw] profile_version_arn
    #   The signing profile ARN, including the profile version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/PutSigningProfileResponse AWS API Documentation
    #
    class PutSigningProfileResponse < Struct.new(
      :arn,
      :profile_version,
      :profile_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_name
    #   A human-readable name for the signing profile with permissions to be
    #   removed.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   An identifier for the current revision of the signing profile
    #   permissions.
    #   @return [String]
    #
    # @!attribute [rw] statement_id
    #   A unique identifier for the cross-account permissions statement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/RemoveProfilePermissionRequest AWS API Documentation
    #
    class RemoveProfilePermissionRequest < Struct.new(
      :profile_name,
      :revision_id,
      :statement_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] revision_id
    #   An identifier for the current revision of the profile permissions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/RemoveProfilePermissionResponse AWS API Documentation
    #
    class RemoveProfilePermissionResponse < Struct.new(
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A specified resource could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   ID of the signing job to be revoked.
    #   @return [String]
    #
    # @!attribute [rw] job_owner
    #   AWS account ID of the job owner.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for revoking the signing job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/RevokeSignatureRequest AWS API Documentation
    #
    class RevokeSignatureRequest < Struct.new(
      :job_id,
      :job_owner,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_name
    #   The name of the signing profile to be revoked.
    #   @return [String]
    #
    # @!attribute [rw] profile_version
    #   The version of the signing profile to be revoked.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for revoking a signing profile.
    #   @return [String]
    #
    # @!attribute [rw] effective_time
    #   A timestamp for when revocation of a Signing Profile should become
    #   effective. Signatures generated using the signing profile after this
    #   timestamp are not trusted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/RevokeSigningProfileRequest AWS API Documentation
    #
    class RevokeSigningProfileRequest < Struct.new(
      :profile_name,
      :profile_version,
      :reason,
      :effective_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The name and prefix of the S3 bucket where code signing saves your
    # signed objects.
    #
    # @!attribute [rw] bucket_name
    #   Name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   An Amazon S3 prefix that you can use to limit responses to those
    #   that begin with the specified prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/S3Destination AWS API Documentation
    #
    class S3Destination < Struct.new(
      :bucket_name,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 bucket name and key where code signing saved your signed code
    # image.
    #
    # @!attribute [rw] bucket_name
    #   Name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Key name that uniquely identifies a signed code image in your
    #   bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/S3SignedObject AWS API Documentation
    #
    class S3SignedObject < Struct.new(
      :bucket_name,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the S3 bucket where you saved your unsigned code.
    #
    # @!attribute [rw] bucket_name
    #   Name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Key name of the bucket object that contains your unsigned code.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of your source image in your version enabled S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/S3Source AWS API Documentation
    #
    class S3Source < Struct.new(
      :bucket_name,
      :key,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client is making a request that exceeds service limits.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ServiceLimitExceededException AWS API Documentation
    #
    class ServiceLimitExceededException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_name
    #   The name of the signing profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_owner
    #   The AWS account ID of the profile owner.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   Specifies the object digest (hash) to sign.
    #   @return [String]
    #
    # @!attribute [rw] payload_format
    #   Payload content type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SignPayloadRequest AWS API Documentation
    #
    class SignPayloadRequest < Struct.new(
      :profile_name,
      :profile_owner,
      :payload,
      :payload_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   Unique identifier of the signing job.
    #   @return [String]
    #
    # @!attribute [rw] job_owner
    #   The AWS account ID of the job owner.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Information including the signing profile ARN and the signing job
    #   ID. Clients use metadata to signature records, for example, as
    #   annotations added to the signature manifest inside an OCI registry.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] signature
    #   A cryptographic signature.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SignPayloadResponse AWS API Documentation
    #
    class SignPayloadResponse < Struct.new(
      :job_id,
      :job_owner,
      :metadata,
      :signature)
      SENSITIVE = []
      include Aws::Structure
    end

    # The validity period for a signing job.
    #
    # @!attribute [rw] value
    #   The numerical value of the time unit for signature validity.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The time unit for signature validity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SignatureValidityPeriod AWS API Documentation
    #
    class SignatureValidityPeriod < Struct.new(
      :value,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Points to an `S3SignedObject` object that contains information about
    # your signed code image.
    #
    # @!attribute [rw] s3
    #   The `S3SignedObject`.
    #   @return [Types::S3SignedObject]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SignedObject AWS API Documentation
    #
    class SignedObject < Struct.new(
      :s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a code signing operation.
    #
    # @!attribute [rw] encryption_algorithm_options
    #   The encryption algorithm options that are available for a code
    #   signing job.
    #   @return [Types::EncryptionAlgorithmOptions]
    #
    # @!attribute [rw] hash_algorithm_options
    #   The hash algorithm options that are available for a code signing
    #   job.
    #   @return [Types::HashAlgorithmOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SigningConfiguration AWS API Documentation
    #
    class SigningConfiguration < Struct.new(
      :encryption_algorithm_options,
      :hash_algorithm_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # A signing configuration that overrides the default encryption or hash
    # algorithm of a signing job.
    #
    # @!attribute [rw] encryption_algorithm
    #   A specified override of the default encryption algorithm that is
    #   used in a code signing job.
    #   @return [String]
    #
    # @!attribute [rw] hash_algorithm
    #   A specified override of the default hash algorithm that is used in a
    #   code signing job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SigningConfigurationOverrides AWS API Documentation
    #
    class SigningConfigurationOverrides < Struct.new(
      :encryption_algorithm,
      :hash_algorithm)
      SENSITIVE = []
      include Aws::Structure
    end

    # The image format of a code signing platform or profile.
    #
    # @!attribute [rw] supported_formats
    #   The supported formats of a code signing image.
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_format
    #   The default format of a code signing image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SigningImageFormat AWS API Documentation
    #
    class SigningImageFormat < Struct.new(
      :supported_formats,
      :default_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a signing job.
    #
    # @!attribute [rw] job_id
    #   The ID of the signing job.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   A `Source` that contains information about a signing job's code
    #   image source.
    #   @return [Types::Source]
    #
    # @!attribute [rw] signed_object
    #   A `SignedObject` structure that contains information about a signing
    #   job's signed code image.
    #   @return [Types::SignedObject]
    #
    # @!attribute [rw] signing_material
    #   A `SigningMaterial` object that contains the Amazon Resource Name
    #   (ARN) of the certificate used for the signing job.
    #   @return [Types::SigningMaterial]
    #
    # @!attribute [rw] created_at
    #   The date and time that the signing job was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the signing job.
    #   @return [String]
    #
    # @!attribute [rw] is_revoked
    #   Indicates whether the signing job is revoked.
    #   @return [Boolean]
    #
    # @!attribute [rw] profile_name
    #   The name of the signing profile that created a signing job.
    #   @return [String]
    #
    # @!attribute [rw] profile_version
    #   The version of the signing profile that created a signing job.
    #   @return [String]
    #
    # @!attribute [rw] platform_id
    #   The unique identifier for a signing platform.
    #   @return [String]
    #
    # @!attribute [rw] platform_display_name
    #   The name of a signing platform.
    #   @return [String]
    #
    # @!attribute [rw] signature_expires_at
    #   The time when the signature of a signing job expires.
    #   @return [Time]
    #
    # @!attribute [rw] job_owner
    #   The AWS account ID of the job owner.
    #   @return [String]
    #
    # @!attribute [rw] job_invoker
    #   The AWS account ID of the job invoker.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SigningJob AWS API Documentation
    #
    class SigningJob < Struct.new(
      :job_id,
      :source,
      :signed_object,
      :signing_material,
      :created_at,
      :status,
      :is_revoked,
      :profile_name,
      :profile_version,
      :platform_id,
      :platform_display_name,
      :signature_expires_at,
      :job_owner,
      :job_invoker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Revocation information for a signing job.
    #
    # @!attribute [rw] reason
    #   A caller-supplied reason for revocation.
    #   @return [String]
    #
    # @!attribute [rw] revoked_at
    #   The time of revocation.
    #   @return [Time]
    #
    # @!attribute [rw] revoked_by
    #   The identity of the revoker.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SigningJobRevocationRecord AWS API Documentation
    #
    class SigningJobRevocationRecord < Struct.new(
      :reason,
      :revoked_at,
      :revoked_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ACM certificate that is used to sign your code.
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificates that is used to
    #   sign your code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SigningMaterial AWS API Documentation
    #
    class SigningMaterial < Struct.new(
      :certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the signing configurations and parameters
    # that are used to perform a code signing job.
    #
    # @!attribute [rw] platform_id
    #   The ID of a code signing platform.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of a code signing platform.
    #   @return [String]
    #
    # @!attribute [rw] partner
    #   Any partner entities linked to a code signing platform.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The types of targets that can be signed by a code signing platform.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of a code signing platform.
    #   @return [String]
    #
    # @!attribute [rw] signing_configuration
    #   The configuration of a code signing platform. This includes the
    #   designated hash algorithm and encryption algorithm of a signing
    #   platform.
    #   @return [Types::SigningConfiguration]
    #
    # @!attribute [rw] signing_image_format
    #   The image format of a code signing platform or profile.
    #   @return [Types::SigningImageFormat]
    #
    # @!attribute [rw] max_size_in_mb
    #   The maximum size (in MB) of code that can be signed by a code
    #   signing platform.
    #   @return [Integer]
    #
    # @!attribute [rw] revocation_supported
    #   Indicates whether revocation is supported for the platform.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SigningPlatform AWS API Documentation
    #
    class SigningPlatform < Struct.new(
      :platform_id,
      :display_name,
      :partner,
      :target,
      :category,
      :signing_configuration,
      :signing_image_format,
      :max_size_in_mb,
      :revocation_supported)
      SENSITIVE = []
      include Aws::Structure
    end

    # Any overrides that are applied to the signing configuration of a code
    # signing platform.
    #
    # @!attribute [rw] signing_configuration
    #   A signing configuration that overrides the default encryption or
    #   hash algorithm of a signing job.
    #   @return [Types::SigningConfigurationOverrides]
    #
    # @!attribute [rw] signing_image_format
    #   A signed image is a JSON object. When overriding the default signing
    #   platform configuration, a customer can select either of two signing
    #   formats, `JSONEmbedded` or `JSONDetached`. (A third format value,
    #   `JSON`, is reserved for future use.) With `JSONEmbedded`, the
    #   signing image has the payload embedded in it. With `JSONDetached`,
    #   the payload is not be embedded in the signing image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SigningPlatformOverrides AWS API Documentation
    #
    class SigningPlatformOverrides < Struct.new(
      :signing_configuration,
      :signing_image_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the ACM certificates and code signing
    # configuration parameters that can be used by a given code signing
    # user.
    #
    # @!attribute [rw] profile_name
    #   The name of the signing profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_version
    #   The version of a signing profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_version_arn
    #   The ARN of a signing profile, including the profile version.
    #   @return [String]
    #
    # @!attribute [rw] signing_material
    #   The ACM certificate that is available for use by a signing profile.
    #   @return [Types::SigningMaterial]
    #
    # @!attribute [rw] signature_validity_period
    #   The validity period for a signing job created using this signing
    #   profile.
    #   @return [Types::SignatureValidityPeriod]
    #
    # @!attribute [rw] platform_id
    #   The ID of a platform that is available for use by a signing profile.
    #   @return [String]
    #
    # @!attribute [rw] platform_display_name
    #   The name of the signing platform.
    #   @return [String]
    #
    # @!attribute [rw] signing_parameters
    #   The parameters that are available for use by a code signing user.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The status of a code signing profile.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the signing profile.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags associated with the signing profile.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SigningProfile AWS API Documentation
    #
    class SigningProfile < Struct.new(
      :profile_name,
      :profile_version,
      :profile_version_arn,
      :signing_material,
      :signature_validity_period,
      :platform_id,
      :platform_display_name,
      :signing_parameters,
      :status,
      :arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Revocation information for a signing profile.
    #
    # @!attribute [rw] revocation_effective_from
    #   The time when revocation becomes effective.
    #   @return [Time]
    #
    # @!attribute [rw] revoked_at
    #   The time when the signing profile was revoked.
    #   @return [Time]
    #
    # @!attribute [rw] revoked_by
    #   The identity of the revoker.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SigningProfileRevocationRecord AWS API Documentation
    #
    class SigningProfileRevocationRecord < Struct.new(
      :revocation_effective_from,
      :revoked_at,
      :revoked_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # An `S3Source` object that contains information about the S3 bucket
    # where you saved your unsigned code.
    #
    # @!attribute [rw] s3
    #   The `S3Source` object.
    #   @return [Types::S3Source]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/Source AWS API Documentation
    #
    class Source < Struct.new(
      :s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source
    #   The S3 bucket that contains the object to sign or a BLOB that
    #   contains your raw code.
    #   @return [Types::Source]
    #
    # @!attribute [rw] destination
    #   The S3 bucket in which to save your signed object. The destination
    #   contains the name of your bucket and an optional prefix.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] profile_name
    #   The name of the signing profile.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   String that identifies the signing request. All calls after the
    #   first that use this token return the same response as the first
    #   call.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] profile_owner
    #   The AWS account ID of the signing profile owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/StartSigningJobRequest AWS API Documentation
    #
    class StartSigningJobRequest < Struct.new(
      :source,
      :destination,
      :profile_name,
      :client_request_token,
      :profile_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The ID of your signing job.
    #   @return [String]
    #
    # @!attribute [rw] job_owner
    #   The AWS account ID of the signing job owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/StartSigningJobResponse AWS API Documentation
    #
    class StartSigningJobResponse < Struct.new(
      :job_id,
      :job_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the signing profile.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags to be associated with the signing profile.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # Instead of this error, `TooManyRequestsException` should be used.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The allowed number of job-signing requests has been exceeded.
    #
    # This error supersedes the error `ThrottlingException`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the signing profile.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys to be removed from the signing profile.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # You signing certificate could not be validated.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
