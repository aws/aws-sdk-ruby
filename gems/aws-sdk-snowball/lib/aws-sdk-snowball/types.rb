# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
module Aws
  module Snowball
    module Types

      # The address that you want the Snowball or Snowballs associated with a
      # specific job to be shipped to. Addresses are validated at the time of
      # creation. The address you provide must be located within the
      # serviceable area of your region. Although no individual elements of
      # the `Address` are required, if the address is invalid or unsupported,
      # then an exception is thrown.
      # @note When making an API call, pass Address
      #   data as a hash:
      #
      #       {
      #         address_id: "AddressId",
      #         name: "String",
      #         company: "String",
      #         street_1: "String",
      #         street_2: "String",
      #         street_3: "String",
      #         city: "String",
      #         state_or_province: "String",
      #         prefecture_or_district: "String",
      #         landmark: "String",
      #         country: "String",
      #         postal_code: "String",
      #         phone_number: "String",
      #       }
      class Address < Aws::Structure.new(
        :address_id,
        :name,
        :company,
        :street_1,
        :street_2,
        :street_3,
        :city,
        :state_or_province,
        :prefecture_or_district,
        :landmark,
        :country,
        :postal_code,
        :phone_number)

        # @!attribute [rw] address_id
        #   The unique ID for an address.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of a person to receive a Snowball at an address.
        #   @return [String]

        # @!attribute [rw] company
        #   The name of the company to receive a Snowball at an address.
        #   @return [String]

        # @!attribute [rw] street_1
        #   The first line in a street address that a Snowball is to be
        #   delivered to.
        #   @return [String]

        # @!attribute [rw] street_2
        #   The second line in a street address that a Snowball is to be
        #   delivered to.
        #   @return [String]

        # @!attribute [rw] street_3
        #   The third line in a street address that a Snowball is to be
        #   delivered to.
        #   @return [String]

        # @!attribute [rw] city
        #   The city in an address that a Snowball is to be delivered to.
        #   @return [String]

        # @!attribute [rw] state_or_province
        #   The state or province in an address that a Snowball is to be
        #   delivered to.
        #   @return [String]

        # @!attribute [rw] prefecture_or_district
        #   The prefecture or district in an address that a Snowball is to be
        #   delivered to.
        #   @return [String]

        # @!attribute [rw] landmark
        #   A landmark listed in an address that a Snowball is to be delivered
        #   to.
        #   @return [String]

        # @!attribute [rw] country
        #   The country in an address that a Snowball is to be delivered to.
        #   @return [String]

        # @!attribute [rw] postal_code
        #   The postal code in an address that a Snowball is to be delivered to.
        #   @return [String]

        # @!attribute [rw] phone_number
        #   The phone number associated with an address that a Snowball is to be
        #   delivered to.
        #   @return [String]

      end

      # @note When making an API call, pass CancelJobRequest
      #   data as a hash:
      #
      #       {
      #         job_id: "JobId", # required
      #       }
      class CancelJobRequest < Aws::Structure.new(
        :job_id)

        # @!attribute [rw] job_id
        #   The 39 character job ID for the job that you want to cancel, for
        #   example `JID123e4567-e89b-12d3-a456-426655440000`.
        #   @return [String]

      end

      class CancelJobResult < Aws::EmptyStructure; end

      # @note When making an API call, pass CreateAddressRequest
      #   data as a hash:
      #
      #       {
      #         address: { # required
      #           address_id: "AddressId",
      #           name: "String",
      #           company: "String",
      #           street_1: "String",
      #           street_2: "String",
      #           street_3: "String",
      #           city: "String",
      #           state_or_province: "String",
      #           prefecture_or_district: "String",
      #           landmark: "String",
      #           country: "String",
      #           postal_code: "String",
      #           phone_number: "String",
      #         },
      #       }
      class CreateAddressRequest < Aws::Structure.new(
        :address)

        # @!attribute [rw] address
        #   The address that you want the Snowball shipped to.
        #   @return [Types::Address]

      end

      class CreateAddressResult < Aws::Structure.new(
        :address_id)

        # @!attribute [rw] address_id
        #   The automatically generated ID for a specific address. You\'ll use
        #   this ID when you create a job to specify which address you want the
        #   Snowball for that job shipped to.
        #   @return [String]

      end

      # @note When making an API call, pass CreateJobRequest
      #   data as a hash:
      #
      #       {
      #         job_type: "IMPORT", # required, accepts IMPORT, EXPORT
      #         resources: { # required
      #           s3_resources: [
      #             {
      #               bucket_arn: "ResourceARN",
      #               key_range: {
      #                 begin_marker: "String",
      #                 end_marker: "String",
      #               },
      #             },
      #           ],
      #         },
      #         description: "String",
      #         address_id: "AddressId", # required
      #         kms_key_arn: "KmsKeyARN",
      #         role_arn: "RoleARN", # required
      #         snowball_capacity_preference: "T50", # accepts T50, T80, NoPreference
      #         shipping_option: "SECOND_DAY", # required, accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
      #         notification: {
      #           sns_topic_arn: "SnsTopicARN",
      #           job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
      #           notify_all: false,
      #         },
      #       }
      class CreateJobRequest < Aws::Structure.new(
        :job_type,
        :resources,
        :description,
        :address_id,
        :kms_key_arn,
        :role_arn,
        :snowball_capacity_preference,
        :shipping_option,
        :notification)

        # @!attribute [rw] job_type
        #   Defines the type of job that you\'re creating.
        #   @return [String]

        # @!attribute [rw] resources
        #   Defines the Amazon S3 buckets associated with this job.
        #
        #   With `IMPORT` jobs, you specify the bucket or buckets that your
        #   transferred data will be imported into.
        #
        #   With `EXPORT` jobs, you specify the bucket or buckets that your
        #   transferred data will be exported from. Optionally, you can also
        #   specify a `KeyRange` value. If you choose to export a range, you
        #   define the length of the range by providing either an inclusive
        #   `BeginMarker` value, an inclusive `EndMarker` value, or both. Ranges
        #   are UTF-8 binary sorted.
        #   @return [Types::JobResource]

        # @!attribute [rw] description
        #   Defines an optional description of this specific job, for example
        #   `Important Photos 2016-08-11`.
        #   @return [String]

        # @!attribute [rw] address_id
        #   The ID for the address that you want the Snowball shipped to.
        #   @return [String]

        # @!attribute [rw] kms_key_arn
        #   The `KmsKeyARN` that you want to associate with this job.
        #   `KmsKeyARN`s are created using the [CreateKey][1] AWS Key Management
        #   Service (KMS) API action.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html
        #   @return [String]

        # @!attribute [rw] role_arn
        #   The `RoleARN` that you want to associate with this job. `RoleArn`s
        #   are created using the [CreateRole][1] AWS Identity and Access
        #   Management (IAM) API action.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
        #   @return [String]

        # @!attribute [rw] snowball_capacity_preference
        #   If your job is being created in one of the US regions, you have the
        #   option of specifying what size Snowball you\'d like for this job. In
        #   all other regions, Snowballs come with 80 TB in storage capacity.
        #   @return [String]

        # @!attribute [rw] shipping_option
        #   The shipping speed for this job. Note that this speed does not
        #   dictate how soon you\'ll get the Snowball, rather it represents how
        #   quickly the Snowball moves to its destination while in transit.
        #   Regional shipping speeds are as follows:
        #
        #   * In Australia, you have access to express shipping. Typically,
        #     Snowballs shipped express are delivered in about a day.
        #
        #   * In the European Union (EU), you have access to express shipping.
        #     Typically, Snowballs shipped express are delivered in about a day.
        #     In addition, most countries in the EU have access to standard
        #     shipping, which typically takes less than a week, one way.
        #
        #   * In India, Snowballs are delivered in one to seven days.
        #
        #   * In the US, you have access to one-day shipping and two-day
        #     shipping.
        #   @return [String]

        # @!attribute [rw] notification
        #   Defines the Amazon Simple Notification Service (Amazon SNS)
        #   notification settings for this job.
        #   @return [Types::Notification]

      end

      class CreateJobResult < Aws::Structure.new(
        :job_id)

        # @!attribute [rw] job_id
        #   The automatically generated ID for a job, for example
        #   `JID123e4567-e89b-12d3-a456-426655440000`.
        #   @return [String]

      end

      # Defines the real-time status of a Snowball\'s data transfer while the
      # appliance is at AWS. Note that this data is only available while a job
      # has a `JobState` value of `InProgress`, for both import and export
      # jobs.
      class DataTransfer < Aws::Structure.new(
        :bytes_transferred,
        :objects_transferred,
        :total_bytes,
        :total_objects)

        # @!attribute [rw] bytes_transferred
        #   The number of bytes transferred between a Snowball and Amazon S3.
        #   @return [Integer]

        # @!attribute [rw] objects_transferred
        #   The number of objects transferred between a Snowball and Amazon S3.
        #   @return [Integer]

        # @!attribute [rw] total_bytes
        #   The total bytes of data for a transfer between a Snowball and Amazon
        #   S3. This value is set to 0 (zero) until all the keys that will be
        #   transferred have been listed.
        #   @return [Integer]

        # @!attribute [rw] total_objects
        #   The total number of objects for a transfer between a Snowball and
        #   Amazon S3. This value is set to 0 (zero) until all the keys that
        #   will be transferred have been listed.
        #   @return [Integer]

      end

      # @note When making an API call, pass DescribeAddressRequest
      #   data as a hash:
      #
      #       {
      #         address_id: "AddressId", # required
      #       }
      class DescribeAddressRequest < Aws::Structure.new(
        :address_id)

        # @!attribute [rw] address_id
        #   The automatically generated ID for a specific address.
        #   @return [String]

      end

      class DescribeAddressResult < Aws::Structure.new(
        :address)

        # @!attribute [rw] address
        #   The address that you want the Snowball or Snowballs associated with
        #   a specific job to be shipped to.
        #   @return [Types::Address]

      end

      # @note When making an API call, pass DescribeAddressesRequest
      #   data as a hash:
      #
      #       {
      #         max_results: 1,
      #         next_token: "String",
      #       }
      class DescribeAddressesRequest < Aws::Structure.new(
        :max_results,
        :next_token)

        # @!attribute [rw] max_results
        #   The number of `ADDRESS` objects to return.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   HTTP requests are stateless. To identify what object comes \"next\"
        #   in the list of `ADDRESS` objects, you have the option of specifying
        #   a value for `NextToken` as the starting point for your list of
        #   returned addresses.
        #   @return [String]

      end

      class DescribeAddressesResult < Aws::Structure.new(
        :addresses,
        :next_token)

        # @!attribute [rw] addresses
        #   The Snowball shipping addresses that were created for this account.
        #   @return [Array<Types::Address>]

        # @!attribute [rw] next_token
        #   HTTP requests are stateless. If you use the automatically generated
        #   `NextToken` value in your next `DescribeAddresses` call, your list
        #   of returned addresses will start from this point in the array.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeJobRequest
      #   data as a hash:
      #
      #       {
      #         job_id: "JobId", # required
      #       }
      class DescribeJobRequest < Aws::Structure.new(
        :job_id)

        # @!attribute [rw] job_id
        #   The automatically generated ID for a job, for example
        #   `JID123e4567-e89b-12d3-a456-426655440000`.
        #   @return [String]

      end

      class DescribeJobResult < Aws::Structure.new(
        :job_metadata,
        :sub_job_metadata)

        # @!attribute [rw] job_metadata
        #   Information about a specific job, including shipping information,
        #   job status, and other important metadata.
        #   @return [Types::JobMetadata]

        # @!attribute [rw] sub_job_metadata
        #   Information about a specific job part (in the case of an export
        #   job), including shipping information, job status, and other
        #   important metadata.
        #   @return [Array<Types::JobMetadata>]

      end

      # @note When making an API call, pass GetJobManifestRequest
      #   data as a hash:
      #
      #       {
      #         job_id: "JobId", # required
      #       }
      class GetJobManifestRequest < Aws::Structure.new(
        :job_id)

        # @!attribute [rw] job_id
        #   The ID for a job that you want to get the manifest file for, for
        #   example `JID123e4567-e89b-12d3-a456-426655440000`.
        #   @return [String]

      end

      class GetJobManifestResult < Aws::Structure.new(
        :manifest_uri)

        # @!attribute [rw] manifest_uri
        #   The Amazon S3 presigned URL for the manifest file associated with
        #   the specified `JobId` value.
        #   @return [String]

      end

      # @note When making an API call, pass GetJobUnlockCodeRequest
      #   data as a hash:
      #
      #       {
      #         job_id: "JobId", # required
      #       }
      class GetJobUnlockCodeRequest < Aws::Structure.new(
        :job_id)

        # @!attribute [rw] job_id
        #   The ID for the job that you want to get the `UnlockCode` value for,
        #   for example `JID123e4567-e89b-12d3-a456-426655440000`.
        #   @return [String]

      end

      class GetJobUnlockCodeResult < Aws::Structure.new(
        :unlock_code)

        # @!attribute [rw] unlock_code
        #   The `UnlockCode` value for the specified job. The `UnlockCode` value
        #   can be accessed for up to 90 days after the job has been created.
        #   @return [String]

      end

      # @api private
      class GetSnowballUsageRequest < Aws::EmptyStructure; end

      class GetSnowballUsageResult < Aws::Structure.new(
        :snowball_limit,
        :snowballs_in_use)

        # @!attribute [rw] snowball_limit
        #   The service limit for number of Snowballs this account can have at
        #   once. The default service limit is 1 (one).
        #   @return [Integer]

        # @!attribute [rw] snowballs_in_use
        #   The number of Snowballs that this account is currently using.
        #   @return [Integer]

      end

      # Each `JobListEntry` object contains a job\'s state, a job\'s ID, and a
      # value that indicates whether the job is a job part, in the case of an
      # export job.
      class JobListEntry < Aws::Structure.new(
        :job_id,
        :job_state,
        :is_master)

        # @!attribute [rw] job_id
        #   The automatically generated ID for a job, for example
        #   `JID123e4567-e89b-12d3-a456-426655440000`.
        #   @return [String]

        # @!attribute [rw] job_state
        #   The current state of this job.
        #   @return [String]

        # @!attribute [rw] is_master
        #   A value that indicates that this job is a master job. A master job
        #   represents a successful request to create an export job. Master jobs
        #   aren\'t associated with any Snowballs. Instead, each master job will
        #   have at least one job part, and each job part is associated with a
        #   Snowball. It might take some time before the job parts associated
        #   with a particular master job are listed, because they are created
        #   after the master job is created.
        #   @return [Boolean]

      end

      # Contains job logs. Whenever Snowball is used to import data into or
      # export data out of Amazon S3, you\'ll have the option of downloading a
      # PDF job report. Job logs are returned as a part of the response syntax
      # of the `DescribeJob` action in the `JobMetadata` data type. The job
      # logs can be accessed for up to 60 minutes after this request has been
      # made. To access any of the job logs after 60 minutes have passed,
      # you\'ll have to make another call to the `DescribeJob` action.
      #
      # For import jobs, the PDF job report becomes available at the end of
      # the import process. For export jobs, your job report typically becomes
      # available while the Snowball for your job part is being delivered to
      # you.
      #
      # The job report provides you insight into the state of your Amazon S3
      # data transfer. The report includes details about your job or job part
      # for your records.
      #
      # For deeper visibility into the status of your transferred objects, you
      # can look at the two associated logs: a success log and a failure log.
      # The logs are saved in comma-separated value (CSV) format, and the name
      # of each log includes the ID of the job or job part that the log
      # describes.
      class JobLogs < Aws::Structure.new(
        :job_completion_report_uri,
        :job_success_log_uri,
        :job_failure_log_uri)

        # @!attribute [rw] job_completion_report_uri
        #   A link to an Amazon S3 presigned URL where the job completion report
        #   is located.
        #   @return [String]

        # @!attribute [rw] job_success_log_uri
        #   A link to an Amazon S3 presigned URL where the job success log is
        #   located.
        #   @return [String]

        # @!attribute [rw] job_failure_log_uri
        #   A link to an Amazon S3 presigned URL where the job failure log is
        #   located.
        #   @return [String]

      end

      # Contains information about a specific job including shipping
      # information, job status, and other important metadata. This
      # information is returned as a part of the response syntax of the
      # `DescribeJob` action.
      class JobMetadata < Aws::Structure.new(
        :job_id,
        :job_state,
        :job_type,
        :creation_date,
        :resources,
        :description,
        :kms_key_arn,
        :role_arn,
        :address_id,
        :shipping_details,
        :snowball_capacity_preference,
        :notification,
        :data_transfer_progress,
        :job_log_info)

        # @!attribute [rw] job_id
        #   The automatically generated ID for a job, for example
        #   `JID123e4567-e89b-12d3-a456-426655440000`.
        #   @return [String]

        # @!attribute [rw] job_state
        #   The current state of the jobs.
        #   @return [String]

        # @!attribute [rw] job_type
        #   The type of job.
        #   @return [String]

        # @!attribute [rw] creation_date
        #   The creation date for this job.
        #   @return [Time]

        # @!attribute [rw] resources
        #   An array of `S3Resource` objects. Each `S3Resource` object
        #   represents an Amazon S3 bucket that your transferred data will be
        #   exported from or imported into.
        #   @return [Types::JobResource]

        # @!attribute [rw] description
        #   The description of the job, provided at job creation.
        #   @return [String]

        # @!attribute [rw] kms_key_arn
        #   The Amazon Resource Name (ARN) for the AWS Key Management Service
        #   (AWS KMS) key associated with this job. This ARN was created using
        #   the `CreateKey` API action in AWS KMS.
        #   @return [String]

        # @!attribute [rw] role_arn
        #   The role ARN associated with this job. This ARN was created using
        #   the `CreateRole` API action in AWS Identity and Access Management
        #   (IAM).
        #   @return [String]

        # @!attribute [rw] address_id
        #   The ID for the address that you want the Snowball shipped to.
        #   @return [String]

        # @!attribute [rw] shipping_details
        #   A job\'s shipping information, including inbound and outbound
        #   tracking numbers and shipping speed options.
        #   @return [Types::ShippingDetails]

        # @!attribute [rw] snowball_capacity_preference
        #   The Snowball capacity preference for this job, specified at job
        #   creation. In US regions, you can choose between 50 TB and 80 TB
        #   Snowballs. All other regions use 80 TB capacity Snowballs.
        #   @return [String]

        # @!attribute [rw] notification
        #   The Amazon Simple Notification Service (Amazon SNS) notification
        #   settings associated with a specific job. The `Notification` object
        #   is returned as a part of the response syntax of the `DescribeJob`
        #   action in the `JobMetadata` data type.
        #   @return [Types::Notification]

        # @!attribute [rw] data_transfer_progress
        #   A value that defines the real-time status of a Snowball\'s data
        #   transfer while the appliance is at AWS. Note that this data is only
        #   available while a job has a `JobState` value of `InProgress`, for
        #   both import and export jobs.
        #   @return [Types::DataTransfer]

        # @!attribute [rw] job_log_info
        #   Links to Amazon S3 presigned URLs for the job report and logs. For
        #   import jobs, the PDF job report becomes available at the end of the
        #   import process. For export jobs, your job report typically becomes
        #   available while the Snowball for your job part is being delivered to
        #   you.
        #   @return [Types::JobLogs]

      end

      # Contains an array of `S3Resource` objects. Each `S3Resource` object
      # represents an Amazon S3 bucket that your transferred data will be
      # exported from or imported into.
      # @note When making an API call, pass JobResource
      #   data as a hash:
      #
      #       {
      #         s3_resources: [
      #           {
      #             bucket_arn: "ResourceARN",
      #             key_range: {
      #               begin_marker: "String",
      #               end_marker: "String",
      #             },
      #           },
      #         ],
      #       }
      class JobResource < Aws::Structure.new(
        :s3_resources)

        # @!attribute [rw] s3_resources
        #   An array of `S3Resource` objects.
        #   @return [Array<Types::S3Resource>]

      end

      # Contains a key range. For export jobs, a `S3Resource` object can have
      # an optional `KeyRange` value. The length of the range is defined at
      # job creation, and has either an inclusive `BeginMarker`, an inclusive
      # `EndMarker`, or both. Ranges are UTF-8 binary sorted.
      # @note When making an API call, pass KeyRange
      #   data as a hash:
      #
      #       {
      #         begin_marker: "String",
      #         end_marker: "String",
      #       }
      class KeyRange < Aws::Structure.new(
        :begin_marker,
        :end_marker)

        # @!attribute [rw] begin_marker
        #   The key that starts an optional key range for an export job. Ranges
        #   are inclusive and UTF-8 binary sorted.
        #   @return [String]

        # @!attribute [rw] end_marker
        #   The key that ends an optional key range for an export job. Ranges
        #   are inclusive and UTF-8 binary sorted.
        #   @return [String]

      end

      # @note When making an API call, pass ListJobsRequest
      #   data as a hash:
      #
      #       {
      #         max_results: 1,
      #         next_token: "String",
      #       }
      class ListJobsRequest < Aws::Structure.new(
        :max_results,
        :next_token)

        # @!attribute [rw] max_results
        #   The number of `JobListEntry` objects to return.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   HTTP requests are stateless. To identify what object comes \"next\"
        #   in the list of `JobListEntry` objects, you have the option of
        #   specifying `NextToken` as the starting point for your returned list.
        #   @return [String]

      end

      class ListJobsResult < Aws::Structure.new(
        :job_list_entries,
        :next_token)

        # @!attribute [rw] job_list_entries
        #   Each `JobListEntry` object contains a job\'s state, a job\'s ID, and
        #   a value that indicates whether the job is a job part, in the case of
        #   export jobs.
        #   @return [Array<Types::JobListEntry>]

        # @!attribute [rw] next_token
        #   HTTP requests are stateless. If you use this automatically generated
        #   `NextToken` value in your next `ListJobs` call, your returned
        #   `JobListEntry` objects will start from this point in the array.
        #   @return [String]

      end

      # The Amazon Simple Notification Service (Amazon SNS) notification
      # settings associated with a specific job. The `Notification` object is
      # returned as a part of the response syntax of the `DescribeJob` action
      # in the `JobMetadata` data type.
      #
      # When the notification settings are defined during job creation, you
      # can choose to notify based on a specific set of job states using the
      # `JobStatesToNotify` array of strings, or you can specify that you want
      # to have Amazon SNS notifications sent out for all job states with
      # `NotifyAll` set to true.
      # @note When making an API call, pass Notification
      #   data as a hash:
      #
      #       {
      #         sns_topic_arn: "SnsTopicARN",
      #         job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
      #         notify_all: false,
      #       }
      class Notification < Aws::Structure.new(
        :sns_topic_arn,
        :job_states_to_notify,
        :notify_all)

        # @!attribute [rw] sns_topic_arn
        #   The new SNS `TopicArn` that you want to associate with this job. You
        #   can create Amazon Resource Names (ARNs) for topics by using the
        #   [CreateTopic][1] Amazon SNS API action.
        #
        #   Note that you can subscribe email addresses to an Amazon SNS topic
        #   through the AWS Management Console, or by using the [Subscribe][2]
        #   AWS Simple Notification Service (SNS) API action.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/sns/latest/api/API_CreateTopic.html
        #   [2]: http://docs.aws.amazon.com/sns/latest/api/API_Subscribe.html
        #   @return [String]

        # @!attribute [rw] job_states_to_notify
        #   The list of job states that will trigger a notification for this
        #   job.
        #   @return [Array<String>]

        # @!attribute [rw] notify_all
        #   Any change in job state will trigger a notification for this job.
        #   @return [Boolean]

      end

      # Each `S3Resource` object represents an Amazon S3 bucket that your
      # transferred data will be exported from or imported into. For export
      # jobs, this object can have an optional `KeyRange` value. The length of
      # the range is defined at job creation, and has either an inclusive
      # `BeginMarker`, an inclusive `EndMarker`, or both. Ranges are UTF-8
      # binary sorted.
      # @note When making an API call, pass S3Resource
      #   data as a hash:
      #
      #       {
      #         bucket_arn: "ResourceARN",
      #         key_range: {
      #           begin_marker: "String",
      #           end_marker: "String",
      #         },
      #       }
      class S3Resource < Aws::Structure.new(
        :bucket_arn,
        :key_range)

        # @!attribute [rw] bucket_arn
        #   The Amazon Resource Name (ARN) of an Amazon S3 bucket.
        #   @return [String]

        # @!attribute [rw] key_range
        #   For export jobs, you can provide an optional `KeyRange` within a
        #   specific Amazon S3 bucket. The length of the range is defined at job
        #   creation, and has either an inclusive `BeginMarker`, an inclusive
        #   `EndMarker`, or both. Ranges are UTF-8 binary sorted.
        #   @return [Types::KeyRange]

      end

      # The `Status` and `TrackingNumber` information for an inbound or
      # outbound shipment.
      class Shipment < Aws::Structure.new(
        :status,
        :tracking_number)

        # @!attribute [rw] status
        #   Status information for a shipment. Valid statuses include `NEW`,
        #   `IN_TRANSIT`, and `DELIVERED`.
        #   @return [String]

        # @!attribute [rw] tracking_number
        #   The tracking number for this job. Using this tracking number with
        #   your region\'s carrier\'s website, you can track a Snowball as the
        #   carrier transports it.
        #
        #   For India, the carrier is Amazon Logistics. For all other regions,
        #   UPS is the carrier.
        #   @return [String]

      end

      # A job\'s shipping information, including inbound and outbound tracking
      # numbers and shipping speed options.
      class ShippingDetails < Aws::Structure.new(
        :shipping_option,
        :inbound_shipment,
        :outbound_shipment)

        # @!attribute [rw] shipping_option
        #   The shipping speed for a particular job. Note that this speed does
        #   not dictate how soon you\'ll get the Snowball from the job\'s
        #   creation date. This speed represents how quickly it moves to its
        #   destination while in transit. Regional shipping speeds are as
        #   follows:
        #
        #   * In Australia, you have access to express shipping. Typically,
        #     Snowballs shipped express are delivered in about a day.
        #
        #   * In the European Union (EU), you have access to express shipping.
        #     Typically, Snowballs shipped express are delivered in about a day.
        #     In addition, most countries in the EU have access to standard
        #     shipping, which typically takes less than a week, one way.
        #
        #   * In India, Snowballs are delivered in one to seven days.
        #
        #   * In the United States of America (US), you have access to one-day
        #     shipping and two-day shipping.
        #   @return [String]

        # @!attribute [rw] inbound_shipment
        #   The `Status` and `TrackingNumber` values for a Snowball being
        #   delivered to the address that you specified for a particular job.
        #   @return [Types::Shipment]

        # @!attribute [rw] outbound_shipment
        #   The `Status` and `TrackingNumber` values for a Snowball being
        #   returned to AWS for a particular job.
        #   @return [Types::Shipment]

      end

      # @note When making an API call, pass UpdateJobRequest
      #   data as a hash:
      #
      #       {
      #         job_id: "JobId", # required
      #         role_arn: "RoleARN",
      #         notification: {
      #           sns_topic_arn: "SnsTopicARN",
      #           job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
      #           notify_all: false,
      #         },
      #         resources: {
      #           s3_resources: [
      #             {
      #               bucket_arn: "ResourceARN",
      #               key_range: {
      #                 begin_marker: "String",
      #                 end_marker: "String",
      #               },
      #             },
      #           ],
      #         },
      #         address_id: "AddressId",
      #         shipping_option: "SECOND_DAY", # accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
      #         description: "String",
      #         snowball_capacity_preference: "T50", # accepts T50, T80, NoPreference
      #       }
      class UpdateJobRequest < Aws::Structure.new(
        :job_id,
        :role_arn,
        :notification,
        :resources,
        :address_id,
        :shipping_option,
        :description,
        :snowball_capacity_preference)

        # @!attribute [rw] job_id
        #   The job ID of the job that you want to update, for example
        #   `JID123e4567-e89b-12d3-a456-426655440000`.
        #   @return [String]

        # @!attribute [rw] role_arn
        #   The new role Amazon Resource Name (ARN) that you want to associate
        #   with this job. To create a role ARN, use the [CreateRole][1] AWS
        #   Identity and Access Management (IAM) API action.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
        #   @return [String]

        # @!attribute [rw] notification
        #   The new or updated Notification object.
        #   @return [Types::Notification]

        # @!attribute [rw] resources
        #   The updated S3Resource object (for a single Amazon S3 bucket or key
        #   range), or the updated JobResource object (for multiple buckets or
        #   key ranges).
        #   @return [Types::JobResource]

        # @!attribute [rw] address_id
        #   The ID of the updated Address object.
        #   @return [String]

        # @!attribute [rw] shipping_option
        #   The updated shipping option value of this job\'s ShippingDetails
        #   object.
        #   @return [String]

        # @!attribute [rw] description
        #   The updated description of this job\'s JobMetadata object.
        #   @return [String]

        # @!attribute [rw] snowball_capacity_preference
        #   The updated `SnowballCapacityPreference` of this job\'s JobMetadata
        #   object. Note that the 50 TB Snowballs are only available in the US
        #   regions.
        #   @return [String]

      end

      class UpdateJobResult < Aws::EmptyStructure; end

    end
  end
end
