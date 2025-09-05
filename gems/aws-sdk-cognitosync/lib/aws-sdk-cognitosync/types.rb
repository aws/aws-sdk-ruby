# frozen_string_literal: true

# This is generated code!

module Aws::CognitoSync
  # This module contains the types returned by client operations.
  module Types

    # An exception thrown when a bulk publish operation is requested less than 24 hours after a previous bulk publish operation completed successfully.
    # @!attribute message
    #   The message associated with the AlreadyStreamedException exception.
    #   @return [String]
    class AlreadyStreamedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The input for the BulkPublish operation.
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #   @return [String]
    class BulkPublishRequest < Struct.new(
      :identity_pool_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The output for the BulkPublish operation.
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #   @return [String]
    class BulkPublishResponse < Struct.new(
      :identity_pool_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Configuration options for configure Cognito streams.
    # @!attribute stream_name
    #   The name of the Cognito stream to receive updates. This stream must be in the developers account and in the same region as the identity pool.
    #   @return [String]
    # @!attribute role_arn
    #   The ARN of the role Amazon Cognito can assume in order to publish to the stream. This role must grant access to Amazon Cognito (cognito-sync) to invoke PutRecord on your Cognito stream.
    #   @return [String]
    # @!attribute streaming_status
    #   Status of the Cognito streams. Valid values are:
    #         <p>ENABLED - Streaming of updates to identity pool is enabled.</p>
    #         <p>DISABLED - Streaming of updates to identity pool is disabled. Bulk publish will also fail if StreamingStatus is DISABLED.</p>
    #   @return [String]
    class CognitoStreams < Struct.new(
      :stream_name,
      :role_arn,
      :streaming_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown if there are parallel requests to modify a resource.</p>
    # @!attribute message
    #   <p>The message returned by a ConcurrentModicationException.</p>
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A collection of data for an identity pool. An identity pool can
    #       have multiple datasets. A dataset is per identity and can be general or associated with a
    #       particular entity in an application (like a saved game). Datasets are automatically created if
    #       they don't exist. Data is synced by dataset, and a dataset can hold up to 1MB of key-value
    #       pairs.
    # @!attribute identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #   @return [String]
    # @!attribute dataset_name
    #   A string of up to 128 characters. Allowed characters
    #         are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
    #   @return [String]
    # @!attribute creation_date
    #   Date on which the dataset was
    #         created.
    #   @return [Time]
    # @!attribute last_modified_date
    #   Date when the dataset was last
    #         modified.
    #   @return [Time]
    # @!attribute last_modified_by
    #   The device that made the last change to this
    #         dataset.
    #   @return [String]
    # @!attribute data_storage
    #   Total size in bytes of the records in this
    #         dataset.
    #   @return [Integer]
    # @!attribute num_records
    #   Number of records in this dataset.
    #   @return [Integer]
    class Dataset < Struct.new(
      :identity_id,
      :dataset_name,
      :creation_date,
      :last_modified_date,
      :last_modified_by,
      :data_storage,
      :num_records,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A request to delete the specific
    #       dataset.
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #   @return [String]
    # @!attribute identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #   @return [String]
    # @!attribute dataset_name
    #   A string of up to 128 characters.
    #         Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.'
    #         (dot).
    #   @return [String]
    class DeleteDatasetRequest < Struct.new(
      :identity_pool_id,
      :identity_id,
      :dataset_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Response to a successful DeleteDataset
    #       request.
    # @!attribute dataset
    #   A collection of data for an identity pool.
    #         An identity pool can have multiple datasets. A dataset is per identity and can be general or
    #         associated with a particular entity in an application (like a saved game). Datasets are
    #         automatically created if they don't exist. Data is synced by dataset, and a dataset can hold
    #         up to 1MB of key-value pairs.
    #   @return [Types::Dataset]
    class DeleteDatasetResponse < Struct.new(
      :dataset,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A request for meta data about a dataset (creation
    #       date, number of records, size) by owner and dataset name.
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #   @return [String]
    # @!attribute identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #   @return [String]
    # @!attribute dataset_name
    #   A string of up to 128 characters.
    #         Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.'
    #         (dot).
    #   @return [String]
    class DescribeDatasetRequest < Struct.new(
      :identity_pool_id,
      :identity_id,
      :dataset_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Response to a successful DescribeDataset
    #       request.
    # @!attribute dataset
    #   Meta data for a collection of data for an
    #         identity. An identity can have multiple datasets. A dataset can be general or associated with
    #         a particular entity in an application (like a saved game). Datasets are automatically created
    #         if they don't exist. Data is synced by dataset, and a dataset can hold up to 1MB of key-value
    #         pairs.
    #   @return [Types::Dataset]
    class DescribeDatasetResponse < Struct.new(
      :dataset,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A request for usage information about
    #       the identity pool.
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for
    #         example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID
    #         generation is unique within a region.
    #   @return [String]
    class DescribeIdentityPoolUsageRequest < Struct.new(
      :identity_pool_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Response to a successful
    #       DescribeIdentityPoolUsage request.
    # @!attribute identity_pool_usage
    #   Information about the
    #         usage of the identity pool.
    #   @return [Types::IdentityPoolUsage]
    class DescribeIdentityPoolUsageResponse < Struct.new(
      :identity_pool_usage,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A request for information about the usage of
    #       an identity pool.
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for
    #         example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID
    #         generation is unique within a region.
    #   @return [String]
    # @!attribute identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #   @return [String]
    class DescribeIdentityUsageRequest < Struct.new(
      :identity_pool_id,
      :identity_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The response to a successful
    #       DescribeIdentityUsage request.
    # @!attribute identity_usage
    #   Usage information for the
    #         identity.
    #   @return [Types::IdentityUsage]
    class DescribeIdentityUsageResponse < Struct.new(
      :identity_usage,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # An exception thrown when there is an IN_PROGRESS bulk publish operation for the given identity pool.
    # @!attribute message
    #   The message associated with the DuplicateRequestException exception.
    #   @return [String]
    class DuplicateRequestException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The input for the GetBulkPublishDetails operation.
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #   @return [String]
    class GetBulkPublishDetailsRequest < Struct.new(
      :identity_pool_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The output for the GetBulkPublishDetails operation.
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #   @return [String]
    # @!attribute bulk_publish_start_time
    #   The date/time at which the last bulk publish was initiated.
    #   @return [Time]
    # @!attribute bulk_publish_complete_time
    #   If BulkPublishStatus is SUCCEEDED, the time the last bulk publish operation completed.
    #   @return [Time]
    # @!attribute bulk_publish_status
    #   Status of the last bulk publish operation, valid values are: 
    #         <p>NOT_STARTED - No bulk publish has been requested for this identity pool</p>
    #         <p>IN_PROGRESS - Data is being published to the configured stream</p>
    #         <p>SUCCEEDED - All data for the identity pool has been published to the configured stream</p>
    #         <p>FAILED - Some portion of the data has failed to publish, check FailureMessage for the cause.</p>
    #   @return [String]
    # @!attribute failure_message
    #   If BulkPublishStatus is FAILED this field will contain the error message that caused the bulk publish to fail.
    #   @return [String]
    class GetBulkPublishDetailsResponse < Struct.new(
      :identity_pool_id,
      :bulk_publish_start_time,
      :bulk_publish_complete_time,
      :bulk_publish_status,
      :failure_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A request for a list of the configured Cognito Events</p>
    # @!attribute identity_pool_id
    #   <p>The Cognito Identity Pool ID for the request</p>
    #   @return [String]
    class GetCognitoEventsRequest < Struct.new(
      :identity_pool_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the GetCognitoEvents request</p>
    # @!attribute events
    #   <p>The Cognito Events returned from the GetCognitoEvents request</p>
    #   @return [Hash<String, String>]
    class GetCognitoEventsResponse < Struct.new(
      :events,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the GetIdentityPoolConfiguration operation.</p>
    # @!attribute identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito. This is the ID of the pool for which to return a configuration.</p>
    #   @return [String]
    class GetIdentityPoolConfigurationRequest < Struct.new(
      :identity_pool_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The output for the GetIdentityPoolConfiguration operation.</p>
    # @!attribute identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito.</p>
    #   @return [String]
    # @!attribute push_sync
    #   <p>Options to apply to this identity pool for push synchronization.</p>
    #   @return [Types::PushSync]
    # @!attribute cognito_streams
    #   Options to apply to this identity pool for Amazon Cognito streams.
    #   @return [Types::CognitoStreams]
    class GetIdentityPoolConfigurationResponse < Struct.new(
      :identity_pool_id,
      :push_sync,
      :cognito_streams,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Usage information for the identity
    #       pool.
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #   @return [String]
    # @!attribute sync_sessions_count
    #   Number of sync sessions for the
    #         identity pool.
    #   @return [Integer]
    # @!attribute data_storage
    #   Data storage information for the identity
    #         pool.
    #   @return [Integer]
    # @!attribute last_modified_date
    #   Date on which the identity pool was
    #         last modified.
    #   @return [Time]
    class IdentityPoolUsage < Struct.new(
      :identity_pool_id,
      :sync_sessions_count,
      :data_storage,
      :last_modified_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Usage information for the identity.
    # @!attribute identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #   @return [String]
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #   @return [String]
    # @!attribute last_modified_date
    #   Date on which the identity was last
    #         modified.
    #   @return [Time]
    # @!attribute dataset_count
    #   Number of datasets for the
    #         identity.
    #   @return [Integer]
    # @!attribute data_storage
    #   Total data storage for this
    #         identity.
    #   @return [Integer]
    class IdentityUsage < Struct.new(
      :identity_id,
      :identity_pool_id,
      :last_modified_date,
      :dataset_count,
      :data_storage,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:dataset_count] = 0 unless options.key?(:dataset_count)
        super
      end
    end

    # Indicates an internal service
    #       error.
    # @!attribute message
    #   Message returned by
    #         InternalErrorException.
    #   @return [String]
    class InternalErrorException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   Message returned by
    #         InvalidConfigurationException.
    #   @return [String]
    class InvalidConfigurationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The AWS Lambda function returned invalid output or an exception.</p>
    # @!attribute message
    #   <p>A message returned when an InvalidLambdaFunctionOutputException occurs</p>
    #   @return [String]
    class InvalidLambdaFunctionOutputException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Thrown when a request parameter does not comply
    #       with the associated constraints.
    # @!attribute message
    #   Message returned by
    #         InvalidParameterException.
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>AWS Lambda throttled your account, please contact AWS Support</p>
    # @!attribute message
    #   <p>A message returned when an LambdaThrottledException is thrown</p>
    #   @return [String]
    class LambdaThrottledException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Thrown when the limit on the number of objects or
    #       operations has been exceeded.
    # @!attribute message
    #   Message returned by
    #         LimitExceededException.
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Request for a list of datasets for an
    #       identity.
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #   @return [String]
    # @!attribute identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #   @return [String]
    # @!attribute next_token
    #   A pagination token for obtaining the next
    #         page of results.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of results to be
    #         returned.
    #   @return [Integer]
    class ListDatasetsRequest < Struct.new(
      :identity_pool_id,
      :identity_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Returned for a successful ListDatasets
    #       request.
    # @!attribute datasets
    #   A set of datasets.
    #   @return [Array<Types::Dataset>]
    # @!attribute count
    #   Number of datasets returned.
    #   @return [Integer]
    # @!attribute next_token
    #   A pagination token for obtaining the next
    #         page of results.
    #   @return [String]
    class ListDatasetsResponse < Struct.new(
      :datasets,
      :count,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:count] = 0 unless options.key?(:count)
        super
      end
    end

    # A request for usage information on an
    #       identity pool.
    # @!attribute next_token
    #   A pagination token for obtaining
    #         the next page of results.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of results to
    #         be returned.
    #   @return [Integer]
    class ListIdentityPoolUsageRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Returned for a successful
    #       ListIdentityPoolUsage request.
    # @!attribute identity_pool_usages
    #   Usage information for
    #         the identity pools.
    #   @return [Array<Types::IdentityPoolUsage>]
    # @!attribute max_results
    #   The maximum number of results to
    #         be returned.
    #   @return [Integer]
    # @!attribute count
    #   Total number of identities for the
    #         identity pool.
    #   @return [Integer]
    # @!attribute next_token
    #   A pagination token for obtaining
    #         the next page of results.
    #   @return [String]
    class ListIdentityPoolUsageResponse < Struct.new(
      :identity_pool_usages,
      :max_results,
      :count,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_results] = 0 unless options.key?(:max_results)
        options[:count] = 0 unless options.key?(:count)
        super
      end
    end

    # A request for a list of records.
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #   @return [String]
    # @!attribute identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #   @return [String]
    # @!attribute dataset_name
    #   A string of up to 128 characters. Allowed
    #         characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
    #   @return [String]
    # @!attribute last_sync_count
    #   The last server sync count for this
    #         record.
    #   @return [Integer]
    # @!attribute next_token
    #   A pagination token for obtaining the next
    #         page of results.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of results to be
    #         returned.
    #   @return [Integer]
    # @!attribute sync_session_token
    #   A token containing a session ID,
    #         identity ID, and expiration.
    #   @return [String]
    class ListRecordsRequest < Struct.new(
      :identity_pool_id,
      :identity_id,
      :dataset_name,
      :last_sync_count,
      :next_token,
      :max_results,
      :sync_session_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Returned for a successful
    #       ListRecordsRequest.
    # @!attribute records
    #   A list of all records.
    #   @return [Array<Types::Record>]
    # @!attribute next_token
    #   A pagination token for obtaining the next
    #         page of results.
    #   @return [String]
    # @!attribute count
    #   Total number of records.
    #   @return [Integer]
    # @!attribute dataset_sync_count
    #   Server sync count for this
    #         dataset.
    #   @return [Integer]
    # @!attribute last_modified_by
    #   The user/device that made the last
    #         change to this record.
    #   @return [String]
    # @!attribute merged_dataset_names
    #   Names of merged
    #         datasets.
    #   @return [Array<String>]
    # @!attribute dataset_exists
    #   Indicates whether the dataset
    #         exists.
    #   @return [Boolean]
    # @!attribute dataset_deleted_after_requested_sync_count
    #   A boolean value
    #         specifying whether to delete the dataset locally.
    #   @return [Boolean]
    # @!attribute sync_session_token
    #   A token containing a session ID,
    #         identity ID, and expiration.
    #   @return [String]
    class ListRecordsResponse < Struct.new(
      :records,
      :next_token,
      :count,
      :dataset_sync_count,
      :last_modified_by,
      :merged_dataset_names,
      :dataset_exists,
      :dataset_deleted_after_requested_sync_count,
      :sync_session_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:count] = 0 unless options.key?(:count)
        options[:dataset_exists] = false unless options.key?(:dataset_exists)
        options[:dataset_deleted_after_requested_sync_count] = false unless options.key?(:dataset_deleted_after_requested_sync_count)
        super
      end
    end

    # Thrown when a user is not authorized to access the
    #       requested resource.
    # @!attribute message
    #   The message returned by a
    #         NotAuthorizedException.
    #   @return [String]
    class NotAuthorizedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration options to be applied to the identity pool.</p>
    # @!attribute application_arns
    #   <p>List of SNS platform application ARNs that could be used by clients.</p>
    #   @return [Array<String>]
    # @!attribute role_arn
    #   <p>A role configured to allow Cognito to call SNS on behalf of the developer.</p>
    #   @return [String]
    class PushSync < Struct.new(
      :application_arns,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The basic data structure of a dataset.
    # @!attribute key
    #   The key for the record.
    #   @return [String]
    # @!attribute value
    #   The value for the record.
    #   @return [String]
    # @!attribute sync_count
    #   The server sync count for this record.
    #   @return [Integer]
    # @!attribute last_modified_date
    #   The date on which the record was last
    #         modified.
    #   @return [Time]
    # @!attribute last_modified_by
    #   The user/device that made the last change to this
    #         record.
    #   @return [String]
    # @!attribute device_last_modified_date
    #   The last modified date of the client
    #         device.
    #   @return [Time]
    class Record < Struct.new(
      :key,
      :value,
      :sync_count,
      :last_modified_date,
      :last_modified_by,
      :device_last_modified_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # An update operation for a record.
    # @!attribute op
    #   An operation, either replace or remove.
    #   @return [String]
    # @!attribute key
    #   The key associated with the record patch.
    #   @return [String]
    # @!attribute value
    #   The value associated with the record
    #         patch.
    #   @return [String]
    # @!attribute sync_count
    #   Last known server sync count for this record. Set
    #         to 0 if unknown.
    #   @return [Integer]
    # @!attribute device_last_modified_date
    #   The last modified date of the client
    #         device.
    #   @return [Time]
    class RecordPatch < Struct.new(
      :op,
      :key,
      :value,
      :sync_count,
      :device_last_modified_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A request to RegisterDevice.</p>
    # @!attribute identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito. Here, the ID of the pool that the identity belongs to.</p>
    #   @return [String]
    # @!attribute identity_id
    #   <p>The unique ID for this identity.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The SNS platform type (e.g. GCM, SDM, APNS, APNS_SANDBOX).</p>
    #   @return [String]
    # @!attribute token
    #   <p>The push token.</p>
    #   @return [String]
    class RegisterDeviceRequest < Struct.new(
      :identity_pool_id,
      :identity_id,
      :platform,
      :token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Response to a RegisterDevice request.</p>
    # @!attribute device_id
    #   <p>The unique ID generated for this device by Cognito.</p>
    #   @return [String]
    class RegisterDeviceResponse < Struct.new(
      :device_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Thrown if an update can't be applied because
    #       the resource was changed by another call and this would result in a conflict.
    # @!attribute message
    #   The message returned by a
    #         ResourceConflictException.
    #   @return [String]
    class ResourceConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Thrown if the resource doesn't
    #       exist.
    # @!attribute message
    #   Message returned by a
    #         ResourceNotFoundException.
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A request to configure Cognito Events"</p>"
    # @!attribute identity_pool_id
    #   <p>The Cognito Identity Pool to use when configuring Cognito Events</p>
    #   @return [String]
    # @!attribute events
    #   <p>The events to configure</p>
    #   @return [Hash<String, String>]
    class SetCognitoEventsRequest < Struct.new(
      :identity_pool_id,
      :events,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the SetIdentityPoolConfiguration operation.</p>
    # @!attribute identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito. This is the ID of the pool to modify.</p>
    #   @return [String]
    # @!attribute push_sync
    #   <p>Options to apply to this identity pool for push synchronization.</p>
    #   @return [Types::PushSync]
    # @!attribute cognito_streams
    #   Options to apply to this identity pool for Amazon Cognito streams.
    #   @return [Types::CognitoStreams]
    class SetIdentityPoolConfigurationRequest < Struct.new(
      :identity_pool_id,
      :push_sync,
      :cognito_streams,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The output for the SetIdentityPoolConfiguration operation</p>
    # @!attribute identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito.</p>
    #   @return [String]
    # @!attribute push_sync
    #   <p>Options to apply to this identity pool for push synchronization.</p>
    #   @return [Types::PushSync]
    # @!attribute cognito_streams
    #   Options to apply to this identity pool for Amazon Cognito streams.
    #   @return [Types::CognitoStreams]
    class SetIdentityPoolConfigurationResponse < Struct.new(
      :identity_pool_id,
      :push_sync,
      :cognito_streams,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A request to SubscribeToDatasetRequest.</p>
    # @!attribute identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito. The ID of the pool to which the identity belongs.</p>
    #   @return [String]
    # @!attribute identity_id
    #   <p>Unique ID for this identity.</p>
    #   @return [String]
    # @!attribute dataset_name
    #   <p>The name of the dataset to subcribe to.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The unique ID generated for this device by Cognito.</p>
    #   @return [String]
    class SubscribeToDatasetRequest < Struct.new(
      :identity_pool_id,
      :identity_id,
      :dataset_name,
      :device_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Response to a SubscribeToDataset request.</p>
    class SubscribeToDatasetResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Thrown if the request is
    #       throttled.
    # @!attribute message
    #   Message returned by a
    #         TooManyRequestsException.
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A request to UnsubscribeFromDataset.</p>
    # @!attribute identity_pool_id
    #   <p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
    #            Amazon Cognito. The ID of the pool to which this identity belongs.</p>
    #   @return [String]
    # @!attribute identity_id
    #   <p>Unique ID for this identity.</p>
    #   @return [String]
    # @!attribute dataset_name
    #   <p>The name of the dataset from which to unsubcribe.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The unique ID generated for this device by Cognito.</p>
    #   @return [String]
    class UnsubscribeFromDatasetRequest < Struct.new(
      :identity_pool_id,
      :identity_id,
      :dataset_name,
      :device_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Response to an UnsubscribeFromDataset request.</p>
    class UnsubscribeFromDatasetResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A request to post updates to records or add and
    #       delete records for a dataset and user.
    # @!attribute identity_pool_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #   @return [String]
    # @!attribute identity_id
    #   A name-spaced GUID (for example,
    #         us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
    #         unique within a region.
    #   @return [String]
    # @!attribute dataset_name
    #   A string of up to 128 characters.
    #         Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.'
    #         (dot).
    #   @return [String]
    # @!attribute device_id
    #   <p>The unique ID generated for this device by Cognito.</p>
    #   @return [String]
    # @!attribute record_patches
    #   A list of patch
    #         operations.
    #   @return [Array<Types::RecordPatch>]
    # @!attribute sync_session_token
    #   The SyncSessionToken returned by a
    #         previous call to ListRecords for this dataset and identity.
    #   @return [String]
    # @!attribute client_context
    #   Intended to supply a device ID that
    #         will populate the lastModifiedBy field referenced in other methods. The
    #            ClientContext field is not yet implemented.
    #   @return [String]
    class UpdateRecordsRequest < Struct.new(
      :identity_pool_id,
      :identity_id,
      :dataset_name,
      :device_id,
      :record_patches,
      :sync_session_token,
      :client_context,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Returned for a successful
    #       UpdateRecordsRequest.
    # @!attribute records
    #   A list of records that have been
    #         updated.
    #   @return [Array<Types::Record>]
    class UpdateRecordsResponse < Struct.new(
      :records,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
