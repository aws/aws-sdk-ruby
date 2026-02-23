# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SignerData
  module Types

    # You do not have sufficient permissions to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-data-2017-08-25/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for checking revocation status.
    #
    # @!attribute [rw] signature_timestamp
    #   The timestamp when the artifact was signed, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] platform_id
    #   The platform identifier for the signing platform used.
    #   @return [String]
    #
    # @!attribute [rw] profile_version_arn
    #   The ARN of the signing profile version used to sign the artifact.
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   The ARN of the signing job that produced the signature.
    #   @return [String]
    #
    # @!attribute [rw] certificate_hashes
    #   List of certificate hashes to check for revocation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-data-2017-08-25/GetRevocationStatusRequest AWS API Documentation
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

    # Response containing the list of revoked entities.
    #
    # @!attribute [rw] revoked_entities
    #   List of entity identifiers that have been revoked. Empty if no
    #   revocations found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-data-2017-08-25/GetRevocationStatusResponse AWS API Documentation
    #
    class GetRevocationStatusResponse < Struct.new(
      :revoked_entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal service error occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-data-2017-08-25/InternalServiceErrorException AWS API Documentation
    #
    class InternalServiceErrorException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-data-2017-08-25/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request contains invalid parameters or is malformed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-data-2017-08-25/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

