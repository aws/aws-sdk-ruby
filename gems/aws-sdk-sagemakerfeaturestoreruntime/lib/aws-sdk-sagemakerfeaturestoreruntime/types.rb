# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
