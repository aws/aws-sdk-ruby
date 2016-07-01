# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module CognitoSync
    module Types

      # The input for the BulkPublish operation.
      # @note When making an API call, pass BulkPublishRequest
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #       }
      class BulkPublishRequest < Aws::Structure.new(
        :identity_pool_id)

        # @!attribute [rw] identity_pool_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. GUID generation is unique within a region.
        #   @return [String]

      end

      # The output for the BulkPublish operation.
      class BulkPublishResponse < Aws::Structure.new(
        :identity_pool_id)

        # @!attribute [rw] identity_pool_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. GUID generation is unique within a region.
        #   @return [String]

      end

      # Configuration options for configure Cognito streams.
      # @note When making an API call, pass CognitoStreams
      #   data as a hash:
      #
      #       {
      #         stream_name: "StreamName",
      #         role_arn: "AssumeRoleArn",
      #         streaming_status: "ENABLED", # accepts ENABLED, DISABLED
      #       }
      class CognitoStreams < Aws::Structure.new(
        :stream_name,
        :role_arn,
        :streaming_status)

        # @!attribute [rw] stream_name
        #   The name of the Cognito stream to receive updates. This stream must
        #   be in the developers account and in the same region as the identity
        #   pool.
        #   @return [String]

        # @!attribute [rw] role_arn
        #   The ARN of the role Amazon Cognito can assume in order to publish to
        #   the stream. This role must grant access to Amazon Cognito
        #   (cognito-sync) to invoke PutRecord on your Cognito stream.
        #   @return [String]

        # @!attribute [rw] streaming_status
        #   Status of the Cognito streams. Valid values are: ENABLED - Streaming of updates to identity pool is enabled.
        #
        #   DISABLED - Streaming of updates to identity pool is disabled. Bulk
        #   publish will also fail if StreamingStatus is DISABLED.
        #   @return [String]

      end

      # A collection of data for an identity pool. An identity pool can have
      # multiple datasets. A dataset is per identity and can be general or
      # associated with a particular entity in an application (like a saved
      # game). Datasets are automatically created if they don\'t exist. Data
      # is synced by dataset, and a dataset can hold up to 1MB of key-value
      # pairs.
      class Dataset < Aws::Structure.new(
        :identity_id,
        :dataset_name,
        :creation_date,
        :last_modified_date,
        :last_modified_by,
        :data_storage,
        :num_records)

        # @!attribute [rw] identity_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. GUID generation is unique within a region.
        #   @return [String]

        # @!attribute [rw] dataset_name
        #   A string of up to 128 characters. Allowed characters are a-z, A-Z,
        #   0-9, \'\_\' (underscore), \'-\' (dash), and \'.\' (dot).
        #   @return [String]

        # @!attribute [rw] creation_date
        #   Date on which the dataset was created.
        #   @return [Time]

        # @!attribute [rw] last_modified_date
        #   Date when the dataset was last modified.
        #   @return [Time]

        # @!attribute [rw] last_modified_by
        #   The device that made the last change to this dataset.
        #   @return [String]

        # @!attribute [rw] data_storage
        #   Total size in bytes of the records in this dataset.
        #   @return [Integer]

        # @!attribute [rw] num_records
        #   Number of records in this dataset.
        #   @return [Integer]

      end

      # A request to delete the specific dataset.
      # @note When making an API call, pass DeleteDatasetRequest
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #         identity_id: "IdentityId", # required
      #         dataset_name: "DatasetName", # required
      #       }
      class DeleteDatasetRequest < Aws::Structure.new(
        :identity_pool_id,
        :identity_id,
        :dataset_name)

        # @!attribute [rw] identity_pool_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. GUID generation is unique within a region.
        #   @return [String]

        # @!attribute [rw] identity_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. GUID generation is unique within a region.
        #   @return [String]

        # @!attribute [rw] dataset_name
        #   A string of up to 128 characters. Allowed characters are a-z, A-Z,
        #   0-9, \'\_\' (underscore), \'-\' (dash), and \'.\' (dot).
        #   @return [String]

      end

      # Response to a successful DeleteDataset request.
      class DeleteDatasetResponse < Aws::Structure.new(
        :dataset)

        # @!attribute [rw] dataset
        #   A collection of data for an identity pool. An identity pool can have
        #   multiple datasets. A dataset is per identity and can be general or
        #   associated with a particular entity in an application (like a saved
        #   game). Datasets are automatically created if they don\'t exist. Data
        #   is synced by dataset, and a dataset can hold up to 1MB of key-value
        #   pairs.
        #   @return [Types::Dataset]

      end

      # A request for meta data about a dataset (creation date, number of
      # records, size) by owner and dataset name.
      # @note When making an API call, pass DescribeDatasetRequest
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #         identity_id: "IdentityId", # required
      #         dataset_name: "DatasetName", # required
      #       }
      class DescribeDatasetRequest < Aws::Structure.new(
        :identity_pool_id,
        :identity_id,
        :dataset_name)

        # @!attribute [rw] identity_pool_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. GUID generation is unique within a region.
        #   @return [String]

        # @!attribute [rw] identity_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. GUID generation is unique within a region.
        #   @return [String]

        # @!attribute [rw] dataset_name
        #   A string of up to 128 characters. Allowed characters are a-z, A-Z,
        #   0-9, \'\_\' (underscore), \'-\' (dash), and \'.\' (dot).
        #   @return [String]

      end

      # Response to a successful DescribeDataset request.
      class DescribeDatasetResponse < Aws::Structure.new(
        :dataset)

        # @!attribute [rw] dataset
        #   Meta data for a collection of data for an identity. An identity can
        #   have multiple datasets. A dataset can be general or associated with
        #   a particular entity in an application (like a saved game). Datasets
        #   are automatically created if they don\'t exist. Data is synced by
        #   dataset, and a dataset can hold up to 1MB of key-value pairs.
        #   @return [Types::Dataset]

      end

      # A request for usage information about the identity pool.
      # @note When making an API call, pass DescribeIdentityPoolUsageRequest
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #       }
      class DescribeIdentityPoolUsageRequest < Aws::Structure.new(
        :identity_pool_id)

        # @!attribute [rw] identity_pool_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. GUID generation is unique within a region.
        #   @return [String]

      end

      # Response to a successful DescribeIdentityPoolUsage request.
      class DescribeIdentityPoolUsageResponse < Aws::Structure.new(
        :identity_pool_usage)

        # @!attribute [rw] identity_pool_usage
        #   Information about the usage of the identity pool.
        #   @return [Types::IdentityPoolUsage]

      end

      # A request for information about the usage of an identity pool.
      # @note When making an API call, pass DescribeIdentityUsageRequest
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #         identity_id: "IdentityId", # required
      #       }
      class DescribeIdentityUsageRequest < Aws::Structure.new(
        :identity_pool_id,
        :identity_id)

        # @!attribute [rw] identity_pool_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. GUID generation is unique within a region.
        #   @return [String]

        # @!attribute [rw] identity_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. GUID generation is unique within a region.
        #   @return [String]

      end

      # The response to a successful DescribeIdentityUsage request.
      class DescribeIdentityUsageResponse < Aws::Structure.new(
        :identity_usage)

        # @!attribute [rw] identity_usage
        #   Usage information for the identity.
        #   @return [Types::IdentityUsage]

      end

      # The input for the GetBulkPublishDetails operation.
      # @note When making an API call, pass GetBulkPublishDetailsRequest
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #       }
      class GetBulkPublishDetailsRequest < Aws::Structure.new(
        :identity_pool_id)

        # @!attribute [rw] identity_pool_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. GUID generation is unique within a region.
        #   @return [String]

      end

      # The output for the GetBulkPublishDetails operation.
      class GetBulkPublishDetailsResponse < Aws::Structure.new(
        :identity_pool_id,
        :bulk_publish_start_time,
        :bulk_publish_complete_time,
        :bulk_publish_status,
        :failure_message)

        # @!attribute [rw] identity_pool_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. GUID generation is unique within a region.
        #   @return [String]

        # @!attribute [rw] bulk_publish_start_time
        #   The date/time at which the last bulk publish was initiated.
        #   @return [Time]

        # @!attribute [rw] bulk_publish_complete_time
        #   If BulkPublishStatus is SUCCEEDED, the time the last bulk publish
        #   operation completed.
        #   @return [Time]

        # @!attribute [rw] bulk_publish_status
        #   Status of the last bulk publish operation, valid values are: NOT\_STARTED - No bulk publish has been requested for this identity
        #   pool
        #
        #   IN\_PROGRESS - Data is being published to the configured stream
        #
        #   SUCCEEDED - All data for the identity pool has been published to the
        #   configured stream
        #
        #   FAILED - Some portion of the data has failed to publish, check
        #   FailureMessage for the cause.
        #   @return [String]

        # @!attribute [rw] failure_message
        #   If BulkPublishStatus is FAILED this field will contain the error
        #   message that caused the bulk publish to fail.
        #   @return [String]

      end

      # A request for a list of the configured Cognito Events
      # @note When making an API call, pass GetCognitoEventsRequest
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #       }
      class GetCognitoEventsRequest < Aws::Structure.new(
        :identity_pool_id)

        # @!attribute [rw] identity_pool_id
        #   The Cognito Identity Pool ID for the request
        #   @return [String]

      end

      # The response from the GetCognitoEvents request
      class GetCognitoEventsResponse < Aws::Structure.new(
        :events)

        # @!attribute [rw] events
        #   The Cognito Events returned from the GetCognitoEvents request
        #   @return [Hash<String,String>]

      end

      # The input for the GetIdentityPoolConfiguration operation.
      # @note When making an API call, pass GetIdentityPoolConfigurationRequest
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #       }
      class GetIdentityPoolConfigurationRequest < Aws::Structure.new(
        :identity_pool_id)

        # @!attribute [rw] identity_pool_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. This is the ID of the pool for which to return a
        #   configuration.
        #   @return [String]

      end

      # The output for the GetIdentityPoolConfiguration operation.
      class GetIdentityPoolConfigurationResponse < Aws::Structure.new(
        :identity_pool_id,
        :push_sync,
        :cognito_streams)

        # @!attribute [rw] identity_pool_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito.
        #   @return [String]

        # @!attribute [rw] push_sync
        #   Options to apply to this identity pool for push synchronization.
        #   @return [Types::PushSync]

        # @!attribute [rw] cognito_streams
        #   Options to apply to this identity pool for Amazon Cognito streams.
        #   @return [Types::CognitoStreams]

      end

      # Usage information for the identity pool.
      class IdentityPoolUsage < Aws::Structure.new(
        :identity_pool_id,
        :sync_sessions_count,
        :data_storage,
        :last_modified_date)

        # @!attribute [rw] identity_pool_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. GUID generation is unique within a region.
        #   @return [String]

        # @!attribute [rw] sync_sessions_count
        #   Number of sync sessions for the identity pool.
        #   @return [Integer]

        # @!attribute [rw] data_storage
        #   Data storage information for the identity pool.
        #   @return [Integer]

        # @!attribute [rw] last_modified_date
        #   Date on which the identity pool was last modified.
        #   @return [Time]

      end

      # Usage information for the identity.
      class IdentityUsage < Aws::Structure.new(
        :identity_id,
        :identity_pool_id,
        :last_modified_date,
        :dataset_count,
        :data_storage)

        # @!attribute [rw] identity_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. GUID generation is unique within a region.
        #   @return [String]

        # @!attribute [rw] identity_pool_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. GUID generation is unique within a region.
        #   @return [String]

        # @!attribute [rw] last_modified_date
        #   Date on which the identity was last modified.
        #   @return [Time]

        # @!attribute [rw] dataset_count
        #   Number of datasets for the identity.
        #   @return [Integer]

        # @!attribute [rw] data_storage
        #   Total data storage for this identity.
        #   @return [Integer]

      end

      # Request for a list of datasets for an identity.
      # @note When making an API call, pass ListDatasetsRequest
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #         identity_id: "IdentityId", # required
      #         next_token: "String",
      #         max_results: 1,
      #       }
      class ListDatasetsRequest < Aws::Structure.new(
        :identity_pool_id,
        :identity_id,
        :next_token,
        :max_results)

        # @!attribute [rw] identity_pool_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. GUID generation is unique within a region.
        #   @return [String]

        # @!attribute [rw] identity_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. GUID generation is unique within a region.
        #   @return [String]

        # @!attribute [rw] next_token
        #   A pagination token for obtaining the next page of results.
        #   @return [String]

        # @!attribute [rw] max_results
        #   The maximum number of results to be returned.
        #   @return [Integer]

      end

      # Returned for a successful ListDatasets request.
      class ListDatasetsResponse < Aws::Structure.new(
        :datasets,
        :count,
        :next_token)

        # @!attribute [rw] datasets
        #   A set of datasets.
        #   @return [Array<Types::Dataset>]

        # @!attribute [rw] count
        #   Number of datasets returned.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   A pagination token for obtaining the next page of results.
        #   @return [String]

      end

      # A request for usage information on an identity pool.
      # @note When making an API call, pass ListIdentityPoolUsageRequest
      #   data as a hash:
      #
      #       {
      #         next_token: "String",
      #         max_results: 1,
      #       }
      class ListIdentityPoolUsageRequest < Aws::Structure.new(
        :next_token,
        :max_results)

        # @!attribute [rw] next_token
        #   A pagination token for obtaining the next page of results.
        #   @return [String]

        # @!attribute [rw] max_results
        #   The maximum number of results to be returned.
        #   @return [Integer]

      end

      # Returned for a successful ListIdentityPoolUsage request.
      class ListIdentityPoolUsageResponse < Aws::Structure.new(
        :identity_pool_usages,
        :max_results,
        :count,
        :next_token)

        # @!attribute [rw] identity_pool_usages
        #   Usage information for the identity pools.
        #   @return [Array<Types::IdentityPoolUsage>]

        # @!attribute [rw] max_results
        #   The maximum number of results to be returned.
        #   @return [Integer]

        # @!attribute [rw] count
        #   Total number of identities for the identity pool.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   A pagination token for obtaining the next page of results.
        #   @return [String]

      end

      # A request for a list of records.
      # @note When making an API call, pass ListRecordsRequest
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #         identity_id: "IdentityId", # required
      #         dataset_name: "DatasetName", # required
      #         last_sync_count: 1,
      #         next_token: "String",
      #         max_results: 1,
      #         sync_session_token: "SyncSessionToken",
      #       }
      class ListRecordsRequest < Aws::Structure.new(
        :identity_pool_id,
        :identity_id,
        :dataset_name,
        :last_sync_count,
        :next_token,
        :max_results,
        :sync_session_token)

        # @!attribute [rw] identity_pool_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. GUID generation is unique within a region.
        #   @return [String]

        # @!attribute [rw] identity_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. GUID generation is unique within a region.
        #   @return [String]

        # @!attribute [rw] dataset_name
        #   A string of up to 128 characters. Allowed characters are a-z, A-Z,
        #   0-9, \'\_\' (underscore), \'-\' (dash), and \'.\' (dot).
        #   @return [String]

        # @!attribute [rw] last_sync_count
        #   The last server sync count for this record.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   A pagination token for obtaining the next page of results.
        #   @return [String]

        # @!attribute [rw] max_results
        #   The maximum number of results to be returned.
        #   @return [Integer]

        # @!attribute [rw] sync_session_token
        #   A token containing a session ID, identity ID, and expiration.
        #   @return [String]

      end

      # Returned for a successful ListRecordsRequest.
      class ListRecordsResponse < Aws::Structure.new(
        :records,
        :next_token,
        :count,
        :dataset_sync_count,
        :last_modified_by,
        :merged_dataset_names,
        :dataset_exists,
        :dataset_deleted_after_requested_sync_count,
        :sync_session_token)

        # @!attribute [rw] records
        #   A list of all records.
        #   @return [Array<Types::Record>]

        # @!attribute [rw] next_token
        #   A pagination token for obtaining the next page of results.
        #   @return [String]

        # @!attribute [rw] count
        #   Total number of records.
        #   @return [Integer]

        # @!attribute [rw] dataset_sync_count
        #   Server sync count for this dataset.
        #   @return [Integer]

        # @!attribute [rw] last_modified_by
        #   The user/device that made the last change to this record.
        #   @return [String]

        # @!attribute [rw] merged_dataset_names
        #   Names of merged datasets.
        #   @return [Array<String>]

        # @!attribute [rw] dataset_exists
        #   Indicates whether the dataset exists.
        #   @return [Boolean]

        # @!attribute [rw] dataset_deleted_after_requested_sync_count
        #   A boolean value specifying whether to delete the dataset locally.
        #   @return [Boolean]

        # @!attribute [rw] sync_session_token
        #   A token containing a session ID, identity ID, and expiration.
        #   @return [String]

      end

      # Configuration options to be applied to the identity pool.
      # @note When making an API call, pass PushSync
      #   data as a hash:
      #
      #       {
      #         application_arns: ["ApplicationArn"],
      #         role_arn: "AssumeRoleArn",
      #       }
      class PushSync < Aws::Structure.new(
        :application_arns,
        :role_arn)

        # @!attribute [rw] application_arns
        #   List of SNS platform application ARNs that could be used by clients.
        #   @return [Array<String>]

        # @!attribute [rw] role_arn
        #   A role configured to allow Cognito to call SNS on behalf of the
        #   developer.
        #   @return [String]

      end

      # The basic data structure of a dataset.
      class Record < Aws::Structure.new(
        :key,
        :value,
        :sync_count,
        :last_modified_date,
        :last_modified_by,
        :device_last_modified_date)

        # @!attribute [rw] key
        #   The key for the record.
        #   @return [String]

        # @!attribute [rw] value
        #   The value for the record.
        #   @return [String]

        # @!attribute [rw] sync_count
        #   The server sync count for this record.
        #   @return [Integer]

        # @!attribute [rw] last_modified_date
        #   The date on which the record was last modified.
        #   @return [Time]

        # @!attribute [rw] last_modified_by
        #   The user/device that made the last change to this record.
        #   @return [String]

        # @!attribute [rw] device_last_modified_date
        #   The last modified date of the client device.
        #   @return [Time]

      end

      # An update operation for a record.
      # @note When making an API call, pass RecordPatch
      #   data as a hash:
      #
      #       {
      #         op: "replace", # required, accepts replace, remove
      #         key: "RecordKey", # required
      #         value: "RecordValue",
      #         sync_count: 1, # required
      #         device_last_modified_date: Time.now,
      #       }
      class RecordPatch < Aws::Structure.new(
        :op,
        :key,
        :value,
        :sync_count,
        :device_last_modified_date)

        # @!attribute [rw] op
        #   An operation, either replace or remove.
        #   @return [String]

        # @!attribute [rw] key
        #   The key associated with the record patch.
        #   @return [String]

        # @!attribute [rw] value
        #   The value associated with the record patch.
        #   @return [String]

        # @!attribute [rw] sync_count
        #   Last known server sync count for this record. Set to 0 if unknown.
        #   @return [Integer]

        # @!attribute [rw] device_last_modified_date
        #   The last modified date of the client device.
        #   @return [Time]

      end

      # A request to RegisterDevice.
      # @note When making an API call, pass RegisterDeviceRequest
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #         identity_id: "IdentityId", # required
      #         platform: "APNS", # required, accepts APNS, APNS_SANDBOX, GCM, ADM
      #         token: "PushToken", # required
      #       }
      class RegisterDeviceRequest < Aws::Structure.new(
        :identity_pool_id,
        :identity_id,
        :platform,
        :token)

        # @!attribute [rw] identity_pool_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. Here, the ID of the pool that the identity belongs to.
        #   @return [String]

        # @!attribute [rw] identity_id
        #   The unique ID for this identity.
        #   @return [String]

        # @!attribute [rw] platform
        #   The SNS platform type (e.g. GCM, SDM, APNS, APNS\_SANDBOX).
        #   @return [String]

        # @!attribute [rw] token
        #   The push token.
        #   @return [String]

      end

      # Response to a RegisterDevice request.
      class RegisterDeviceResponse < Aws::Structure.new(
        :device_id)

        # @!attribute [rw] device_id
        #   The unique ID generated for this device by Cognito.
        #   @return [String]

      end

      # A request to configure Cognito Events\"
      #
      # \"
      # @note When making an API call, pass SetCognitoEventsRequest
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #         events: { # required
      #           "CognitoEventType" => "LambdaFunctionArn",
      #         },
      #       }
      class SetCognitoEventsRequest < Aws::Structure.new(
        :identity_pool_id,
        :events)

        # @!attribute [rw] identity_pool_id
        #   The Cognito Identity Pool to use when configuring Cognito Events
        #   @return [String]

        # @!attribute [rw] events
        #   The events to configure
        #   @return [Hash<String,String>]

      end

      # The input for the SetIdentityPoolConfiguration operation.
      # @note When making an API call, pass SetIdentityPoolConfigurationRequest
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #         push_sync: {
      #           application_arns: ["ApplicationArn"],
      #           role_arn: "AssumeRoleArn",
      #         },
      #         cognito_streams: {
      #           stream_name: "StreamName",
      #           role_arn: "AssumeRoleArn",
      #           streaming_status: "ENABLED", # accepts ENABLED, DISABLED
      #         },
      #       }
      class SetIdentityPoolConfigurationRequest < Aws::Structure.new(
        :identity_pool_id,
        :push_sync,
        :cognito_streams)

        # @!attribute [rw] identity_pool_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. This is the ID of the pool to modify.
        #   @return [String]

        # @!attribute [rw] push_sync
        #   Options to apply to this identity pool for push synchronization.
        #   @return [Types::PushSync]

        # @!attribute [rw] cognito_streams
        #   Options to apply to this identity pool for Amazon Cognito streams.
        #   @return [Types::CognitoStreams]

      end

      # The output for the SetIdentityPoolConfiguration operation
      class SetIdentityPoolConfigurationResponse < Aws::Structure.new(
        :identity_pool_id,
        :push_sync,
        :cognito_streams)

        # @!attribute [rw] identity_pool_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito.
        #   @return [String]

        # @!attribute [rw] push_sync
        #   Options to apply to this identity pool for push synchronization.
        #   @return [Types::PushSync]

        # @!attribute [rw] cognito_streams
        #   Options to apply to this identity pool for Amazon Cognito streams.
        #   @return [Types::CognitoStreams]

      end

      # A request to SubscribeToDatasetRequest.
      # @note When making an API call, pass SubscribeToDatasetRequest
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #         identity_id: "IdentityId", # required
      #         dataset_name: "DatasetName", # required
      #         device_id: "DeviceId", # required
      #       }
      class SubscribeToDatasetRequest < Aws::Structure.new(
        :identity_pool_id,
        :identity_id,
        :dataset_name,
        :device_id)

        # @!attribute [rw] identity_pool_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. The ID of the pool to which the identity belongs.
        #   @return [String]

        # @!attribute [rw] identity_id
        #   Unique ID for this identity.
        #   @return [String]

        # @!attribute [rw] dataset_name
        #   The name of the dataset to subcribe to.
        #   @return [String]

        # @!attribute [rw] device_id
        #   The unique ID generated for this device by Cognito.
        #   @return [String]

      end

      # Response to a SubscribeToDataset request.
      class SubscribeToDatasetResponse < Aws::EmptyStructure; end

      # A request to UnsubscribeFromDataset.
      # @note When making an API call, pass UnsubscribeFromDatasetRequest
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #         identity_id: "IdentityId", # required
      #         dataset_name: "DatasetName", # required
      #         device_id: "DeviceId", # required
      #       }
      class UnsubscribeFromDatasetRequest < Aws::Structure.new(
        :identity_pool_id,
        :identity_id,
        :dataset_name,
        :device_id)

        # @!attribute [rw] identity_pool_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. The ID of the pool to which this identity belongs.
        #   @return [String]

        # @!attribute [rw] identity_id
        #   Unique ID for this identity.
        #   @return [String]

        # @!attribute [rw] dataset_name
        #   The name of the dataset from which to unsubcribe.
        #   @return [String]

        # @!attribute [rw] device_id
        #   The unique ID generated for this device by Cognito.
        #   @return [String]

      end

      # Response to an UnsubscribeFromDataset request.
      class UnsubscribeFromDatasetResponse < Aws::EmptyStructure; end

      # A request to post updates to records or add and delete records for a
      # dataset and user.
      # @note When making an API call, pass UpdateRecordsRequest
      #   data as a hash:
      #
      #       {
      #         identity_pool_id: "IdentityPoolId", # required
      #         identity_id: "IdentityId", # required
      #         dataset_name: "DatasetName", # required
      #         device_id: "DeviceId",
      #         record_patches: [
      #           {
      #             op: "replace", # required, accepts replace, remove
      #             key: "RecordKey", # required
      #             value: "RecordValue",
      #             sync_count: 1, # required
      #             device_last_modified_date: Time.now,
      #           },
      #         ],
      #         sync_session_token: "SyncSessionToken", # required
      #         client_context: "ClientContext",
      #       }
      class UpdateRecordsRequest < Aws::Structure.new(
        :identity_pool_id,
        :identity_id,
        :dataset_name,
        :device_id,
        :record_patches,
        :sync_session_token,
        :client_context)

        # @!attribute [rw] identity_pool_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. GUID generation is unique within a region.
        #   @return [String]

        # @!attribute [rw] identity_id
        #   A name-spaced GUID (for example,
        #   us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
        #   Cognito. GUID generation is unique within a region.
        #   @return [String]

        # @!attribute [rw] dataset_name
        #   A string of up to 128 characters. Allowed characters are a-z, A-Z,
        #   0-9, \'\_\' (underscore), \'-\' (dash), and \'.\' (dot).
        #   @return [String]

        # @!attribute [rw] device_id
        #   The unique ID generated for this device by Cognito.
        #   @return [String]

        # @!attribute [rw] record_patches
        #   A list of patch operations.
        #   @return [Array<Types::RecordPatch>]

        # @!attribute [rw] sync_session_token
        #   The SyncSessionToken returned by a previous call to ListRecords for
        #   this dataset and identity.
        #   @return [String]

        # @!attribute [rw] client_context
        #   Intended to supply a device ID that will populate the lastModifiedBy
        #   field referenced in other methods. The ClientContext field is not
        #   yet implemented.
        #   @return [String]

      end

      # Returned for a successful UpdateRecordsRequest.
      class UpdateRecordsResponse < Aws::Structure.new(
        :records)

        # @!attribute [rw] records
        #   A list of records that have been updated.
        #   @return [Array<Types::Record>]

      end

    end
  end
end
