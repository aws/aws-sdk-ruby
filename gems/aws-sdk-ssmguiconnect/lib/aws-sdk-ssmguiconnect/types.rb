# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SSMGuiConnect
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-guiconnect-2021-05-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred due to a conflict.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-guiconnect-2021-05-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The set of preferences used for recording RDP connections in the
    # requesting Amazon Web Services account and Amazon Web Services Region.
    # This includes details such as which S3 bucket recordings are stored
    # in.
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of a KMS key that is used to encrypt data while it is being
    #   processed by the service. This key must exist in the same Amazon Web
    #   Services Region as the node you start an RDP connection to.
    #   @return [String]
    #
    # @!attribute [rw] recording_destinations
    #   Determines where recordings of RDP connections are stored.
    #   @return [Types::RecordingDestinations]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-guiconnect-2021-05-01/ConnectionRecordingPreferences AWS API Documentation
    #
    class ConnectionRecordingPreferences < Struct.new(
      :kms_key_arn,
      :recording_destinations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   User-provided idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-guiconnect-2021-05-01/DeleteConnectionRecordingPreferencesRequest AWS API Documentation
    #
    class DeleteConnectionRecordingPreferencesRequest < Struct.new(
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Service-provided idempotency token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-guiconnect-2021-05-01/DeleteConnectionRecordingPreferencesResponse AWS API Documentation
    #
    class DeleteConnectionRecordingPreferencesResponse < Struct.new(
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Service-provided idempotency token.
    #   @return [String]
    #
    # @!attribute [rw] connection_recording_preferences
    #   The set of preferences used for recording RDP connections in the
    #   requesting Amazon Web Services account and Amazon Web Services
    #   Region. This includes details such as which S3 bucket recordings are
    #   stored in.
    #   @return [Types::ConnectionRecordingPreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-guiconnect-2021-05-01/GetConnectionRecordingPreferencesResponse AWS API Documentation
    #
    class GetConnectionRecordingPreferencesResponse < Struct.new(
      :client_token,
      :connection_recording_preferences)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-guiconnect-2021-05-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines where recordings of RDP connections are stored.
    #
    # @!attribute [rw] s3_buckets
    #   The S3 bucket where RDP connection recordings are stored.
    #   @return [Array<Types::S3Bucket>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-guiconnect-2021-05-01/RecordingDestinations AWS API Documentation
    #
    class RecordingDestinations < Struct.new(
      :s3_buckets)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-guiconnect-2021-05-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 bucket where RDP connection recordings are stored.
    #
    # @!attribute [rw] bucket_name
    #   The name of the S3 bucket where RDP connection recordings are
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] bucket_owner
    #   The Amazon Web Services account number that owns the S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-guiconnect-2021-05-01/S3Bucket AWS API Documentation
    #
    class S3Bucket < Struct.new(
      :bucket_name,
      :bucket_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request exceeds a service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-guiconnect-2021-05-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-guiconnect-2021-05-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   User-provided idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] connection_recording_preferences
    #   The set of preferences used for recording RDP connections in the
    #   requesting Amazon Web Services account and Amazon Web Services
    #   Region. This includes details such as which S3 bucket recordings are
    #   stored in.
    #   @return [Types::ConnectionRecordingPreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-guiconnect-2021-05-01/UpdateConnectionRecordingPreferencesRequest AWS API Documentation
    #
    class UpdateConnectionRecordingPreferencesRequest < Struct.new(
      :client_token,
      :connection_recording_preferences)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Service-provided idempotency token.
    #   @return [String]
    #
    # @!attribute [rw] connection_recording_preferences
    #   The set of preferences used for recording RDP connections in the
    #   requesting Amazon Web Services account and Amazon Web Services
    #   Region. This includes details such as which S3 bucket recordings are
    #   stored in.
    #   @return [Types::ConnectionRecordingPreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-guiconnect-2021-05-01/UpdateConnectionRecordingPreferencesResponse AWS API Documentation
    #
    class UpdateConnectionRecordingPreferencesResponse < Struct.new(
      :client_token,
      :connection_recording_preferences)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-guiconnect-2021-05-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

