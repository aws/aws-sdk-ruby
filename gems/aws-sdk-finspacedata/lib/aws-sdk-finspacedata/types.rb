# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FinSpaceData
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A changeset is unit of data in a dataset.
    #
    # @!attribute [rw] id
    #   Unique identifier for a changeset.
    #   @return [String]
    #
    # @!attribute [rw] changeset_arn
    #   The ARN identifier of the changeset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier for the FinSpace dataset in which the
    #   changeset is created.
    #   @return [String]
    #
    # @!attribute [rw] change_type
    #   Change type indicates how a changeset is applied to a dataset.
    #
    #   * `REPLACE` - Changeset is considered as a replacement to all prior
    #     loaded changesets.
    #
    #   * `APPEND` - Changeset is considered as an addition to the end of
    #     all prior loaded changesets.
    #
    #   * `MODIFY` - Changeset is considered as a replacement to a specific
    #     prior ingested changeset.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   Type of the data source from which the files to create the changeset
    #   are sourced.
    #
    #   * `S3` - Amazon S3.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] source_params
    #   Source path from which the files to create the changeset are
    #   sourced.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] format_type
    #   Format type of the input files loaded into the changeset.
    #   @return [String]
    #
    # @!attribute [rw] format_params
    #   Structure of the source file(s).
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] create_timestamp
    #   The timestamp at which the changeset was created in FinSpace.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of changeset creation operation.
    #   @return [String]
    #
    # @!attribute [rw] error_info
    #   The structure with error messages.
    #   @return [Types::ErrorInfo]
    #
    # @!attribute [rw] changeset_labels
    #   Tags associated with the changeset.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updates_changeset_id
    #   Unique identifier of the changeset that is updated.
    #   @return [String]
    #
    # @!attribute [rw] updated_by_changeset_id
    #   Unique identifier of the changeset that is updated a changeset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ChangesetInfo AWS API Documentation
    #
    class ChangesetInfo < Struct.new(
      :id,
      :changeset_arn,
      :dataset_id,
      :change_type,
      :source_type,
      :source_params,
      :format_type,
      :format_params,
      :create_timestamp,
      :status,
      :error_info,
      :changeset_labels,
      :updates_changeset_id,
      :updated_by_changeset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateChangesetRequest
    #   data as a hash:
    #
    #       {
    #         dataset_id: "IdType", # required
    #         change_type: "REPLACE", # required, accepts REPLACE, APPEND, MODIFY
    #         source_type: "S3", # required, accepts S3
    #         source_params: { # required
    #           "stringMapKey" => "stringMapValue",
    #         },
    #         format_type: "CSV", # accepts CSV, JSON, PARQUET, XML
    #         format_params: {
    #           "stringMapKey" => "stringMapValue",
    #         },
    #         tags: {
    #           "stringMapKey" => "stringMapValue",
    #         },
    #       }
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier for the FinSpace dataset in which the
    #   changeset will be created.
    #   @return [String]
    #
    # @!attribute [rw] change_type
    #   Option to indicate how a changeset will be applied to a dataset.
    #
    #   * `REPLACE` - Changeset will be considered as a replacement to all
    #     prior loaded changesets.
    #
    #   * `APPEND` - Changeset will be considered as an addition to the end
    #     of all prior loaded changesets.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   Type of the data source from which the files to create the changeset
    #   will be sourced.
    #
    #   * `S3` - Amazon S3.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] source_params
    #   Source path from which the files to create the changeset will be
    #   sourced.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] format_type
    #   Format type of the input files being loaded into the changeset.
    #   @return [String]
    #
    # @!attribute [rw] format_params
    #   Options that define the structure of the source file(s).
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   Metadata tags to apply to this changeset.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/CreateChangesetRequest AWS API Documentation
    #
    class CreateChangesetRequest < Struct.new(
      :dataset_id,
      :change_type,
      :source_type,
      :source_params,
      :format_type,
      :format_params,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] changeset
    #   Returns the changeset details.
    #   @return [Types::ChangesetInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/CreateChangesetResponse AWS API Documentation
    #
    class CreateChangesetResponse < Struct.new(
      :changeset)
      SENSITIVE = []
      include Aws::Structure
    end

    # Set short term API credentials.
    #
    # @!attribute [rw] access_key_id
    #   The access key identifier.
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   The access key.
    #   @return [String]
    #
    # @!attribute [rw] session_token
    #   The session token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/Credentials AWS API Documentation
    #
    class Credentials < Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error message.
    #
    # @!attribute [rw] error_message
    #   The text of the error message.
    #   @return [String]
    #
    # @!attribute [rw] error_category
    #   The category of the error.
    #
    #   * `VALIDATION` -The inputs to this request are invalid.
    #
    #   * `SERVICE_QUOTA_EXCEEDED` - Service quotas have been exceeded.
    #     Please contact AWS support to increase quotas.
    #
    #   * `ACCESS_DENIED` - Missing required permission to perform this
    #     request.
    #
    #   * `RESOURCE_NOT_FOUND` - One or more inputs to this request were not
    #     found.
    #
    #   * `THROTTLING` - The system temporarily lacks sufficient resources
    #     to process the request.
    #
    #   * `INTERNAL_SERVICE_EXCEPTION` - An internal service error has
    #     occurred.
    #
    #   * `CANCELLED` - A user recoverable error has occurred.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ErrorInfo AWS API Documentation
    #
    class ErrorInfo < Struct.new(
      :error_message,
      :error_category)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetProgrammaticAccessCredentialsRequest
    #   data as a hash:
    #
    #       {
    #         duration_in_minutes: 1,
    #         environment_id: "IdType", # required
    #       }
    #
    # @!attribute [rw] duration_in_minutes
    #   The time duration in which the credentials remain valid.
    #   @return [Integer]
    #
    # @!attribute [rw] environment_id
    #   The habanero environment identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetProgrammaticAccessCredentialsRequest AWS API Documentation
    #
    class GetProgrammaticAccessCredentialsRequest < Struct.new(
      :duration_in_minutes,
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] credentials
    #   Returns the programmatic credentials.
    #   @return [Types::Credentials]
    #
    # @!attribute [rw] duration_in_minutes
    #   Returns the duration in which the credentials will remain valid.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetProgrammaticAccessCredentialsResponse AWS API Documentation
    #
    class GetProgrammaticAccessCredentialsResponse < Struct.new(
      :credentials,
      :duration_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetWorkingLocationRequest
    #   data as a hash:
    #
    #       {
    #         location_type: "INGESTION", # accepts INGESTION, SAGEMAKER
    #       }
    #
    # @!attribute [rw] location_type
    #   Specify the type of the working location.
    #
    #   * `SAGEMAKER` - Use the Amazon S3 location as a temporary location
    #     to store data content when working with FinSpace Notebooks that
    #     run on SageMaker studio.
    #
    #   * `INGESTION` - Use the Amazon S3 location as a staging location to
    #     copy your data content and then use the location with the
    #     changeset creation operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetWorkingLocationRequest AWS API Documentation
    #
    class GetWorkingLocationRequest < Struct.new(
      :location_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] s3_uri
    #   Returns the Amazon S3 URI for the working location.
    #   @return [String]
    #
    # @!attribute [rw] s3_path
    #   Returns the Amazon S3 Path for the working location.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   Returns the Amazon S3 bucket name for the working location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/GetWorkingLocationResponse AWS API Documentation
    #
    class GetWorkingLocationResponse < Struct.new(
      :s3_uri,
      :s3_path,
      :s3_bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more resources can't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Aws::EmptyStructure; end

    # The input fails to satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2020-07-13/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
