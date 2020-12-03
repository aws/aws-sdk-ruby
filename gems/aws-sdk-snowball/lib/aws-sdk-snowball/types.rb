# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Snowball
  module Types

    # The address that you want the Snow device(s) associated with a
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
    #   The name of a person to receive a Snow device at an address.
    #   @return [String]
    #
    # @!attribute [rw] company
    #   The name of the company to receive a Snow device at an address.
    #   @return [String]
    #
    # @!attribute [rw] street_1
    #   The first line in a street address that a Snow device is to be
    #   delivered to.
    #   @return [String]
    #
    # @!attribute [rw] street_2
    #   The second line in a street address that a Snow device is to be
    #   delivered to.
    #   @return [String]
    #
    # @!attribute [rw] street_3
    #   The third line in a street address that a Snow device is to be
    #   delivered to.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city in an address that a Snow device is to be delivered to.
    #   @return [String]
    #
    # @!attribute [rw] state_or_province
    #   The state or province in an address that a Snow device is to be
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
    #   The country in an address that a Snow device is to be delivered to.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   The postal code in an address that a Snow device is to be delivered
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number associated with an address that a Snow device is to
    #   be delivered to.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CancelJobResult AWS API Documentation
    #
    class CancelJobResult < Aws::EmptyStructure; end

    # Job creation failed. Currently, clusters support five nodes. If you
    # have less than five nodes for your cluster and you have more nodes to
    # create for this cluster, try again and create jobs until your cluster
    # has exactly five notes.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ClusterLimitExceededException AWS API Documentation
    #
    class ClusterLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The role ARN associated with this cluster. This ARN was created
    #   using the [CreateRole][1] API action in AWS Identity and Access
    #   Management (IAM).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
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
    #   The type of AWS Snow device to use for this cluster.
    #
    #   <note markdown="1"> For cluster jobs, AWS Snow Family currently supports only the `EDGE`
    #   device type.
    #
    #    </note>
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
    #   doesn't dictate how soon you'll get each device, rather it
    #   represents how quickly each device moves to its destination while in
    #   transit. Regional shipping speeds are as follows:
    #
    #   * In Australia, you have access to express shipping. Typically,
    #     devices shipped express are delivered in about a day.
    #
    #   * In the European Union (EU), you have access to express shipping.
    #     Typically, Snow devices shipped express are delivered in about a
    #     day. In addition, most countries in the EU have access to standard
    #     shipping, which typically takes less than a week, one way.
    #
    #   * In India, Snow devices are delivered in one to seven days.
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
    # @!attribute [rw] tax_documents
    #   The tax documents required in your AWS Region.
    #   @return [Types::TaxDocuments]
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
      :forwarding_address_id,
      :tax_documents)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON-formatted object that describes a compatible Amazon Machine
    # Image (AMI), including the ID and name for a Snow device AMI. This AMI
    # is compatible with the device's physical hardware requirements, and
    # it should be able to be run in an SBE1 instance on the device.
    #
    # @!attribute [rw] ami_id
    #   The unique identifier for an individual Snow device AMI.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # You get this exception when you call `CreateReturnShippingLabel` more
    # than once when other requests are not completed.
    #
    # @!attribute [rw] conflict_resource
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :conflict_resource,
      :message)
      SENSITIVE = []
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
    #   The address that you want the Snow device shipped to.
    #   @return [Types::Address]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CreateAddressRequest AWS API Documentation
    #
    class CreateAddressRequest < Struct.new(
      :address)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] address_id
    #   The automatically generated ID for a specific address. You'll use
    #   this ID when you create a job to specify which address you want the
    #   Snow device for that job shipped to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CreateAddressResult AWS API Documentation
    #
    class CreateAddressResult < Struct.new(
      :address_id)
      SENSITIVE = []
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
    #         snowball_type: "STANDARD", # accepts STANDARD, EDGE, EDGE_C, EDGE_CG, EDGE_S, SNC1_HDD
    #         shipping_option: "SECOND_DAY", # required, accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
    #         notification: {
    #           sns_topic_arn: "SnsTopicARN",
    #           job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWSSortingFacility, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
    #           notify_all: false,
    #         },
    #         forwarding_address_id: "AddressId",
    #         tax_documents: {
    #           ind: {
    #             gstin: "GSTIN",
    #           },
    #         },
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
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The `RoleARN` that you want to associate with this cluster.
    #   `RoleArn` values are created by using the [CreateRole][1] API action
    #   in AWS Identity and Access Management (IAM).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
    #   @return [String]
    #
    # @!attribute [rw] snowball_type
    #   The type of AWS Snow Family device to use for this cluster.
    #
    #   <note markdown="1"> For cluster jobs, AWS Snow Family currently supports only the `EDGE`
    #   device type.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] shipping_option
    #   The shipping speed for each node in this cluster. This speed
    #   doesn't dictate how soon you'll get each Snowball Edge device,
    #   rather it represents how quickly each device moves to its
    #   destination while in transit. Regional shipping speeds are as
    #   follows:
    #
    #   * In Australia, you have access to express shipping. Typically, Snow
    #     devices shipped express are delivered in about a day.
    #
    #   * In the European Union (EU), you have access to express shipping.
    #     Typically, Snow devices shipped express are delivered in about a
    #     day. In addition, most countries in the EU have access to standard
    #     shipping, which typically takes less than a week, one way.
    #
    #   * In India, Snow device are delivered in one to seven days.
    #
    #   * In the United States of America (US), you have access to one-day
    #     shipping and two-day shipping.
    #   ^
    #
    #   * In Australia, you have access to express shipping. Typically,
    #     devices shipped express are delivered in about a day.
    #
    #   * In the European Union (EU), you have access to express shipping.
    #     Typically, Snow devices shipped express are delivered in about a
    #     day. In addition, most countries in the EU have access to standard
    #     shipping, which typically takes less than a week, one way.
    #
    #   * In India, Snow device are delivered in one to seven days.
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
    # @!attribute [rw] tax_documents
    #   The tax documents required in your AWS Region.
    #   @return [Types::TaxDocuments]
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
      :forwarding_address_id,
      :tax_documents)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #         snowball_capacity_preference: "T50", # accepts T50, T80, T100, T42, T98, T8, NoPreference
    #         shipping_option: "SECOND_DAY", # accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
    #         notification: {
    #           sns_topic_arn: "SnsTopicARN",
    #           job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWSSortingFacility, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
    #           notify_all: false,
    #         },
    #         cluster_id: "ClusterId",
    #         snowball_type: "STANDARD", # accepts STANDARD, EDGE, EDGE_C, EDGE_CG, EDGE_S, SNC1_HDD
    #         forwarding_address_id: "AddressId",
    #         tax_documents: {
    #           ind: {
    #             gstin: "GSTIN",
    #           },
    #         },
    #         device_configuration: {
    #           snowcone_device_configuration: {
    #             wireless_connection: {
    #               is_wifi_enabled: false,
    #             },
    #           },
    #         },
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
    #   The ID for the address that you want the Snow device shipped to.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The `KmsKeyARN` that you want to associate with this job.
    #   `KmsKeyARN`s are created using the [CreateKey][1] AWS Key Management
    #   Service (KMS) API action.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The `RoleARN` that you want to associate with this job. `RoleArn`s
    #   are created using the [CreateRole][1] AWS Identity and Access
    #   Management (IAM) API action.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
    #   @return [String]
    #
    # @!attribute [rw] snowball_capacity_preference
    #   If your job is being created in one of the US regions, you have the
    #   option of specifying what size Snow device you'd like for this job.
    #   In all other regions, Snowballs come with 80 TB in storage capacity.
    #   @return [String]
    #
    # @!attribute [rw] shipping_option
    #   The shipping speed for this job. This speed doesn't dictate how
    #   soon you'll get the Snow device, rather it represents how quickly
    #   the Snow device moves to its destination while in transit. Regional
    #   shipping speeds are as follows:
    #
    #   * In Australia, you have access to express shipping. Typically, Snow
    #     devices shipped express are delivered in about a day.
    #
    #   * In the European Union (EU), you have access to express shipping.
    #     Typically, Snow devices shipped express are delivered in about a
    #     day. In addition, most countries in the EU have access to standard
    #     shipping, which typically takes less than a week, one way.
    #
    #   * In India, Snow devices are delivered in one to seven days.
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
    #   The type of AWS Snow Family device to use for this job.
    #
    #   <note markdown="1"> For cluster jobs, AWS Snow Family currently supports only the `EDGE`
    #   device type.
    #
    #    </note>
    #
    #   The type of AWS Snow device to use for this job. Currently, the only
    #   supported device type for cluster jobs is `EDGE`.
    #
    #   For more information, see [Snowball Edge Device Options][1] in the
    #   Snowball Edge Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/snowball/latest/developer-guide/device-differences.html
    #   @return [String]
    #
    # @!attribute [rw] forwarding_address_id
    #   The forwarding address ID for a job. This field is not supported in
    #   most regions.
    #   @return [String]
    #
    # @!attribute [rw] tax_documents
    #   The tax documents required in your AWS Region.
    #   @return [Types::TaxDocuments]
    #
    # @!attribute [rw] device_configuration
    #   Defines the device configuration for an AWS Snowcone job.
    #   @return [Types::DeviceConfiguration]
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
      :forwarding_address_id,
      :tax_documents,
      :device_configuration)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateReturnShippingLabelRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         shipping_option: "SECOND_DAY", # accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
    #       }
    #
    # @!attribute [rw] job_id
    #   The ID for a job that you want to create the return shipping label
    #   for. For example `JID123e4567-e89b-12d3-a456-426655440000`.
    #   @return [String]
    #
    # @!attribute [rw] shipping_option
    #   The shipping speed for a particular job. This speed doesn't dictate
    #   how soon the device is returned to AWS. This speed represents how
    #   quickly it moves to its destination while in transit. Regional
    #   shipping speeds are as follows:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CreateReturnShippingLabelRequest AWS API Documentation
    #
    class CreateReturnShippingLabelRequest < Struct.new(
      :job_id,
      :shipping_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status information of the task on a Snow device that is being
    #   returned to AWS.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CreateReturnShippingLabelResult AWS API Documentation
    #
    class CreateReturnShippingLabelResult < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the real-time status of a Snow device's data transfer while
    # the device is at AWS. This data is only available while a job has a
    # `JobState` value of `InProgress`, for both import and export jobs.
    #
    # @!attribute [rw] bytes_transferred
    #   The number of bytes transferred between a Snow device and Amazon S3.
    #   @return [Integer]
    #
    # @!attribute [rw] objects_transferred
    #   The number of objects transferred between a Snow device and Amazon
    #   S3.
    #   @return [Integer]
    #
    # @!attribute [rw] total_bytes
    #   The total bytes of data for a transfer between a Snow device and
    #   Amazon S3. This value is set to 0 (zero) until all the keys that
    #   will be transferred have been listed.
    #   @return [Integer]
    #
    # @!attribute [rw] total_objects
    #   The total number of objects for a transfer between a Snow device and
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] address
    #   The address that you want the Snow device(s) associated with a
    #   specific job to be shipped to.
    #   @return [Types::Address]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeAddressResult AWS API Documentation
    #
    class DescribeAddressResult < Struct.new(
      :address)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addresses
    #   The Snow device shipping addresses that were created for this
    #   account.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeReturnShippingLabelRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId",
    #       }
    #
    # @!attribute [rw] job_id
    #   The automatically generated ID for a job, for example
    #   `JID123e4567-e89b-12d3-a456-426655440000`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeReturnShippingLabelRequest AWS API Documentation
    #
    class DescribeReturnShippingLabelRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status information of the task on a Snow device that is being
    #   returned to AWS.
    #   @return [String]
    #
    # @!attribute [rw] expiration_date
    #   The expiration date of the current return shipping label.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeReturnShippingLabelResult AWS API Documentation
    #
    class DescribeReturnShippingLabelResult < Struct.new(
      :status,
      :expiration_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # The container for `SnowconeDeviceConfiguration`.
    #
    # @note When making an API call, you may pass DeviceConfiguration
    #   data as a hash:
    #
    #       {
    #         snowcone_device_configuration: {
    #           wireless_connection: {
    #             is_wifi_enabled: false,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] snowcone_device_configuration
    #   Returns information about the device configuration for an AWS
    #   Snowcone job.
    #   @return [Types::SnowconeDeviceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DeviceConfiguration AWS API Documentation
    #
    class DeviceConfiguration < Struct.new(
      :snowcone_device_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON-formatted object that contains the IDs for an Amazon Machine
    # Image (AMI), including the Amazon EC2 AMI ID and the Snow device AMI
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
    #   The ID of the AMI on the Snow device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/Ec2AmiResource AWS API Documentation
    #
    class Ec2AmiResource < Struct.new(
      :ami_id,
      :snowball_ami_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your IAM user lacks the necessary Amazon EC2 permissions to perform
    # the attempted action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/Ec2RequestFailedException AWS API Documentation
    #
    class Ec2RequestFailedException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/GetSnowballUsageRequest AWS API Documentation
    #
    class GetSnowballUsageRequest < Aws::EmptyStructure; end

    # @!attribute [rw] snowball_limit
    #   The service limit for number of Snow devices this account can have
    #   at once. The default service limit is 1 (one).
    #   @return [Integer]
    #
    # @!attribute [rw] snowballs_in_use
    #   The number of Snow devices that this account is currently using.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/GetSnowballUsageResult AWS API Documentation
    #
    class GetSnowballUsageResult < Struct.new(
      :snowball_limit,
      :snowballs_in_use)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSoftwareUpdatesRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The ID for a job that you want to get the software update file for,
    #   for example `JID123e4567-e89b-12d3-a456-426655440000`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/GetSoftwareUpdatesRequest AWS API Documentation
    #
    class GetSoftwareUpdatesRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] updates_uri
    #   The Amazon S3 presigned URL for the update file associated with the
    #   specified `JobId` value. The software update will be available for 2
    #   days after this request is made. To access an update after the 2
    #   days have passed, you'll have to make another call to
    #   `GetSoftwareUpdates`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/GetSoftwareUpdatesResult AWS API Documentation
    #
    class GetSoftwareUpdatesResult < Struct.new(
      :updates_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tax documents required in AWS Regions in India.
    #
    # @note When making an API call, you may pass INDTaxDocuments
    #   data as a hash:
    #
    #       {
    #         gstin: "GSTIN",
    #       }
    #
    # @!attribute [rw] gstin
    #   The Goods and Services Tax (GST) documents required in AWS Regions
    #   in India.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/INDTaxDocuments AWS API Documentation
    #
    class INDTaxDocuments < Struct.new(
      :gstin)
      SENSITIVE = []
      include Aws::Structure
    end

    # The address provided was invalid. Check the address with your
    # region's carrier, and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/InvalidAddressException AWS API Documentation
    #
    class InvalidAddressException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Job or cluster creation failed. One or more inputs were invalid.
    # Confirm that the CreateClusterRequest$SnowballType value supports your
    # CreateJobRequest$JobType, and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/InvalidInputCombinationException AWS API Documentation
    #
    class InvalidInputCombinationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The action can't be performed because the job's current state
    # doesn't allow that action to be performed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/InvalidJobStateException AWS API Documentation
    #
    class InvalidJobStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `NextToken` string was altered unexpectedly, and the operation has
    # stopped. Run the operation without changing the `NextToken` string,
    # and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource can't be found. Check the information you
    # provided in your last request, and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The provided resource value is invalid.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/InvalidResourceException AWS API Documentation
    #
    class InvalidResourceException < Struct.new(
      :message,
      :resource_type)
      SENSITIVE = []
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
    #   A value that indicates that this job is a main job. A main job
    #   represents a successful request to create an export job. Main jobs
    #   aren't associated with any Snowballs. Instead, each main job will
    #   have at least one job part, and each job part is associated with a
    #   Snowball. It might take some time before the job parts associated
    #   with a particular main job are listed, because they are created
    #   after the main job is created.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains job logs. Whenever a Snow device is used to import data into
    # or export data out of Amazon S3, you'll have the option of
    # downloading a PDF job report. Job logs are returned as a part of the
    # response syntax of the `DescribeJob` action in the `JobMetadata` data
    # type. The job logs can be accessed for up to 60 minutes after this
    # request has been made. To access any of the job logs after 60 minutes
    # have passed, you'll have to make another call to the `DescribeJob`
    # action.
    #
    # For import jobs, the PDF job report becomes available at the end of
    # the import process. For export jobs, your job report typically becomes
    # available while the Snow device for your job part is being delivered
    # to you.
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
      SENSITIVE = []
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
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The role ARN associated with this job. This ARN was created using
    #   the [CreateRole][1] API action in AWS Identity and Access Management
    #   (IAM).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
    #   @return [String]
    #
    # @!attribute [rw] address_id
    #   The ID for the address that you want the Snow device shipped to.
    #   @return [String]
    #
    # @!attribute [rw] shipping_details
    #   A job's shipping information, including inbound and outbound
    #   tracking numbers and shipping speed options.
    #   @return [Types::ShippingDetails]
    #
    # @!attribute [rw] snowball_capacity_preference
    #   The Snow device capacity preference for this job, specified at job
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
    #   A value that defines the real-time status of a Snow device's data
    #   transfer while the device is at AWS. This data is only available
    #   while a job has a `JobState` value of `InProgress`, for both import
    #   and export jobs.
    #   @return [Types::DataTransfer]
    #
    # @!attribute [rw] job_log_info
    #   Links to Amazon S3 presigned URLs for the job report and logs. For
    #   import jobs, the PDF job report becomes available at the end of the
    #   import process. For export jobs, your job report typically becomes
    #   available while the Snow device for your job part is being delivered
    #   to you.
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
    # @!attribute [rw] tax_documents
    #   The metadata associated with the tax documents required in your AWS
    #   Region.
    #   @return [Types::TaxDocuments]
    #
    # @!attribute [rw] device_configuration
    #   The container for `SnowconeDeviceConfiguration`.
    #   @return [Types::DeviceConfiguration]
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
      :forwarding_address_id,
      :tax_documents,
      :device_configuration)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The provided AWS Key Management Service key lacks the permissions to
    # perform the specified CreateJob or UpdateJob action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/KMSRequestFailedException AWS API Documentation
    #
    class KMSRequestFailedException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] compatible_images
    #   A JSON-formatted object that describes a compatible AMI, including
    #   the ID and name for a Snow device AMI.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   [1]: https://docs.aws.amazon.com/sns/latest/api/API_CreateTopic.html
    #   [2]: https://docs.aws.amazon.com/sns/latest/api/API_Subscribe.html
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
      SENSITIVE = []
      include Aws::Structure
    end

    # You get this exception if you call `CreateReturnShippingLabel` and a
    # valid return shipping label already exists. In this case, use
    # `DescribeReturnShippingLabel` to get the url.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ReturnShippingLabelAlreadyExistsException AWS API Documentation
    #
    class ReturnShippingLabelAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   your region's carrier's website, you can track a Snow device as
    #   the carrier transports it.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A job's shipping information, including inbound and outbound tracking
    # numbers and shipping speed options.
    #
    # @!attribute [rw] shipping_option
    #   The shipping speed for a particular job. This speed doesn't dictate
    #   how soon you'll get the Snow device from the job's creation date.
    #   This speed represents how quickly it moves to its destination while
    #   in transit. Regional shipping speeds are as follows:
    #
    #   * In Australia, you have access to express shipping. Typically, Snow
    #     devices shipped express are delivered in about a day.
    #
    #   * In the European Union (EU), you have access to express shipping.
    #     Typically, Snow devices shipped express are delivered in about a
    #     day. In addition, most countries in the EU have access to standard
    #     shipping, which typically takes less than a week, one way.
    #
    #   * In India, Snow device are delivered in one to seven days.
    #
    #   * In the United States of America (US), you have access to one-day
    #     shipping and two-day shipping.
    #   @return [String]
    #
    # @!attribute [rw] inbound_shipment
    #   The `Status` and `TrackingNumber` values for a Snow device being
    #   returned to AWS for a particular job.
    #   @return [Types::Shipment]
    #
    # @!attribute [rw] outbound_shipment
    #   The `Status` and `TrackingNumber` values for a Snow device being
    #   delivered to the address that you specified for a particular job.
    #   @return [Types::Shipment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ShippingDetails AWS API Documentation
    #
    class ShippingDetails < Struct.new(
      :shipping_option,
      :inbound_shipment,
      :outbound_shipment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the device configuration for an AWS Snowcone job.
    #
    # @note When making an API call, you may pass SnowconeDeviceConfiguration
    #   data as a hash:
    #
    #       {
    #         wireless_connection: {
    #           is_wifi_enabled: false,
    #         },
    #       }
    #
    # @!attribute [rw] wireless_connection
    #   Configures the wireless connection for the AWS Snowcone device.
    #   @return [Types::WirelessConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/SnowconeDeviceConfiguration AWS API Documentation
    #
    class SnowconeDeviceConfiguration < Struct.new(
      :wireless_connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tax documents required in your AWS Region.
    #
    # @note When making an API call, you may pass TaxDocuments
    #   data as a hash:
    #
    #       {
    #         ind: {
    #           gstin: "GSTIN",
    #         },
    #       }
    #
    # @!attribute [rw] ind
    #   The tax documents required in AWS Regions in India.
    #   @return [Types::INDTaxDocuments]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/TaxDocuments AWS API Documentation
    #
    class TaxDocuments < Struct.new(
      :ind)
      SENSITIVE = []
      include Aws::Structure
    end

    # The address is either outside the serviceable area for your region, or
    # an error occurred. Check the address with your region's carrier and
    # try again. If the issue persists, contact AWS Support.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/UnsupportedAddressException AWS API Documentation
    #
    class UnsupportedAddressException < Struct.new(
      :message)
      SENSITIVE = []
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
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
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
      SENSITIVE = []
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
    #         snowball_capacity_preference: "T50", # accepts T50, T80, T100, T42, T98, T8, NoPreference
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
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/UpdateJobResult AWS API Documentation
    #
    class UpdateJobResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateJobShipmentStateRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         shipment_state: "RECEIVED", # required, accepts RECEIVED, RETURNED
    #       }
    #
    # @!attribute [rw] job_id
    #   The job ID of the job whose shipment date you want to update, for
    #   example `JID123e4567-e89b-12d3-a456-426655440000`.
    #   @return [String]
    #
    # @!attribute [rw] shipment_state
    #   The state of a device when it is being shipped.
    #
    #   Set to `RECEIVED` when the device arrives at your location.
    #
    #   Set to `RETURNED` when you have returned the device to AWS.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/UpdateJobShipmentStateRequest AWS API Documentation
    #
    class UpdateJobShipmentStateRequest < Struct.new(
      :job_id,
      :shipment_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/UpdateJobShipmentStateResult AWS API Documentation
    #
    class UpdateJobShipmentStateResult < Aws::EmptyStructure; end

    # Configures the wireless connection on an AWS Snowcone device.
    #
    # @note When making an API call, you may pass WirelessConnection
    #   data as a hash:
    #
    #       {
    #         is_wifi_enabled: false,
    #       }
    #
    # @!attribute [rw] is_wifi_enabled
    #   Enables the Wi-Fi adapter on an AWS Snowcone device.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/WirelessConnection AWS API Documentation
    #
    class WirelessConnection < Struct.new(
      :is_wifi_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
