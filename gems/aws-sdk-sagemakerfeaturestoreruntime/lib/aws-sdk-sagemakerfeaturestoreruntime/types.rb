# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SageMakerFeatureStoreRuntime
  module Types

    # You do not have permission to perform an action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-featurestore-runtime-2020-07-01/AccessForbidden AWS API Documentation
    #
    class AccessForbidden < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The error that has occurred when attempting to retrieve a batch of
    # Records.
    #
    # @!attribute [rw] feature_group_name
    #   The name of the feature group that the record belongs to.
    #   @return [String]
    #
    # @!attribute [rw] record_identifier_value_as_string
    #   The value for the `RecordIdentifier` in string format of a Record
    #   from a `FeatureGroup` that is causing an error when attempting to be
    #   retrieved.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code of an error that has occured when attempting to
    #   retrieve a batch of Records. For more information on errors, see [
    #   Errors][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_feature_store_GetRecord.html#API_feature_store_GetRecord_Errors
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message of an error that has occured when attempting to
    #   retrieve a record in the batch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-featurestore-runtime-2020-07-01/BatchGetRecordError AWS API Documentation
    #
    class BatchGetRecordError < Struct.new(
      :feature_group_name,
      :record_identifier_value_as_string,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The identifier that identifies the batch of Records you are retrieving
    # in a batch.
    #
    # @note When making an API call, you may pass BatchGetRecordIdentifier
    #   data as a hash:
    #
    #       {
    #         feature_group_name: "FeatureGroupName", # required
    #         record_identifiers_value_as_string: ["ValueAsString"], # required
    #         feature_names: ["FeatureName"],
    #       }
    #
    # @!attribute [rw] feature_group_name
    #   A `FeatureGroupName` containing Records you are retrieving in a
    #   batch.
    #   @return [String]
    #
    # @!attribute [rw] record_identifiers_value_as_string
    #   The value for a list of record identifiers in string format.
    #   @return [Array<String>]
    #
    # @!attribute [rw] feature_names
    #   List of names of Features to be retrieved. If not specified, the
    #   latest value for all the Features are returned.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-featurestore-runtime-2020-07-01/BatchGetRecordIdentifier AWS API Documentation
    #
    class BatchGetRecordIdentifier < Struct.new(
      :feature_group_name,
      :record_identifiers_value_as_string,
      :feature_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetRecordRequest
    #   data as a hash:
    #
    #       {
    #         identifiers: [ # required
    #           {
    #             feature_group_name: "FeatureGroupName", # required
    #             record_identifiers_value_as_string: ["ValueAsString"], # required
    #             feature_names: ["FeatureName"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] identifiers
    #   A list of `FeatureGroup` names, with their corresponding
    #   `RecordIdentifier` value, and Feature name that have been requested
    #   to be retrieved in batch.
    #   @return [Array<Types::BatchGetRecordIdentifier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-featurestore-runtime-2020-07-01/BatchGetRecordRequest AWS API Documentation
    #
    class BatchGetRecordRequest < Struct.new(
      :identifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] records
    #   A list of Records you requested to be retrieved in batch.
    #   @return [Array<Types::BatchGetRecordResultDetail>]
    #
    # @!attribute [rw] errors
    #   A list of errors that have occured when retrieving a batch of
    #   Records.
    #   @return [Array<Types::BatchGetRecordError>]
    #
    # @!attribute [rw] unprocessed_identifiers
    #   A unprocessed list of `FeatureGroup` names, with their corresponding
    #   `RecordIdentifier` value, and Feature name.
    #   @return [Array<Types::BatchGetRecordIdentifier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-featurestore-runtime-2020-07-01/BatchGetRecordResponse AWS API Documentation
    #
    class BatchGetRecordResponse < Struct.new(
      :records,
      :errors,
      :unprocessed_identifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output of Records that have been retrieved in a batch.
    #
    # @!attribute [rw] feature_group_name
    #   The `FeatureGroupName` containing Records you retrieved in a batch.
    #   @return [String]
    #
    # @!attribute [rw] record_identifier_value_as_string
    #   The value of the record identifer in string format.
    #   @return [String]
    #
    # @!attribute [rw] record
    #   The `Record` retrieved.
    #   @return [Array<Types::FeatureValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-featurestore-runtime-2020-07-01/BatchGetRecordResultDetail AWS API Documentation
    #
    class BatchGetRecordResultDetail < Struct.new(
      :feature_group_name,
      :record_identifier_value_as_string,
      :record)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRecordRequest
    #   data as a hash:
    #
    #       {
    #         feature_group_name: "FeatureGroupName", # required
    #         record_identifier_value_as_string: "ValueAsString", # required
    #         event_time: "ValueAsString", # required
    #       }
    #
    # @!attribute [rw] feature_group_name
    #   The name of the feature group to delete the record from.
    #   @return [String]
    #
    # @!attribute [rw] record_identifier_value_as_string
    #   The value for the `RecordIdentifier` that uniquely identifies the
    #   record, in string format.
    #   @return [String]
    #
    # @!attribute [rw] event_time
    #   Timestamp indicating when the deletion event occurred. `EventTime`
    #   can be used to query data at a certain point in time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-featurestore-runtime-2020-07-01/DeleteRecordRequest AWS API Documentation
    #
    class DeleteRecordRequest < Struct.new(
      :feature_group_name,
      :record_identifier_value_as_string,
      :event_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value associated with a feature.
    #
    # @note When making an API call, you may pass FeatureValue
    #   data as a hash:
    #
    #       {
    #         feature_name: "FeatureName", # required
    #         value_as_string: "ValueAsString", # required
    #       }
    #
    # @!attribute [rw] feature_name
    #   The name of a feature that a feature value corresponds to.
    #   @return [String]
    #
    # @!attribute [rw] value_as_string
    #   The value associated with a feature, in string format. Note that
    #   features types can be String, Integral, or Fractional. This value
    #   represents all three types as a string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-featurestore-runtime-2020-07-01/FeatureValue AWS API Documentation
    #
    class FeatureValue < Struct.new(
      :feature_name,
      :value_as_string)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRecordRequest
    #   data as a hash:
    #
    #       {
    #         feature_group_name: "FeatureGroupName", # required
    #         record_identifier_value_as_string: "ValueAsString", # required
    #         feature_names: ["FeatureName"],
    #       }
    #
    # @!attribute [rw] feature_group_name
    #   The name of the feature group in which you want to put the records.
    #   @return [String]
    #
    # @!attribute [rw] record_identifier_value_as_string
    #   The value that corresponds to `RecordIdentifier` type and uniquely
    #   identifies the record in the `FeatureGroup`.
    #   @return [String]
    #
    # @!attribute [rw] feature_names
    #   List of names of Features to be retrieved. If not specified, the
    #   latest value for all the Features are returned.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-featurestore-runtime-2020-07-01/GetRecordRequest AWS API Documentation
    #
    class GetRecordRequest < Struct.new(
      :feature_group_name,
      :record_identifier_value_as_string,
      :feature_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] record
    #   The record you requested. A list of `FeatureValues`.
    #   @return [Array<Types::FeatureValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-featurestore-runtime-2020-07-01/GetRecordResponse AWS API Documentation
    #
    class GetRecordResponse < Struct.new(
      :record)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal failure occurred. Try your request again. If the problem
    # persists, contact AWS customer support.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-featurestore-runtime-2020-07-01/InternalFailure AWS API Documentation
    #
    class InternalFailure < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutRecordRequest
    #   data as a hash:
    #
    #       {
    #         feature_group_name: "FeatureGroupName", # required
    #         record: [ # required
    #           {
    #             feature_name: "FeatureName", # required
    #             value_as_string: "ValueAsString", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] feature_group_name
    #   The name of the feature group that you want to insert the record
    #   into.
    #   @return [String]
    #
    # @!attribute [rw] record
    #   List of FeatureValues to be inserted. This will be a full
    #   over-write. If you only want to update few of the feature values, do
    #   the following:
    #
    #   * Use `GetRecord` to retrieve the latest record.
    #
    #   * Update the record returned from `GetRecord`.
    #
    #   * Use `PutRecord` to update feature values.
    #   @return [Array<Types::FeatureValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-featurestore-runtime-2020-07-01/PutRecordRequest AWS API Documentation
    #
    class PutRecordRequest < Struct.new(
      :feature_group_name,
      :record)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource that is required to perform an action was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-featurestore-runtime-2020-07-01/ResourceNotFound AWS API Documentation
    #
    class ResourceNotFound < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is currently unavailable.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-featurestore-runtime-2020-07-01/ServiceUnavailable AWS API Documentation
    #
    class ServiceUnavailable < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was an error validating your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-featurestore-runtime-2020-07-01/ValidationError AWS API Documentation
    #
    class ValidationError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
