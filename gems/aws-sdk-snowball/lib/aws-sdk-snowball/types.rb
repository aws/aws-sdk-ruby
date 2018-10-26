# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Snowball
  module Types

    # The address that you want the Snowball or Snowballs associated with a
    # specific job to be shipped to. Addresses are validated at the time of
    # creation. The address you provide must be located within the
    # serviceable area of your region. Although no individual elements of
    # the `Address` are required, if the address is invalid or unsupported,
    # then an exception is thrown.
    #
    # @note When making an API call, you may pass Address
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
    #         is_restricted: false,
    #       }
    #
    # @!attribute [rw] address_id
    #   The unique ID for an address.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a person to receive a Snowball at an address.
    #   @return [String]
    #
    # @!attribute [rw] company
    #   The name of the company to receive a Snowball at an address.
    #   @return [String]
    #
    # @!attribute [rw] street_1
    #   The first line in a street address that a Snowball is to be
    #   delivered to.
    #   @return [String]
    #
    # @!attribute [rw] street_2
    #   The second line in a street address that a Snowball is to be
    #   delivered to.
    #   @return [String]
    #
    # @!attribute [rw] street_3
    #   The third line in a street address that a Snowball is to be
    #   delivered to.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city in an address that a Snowball is to be delivered to.
    #   @return [String]
    #
    # @!attribute [rw] state_or_province
    #   The state or province in an address that a Snowball is to be
    #   delivered to.
    #   @return [String]
    #
    # @!attribute [rw] prefecture_or_district
    #   This field is no longer used and the value is ignored.
    #   @return [String]
    #
    # @!attribute [rw] landmark
    #   This field is no longer used and the value is ignored.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The country in an address that a Snowball is to be delivered to.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   The postal code in an address that a Snowball is to be delivered to.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number associated with an address that a Snowball is to be
    #   delivered to.
    #   @return [String]
    #
    # @!attribute [rw] is_restricted
    #   If the address you are creating is a primary address, then set this
    #   option to true. This field is not supported in most regions.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/Address AWS API Documentation
    #
    class Address < Struct.new(
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
      :phone_number,
      :is_restricted)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelClusterRequest
    #   data as a hash:
    #
    #       {
    #         cluster_id: "ClusterId", # required
    #       }
    #
    # @!attribute [rw] cluster_id
    #   The 39-character ID for the cluster that you want to cancel, for
    #   example `CID123e4567-e89b-12d3-a456-426655440000`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CancelClusterRequest AWS API Documentation
    #
    class CancelClusterRequest < Struct.new(
      :cluster_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CancelClusterResult AWS API Documentation
    #
    class CancelClusterResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CancelJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The 39-character job ID for the job that you want to cancel, for
    #   example `JID123e4567-e89b-12d3-a456-426655440000`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CancelJobRequest AWS API Documentation
    #
    class CancelJobRequest < Struct.new(
      :job_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CancelJobResult AWS API Documentation
    #
    class CancelJobResult < Aws::EmptyStructure; end

    # Contains a cluster's state, a cluster's ID, and other important
    # information.
    #
    # @!attribute [rw] cluster_id
    #   The 39-character ID for the cluster that you want to list, for
    #   example `CID123e4567-e89b-12d3-a456-426655440000`.
    #   @return [String]
    #
    # @!attribute [rw] cluster_state
    #   The current state of this cluster. For information about the state
    #   of a specific node, see JobListEntry$JobState.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The creation date for this cluster.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   Defines an optional description of the cluster, for example
    #   `Environmental Data Cluster-01`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ClusterListEntry AWS API Documentation
    #
    class ClusterListEntry < Struct.new(
      :cluster_id,
      :cluster_state,
      :creation_date,
      :description)
      include Aws::Structure
    end

    # Contains metadata about a specific cluster.
    #
    # @!attribute [rw] cluster_id
    #   The automatically generated ID for a cluster.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The optional description of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The `KmsKeyARN` Amazon Resource Name (ARN) associated with this
    #   cluster. This ARN was created using the [CreateKey][1] API action in
    #   AWS Key Management Service (AWS KMS).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The role ARN associated with this cluster. This ARN was created
    #   using the [CreateRole][1] API action in AWS Identity and Access
    #   Management (IAM).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
    #   @return [String]
    #
    # @!attribute [rw] cluster_state
    #   The current status of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] job_type
    #   The type of job for this cluster. Currently, the only job type
    #   supported for clusters is `LOCAL_USE`.
    #   @return [String]
    #
    # @!attribute [rw] snowball_type
    #   The type of AWS Snowball device to use for this cluster. Currently,
    #   the only supported device type for cluster jobs is `EDGE`.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The creation date for this cluster.
    #   @return [Time]
    #
    # @!attribute [rw] resources
    #   The arrays of JobResource objects that can include updated
    #   S3Resource objects or LambdaResource objects.
    #   @return [Types::JobResource]
    #
    # @!attribute [rw] address_id
    #   The automatically generated ID for a specific address.
    #   @return [String]
    #
    # @!attribute [rw] shipping_option
    #   The shipping speed for each node in this cluster. This speed
    #   doesn't dictate how soon you'll get each Snowball Edge device,
    #   rather it represents how quickly each device moves to its
    #   destination while in transit. Regional shipping speeds are as
    #   follows:
    #
    #   * In Australia, you have access to express shipping. Typically,
    #     devices shipped express are delivered in about a day.
    #
    #   * In the European Union (EU), you have access to express shipping.
    #     Typically, Snowball Edges shipped express are delivered in about a
    #     day. In addition, most countries in the EU have access to standard
    #     shipping, which typically takes less than a week, one way.
    #
    #   * In India, Snowball Edges are delivered in one to seven days.
    #
    #   * In the US, you have access to one-day shipping and two-day
    #     shipping.
    #   @return [String]
    #
    # @!attribute [rw] notification
    #   The Amazon Simple Notification Service (Amazon SNS) notification
    #   settings for this cluster.
    #   @return [Types::Notification]
    #
    # @!attribute [rw] forwarding_address_id
    #   The ID of the address that you want a cluster shipped to, after it
    #   will be shipped to its primary address. This field is not supported
    #   in most regions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ClusterMetadata AWS API Documentation
    #
    class ClusterMetadata < Struct.new(
      :cluster_id,
      :description,
      :kms_key_arn,
      :role_arn,
      :cluster_state,
      :job_type,
      :snowball_type,
      :creation_date,
      :resources,
      :address_id,
      :shipping_option,
      :notification,
      :forwarding_address_id)
      include Aws::Structure
    end

    # A JSON-formatted object that describes a compatible Amazon Machine
    # Image (AMI), including the ID and name for a Snowball Edge AMI. This
    # AMI is compatible with the device's physical hardware requirements,
    # and it should be able to be run in an SBE1 instance on the device.
    #
    # @!attribute [rw] ami_id
    #   The unique identifier for an individual Snowball Edge AMI.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The optional name of a compatible image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CompatibleImage AWS API Documentation
    #
    class CompatibleImage < Struct.new(
      :ami_id,
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAddressRequest
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
    #           is_restricted: false,
    #         },
    #       }
    #
    # @!attribute [rw] address
    #   The address that you want the Snowball shipped to.
    #   @return [Types::Address]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CreateAddressRequest AWS API Documentation
    #
    class CreateAddressRequest < Struct.new(
      :address)
      include Aws::Structure
    end

    # @!attribute [rw] address_id
    #   The automatically generated ID for a specific address. You'll use
    #   this ID when you create a job to specify which address you want the
    #   Snowball for that job shipped to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CreateAddressResult AWS API Documentation
    #
    class CreateAddressResult < Struct.new(
      :address_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateClusterRequest
    #   data as a hash:
    #
    #       {
    #         job_type: "IMPORT", # required, accepts IMPORT, EXPORT, LOCAL_USE
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
    #           lambda_resources: [
    #             {
    #               lambda_arn: "ResourceARN",
    #               event_triggers: [
    #                 {
    #                   event_resource_arn: "ResourceARN",
    #                 },
    #               ],
    #             },
    #           ],
    #           ec2_ami_resources: [
    #             {
    #               ami_id: "AmiId", # required
    #               snowball_ami_id: "String",
    #             },
    #           ],
    #         },
    #         description: "String",
    #         address_id: "AddressId", # required
    #         kms_key_arn: "KmsKeyARN",
    #         role_arn: "RoleARN", # required
    #         snowball_type: "STANDARD", # accepts STANDARD, EDGE
    #         shipping_option: "SECOND_DAY", # required, accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
    #         notification: {
    #           sns_topic_arn: "SnsTopicARN",
    #           job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWSSortingFacility, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
    #           notify_all: false,
    #         },
    #         forwarding_address_id: "AddressId",
    #       }
    #
    # @!attribute [rw] job_type
    #   The type of job for this cluster. Currently, the only job type
    #   supported for clusters is `LOCAL_USE`.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The resources associated with the cluster job. These resources
    #   include Amazon S3 buckets and optional AWS Lambda functions written
    #   in the Python language.
    #   @return [Types::JobResource]
    #
    # @!attribute [rw] description
    #   An optional description of this specific cluster, for example
    #   `Environmental Data Cluster-01`.
    #   @return [String]
    #
    # @!attribute [rw] address_id
    #   The ID for the address that you want the cluster shipped to.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The `KmsKeyARN` value that you want to associate with this cluster.
    #   `KmsKeyARN` values are created by using the [CreateKey][1] API
    #   action in AWS Key Management Service (AWS KMS).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The `RoleARN` that you want to associate with this cluster.
    #   `RoleArn` values are created by using the [CreateRole][1] API action
    #   in AWS Identity and Access Management (IAM).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
    #   @return [String]
    #
    # @!attribute [rw] snowball_type
    #   The type of AWS Snowball device to use for this cluster. Currently,
    #   the only supported device type for cluster jobs is `EDGE`.
    #   @return [String]
    #
    # @!attribute [rw] shipping_option
    #   The shipping speed for each node in this cluster. This speed
    #   doesn't dictate how soon you'll get each Snowball Edge device,
    #   rather it represents how quickly each device moves to its
    #   destination while in transit. Regional shipping speeds are as
    #   follows:
    #
    #   * In Australia, you have access to express shipping. Typically,
    #     devices shipped express are delivered in about a day.
    #
    #   * In the European Union (EU), you have access to express shipping.
    #     Typically, Snowball Edges shipped express are delivered in about a
    #     day. In addition, most countries in the EU have access to standard
    #     shipping, which typically takes less than a week, one way.
    #
    #   * In India, Snowball Edges are delivered in one to seven days.
    #
    #   * In the US, you have access to one-day shipping and two-day
    #     shipping.
    #   @return [String]
    #
    # @!attribute [rw] notification
    #   The Amazon Simple Notification Service (Amazon SNS) notification
    #   settings for this cluster.
    #   @return [Types::Notification]
    #
    # @!attribute [rw] forwarding_address_id
    #   The forwarding address ID for a cluster. This field is not supported
    #   in most regions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CreateClusterRequest AWS API Documentation
    #
    class CreateClusterRequest < Struct.new(
      :job_type,
      :resources,
      :description,
      :address_id,
      :kms_key_arn,
      :role_arn,
      :snowball_type,
      :shipping_option,
      :notification,
      :forwarding_address_id)
      include Aws::Structure
    end

    # @!attribute [rw] cluster_id
    #   The automatically generated ID for a cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CreateClusterResult AWS API Documentation
    #
    class CreateClusterResult < Struct.new(
      :cluster_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateJobRequest
    #   data as a hash:
    #
    #       {
    #         job_type: "IMPORT", # accepts IMPORT, EXPORT, LOCAL_USE
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
    #           lambda_resources: [
    #             {
    #               lambda_arn: "ResourceARN",
    #               event_triggers: [
    #                 {
    #                   event_resource_arn: "ResourceARN",
    #                 },
    #               ],
    #             },
    #           ],
    #           ec2_ami_resources: [
    #             {
    #               ami_id: "AmiId", # required
    #               snowball_ami_id: "String",
    #             },
    #           ],
    #         },
    #         description: "String",
    #         address_id: "AddressId",
    #         kms_key_arn: "KmsKeyARN",
    #         role_arn: "RoleARN",
    #         snowball_capacity_preference: "T50", # accepts T50, T80, T100, NoPreference
    #         shipping_option: "SECOND_DAY", # accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
    #         notification: {
    #           sns_topic_arn: "SnsTopicARN",
    #           job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWSSortingFacility, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
    #           notify_all: false,
    #         },
    #         cluster_id: "ClusterId",
    #         snowball_type: "STANDARD", # accepts STANDARD, EDGE
    #         forwarding_address_id: "AddressId",
    #       }
    #
    # @!attribute [rw] job_type
    #   Defines the type of job that you're creating.
    #   @return [String]
    #
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
    #
    # @!attribute [rw] description
    #   Defines an optional description of this specific job, for example
    #   `Important Photos 2016-08-11`.
    #   @return [String]
    #
    # @!attribute [rw] address_id
    #   The ID for the address that you want the Snowball shipped to.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The `KmsKeyARN` that you want to associate with this job.
    #   `KmsKeyARN`s are created using the [CreateKey][1] AWS Key Management
    #   Service (KMS) API action.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The `RoleARN` that you want to associate with this job. `RoleArn`s
    #   are created using the [CreateRole][1] AWS Identity and Access
    #   Management (IAM) API action.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
    #   @return [String]
    #
    # @!attribute [rw] snowball_capacity_preference
    #   If your job is being created in one of the US regions, you have the
    #   option of specifying what size Snowball you'd like for this job. In
    #   all other regions, Snowballs come with 80 TB in storage capacity.
    #   @return [String]
    #
    # @!attribute [rw] shipping_option
    #   The shipping speed for this job. This speed doesn't dictate how
    #   soon you'll get the Snowball, rather it represents how quickly the
    #   Snowball moves to its destination while in transit. Regional
    #   shipping speeds are as follows:
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
    #
    # @!attribute [rw] notification
    #   Defines the Amazon Simple Notification Service (Amazon SNS)
    #   notification settings for this job.
    #   @return [Types::Notification]
    #
    # @!attribute [rw] cluster_id
    #   The ID of a cluster. If you're creating a job for a node in a
    #   cluster, you need to provide only this `clusterId` value. The other
    #   job attributes are inherited from the cluster.
    #   @return [String]
    #
    # @!attribute [rw] snowball_type
    #   The type of AWS Snowball device to use for this job. Currently, the
    #   only supported device type for cluster jobs is `EDGE`.
    #   @return [String]
    #
    # @!attribute [rw] forwarding_address_id
    #   The forwarding address ID for a job. This field is not supported in
    #   most regions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CreateJobRequest AWS API Documentation
    #
    class CreateJobRequest < Struct.new(
      :job_type,
      :resources,
      :description,
      :address_id,
      :kms_key_arn,
      :role_arn,
      :snowball_capacity_preference,
      :shipping_option,
      :notification,
      :cluster_id,
      :snowball_type,
      :forwarding_address_id)
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The automatically generated ID for a job, for example
    #   `JID123e4567-e89b-12d3-a456-426655440000`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CreateJobResult AWS API Documentation
    #
    class CreateJobResult < Struct.new(
      :job_id)
      include Aws::Structure
    end

    # Defines the real-time status of a Snowball's data transfer while the
    # device is at AWS. This data is only available while a job has a
    # `JobState` value of `InProgress`, for both import and export jobs.
    #
    # @!attribute [rw] bytes_transferred
    #   The number of bytes transferred between a Snowball and Amazon S3.
    #   @return [Integer]
    #
    # @!attribute [rw] objects_transferred
    #   The number of objects transferred between a Snowball and Amazon S3.
    #   @return [Integer]
    #
    # @!attribute [rw] total_bytes
    #   The total bytes of data for a transfer between a Snowball and Amazon
    #   S3. This value is set to 0 (zero) until all the keys that will be
    #   transferred have been listed.
    #   @return [Integer]
    #
    # @!attribute [rw] total_objects
    #   The total number of objects for a transfer between a Snowball and
    #   Amazon S3. This value is set to 0 (zero) until all the keys that
    #   will be transferred have been listed.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DataTransfer AWS API Documentation
    #
    class DataTransfer < Struct.new(
      :bytes_transferred,
      :objects_transferred,
      :total_bytes,
      :total_objects)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAddressRequest
    #   data as a hash:
    #
    #       {
    #         address_id: "AddressId", # required
    #       }
    #
    # @!attribute [rw] address_id
    #   The automatically generated ID for a specific address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeAddressRequest AWS API Documentation
    #
    class DescribeAddressRequest < Struct.new(
      :address_id)
      include Aws::Structure
    end

    # @!attribute [rw] address
    #   The address that you want the Snowball or Snowballs associated with
    #   a specific job to be shipped to.
    #   @return [Types::Address]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeAddressResult AWS API Documentation
    #
    class DescribeAddressResult < Struct.new(
      :address)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAddressesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] max_results
    #   The number of `ADDRESS` objects to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   HTTP requests are stateless. To identify what object comes "next"
    #   in the list of `ADDRESS` objects, you have the option of specifying
    #   a value for `NextToken` as the starting point for your list of
    #   returned addresses.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeAddressesRequest AWS API Documentation
    #
    class DescribeAddressesRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] addresses
    #   The Snowball shipping addresses that were created for this account.
    #   @return [Array<Types::Address>]
    #
    # @!attribute [rw] next_token
    #   HTTP requests are stateless. If you use the automatically generated
    #   `NextToken` value in your next `DescribeAddresses` call, your list
    #   of returned addresses will start from this point in the array.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeAddressesResult AWS API Documentation
    #
    class DescribeAddressesResult < Struct.new(
      :addresses,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeClusterRequest
    #   data as a hash:
    #
    #       {
    #         cluster_id: "ClusterId", # required
    #       }
    #
    # @!attribute [rw] cluster_id
    #   The automatically generated ID for a cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeClusterRequest AWS API Documentation
    #
    class DescribeClusterRequest < Struct.new(
      :cluster_id)
      include Aws::Structure
    end

    # @!attribute [rw] cluster_metadata
    #   Information about a specific cluster, including shipping
    #   information, cluster status, and other important metadata.
    #   @return [Types::ClusterMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeClusterResult AWS API Documentation
    #
    class DescribeClusterResult < Struct.new(
      :cluster_metadata)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The automatically generated ID for a job, for example
    #   `JID123e4567-e89b-12d3-a456-426655440000`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeJobRequest AWS API Documentation
    #
    class DescribeJobRequest < Struct.new(
      :job_id)
      include Aws::Structure
    end

    # @!attribute [rw] job_metadata
    #   Information about a specific job, including shipping information,
    #   job status, and other important metadata.
    #   @return [Types::JobMetadata]
    #
    # @!attribute [rw] sub_job_metadata
    #   Information about a specific job part (in the case of an export
    #   job), including shipping information, job status, and other
    #   important metadata.
    #   @return [Array<Types::JobMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeJobResult AWS API Documentation
    #
    class DescribeJobResult < Struct.new(
      :job_metadata,
      :sub_job_metadata)
      include Aws::Structure
    end

    # A JSON-formatted object that contains the IDs for an Amazon Machine
    # Image (AMI), including the Amazon EC2 AMI ID and the Snowball Edge AMI
    # ID. Each AMI has these two IDs to simplify identifying the AMI in both
    # the AWS Cloud and on the device.
    #
    # @note When making an API call, you may pass Ec2AmiResource
    #   data as a hash:
    #
    #       {
    #         ami_id: "AmiId", # required
    #         snowball_ami_id: "String",
    #       }
    #
    # @!attribute [rw] ami_id
    #   The ID of the AMI in Amazon EC2.
    #   @return [String]
    #
    # @!attribute [rw] snowball_ami_id
    #   The ID of the AMI on the Snowball Edge device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/Ec2AmiResource AWS API Documentation
    #
    class Ec2AmiResource < Struct.new(
      :ami_id,
      :snowball_ami_id)
      include Aws::Structure
    end

    # The container for the EventTriggerDefinition$EventResourceARN.
    #
    # @note When making an API call, you may pass EventTriggerDefinition
    #   data as a hash:
    #
    #       {
    #         event_resource_arn: "ResourceARN",
    #       }
    #
    # @!attribute [rw] event_resource_arn
    #   The Amazon Resource Name (ARN) for any local Amazon S3 resource that
    #   is an AWS Lambda function's event trigger associated with this job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/EventTriggerDefinition AWS API Documentation
    #
    class EventTriggerDefinition < Struct.new(
      :event_resource_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetJobManifestRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The ID for a job that you want to get the manifest file for, for
    #   example `JID123e4567-e89b-12d3-a456-426655440000`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/GetJobManifestRequest AWS API Documentation
    #
    class GetJobManifestRequest < Struct.new(
      :job_id)
      include Aws::Structure
    end

    # @!attribute [rw] manifest_uri
    #   The Amazon S3 presigned URL for the manifest file associated with
    #   the specified `JobId` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/GetJobManifestResult AWS API Documentation
    #
    class GetJobManifestResult < Struct.new(
      :manifest_uri)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetJobUnlockCodeRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The ID for the job that you want to get the `UnlockCode` value for,
    #   for example `JID123e4567-e89b-12d3-a456-426655440000`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/GetJobUnlockCodeRequest AWS API Documentation
    #
    class GetJobUnlockCodeRequest < Struct.new(
      :job_id)
      include Aws::Structure
    end

    # @!attribute [rw] unlock_code
    #   The `UnlockCode` value for the specified job. The `UnlockCode` value
    #   can be accessed for up to 90 days after the job has been created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/GetJobUnlockCodeResult AWS API Documentation
    #
    class GetJobUnlockCodeResult < Struct.new(
      :unlock_code)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/GetSnowballUsageRequest AWS API Documentation
    #
    class GetSnowballUsageRequest < Aws::EmptyStructure; end

    # @!attribute [rw] snowball_limit
    #   The service limit for number of Snowballs this account can have at
    #   once. The default service limit is 1 (one).
    #   @return [Integer]
    #
    # @!attribute [rw] snowballs_in_use
    #   The number of Snowballs that this account is currently using.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/GetSnowballUsageResult AWS API Documentation
    #
    class GetSnowballUsageResult < Struct.new(
      :snowball_limit,
      :snowballs_in_use)
      include Aws::Structure
    end

    # Each `JobListEntry` object contains a job's state, a job's ID, and a
    # value that indicates whether the job is a job part, in the case of an
    # export job.
    #
    # @!attribute [rw] job_id
    #   The automatically generated ID for a job, for example
    #   `JID123e4567-e89b-12d3-a456-426655440000`.
    #   @return [String]
    #
    # @!attribute [rw] job_state
    #   The current state of this job.
    #   @return [String]
    #
    # @!attribute [rw] is_master
    #   A value that indicates that this job is a master job. A master job
    #   represents a successful request to create an export job. Master jobs
    #   aren't associated with any Snowballs. Instead, each master job will
    #   have at least one job part, and each job part is associated with a
    #   Snowball. It might take some time before the job parts associated
    #   with a particular master job are listed, because they are created
    #   after the master job is created.
    #   @return [Boolean]
    #
    # @!attribute [rw] job_type
    #   The type of job.
    #   @return [String]
    #
    # @!attribute [rw] snowball_type
    #   The type of device used with this job.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The creation date for this job.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The optional description of this specific job, for example
    #   `Important Photos 2016-08-11`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/JobListEntry AWS API Documentation
    #
    class JobListEntry < Struct.new(
      :job_id,
      :job_state,
      :is_master,
      :job_type,
      :snowball_type,
      :creation_date,
      :description)
      include Aws::Structure
    end

    # Contains job logs. Whenever Snowball is used to import data into or
    # export data out of Amazon S3, you'll have the option of downloading a
    # PDF job report. Job logs are returned as a part of the response syntax
    # of the `DescribeJob` action in the `JobMetadata` data type. The job
    # logs can be accessed for up to 60 minutes after this request has been
    # made. To access any of the job logs after 60 minutes have passed,
    # you'll have to make another call to the `DescribeJob` action.
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
    #
    # @!attribute [rw] job_completion_report_uri
    #   A link to an Amazon S3 presigned URL where the job completion report
    #   is located.
    #   @return [String]
    #
    # @!attribute [rw] job_success_log_uri
    #   A link to an Amazon S3 presigned URL where the job success log is
    #   located.
    #   @return [String]
    #
    # @!attribute [rw] job_failure_log_uri
    #   A link to an Amazon S3 presigned URL where the job failure log is
    #   located.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/JobLogs AWS API Documentation
    #
    class JobLogs < Struct.new(
      :job_completion_report_uri,
      :job_success_log_uri,
      :job_failure_log_uri)
      include Aws::Structure
    end

    # Contains information about a specific job including shipping
    # information, job status, and other important metadata. This
    # information is returned as a part of the response syntax of the
    # `DescribeJob` action.
    #
    # @!attribute [rw] job_id
    #   The automatically generated ID for a job, for example
    #   `JID123e4567-e89b-12d3-a456-426655440000`.
    #   @return [String]
    #
    # @!attribute [rw] job_state
    #   The current status of the jobs.
    #   @return [String]
    #
    # @!attribute [rw] job_type
    #   The type of job.
    #   @return [String]
    #
    # @!attribute [rw] snowball_type
    #   The type of device used with this job.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The creation date for this job.
    #   @return [Time]
    #
    # @!attribute [rw] resources
    #   An array of `S3Resource` objects. Each `S3Resource` object
    #   represents an Amazon S3 bucket that your transferred data will be
    #   exported from or imported into.
    #   @return [Types::JobResource]
    #
    # @!attribute [rw] description
    #   The description of the job, provided at job creation.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) for the AWS Key Management Service
    #   (AWS KMS) key associated with this job. This ARN was created using
    #   the [CreateKey][1] API action in AWS KMS.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The role ARN associated with this job. This ARN was created using
    #   the [CreateRole][1] API action in AWS Identity and Access Management
    #   (IAM).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
    #   @return [String]
    #
    # @!attribute [rw] address_id
    #   The ID for the address that you want the Snowball shipped to.
    #   @return [String]
    #
    # @!attribute [rw] shipping_details
    #   A job's shipping information, including inbound and outbound
    #   tracking numbers and shipping speed options.
    #   @return [Types::ShippingDetails]
    #
    # @!attribute [rw] snowball_capacity_preference
    #   The Snowball capacity preference for this job, specified at job
    #   creation. In US regions, you can choose between 50 TB and 80 TB
    #   Snowballs. All other regions use 80 TB capacity Snowballs.
    #   @return [String]
    #
    # @!attribute [rw] notification
    #   The Amazon Simple Notification Service (Amazon SNS) notification
    #   settings associated with a specific job. The `Notification` object
    #   is returned as a part of the response syntax of the `DescribeJob`
    #   action in the `JobMetadata` data type.
    #   @return [Types::Notification]
    #
    # @!attribute [rw] data_transfer_progress
    #   A value that defines the real-time status of a Snowball's data
    #   transfer while the device is at AWS. This data is only available
    #   while a job has a `JobState` value of `InProgress`, for both import
    #   and export jobs.
    #   @return [Types::DataTransfer]
    #
    # @!attribute [rw] job_log_info
    #   Links to Amazon S3 presigned URLs for the job report and logs. For
    #   import jobs, the PDF job report becomes available at the end of the
    #   import process. For export jobs, your job report typically becomes
    #   available while the Snowball for your job part is being delivered to
    #   you.
    #   @return [Types::JobLogs]
    #
    # @!attribute [rw] cluster_id
    #   The 39-character ID for the cluster, for example
    #   `CID123e4567-e89b-12d3-a456-426655440000`.
    #   @return [String]
    #
    # @!attribute [rw] forwarding_address_id
    #   The ID of the address that you want a job shipped to, after it will
    #   be shipped to its primary address. This field is not supported in
    #   most regions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/JobMetadata AWS API Documentation
    #
    class JobMetadata < Struct.new(
      :job_id,
      :job_state,
      :job_type,
      :snowball_type,
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
      :job_log_info,
      :cluster_id,
      :forwarding_address_id)
      include Aws::Structure
    end

    # Contains an array of AWS resource objects. Each object represents an
    # Amazon S3 bucket, an AWS Lambda function, or an Amazon Machine Image
    # (AMI) based on Amazon EC2 that is associated with a particular job.
    #
    # @note When making an API call, you may pass JobResource
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
    #         lambda_resources: [
    #           {
    #             lambda_arn: "ResourceARN",
    #             event_triggers: [
    #               {
    #                 event_resource_arn: "ResourceARN",
    #               },
    #             ],
    #           },
    #         ],
    #         ec2_ami_resources: [
    #           {
    #             ami_id: "AmiId", # required
    #             snowball_ami_id: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] s3_resources
    #   An array of `S3Resource` objects.
    #   @return [Array<Types::S3Resource>]
    #
    # @!attribute [rw] lambda_resources
    #   The Python-language Lambda functions for this job.
    #   @return [Array<Types::LambdaResource>]
    #
    # @!attribute [rw] ec2_ami_resources
    #   The Amazon Machine Images (AMIs) associated with this job.
    #   @return [Array<Types::Ec2AmiResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/JobResource AWS API Documentation
    #
    class JobResource < Struct.new(
      :s3_resources,
      :lambda_resources,
      :ec2_ami_resources)
      include Aws::Structure
    end

    # Contains a key range. For export jobs, a `S3Resource` object can have
    # an optional `KeyRange` value. The length of the range is defined at
    # job creation, and has either an inclusive `BeginMarker`, an inclusive
    # `EndMarker`, or both. Ranges are UTF-8 binary sorted.
    #
    # @note When making an API call, you may pass KeyRange
    #   data as a hash:
    #
    #       {
    #         begin_marker: "String",
    #         end_marker: "String",
    #       }
    #
    # @!attribute [rw] begin_marker
    #   The key that starts an optional key range for an export job. Ranges
    #   are inclusive and UTF-8 binary sorted.
    #   @return [String]
    #
    # @!attribute [rw] end_marker
    #   The key that ends an optional key range for an export job. Ranges
    #   are inclusive and UTF-8 binary sorted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/KeyRange AWS API Documentation
    #
    class KeyRange < Struct.new(
      :begin_marker,
      :end_marker)
      include Aws::Structure
    end

    # Identifies
    #
    # @note When making an API call, you may pass LambdaResource
    #   data as a hash:
    #
    #       {
    #         lambda_arn: "ResourceARN",
    #         event_triggers: [
    #           {
    #             event_resource_arn: "ResourceARN",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] lambda_arn
    #   An Amazon Resource Name (ARN) that represents an AWS Lambda function
    #   to be triggered by PUT object actions on the associated local Amazon
    #   S3 resource.
    #   @return [String]
    #
    # @!attribute [rw] event_triggers
    #   The array of ARNs for S3Resource objects to trigger the
    #   LambdaResource objects associated with this job.
    #   @return [Array<Types::EventTriggerDefinition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/LambdaResource AWS API Documentation
    #
    class LambdaResource < Struct.new(
      :lambda_arn,
      :event_triggers)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListClusterJobsRequest
    #   data as a hash:
    #
    #       {
    #         cluster_id: "ClusterId", # required
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] cluster_id
    #   The 39-character ID for the cluster that you want to list, for
    #   example `CID123e4567-e89b-12d3-a456-426655440000`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of `JobListEntry` objects to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   HTTP requests are stateless. To identify what object comes "next"
    #   in the list of `JobListEntry` objects, you have the option of
    #   specifying `NextToken` as the starting point for your returned list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListClusterJobsRequest AWS API Documentation
    #
    class ListClusterJobsRequest < Struct.new(
      :cluster_id,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] job_list_entries
    #   Each `JobListEntry` object contains a job's state, a job's ID, and
    #   a value that indicates whether the job is a job part, in the case of
    #   export jobs.
    #   @return [Array<Types::JobListEntry>]
    #
    # @!attribute [rw] next_token
    #   HTTP requests are stateless. If you use the automatically generated
    #   `NextToken` value in your next `ListClusterJobsResult` call, your
    #   list of returned jobs will start from this point in the array.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListClusterJobsResult AWS API Documentation
    #
    class ListClusterJobsResult < Struct.new(
      :job_list_entries,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListClustersRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] max_results
    #   The number of `ClusterListEntry` objects to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   HTTP requests are stateless. To identify what object comes "next"
    #   in the list of `ClusterListEntry` objects, you have the option of
    #   specifying `NextToken` as the starting point for your returned list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListClustersRequest AWS API Documentation
    #
    class ListClustersRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] cluster_list_entries
    #   Each `ClusterListEntry` object contains a cluster's state, a
    #   cluster's ID, and other important status information.
    #   @return [Array<Types::ClusterListEntry>]
    #
    # @!attribute [rw] next_token
    #   HTTP requests are stateless. If you use the automatically generated
    #   `NextToken` value in your next `ClusterListEntry` call, your list of
    #   returned clusters will start from this point in the array.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListClustersResult AWS API Documentation
    #
    class ListClustersResult < Struct.new(
      :cluster_list_entries,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCompatibleImagesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results for the list of compatible images.
    #   Currently, a Snowball Edge device can store 10 AMIs.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   HTTP requests are stateless. To identify what object comes "next"
    #   in the list of compatible images, you can specify a value for
    #   `NextToken` as the starting point for your list of returned images.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListCompatibleImagesRequest AWS API Documentation
    #
    class ListCompatibleImagesRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] compatible_images
    #   A JSON-formatted object that describes a compatible AMI, including
    #   the ID and name for a Snowball Edge AMI.
    #   @return [Array<Types::CompatibleImage>]
    #
    # @!attribute [rw] next_token
    #   Because HTTP requests are stateless, this is the starting point for
    #   your next list of returned images.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListCompatibleImagesResult AWS API Documentation
    #
    class ListCompatibleImagesResult < Struct.new(
      :compatible_images,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListJobsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] max_results
    #   The number of `JobListEntry` objects to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   HTTP requests are stateless. To identify what object comes "next"
    #   in the list of `JobListEntry` objects, you have the option of
    #   specifying `NextToken` as the starting point for your returned list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListJobsRequest AWS API Documentation
    #
    class ListJobsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] job_list_entries
    #   Each `JobListEntry` object contains a job's state, a job's ID, and
    #   a value that indicates whether the job is a job part, in the case of
    #   export jobs.
    #   @return [Array<Types::JobListEntry>]
    #
    # @!attribute [rw] next_token
    #   HTTP requests are stateless. If you use this automatically generated
    #   `NextToken` value in your next `ListJobs` call, your returned
    #   `JobListEntry` objects will start from this point in the array.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListJobsResult AWS API Documentation
    #
    class ListJobsResult < Struct.new(
      :job_list_entries,
      :next_token)
      include Aws::Structure
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
    #
    # @note When making an API call, you may pass Notification
    #   data as a hash:
    #
    #       {
    #         sns_topic_arn: "SnsTopicARN",
    #         job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWSSortingFacility, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
    #         notify_all: false,
    #       }
    #
    # @!attribute [rw] sns_topic_arn
    #   The new SNS `TopicArn` that you want to associate with this job. You
    #   can create Amazon Resource Names (ARNs) for topics by using the
    #   [CreateTopic][1] Amazon SNS API action.
    #
    #   You can subscribe email addresses to an Amazon SNS topic through the
    #   AWS Management Console, or by using the [Subscribe][2] AWS Simple
    #   Notification Service (SNS) API action.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sns/latest/api/API_CreateTopic.html
    #   [2]: http://docs.aws.amazon.com/sns/latest/api/API_Subscribe.html
    #   @return [String]
    #
    # @!attribute [rw] job_states_to_notify
    #   The list of job states that will trigger a notification for this
    #   job.
    #   @return [Array<String>]
    #
    # @!attribute [rw] notify_all
    #   Any change in job state will trigger a notification for this job.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/Notification AWS API Documentation
    #
    class Notification < Struct.new(
      :sns_topic_arn,
      :job_states_to_notify,
      :notify_all)
      include Aws::Structure
    end

    # Each `S3Resource` object represents an Amazon S3 bucket that your
    # transferred data will be exported from or imported into. For export
    # jobs, this object can have an optional `KeyRange` value. The length of
    # the range is defined at job creation, and has either an inclusive
    # `BeginMarker`, an inclusive `EndMarker`, or both. Ranges are UTF-8
    # binary sorted.
    #
    # @note When making an API call, you may pass S3Resource
    #   data as a hash:
    #
    #       {
    #         bucket_arn: "ResourceARN",
    #         key_range: {
    #           begin_marker: "String",
    #           end_marker: "String",
    #         },
    #       }
    #
    # @!attribute [rw] bucket_arn
    #   The Amazon Resource Name (ARN) of an Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] key_range
    #   For export jobs, you can provide an optional `KeyRange` within a
    #   specific Amazon S3 bucket. The length of the range is defined at job
    #   creation, and has either an inclusive `BeginMarker`, an inclusive
    #   `EndMarker`, or both. Ranges are UTF-8 binary sorted.
    #   @return [Types::KeyRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/S3Resource AWS API Documentation
    #
    class S3Resource < Struct.new(
      :bucket_arn,
      :key_range)
      include Aws::Structure
    end

    # The `Status` and `TrackingNumber` information for an inbound or
    # outbound shipment.
    #
    # @!attribute [rw] status
    #   Status information for a shipment.
    #   @return [String]
    #
    # @!attribute [rw] tracking_number
    #   The tracking number for this job. Using this tracking number with
    #   your region's carrier's website, you can track a Snowball as the
    #   carrier transports it.
    #
    #   For India, the carrier is Amazon Logistics. For all other regions,
    #   UPS is the carrier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/Shipment AWS API Documentation
    #
    class Shipment < Struct.new(
      :status,
      :tracking_number)
      include Aws::Structure
    end

    # A job's shipping information, including inbound and outbound tracking
    # numbers and shipping speed options.
    #
    # @!attribute [rw] shipping_option
    #   The shipping speed for a particular job. This speed doesn't dictate
    #   how soon you'll get the Snowball from the job's creation date.
    #   This speed represents how quickly it moves to its destination while
    #   in transit. Regional shipping speeds are as follows:
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
    #
    # @!attribute [rw] inbound_shipment
    #   The `Status` and `TrackingNumber` values for a Snowball being
    #   returned to AWS for a particular job.
    #   @return [Types::Shipment]
    #
    # @!attribute [rw] outbound_shipment
    #   The `Status` and `TrackingNumber` values for a Snowball being
    #   delivered to the address that you specified for a particular job.
    #   @return [Types::Shipment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ShippingDetails AWS API Documentation
    #
    class ShippingDetails < Struct.new(
      :shipping_option,
      :inbound_shipment,
      :outbound_shipment)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateClusterRequest
    #   data as a hash:
    #
    #       {
    #         cluster_id: "ClusterId", # required
    #         role_arn: "RoleARN",
    #         description: "String",
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
    #           lambda_resources: [
    #             {
    #               lambda_arn: "ResourceARN",
    #               event_triggers: [
    #                 {
    #                   event_resource_arn: "ResourceARN",
    #                 },
    #               ],
    #             },
    #           ],
    #           ec2_ami_resources: [
    #             {
    #               ami_id: "AmiId", # required
    #               snowball_ami_id: "String",
    #             },
    #           ],
    #         },
    #         address_id: "AddressId",
    #         shipping_option: "SECOND_DAY", # accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
    #         notification: {
    #           sns_topic_arn: "SnsTopicARN",
    #           job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWSSortingFacility, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
    #           notify_all: false,
    #         },
    #         forwarding_address_id: "AddressId",
    #       }
    #
    # @!attribute [rw] cluster_id
    #   The cluster ID of the cluster that you want to update, for example
    #   `CID123e4567-e89b-12d3-a456-426655440000`.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The new role Amazon Resource Name (ARN) that you want to associate
    #   with this cluster. To create a role ARN, use the [CreateRole][1] API
    #   action in AWS Identity and Access Management (IAM).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of this cluster.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The updated arrays of JobResource objects that can include updated
    #   S3Resource objects or LambdaResource objects.
    #   @return [Types::JobResource]
    #
    # @!attribute [rw] address_id
    #   The ID of the updated Address object.
    #   @return [String]
    #
    # @!attribute [rw] shipping_option
    #   The updated shipping option value of this cluster's ShippingDetails
    #   object.
    #   @return [String]
    #
    # @!attribute [rw] notification
    #   The new or updated Notification object.
    #   @return [Types::Notification]
    #
    # @!attribute [rw] forwarding_address_id
    #   The updated ID for the forwarding address for a cluster. This field
    #   is not supported in most regions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/UpdateClusterRequest AWS API Documentation
    #
    class UpdateClusterRequest < Struct.new(
      :cluster_id,
      :role_arn,
      :description,
      :resources,
      :address_id,
      :shipping_option,
      :notification,
      :forwarding_address_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/UpdateClusterResult AWS API Documentation
    #
    class UpdateClusterResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         role_arn: "RoleARN",
    #         notification: {
    #           sns_topic_arn: "SnsTopicARN",
    #           job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWSSortingFacility, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
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
    #           lambda_resources: [
    #             {
    #               lambda_arn: "ResourceARN",
    #               event_triggers: [
    #                 {
    #                   event_resource_arn: "ResourceARN",
    #                 },
    #               ],
    #             },
    #           ],
    #           ec2_ami_resources: [
    #             {
    #               ami_id: "AmiId", # required
    #               snowball_ami_id: "String",
    #             },
    #           ],
    #         },
    #         address_id: "AddressId",
    #         shipping_option: "SECOND_DAY", # accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
    #         description: "String",
    #         snowball_capacity_preference: "T50", # accepts T50, T80, T100, NoPreference
    #         forwarding_address_id: "AddressId",
    #       }
    #
    # @!attribute [rw] job_id
    #   The job ID of the job that you want to update, for example
    #   `JID123e4567-e89b-12d3-a456-426655440000`.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The new role Amazon Resource Name (ARN) that you want to associate
    #   with this job. To create a role ARN, use the [CreateRole][1]AWS
    #   Identity and Access Management (IAM) API action.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
    #   @return [String]
    #
    # @!attribute [rw] notification
    #   The new or updated Notification object.
    #   @return [Types::Notification]
    #
    # @!attribute [rw] resources
    #   The updated `JobResource` object, or the updated JobResource object.
    #   @return [Types::JobResource]
    #
    # @!attribute [rw] address_id
    #   The ID of the updated Address object.
    #   @return [String]
    #
    # @!attribute [rw] shipping_option
    #   The updated shipping option value of this job's ShippingDetails
    #   object.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of this job's JobMetadata object.
    #   @return [String]
    #
    # @!attribute [rw] snowball_capacity_preference
    #   The updated `SnowballCapacityPreference` of this job's JobMetadata
    #   object. The 50 TB Snowballs are only available in the US regions.
    #   @return [String]
    #
    # @!attribute [rw] forwarding_address_id
    #   The updated ID for the forwarding address for a job. This field is
    #   not supported in most regions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/UpdateJobRequest AWS API Documentation
    #
    class UpdateJobRequest < Struct.new(
      :job_id,
      :role_arn,
      :notification,
      :resources,
      :address_id,
      :shipping_option,
      :description,
      :snowball_capacity_preference,
      :forwarding_address_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/UpdateJobResult AWS API Documentation
    #
    class UpdateJobResult < Aws::EmptyStructure; end

  end
end
