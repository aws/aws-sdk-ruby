# frozen_string_literal: true

# This is generated code!

module Aws::SageMakerFeatureStoreRuntime
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have permission to perform an action.</p>
    # @!attribute message
    #   @return [String]
    class AccessForbidden < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The error that has occurred when attempting to retrieve a batch of Records.</p>
    # @!attribute feature_group_name
    #   <p>The name of the feature group that the record belongs to.</p>
    #   @return [String]
    # @!attribute record_identifier_value_as_string
    #   <p>The value for the <code>RecordIdentifier</code> in string format of a Record from a
    #               <code>FeatureGroup</code> that is causing an error when attempting to be
    #            retrieved.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code of an error that has occurred when attempting to retrieve a batch of
    #            Records. For more information on errors, see <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_feature_store_GetRecord.html#API_feature_store_GetRecord_Errors">Errors</a>.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message of an error that has occurred when attempting to retrieve a record in
    #            the batch.</p>
    #   @return [String]
    class BatchGetRecordError < Struct.new(
      nil,
      :feature_group_name,
      :record_identifier_value_as_string,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The identifier that identifies the batch of Records you are retrieving in a
    #          batch.</p>
    # @!attribute feature_group_name
    #   <p>The name or Amazon Resource Name (ARN) of the <code>FeatureGroup</code> containing the
    #            records you are retrieving in a batch.</p>
    #   @return [String]
    # @!attribute record_identifiers_value_as_string
    #   <p>The value for a list of record identifiers in string format.</p>
    #   @return [Array<String>]
    # @!attribute feature_names
    #   <p>List of names of Features to be retrieved. If not specified, the latest value for all
    #            the Features are returned.</p>
    #   @return [Array<String>]
    class BatchGetRecordIdentifier < Struct.new(
      nil,
      :feature_group_name,
      :record_identifiers_value_as_string,
      :feature_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifiers
    #   <p>A list containing the name or Amazon Resource Name (ARN) of the
    #               <code>FeatureGroup</code>, the list of names of <code>Feature</code>s to be retrieved,
    #            and the corresponding <code>RecordIdentifier</code> values as strings.</p>
    #   @return [Array<Types::BatchGetRecordIdentifier>]
    # @!attribute expiration_time_response
    #   <p>Parameter to request <code>ExpiresAt</code> in response. If <code>Enabled</code>,
    #               <code>BatchGetRecord</code> will return the value of <code>ExpiresAt</code>, if it is
    #            not null. If <code>Disabled</code> and null, <code>BatchGetRecord</code> will return
    #            null.</p>
    #   @return [String]
    class BatchGetRecordRequest < Struct.new(
      nil,
      :identifiers,
      :expiration_time_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute records
    #   <p>A list of Records you requested to be retrieved in batch.</p>
    #   @return [Array<Types::BatchGetRecordResultDetail>]
    # @!attribute errors
    #   <p>A list of errors that have occurred when retrieving a batch of Records.</p>
    #   @return [Array<Types::BatchGetRecordError>]
    # @!attribute unprocessed_identifiers
    #   <p>A unprocessed list of <code>FeatureGroup</code> names, with their corresponding
    #               <code>RecordIdentifier</code> value, and Feature name.</p>
    #   @return [Array<Types::BatchGetRecordIdentifier>]
    class BatchGetRecordResponse < Struct.new(
      nil,
      :records,
      :errors,
      :unprocessed_identifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output of records that have been retrieved in a batch.</p>
    # @!attribute feature_group_name
    #   <p>The <code>FeatureGroupName</code> containing Records you retrieved in a batch.</p>
    #   @return [String]
    # @!attribute record_identifier_value_as_string
    #   <p>The value of the record identifier in string format.</p>
    #   @return [String]
    # @!attribute record
    #   <p>The <code>Record</code> retrieved.</p>
    #   @return [Array<Types::FeatureValue>]
    # @!attribute expires_at
    #   <p>The <code>ExpiresAt</code> ISO string of the requested record.</p>
    #   @return [String]
    class BatchGetRecordResultDetail < Struct.new(
      nil,
      :feature_group_name,
      :record_identifier_value_as_string,
      :record,
      :expires_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute feature_group_name
    #   <p>The name or Amazon Resource Name (ARN) of the feature group to delete the record from.
    #         </p>
    #   @return [String]
    # @!attribute record_identifier_value_as_string
    #   <p>The value for the <code>RecordIdentifier</code> that uniquely identifies the record, in
    #            string format. </p>
    #   @return [String]
    # @!attribute event_time
    #   <p>Timestamp indicating when the deletion event occurred. <code>EventTime</code> can be
    #            used to query data at a certain point in time.</p>
    #   @return [String]
    # @!attribute target_stores
    #   <p>A list of stores from which you're deleting the record. By default, Feature Store
    #            deletes the record from all of the stores that you're using for the
    #               <code>FeatureGroup</code>.</p>
    #   @return [Array<String>]
    # @!attribute deletion_mode
    #   <p>The name of the deletion mode for deleting the record. By default, the deletion mode is
    #            set to <code>SoftDelete</code>.</p>
    #   @return [String]
    class DeleteRecordRequest < Struct.new(
      nil,
      :feature_group_name,
      :record_identifier_value_as_string,
      :event_time,
      :target_stores,
      :deletion_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The value associated with a feature.</p>
    # @!attribute feature_name
    #   <p>The name of a feature that a feature value corresponds to.</p>
    #   @return [String]
    # @!attribute value_as_string
    #   <p>The value in string format associated with a feature. Used when your
    #               <code>CollectionType</code> is <code>None</code>. Note that features types can be
    #               <code>String</code>, <code>Integral</code>, or <code>Fractional</code>. This value
    #            represents all three types as a string.</p>
    #   @return [String]
    # @!attribute value_as_string_list
    #   <p>The list of values in string format associated with a feature. Used when your
    #               <code>CollectionType</code> is a <code>List</code>, <code>Set</code>, or
    #               <code>Vector</code>. Note that features types can be <code>String</code>,
    #               <code>Integral</code>, or <code>Fractional</code>. These values represents all three
    #            types as a string.</p>
    #   @return [Array<String>]
    class FeatureValue < Struct.new(
      nil,
      :feature_name,
      :value_as_string,
      :value_as_string_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute feature_group_name
    #   <p>The name or Amazon Resource Name (ARN) of the feature group from which you want to
    #            retrieve a record.</p>
    #   @return [String]
    # @!attribute record_identifier_value_as_string
    #   <p>The value that corresponds to <code>RecordIdentifier</code> type and uniquely identifies
    #            the record in the <code>FeatureGroup</code>. </p>
    #   @return [String]
    # @!attribute feature_names
    #   <p>List of names of Features to be retrieved. If not specified, the latest value for all
    #            the Features are returned.</p>
    #   @return [Array<String>]
    # @!attribute expiration_time_response
    #   <p>Parameter to request <code>ExpiresAt</code> in response. If <code>Enabled</code>,
    #               <code>GetRecord</code> will return the value of <code>ExpiresAt</code>, if it is not
    #            null. If <code>Disabled</code> and null, <code>GetRecord</code> will return null.</p>
    #   @return [String]
    class GetRecordRequest < Struct.new(
      nil,
      :feature_group_name,
      :record_identifier_value_as_string,
      :feature_names,
      :expiration_time_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute record
    #   <p>The record you requested. A list of <code>FeatureValues</code>.</p>
    #   @return [Array<Types::FeatureValue>]
    # @!attribute expires_at
    #   <p>The <code>ExpiresAt</code> ISO string of the requested record.</p>
    #   @return [String]
    class GetRecordResponse < Struct.new(
      nil,
      :record,
      :expires_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal failure occurred. Try your request again. If the problem persists, contact
    #             Amazon Web Services customer support.</p>
    # @!attribute message
    #   @return [String]
    class InternalFailure < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute feature_group_name
    #   <p>The name or Amazon Resource Name (ARN) of the feature group that you want to insert the
    #            record into.</p>
    #   @return [String]
    # @!attribute record
    #   <p>List of FeatureValues to be inserted. This will be a full over-write. If you only want
    #            to update few of the feature values, do the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Use <code>GetRecord</code> to retrieve the latest record.</p>
    #               </li>
    #               <li>
    #                  <p>Update the record returned from <code>GetRecord</code>. </p>
    #               </li>
    #               <li>
    #                  <p>Use <code>PutRecord</code> to update feature values.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::FeatureValue>]
    # @!attribute target_stores
    #   <p>A list of stores to which you're adding the record. By default, Feature Store adds the
    #            record to all of the stores that you're using for the <code>FeatureGroup</code>.</p>
    #   @return [Array<String>]
    # @!attribute ttl_duration
    #   <p>Time to live duration, where the record is hard deleted after the expiration time is
    #            reached; <code>ExpiresAt</code> = <code>EventTime</code> + <code>TtlDuration</code>. For
    #            information on HardDelete, see the <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_feature_store_DeleteRecord.html">DeleteRecord</a> API in the Amazon SageMaker API Reference guide.</p>
    #   @return [Types::TtlDuration]
    class PutRecordRequest < Struct.new(
      nil,
      :feature_group_name,
      :record,
      :target_stores,
      :ttl_duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource that is required to perform an action was not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFound < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service is currently unavailable.</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailable < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Time to live duration, where the record is hard deleted after the expiration time is
    #          reached; <code>ExpiresAt</code> = <code>EventTime</code> + <code>TtlDuration</code>. For
    #          information on HardDelete, see the <a href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_feature_store_DeleteRecord.html">DeleteRecord</a> API in the Amazon SageMaker API Reference guide.</p>
    # @!attribute unit
    #   <p>
    #               <code>TtlDuration</code> time unit.</p>
    #   @return [String]
    # @!attribute value
    #   <p>
    #               <code>TtlDuration</code> time value.</p>
    #   @return [Integer]
    class TtlDuration < Struct.new(
      nil,
      :unit,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There was an error validating your request.</p>
    # @!attribute message
    #   @return [String]
    class ValidationError < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
