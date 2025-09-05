# frozen_string_literal: true

# This is generated code!

module Aws::Signer
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_name
    #   <p>The human-readable name of the signing profile.</p>
    #   @return [String]
    # @!attribute profile_version
    #   <p>The version of the signing profile.</p>
    #   @return [String]
    # @!attribute action
    #   <p>For cross-account signing. Grant a designated account permission to perform one or more of the following actions. Each action is associated with a specific API's operations. For more information about cross-account signing, see <a href="https://docs.aws.amazon.com/signer/latest/developerguide/signing-profile-cross-account.html">Using cross-account signing with signing profiles</a> in the <i>AWS Signer Developer Guide</i>.</p>
    #   		       <p>You can designate the following actions to an account.</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <code>signer:StartSigningJob</code>. This action isn't supported for container image workflows. For details, see <a>StartSigningJob</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>signer:SignPayload</code>. This action isn't supported for AWS Lambda workflows. For details, see <a>SignPayload</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>signer:GetSigningProfile</code>. For details, see <a>GetSigningProfile</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>signer:RevokeSignature</code>. For details, see <a>RevokeSignature</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute principal
    #   <p>The AWS principal receiving cross-account permissions. This may be an IAM role or another
    #   			AWS account ID.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>A unique identifier for the current profile revision.</p>
    #   @return [String]
    # @!attribute statement_id
    #   <p>A unique identifier for the cross-account permission statement.</p>
    #   @return [String]
    class AddProfilePermissionRequest < Struct.new(
      :profile_name,
      :profile_version,
      :action,
      :principal,
      :revision_id,
      :statement_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute revision_id
    #   <p>A unique identifier for the current profile revision.</p>
    #   @return [String]
    class AddProfilePermissionResponse < Struct.new(
      :revision_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request contains invalid parameters for the ARN or tags. This exception also
    # 			occurs when you call a tagging API on a cancelled signing profile.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class BadRequestException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_name
    #   <p>The name of the signing profile to be canceled.</p>
    #   @return [String]
    class CancelSigningProfileRequest < Struct.new(
      :profile_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource encountered a conflicting state.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the signing job on input.</p>
    #   @return [String]
    class DescribeSigningJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the signing job on output.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The object that contains the name of your S3 bucket or your raw code.</p>
    #   @return [Types::Source]
    # @!attribute signing_material
    #   <p>The Amazon Resource Name (ARN) of your code signing certificate.</p>
    #   @return [Types::SigningMaterial]
    # @!attribute platform_id
    #   <p>The microcontroller platform to which your signed code image will be
    #   			distributed.</p>
    #   @return [String]
    # @!attribute platform_display_name
    #   <p>A human-readable name for the signing platform associated with the signing job.</p>
    #   @return [String]
    # @!attribute profile_name
    #   <p>The name of the profile that initiated the signing operation.</p>
    #   @return [String]
    # @!attribute profile_version
    #   <p>The version of the signing profile used to initiate the signing job.</p>
    #   @return [String]
    # @!attribute overrides
    #   <p>A list of any overrides that were applied to the signing operation.</p>
    #   @return [Types::SigningPlatformOverrides]
    # @!attribute signing_parameters
    #   <p>Map of user-assigned key-value pairs used during signing. These values contain any
    #   			information that you specified for use in your signing job. </p>
    #   @return [Hash<String, String>]
    # @!attribute created_at
    #   <p>Date and time that the signing job was created.</p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>Date and time that the signing job was completed.</p>
    #   @return [Time]
    # @!attribute signature_expires_at
    #   <p>Thr expiration timestamp for the signature generated by the signing job.</p>
    #   @return [Time]
    # @!attribute requested_by
    #   <p>The IAM principal that requested the signing job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the signing job.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>String value that contains the status reason.</p>
    #   @return [String]
    # @!attribute revocation_record
    #   <p>A revocation record if the signature generated by the signing job has been revoked.
    #   			Contains a timestamp and the ID of the IAM entity that revoked the signature.</p>
    #   @return [Types::SigningJobRevocationRecord]
    # @!attribute signed_object
    #   <p>Name of the S3 bucket where the signed code image is saved by AWS Signer.</p>
    #   @return [Types::SignedObject]
    # @!attribute job_owner
    #   <p>The AWS account ID of the job owner.</p>
    #   @return [String]
    # @!attribute job_invoker
    #   <p>The IAM entity that initiated the signing job.</p>
    #   @return [String]
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
      :job_invoker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Points to an <code>S3Destination</code> object that contains information about your S3
    # 			bucket.</p>
    # @!attribute s3
    #   <p>The <code>S3Destination</code> object.</p>
    #   @return [Types::S3Destination]
    class Destination < Struct.new(
      :s3,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The encryption algorithm options that are available to a code-signing job.</p>
    # @!attribute allowed_values
    #   <p>The set of accepted encryption algorithms that are allowed in a code-signing job.</p>
    #   @return [Array<String>]
    # @!attribute default_value
    #   <p>The default encryption algorithm that is used by a code-signing job.</p>
    #   @return [String]
    class EncryptionAlgorithmOptions < Struct.new(
      :allowed_values,
      :default_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute signature_timestamp
    #   <p>The timestamp of the signature that validates the profile or job.</p>
    #   @return [Time]
    # @!attribute platform_id
    #   <p>The ID of a signing platform. </p>
    #   @return [String]
    # @!attribute profile_version_arn
    #   <p>The version of a signing profile.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The ARN of a signing job.</p>
    #   @return [String]
    # @!attribute certificate_hashes
    #   <p>A list of composite signed hashes that identify certificates.</p>
    #   		       <p>A certificate identifier consists of a subject certificate TBS hash (signed by the
    #   			parent CA) combined with a parent CA TBS hash (signed by the parent CA’s CA). Root
    #   			certificates are defined as their own CA.</p>
    #   		       <p>The following example shows how to calculate a hash for this parameter using OpenSSL
    #   			commands: </p>
    #   		
    #   			      <p>
    #               <code>openssl asn1parse -in childCert.pem -strparse 4 -out childCert.tbs</code> 
    #            </p>
    #   			      <p>
    #               <code>openssl sha384 < childCert.tbs -binary > childCertTbsHash</code> 
    #            </p>
    #   			      <p>
    #               <code>openssl asn1parse -in parentCert.pem -strparse 4 -out parentCert.tbs</code> 
    #            </p>
    #   			      <p>
    #               <code>openssl sha384 < parentCert.tbs -binary > parentCertTbsHash xxd -p
    #   				childCertTbsHash > certificateHash.hex xxd -p parentCertTbsHash >>
    #   				certificateHash.hex</code>
    #            </p>
    #   			      <p>
    #               <code>cat certificateHash.hex | tr -d '\n'</code>
    #            </p>
    #   @return [Array<String>]
    class GetRevocationStatusRequest < Struct.new(
      :signature_timestamp,
      :platform_id,
      :profile_version_arn,
      :job_arn,
      :certificate_hashes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute revoked_entities
    #   <p>A list of revoked entities (including zero or more of the signing profile ARN, signing job
    #   			ARN, and certificate hashes) supplied as input to the API.</p>
    #   @return [Array<String>]
    class GetRevocationStatusResponse < Struct.new(
      :revoked_entities,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute platform_id
    #   <p>The ID of the target signing platform.</p>
    #   @return [String]
    class GetSigningPlatformRequest < Struct.new(
      :platform_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute platform_id
    #   <p>The ID of the target signing platform.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the target signing platform.</p>
    #   @return [String]
    # @!attribute partner
    #   <p>A list of partner entities that use the target signing platform.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The validation template that is used by the target signing platform.</p>
    #   @return [String]
    # @!attribute category
    #   <p>The category type of the target signing platform.</p>
    #   @return [String]
    # @!attribute signing_configuration
    #   <p>A list of configurations applied to the target platform at signing.</p>
    #   @return [Types::SigningConfiguration]
    # @!attribute signing_image_format
    #   <p>The format of the target platform's signing image.</p>
    #   @return [Types::SigningImageFormat]
    # @!attribute max_size_in_mb
    #   <p>The maximum size (in MB) of the payload that can be signed by the target
    #   			platform.</p>
    #   @return [Integer]
    # @!attribute revocation_supported
    #   <p>A flag indicating whether signatures generated for the signing platform can be
    #   			revoked.</p>
    #   @return [Boolean]
    class GetSigningPlatformResponse < Struct.new(
      :platform_id,
      :display_name,
      :partner,
      :target,
      :category,
      :signing_configuration,
      :signing_image_format,
      :max_size_in_mb,
      :revocation_supported,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_size_in_mb] = 0 unless options.key?(:max_size_in_mb)
        options[:revocation_supported] = false unless options.key?(:revocation_supported)
        super
      end
    end

    # @!attribute profile_name
    #   <p>The name of the target signing profile.</p>
    #   @return [String]
    # @!attribute profile_owner
    #   <p>The AWS account ID of the profile owner.</p>
    #   @return [String]
    class GetSigningProfileRequest < Struct.new(
      :profile_name,
      :profile_owner,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_name
    #   <p>The name of the target signing profile.</p>
    #   @return [String]
    # @!attribute profile_version
    #   <p>The current version of the signing profile.</p>
    #   @return [String]
    # @!attribute profile_version_arn
    #   <p>The signing profile ARN, including the profile version.</p>
    #   @return [String]
    # @!attribute revocation_record
    #   <p>Revocation information for a signing profile.</p>
    #   @return [Types::SigningProfileRevocationRecord]
    # @!attribute signing_material
    #   <p>The ARN of the certificate that the target profile uses for signing operations.</p>
    #   @return [Types::SigningMaterial]
    # @!attribute platform_id
    #   <p>The ID of the platform that is used by the target signing profile.</p>
    #   @return [String]
    # @!attribute platform_display_name
    #   <p>A human-readable name for the signing platform associated with the signing
    #   			profile.</p>
    #   @return [String]
    # @!attribute signature_validity_period
    #   <p>The validity period for a signing job.</p>
    #   @return [Types::SignatureValidityPeriod]
    # @!attribute overrides
    #   <p>A list of overrides applied by the target signing profile for signing
    #   			operations.</p>
    #   @return [Types::SigningPlatformOverrides]
    # @!attribute signing_parameters
    #   <p>A map of key-value pairs for signing operations that is attached to the target signing
    #   			profile.</p>
    #   @return [Hash<String, String>]
    # @!attribute status
    #   <p>The status of the target signing profile.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Reason for the status of the target signing profile.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the signing profile.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags associated with the signing profile.</p>
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The hash algorithms that are available to a code-signing job.</p>
    # @!attribute allowed_values
    #   <p>The set of accepted hash algorithms allowed in a code-signing job.</p>
    #   @return [Array<String>]
    # @!attribute default_value
    #   <p>The default hash algorithm that is used in a code-signing job.</p>
    #   @return [String]
    class HashAlgorithmOptions < Struct.new(
      :allowed_values,
      :default_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An internal error occurred.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class InternalServiceErrorException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_name
    #   <p>Name of the signing profile containing the cross-account permissions.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>String for specifying the next set of paginated results.</p>
    #   @return [String]
    class ListProfilePermissionsRequest < Struct.new(
      :profile_name,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute revision_id
    #   <p>The identifier for the current revision of profile permissions.</p>
    #   @return [String]
    # @!attribute policy_size_bytes
    #   <p>Total size of the policy associated with the Signing Profile in bytes.</p>
    #   @return [Integer]
    # @!attribute permissions
    #   <p>List of permissions associated with the Signing Profile.</p>
    #   @return [Array<Types::Permission>]
    # @!attribute next_token
    #   <p>String for specifying the next set of paginated results.</p>
    #   @return [String]
    class ListProfilePermissionsResponse < Struct.new(
      :revision_id,
      :policy_size_bytes,
      :permissions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:policy_size_bytes] = 0 unless options.key?(:policy_size_bytes)
        super
      end
    end

    # @!attribute status
    #   <p>A status value with which to filter your results.</p>
    #   @return [String]
    # @!attribute platform_id
    #   <p>The ID of microcontroller platform that you specified for the distribution of your
    #   			code image.</p>
    #   @return [String]
    # @!attribute requested_by
    #   <p>The IAM principal that requested the signing job.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the maximum number of items to return in the response. Use this parameter
    #   			when paginating results. If additional items exist beyond the number you specify, the
    #   				<code>nextToken</code> element is set in the response. Use the
    #   				<code>nextToken</code> value in a subsequent request to retrieve additional items.
    #   		</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>String for specifying the next set of paginated results to return. After you receive a
    #   			response with truncated results, use this parameter in a subsequent request. Set it to
    #   			the value of <code>nextToken</code> from the response that you just received.</p>
    #   @return [String]
    # @!attribute is_revoked
    #   <p>Filters results to return only signing jobs with revoked signatures.</p>
    #   @return [Boolean]
    # @!attribute signature_expires_before
    #   <p>Filters results to return only signing jobs with signatures expiring before a
    #   			specified timestamp.</p>
    #   @return [Time]
    # @!attribute signature_expires_after
    #   <p>Filters results to return only signing jobs with signatures expiring after a specified
    #   			timestamp.</p>
    #   @return [Time]
    # @!attribute job_invoker
    #   <p>Filters results to return only signing jobs initiated by a specified IAM
    #   			entity.</p>
    #   @return [String]
    class ListSigningJobsRequest < Struct.new(
      :status,
      :platform_id,
      :requested_by,
      :max_results,
      :next_token,
      :is_revoked,
      :signature_expires_before,
      :signature_expires_after,
      :job_invoker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute jobs
    #   <p>A list of your signing jobs.</p>
    #   @return [Array<Types::SigningJob>]
    # @!attribute next_token
    #   <p>String for specifying the next set of paginated results.</p>
    #   @return [String]
    class ListSigningJobsResponse < Struct.new(
      :jobs,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute category
    #   <p>The category type of a signing platform.</p>
    #   @return [String]
    # @!attribute partner
    #   <p>Any partner entities connected to a signing platform.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The validation template that is used by the target signing platform.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned by this operation.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Value for specifying the next set of paginated results to return. After you receive a
    #   			response with truncated results, use this parameter in a subsequent request. Set it to
    #   			the value of <code>nextToken</code> from the response that you just received.</p>
    #   @return [String]
    class ListSigningPlatformsRequest < Struct.new(
      :category,
      :partner,
      :target,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute platforms
    #   <p>A list of all platforms that match the request parameters.</p>
    #   @return [Array<Types::SigningPlatform>]
    # @!attribute next_token
    #   <p>Value for specifying the next set of paginated results to return.</p>
    #   @return [String]
    class ListSigningPlatformsResponse < Struct.new(
      :platforms,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute include_canceled
    #   <p>Designates whether to include profiles with the status of
    #   			<code>CANCELED</code>.</p>
    #   @return [Boolean]
    # @!attribute max_results
    #   <p>The maximum number of profiles to be returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Value for specifying the next set of paginated results to return. After you receive a
    #   			response with truncated results, use this parameter in a subsequent request. Set it to
    #   			the value of <code>nextToken</code> from the response that you just received.</p>
    #   @return [String]
    # @!attribute platform_id
    #   <p>Filters results to return only signing jobs initiated for a specified signing
    #   			platform.</p>
    #   @return [String]
    # @!attribute statuses
    #   <p>Filters results to return only signing jobs with statuses in the specified
    #   			list.</p>
    #   @return [Array<String>]
    class ListSigningProfilesRequest < Struct.new(
      :include_canceled,
      :max_results,
      :next_token,
      :platform_id,
      :statuses,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profiles
    #   <p>A list of profiles that are available in the AWS account. This includes profiles with
    #   			the status of <code>CANCELED</code> if the <code>includeCanceled</code> parameter is set
    #   			to <code>true</code>.</p>
    #   @return [Array<Types::SigningProfile>]
    # @!attribute next_token
    #   <p>Value for specifying the next set of paginated results to return.</p>
    #   @return [String]
    class ListSigningProfilesResponse < Struct.new(
      :profiles,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the signing profile.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tags associated with the signing profile.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The signing profile was not found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class NotFoundException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A cross-account permission for a signing profile.</p>
    # @!attribute action
    #   <p>An AWS Signer action permitted as part of cross-account permissions.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The AWS principal that has been granted a cross-account permission.</p>
    #   @return [String]
    # @!attribute statement_id
    #   <p>A unique identifier for a cross-account permission statement.</p>
    #   @return [String]
    # @!attribute profile_version
    #   <p>The signing profile version that a permission applies to.</p>
    #   @return [String]
    class Permission < Struct.new(
      :action,
      :principal,
      :statement_id,
      :profile_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_name
    #   <p>The name of the signing profile to be created.</p>
    #   @return [String]
    # @!attribute signing_material
    #   <p>The AWS Certificate Manager certificate that will be used to sign code with the new signing
    #   			profile.</p>
    #   @return [Types::SigningMaterial]
    # @!attribute signature_validity_period
    #   <p>The default validity period override for any signature generated using this signing
    #   			profile. If unspecified, the default is 135 months.</p>
    #   @return [Types::SignatureValidityPeriod]
    # @!attribute platform_id
    #   <p>The ID of the signing platform to be created.</p>
    #   @return [String]
    # @!attribute overrides
    #   <p>A subfield of <code>platform</code>. This specifies any different configuration
    #   			options that you want to apply to the chosen platform (such as a different
    #   				<code>hash-algorithm</code> or <code>signing-algorithm</code>).</p>
    #   @return [Types::SigningPlatformOverrides]
    # @!attribute signing_parameters
    #   <p>Map of key-value pairs for signing. These can include any information that you want to
    #   			use during signing.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>Tags to be associated with the signing profile that is being created.</p>
    #   @return [Hash<String, String>]
    class PutSigningProfileRequest < Struct.new(
      :profile_name,
      :signing_material,
      :signature_validity_period,
      :platform_id,
      :overrides,
      :signing_parameters,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the signing profile created.</p>
    #   @return [String]
    # @!attribute profile_version
    #   <p>The version of the signing profile being created.</p>
    #   @return [String]
    # @!attribute profile_version_arn
    #   <p>The signing profile ARN, including the profile version.</p>
    #   @return [String]
    class PutSigningProfileResponse < Struct.new(
      :arn,
      :profile_version,
      :profile_version_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_name
    #   <p>A human-readable name for the signing profile with permissions to be removed.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>An identifier for the current revision of the signing profile permissions.</p>
    #   @return [String]
    # @!attribute statement_id
    #   <p>A unique identifier for the cross-account permissions statement.</p>
    #   @return [String]
    class RemoveProfilePermissionRequest < Struct.new(
      :profile_name,
      :revision_id,
      :statement_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute revision_id
    #   <p>An identifier for the current revision of the profile permissions.</p>
    #   @return [String]
    class RemoveProfilePermissionResponse < Struct.new(
      :revision_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A specified resource could not be found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>ID of the signing job to be revoked.</p>
    #   @return [String]
    # @!attribute job_owner
    #   <p>AWS account ID of the job owner.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for revoking the signing job.</p>
    #   @return [String]
    class RevokeSignatureRequest < Struct.new(
      :job_id,
      :job_owner,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_name
    #   <p>The name of the signing profile to be revoked.</p>
    #   @return [String]
    # @!attribute profile_version
    #   <p>The version of the signing profile to be revoked.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for revoking a signing profile.</p>
    #   @return [String]
    # @!attribute effective_time
    #   <p>A timestamp for when revocation of a Signing Profile should become effective.
    #   			Signatures generated using the signing profile after this timestamp are not
    #   			trusted.</p>
    #   @return [Time]
    class RevokeSigningProfileRequest < Struct.new(
      :profile_name,
      :profile_version,
      :reason,
      :effective_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The name and prefix of the Amazon S3 bucket where AWS Signer saves your signed objects.</p>
    # @!attribute bucket_name
    #   <p>Name of the S3 bucket.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>An S3 prefix that you can use to limit responses to those that begin with the specified
    #   			prefix.</p>
    #   @return [String]
    class S3Destination < Struct.new(
      :bucket_name,
      :prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon S3 bucket name and key where Signer saved your signed code image.</p>
    # @!attribute bucket_name
    #   <p>Name of the S3 bucket.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Key name that uniquely identifies a signed code image in your bucket.</p>
    #   @return [String]
    class S3SignedObject < Struct.new(
      :bucket_name,
      :key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the Amazon S3 bucket where you saved your unsigned code.</p>
    # @!attribute bucket_name
    #   <p>Name of the S3 bucket.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Key name of the bucket object that contains your unsigned code.</p>
    #   @return [String]
    # @!attribute version
    #   <p>Version of your source image in your version enabled S3 bucket.</p>
    #   @return [String]
    class S3Source < Struct.new(
      :bucket_name,
      :key,
      :version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The client is making a request that exceeds service limits.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class ServiceLimitExceededException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_name
    #   <p>The name of the signing profile.</p>
    #   @return [String]
    # @!attribute profile_owner
    #   <p>The AWS account ID of the profile owner.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>Specifies the object digest (hash) to sign.</p>
    #   @return [String]
    # @!attribute payload_format
    #   <p>Payload content type. The single valid type is
    #   				<code>application/vnd.cncf.notary.payload.v1+json</code>.</p>
    #   @return [String]
    class SignPayloadRequest < Struct.new(
      :profile_name,
      :profile_owner,
      :payload,
      :payload_format,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>Unique identifier of the signing job.</p>
    #   @return [String]
    # @!attribute job_owner
    #   <p>The AWS account ID of the job owner.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>Information including the signing profile ARN and the signing job ID.</p>
    #   @return [Hash<String, String>]
    # @!attribute signature
    #   <p>A cryptographic signature.</p>
    #   @return [String]
    class SignPayloadResponse < Struct.new(
      :job_id,
      :job_owner,
      :metadata,
      :signature,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The validity period for a signing job.</p>
    # @!attribute value
    #   <p>The numerical value of the time unit for signature validity.</p>
    #   @return [Integer]
    # @!attribute type
    #   <p>The time unit for signature validity.</p>
    #   @return [String]
    class SignatureValidityPeriod < Struct.new(
      :value,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>Points to an <code>S3SignedObject</code> object that contains information about your
    # 			signed code image.</p>
    # @!attribute s3
    #   <p>The <code>S3SignedObject</code>.</p>
    #   @return [Types::S3SignedObject]
    class SignedObject < Struct.new(
      :s3,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of a signing operation.</p>
    # @!attribute encryption_algorithm_options
    #   <p>The encryption algorithm options that are available for a code-signing job.</p>
    #   @return [Types::EncryptionAlgorithmOptions]
    # @!attribute hash_algorithm_options
    #   <p>The hash algorithm options that are available for a code-signing job.</p>
    #   @return [Types::HashAlgorithmOptions]
    class SigningConfiguration < Struct.new(
      :encryption_algorithm_options,
      :hash_algorithm_options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A signing configuration that overrides the default encryption or hash algorithm of a
    # 			signing job.</p>
    # @!attribute encryption_algorithm
    #   <p>A specified override of the default encryption algorithm that is used in a code-signing
    #   			job.</p>
    #   @return [String]
    # @!attribute hash_algorithm
    #   <p>A specified override of the default hash algorithm that is used in a code-signing
    #   			job.</p>
    #   @return [String]
    class SigningConfigurationOverrides < Struct.new(
      :encryption_algorithm,
      :hash_algorithm,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The image format of a AWS Signer platform or profile.</p>
    # @!attribute supported_formats
    #   <p>The supported formats of a signing image.</p>
    #   @return [Array<String>]
    # @!attribute default_format
    #   <p>The default format of a signing image.</p>
    #   @return [String]
    class SigningImageFormat < Struct.new(
      :supported_formats,
      :default_format,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a signing job.</p>
    # @!attribute job_id
    #   <p>The ID of the signing job.</p>
    #   @return [String]
    # @!attribute source
    #   <p>A <code>Source</code> that contains information about a signing job's code image
    #   			source.</p>
    #   @return [Types::Source]
    # @!attribute signed_object
    #   <p>A <code>SignedObject</code> structure that contains information about a signing job's
    #   			signed code image.</p>
    #   @return [Types::SignedObject]
    # @!attribute signing_material
    #   <p>A <code>SigningMaterial</code> object that contains the Amazon Resource Name (ARN) of
    #   			the certificate used for the signing job.</p>
    #   @return [Types::SigningMaterial]
    # @!attribute created_at
    #   <p>The date and time that the signing job was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the signing job.</p>
    #   @return [String]
    # @!attribute is_revoked
    #   <p>Indicates whether the signing job is revoked.</p>
    #   @return [Boolean]
    # @!attribute profile_name
    #   <p>The name of the signing profile that created a signing job.</p>
    #   @return [String]
    # @!attribute profile_version
    #   <p>The version of the signing profile that created a signing job.</p>
    #   @return [String]
    # @!attribute platform_id
    #   <p>The unique identifier for a signing platform.</p>
    #   @return [String]
    # @!attribute platform_display_name
    #   <p>The name of a signing platform.</p>
    #   @return [String]
    # @!attribute signature_expires_at
    #   <p>The time when the signature of a signing job expires.</p>
    #   @return [Time]
    # @!attribute job_owner
    #   <p>The AWS account ID of the job owner.</p>
    #   @return [String]
    # @!attribute job_invoker
    #   <p>The AWS account ID of the job invoker.</p>
    #   @return [String]
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
      :job_invoker,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_revoked] = false unless options.key?(:is_revoked)
        super
      end
    end

    # <p>Revocation information for a signing job.</p>
    # @!attribute reason
    #   <p>A caller-supplied reason for revocation.</p>
    #   @return [String]
    # @!attribute revoked_at
    #   <p>The time of revocation.</p>
    #   @return [Time]
    # @!attribute revoked_by
    #   <p>The identity of the revoker.</p>
    #   @return [String]
    class SigningJobRevocationRecord < Struct.new(
      :reason,
      :revoked_at,
      :revoked_by,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The ACM certificate that is used to sign your code.</p>
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificates that is used to sign your
    #   			code.</p>
    #   @return [String]
    class SigningMaterial < Struct.new(
      :certificate_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the signing configurations and parameters that are used to
    # 			perform a code-signing job.</p>
    # @!attribute platform_id
    #   <p>The ID of a signing platform.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of a signing platform.</p>
    #   @return [String]
    # @!attribute partner
    #   <p>Any partner entities linked to a signing platform.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The types of targets that can be signed by a signing platform.</p>
    #   @return [String]
    # @!attribute category
    #   <p>The category of a signing platform.</p>
    #   @return [String]
    # @!attribute signing_configuration
    #   <p>The configuration of a signing platform. This includes the designated hash algorithm and
    #   			encryption algorithm of a signing platform.</p>
    #   @return [Types::SigningConfiguration]
    # @!attribute signing_image_format
    #   <p>The image format of a AWS Signer platform or profile.</p>
    #   @return [Types::SigningImageFormat]
    # @!attribute max_size_in_mb
    #   <p>The maximum size (in MB) of code that can be signed by a signing platform.</p>
    #   @return [Integer]
    # @!attribute revocation_supported
    #   <p>Indicates whether revocation is supported for the platform.</p>
    #   @return [Boolean]
    class SigningPlatform < Struct.new(
      :platform_id,
      :display_name,
      :partner,
      :target,
      :category,
      :signing_configuration,
      :signing_image_format,
      :max_size_in_mb,
      :revocation_supported,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_size_in_mb] = 0 unless options.key?(:max_size_in_mb)
        options[:revocation_supported] = false unless options.key?(:revocation_supported)
        super
      end
    end

    # <p>Any overrides that are applied to the signing configuration of a signing platform.</p>
    # @!attribute signing_configuration
    #   <p>A signing configuration that overrides the default encryption or hash algorithm of a
    #   			signing job.</p>
    #   @return [Types::SigningConfigurationOverrides]
    # @!attribute signing_image_format
    #   <p>A signed image is a JSON object. When overriding the default signing platform
    #   			configuration, a customer can select either of two signing formats,
    #   				<code>JSONEmbedded</code> or <code>JSONDetached</code>. (A third format value,
    #   				<code>JSON</code>, is reserved for future use.) With <code>JSONEmbedded</code>, the
    #   			signing image has the payload embedded in it. With <code>JSONDetached</code>, the
    #   			payload is not be embedded in the signing image.</p>
    #   @return [String]
    class SigningPlatformOverrides < Struct.new(
      :signing_configuration,
      :signing_image_format,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the ACM certificates and signing configuration parameters that
    # 			can be used by a given code signing user.</p>
    # @!attribute profile_name
    #   <p>The name of the signing profile.</p>
    #   @return [String]
    # @!attribute profile_version
    #   <p>The version of a signing profile.</p>
    #   @return [String]
    # @!attribute profile_version_arn
    #   <p>The ARN of a signing profile, including the profile version.</p>
    #   @return [String]
    # @!attribute signing_material
    #   <p>The ACM certificate that is available for use by a signing profile.</p>
    #   @return [Types::SigningMaterial]
    # @!attribute signature_validity_period
    #   <p>The validity period for a signing job created using this signing profile.</p>
    #   @return [Types::SignatureValidityPeriod]
    # @!attribute platform_id
    #   <p>The ID of a platform that is available for use by a signing profile.</p>
    #   @return [String]
    # @!attribute platform_display_name
    #   <p>The name of the signing platform.</p>
    #   @return [String]
    # @!attribute signing_parameters
    #   <p>The parameters that are available for use by a Signer user.</p>
    #   @return [Hash<String, String>]
    # @!attribute status
    #   <p>The status of a signing profile.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the signing profile.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags associated with the signing profile.</p>
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Revocation information for a signing profile.</p>
    # @!attribute revocation_effective_from
    #   <p>The time when revocation becomes effective.</p>
    #   @return [Time]
    # @!attribute revoked_at
    #   <p>The time when the signing profile was revoked.</p>
    #   @return [Time]
    # @!attribute revoked_by
    #   <p>The identity of the revoker.</p>
    #   @return [String]
    class SigningProfileRevocationRecord < Struct.new(
      :revocation_effective_from,
      :revoked_at,
      :revoked_by,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An <code>S3Source</code> object that contains information about the S3 bucket where
    # 			you saved your unsigned code.</p>
    # @!attribute s3
    #   <p>The <code>S3Source</code> object.</p>
    #   @return [Types::S3Source]
    class Source < Struct.new(
      :s3,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source
    #   <p>The S3 bucket that contains the object to sign or a BLOB that contains your raw
    #   			code.</p>
    #   @return [Types::Source]
    # @!attribute destination
    #   <p>The S3 bucket in which to save your signed object. The destination contains the name
    #   			of your bucket and an optional prefix.</p>
    #   @return [Types::Destination]
    # @!attribute profile_name
    #   <p>The name of the signing profile.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>String that identifies the signing request. All calls after the first that use this
    #   			token return the same response as the first call.</p>
    #   @return [String]
    # @!attribute profile_owner
    #   <p>The AWS account ID of the signing profile owner.</p>
    #   @return [String]
    class StartSigningJobRequest < Struct.new(
      :source,
      :destination,
      :profile_name,
      :client_request_token,
      :profile_owner,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID of your signing job.</p>
    #   @return [String]
    # @!attribute job_owner
    #   <p>The AWS account ID of the signing job owner.</p>
    #   @return [String]
    class StartSigningJobResponse < Struct.new(
      :job_id,
      :job_owner,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the signing profile.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more tags to be associated with the signing profile.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # 		       <p>Instead of this error, <code>TooManyRequestsException</code> should be used.</p>
    # @deprecated
    #   Instead of this error, TooManyRequestsException should be used.
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The allowed number of job-signing requests has been exceeded.</p>
    # 		       <p>This error supersedes the error <code>ThrottlingException</code>.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the signing profile.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys to be removed from the signing profile.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You signing certificate could not be validated.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
