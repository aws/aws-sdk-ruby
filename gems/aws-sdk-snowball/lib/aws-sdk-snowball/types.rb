# frozen_string_literal: true

# This is generated code!

module Aws::Snowball
  # This module contains the types returned by client operations.
  module Types

    # <p>The address that you want the Snow device(s) associated with a specific job to be
    #       shipped to. Addresses are validated at the time of creation. The address you provide must be
    #       located within the serviceable area of your region. Although no individual elements of the
    #         <code>Address</code> are required, if the address is invalid or unsupported, then an
    #       exception is thrown.</p>
    # @!attribute address_id
    #   <p>The unique ID for an address.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a person to receive a Snow device at an address.</p>
    #   @return [String]
    # @!attribute company
    #   <p>The name of the company to receive a Snow device at an address.</p>
    #   @return [String]
    # @!attribute street1
    #   <p>The first line in a street address that a Snow device is to be delivered
    #         to.</p>
    #   @return [String]
    # @!attribute street2
    #   <p>The second line in a street address that a Snow device is to be delivered
    #         to.</p>
    #   @return [String]
    # @!attribute street3
    #   <p>The third line in a street address that a Snow device is to be delivered
    #         to.</p>
    #   @return [String]
    # @!attribute city
    #   <p>The city in an address that a Snow device is to be delivered to.</p>
    #   @return [String]
    # @!attribute state_or_province
    #   <p>The state or province in an address that a Snow device is to be delivered to.</p>
    #   @return [String]
    # @!attribute prefecture_or_district
    #   <p>This field is no longer used and the value is ignored.</p>
    #   @return [String]
    # @!attribute landmark
    #   <p>This field is no longer used and the value is ignored.</p>
    #   @return [String]
    # @!attribute country
    #   <p>The country in an address that a Snow device is to be delivered to.</p>
    #   @return [String]
    # @!attribute postal_code
    #   <p>The postal code in an address that a Snow device is to be delivered to.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number associated with an address that a Snow device is to be delivered
    #         to.</p>
    #   @return [String]
    # @!attribute is_restricted
    #   <p>If the address you are creating is a primary address, then set this option to
    #         true. This field is not supported in most regions.</p>
    #   @return [Boolean]
    # @!attribute type
    #   <p>Differentiates between delivery address and pickup address in the customer account. Provided at job creation.</p>
    #   @return [String]
    class Address < Struct.new(
      :address_id,
      :name,
      :company,
      :street1,
      :street2,
      :street3,
      :city,
      :state_or_province,
      :prefecture_or_district,
      :landmark,
      :country,
      :postal_code,
      :phone_number,
      :is_restricted,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_restricted] = false unless options.key?(:is_restricted)
        super
      end
    end

    # @!attribute cluster_id
    #   <p>The 39-character ID for the cluster that you want to cancel, for example
    #           <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #   @return [String]
    class CancelClusterRequest < Struct.new(
      :cluster_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class CancelClusterResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The 39-character job ID for the job that you want to cancel, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #   @return [String]
    class CancelJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class CancelJobResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Job creation failed. Currently, clusters support five nodes. If you have fewer than
    #       five nodes for your cluster and you have more nodes to create for this cluster, try again and
    #       create jobs until your cluster has exactly five nodes.</p>
    # @!attribute message
    #   @return [String]
    class ClusterLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a cluster's state, a cluster's ID, and other important information.</p>
    # @!attribute cluster_id
    #   <p>The 39-character ID for the cluster that you want to list, for example
    #           <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #   @return [String]
    # @!attribute cluster_state
    #   <p>The current state of this cluster. For information about the state of a specific node,
    #         see <a>JobListEntry$JobState</a>.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The creation date for this cluster.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>Defines an optional description of the cluster, for example <code>Environmental Data
    #           Cluster-01</code>.</p>
    #   @return [String]
    class ClusterListEntry < Struct.new(
      :cluster_id,
      :cluster_state,
      :creation_date,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata about a specific cluster.</p>
    # @!attribute cluster_id
    #   <p>The automatically generated ID for a cluster.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The optional description of the cluster.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The <code>KmsKeyARN</code> Amazon Resource Name (ARN) associated with this cluster.
    #         This ARN was created using the <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html">CreateKey</a> API action in Key Management Service (KMS.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The role ARN associated with this cluster. This ARN was created using the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a>
    #         API action in Identity and Access Management (IAM).</p>
    #   @return [String]
    # @!attribute cluster_state
    #   <p>The current status of the cluster.</p>
    #   @return [String]
    # @!attribute job_type
    #   <p>The type of job for this cluster. Currently, the only job type supported for clusters
    #         is <code>LOCAL_USE</code>.</p>
    #   @return [String]
    # @!attribute snowball_type
    #   <p>The type of Snowball Edge device to use for this cluster.
    #         </p>
    #            <note>
    #               <p>For cluster jobs, Amazon Web Services Snow Family currently supports only the
    #             <code>EDGE</code> device type.</p>
    #            </note>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The creation date for this cluster.</p>
    #   @return [Time]
    # @!attribute resources
    #   <p>The arrays of <a>JobResource</a> objects that can include updated <a>S3Resource</a> objects or <a>LambdaResource</a> objects.</p>
    #   @return [Types::JobResource]
    # @!attribute address_id
    #   <p>The automatically generated ID for a specific address.</p>
    #   @return [String]
    # @!attribute shipping_option
    #   <p>The shipping speed for each node in this cluster. This speed doesn't dictate how soon
    #         you'll get each device, rather it represents how quickly each device moves to its destination
    #         while in transit. Regional shipping speeds are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>In Australia, you have access to express shipping. Typically, devices shipped
    #             express are delivered in about a day.</p>
    #               </li>
    #               <li>
    #                  <p>In the European Union (EU), you have access to express shipping. Typically, Snow
    #             devices shipped express are delivered in about a day. In addition, most countries in the
    #             EU have access to standard shipping, which typically takes less than a week, one
    #             way.</p>
    #               </li>
    #               <li>
    #                  <p>In India, Snow devices are delivered in one to seven days.</p>
    #               </li>
    #               <li>
    #                  <p>In the US, you have access to one-day shipping and two-day shipping.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute notification
    #   <p>The Amazon Simple Notification Service (Amazon SNS) notification settings for this
    #         cluster.</p>
    #   @return [Types::Notification]
    # @!attribute forwarding_address_id
    #   <p>The ID of the address that you want a cluster shipped to, after it will be
    #         shipped to its primary address. This field is not supported in most regions.</p>
    #   @return [String]
    # @!attribute tax_documents
    #   <p>The tax documents required in your Amazon Web Services Region.</p>
    #   @return [Types::TaxDocuments]
    # @!attribute on_device_service_configuration
    #   <p>Represents metadata and configuration settings for services on an Amazon Web Services Snow Family
    #         device.</p>
    #   @return [Types::OnDeviceServiceConfiguration]
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
      :tax_documents,
      :on_device_service_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON-formatted object that describes a compatible Amazon Machine Image (AMI),
    #       including the ID and name for a Snow device AMI. This AMI is compatible with the device's
    #       physical hardware requirements, and it should be able to be run in an SBE1 instance on the
    #       device.</p>
    # @!attribute ami_id
    #   <p>The unique identifier for an individual Snow device AMI.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The optional name of a compatible image.</p>
    #   @return [String]
    class CompatibleImage < Struct.new(
      :ami_id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You get this exception when you call <code>CreateReturnShippingLabel</code> more than once
    #       when other requests are not completed.</p>
    # @!attribute conflict_resource
    #   <p>You get this resource when you call <code>CreateReturnShippingLabel</code> more than once when other requests are not completed. .</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :conflict_resource,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute address
    #   <p>The address that you want the Snow device shipped to.</p>
    #   @return [Types::Address]
    class CreateAddressRequest < Struct.new(
      :address,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute address_id
    #   <p>The automatically generated ID for a specific address. You'll use this ID when you
    #         create a job to specify which address you want the Snow device for that job shipped
    #         to.</p>
    #   @return [String]
    class CreateAddressResult < Struct.new(
      :address_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_type
    #   <p>The type of job for this cluster. Currently, the only job type supported for clusters
    #         is <code>LOCAL_USE</code>.</p>
    #            <p>For more information, see
    #         "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
    #         "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The resources associated with the cluster job. These resources include Amazon S3
    #         buckets and optional Lambda functions written in the Python language.
    #       </p>
    #   @return [Types::JobResource]
    # @!attribute on_device_service_configuration
    #   <p>Specifies the service or services on the Snow Family device that your transferred data
    #         will be exported from or imported into. Amazon Web Services Snow Family device clusters support Amazon S3 and NFS
    #         (Network File System).</p>
    #   @return [Types::OnDeviceServiceConfiguration]
    # @!attribute description
    #   <p>An optional description of this specific cluster, for example <code>Environmental Data
    #           Cluster-01</code>.</p>
    #   @return [String]
    # @!attribute address_id
    #   <p>The ID for the address that you want the cluster shipped to.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The <code>KmsKeyARN</code> value that you want to associate with this cluster.
    #           <code>KmsKeyARN</code> values are created by using the <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html">CreateKey</a> API action in Key Management Service (KMS). </p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The <code>RoleARN</code> that you want to associate with this cluster.
    #           <code>RoleArn</code> values are created by using the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> API action in Identity and Access Management (IAM).</p>
    #   @return [String]
    # @!attribute snowball_type
    #   <p>The type of Snow Family devices to use for this cluster. </p>
    #            <note>
    #               <p>For cluster jobs, Amazon Web Services Snow Family currently supports only the
    #             <code>EDGE</code> device type.</p>
    #            </note>
    #            <p>For more information, see
    #         "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
    #         "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>
    #   @return [String]
    # @!attribute shipping_option
    #   <p>The shipping speed for each node in this cluster. This speed doesn't dictate how soon
    #         you'll get each Snowball Edge device, rather it represents how quickly each device moves to
    #         its destination while in transit. Regional shipping speeds are as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>In Australia, you have access to express shipping. Typically, Snow devices shipped
    #             express are delivered in about a day.</p>
    #               </li>
    #               <li>
    #                  <p>In the European Union (EU), you have access to express shipping. Typically, Snow
    #             devices shipped express are delivered in about a day. In addition, most countries in the
    #             EU have access to standard shipping, which typically takes less than a week, one
    #             way.</p>
    #               </li>
    #               <li>
    #                  <p>In India, Snow devices are delivered in one to seven days.</p>
    #               </li>
    #               <li>
    #                  <p>In the United States of America (US), you have access to one-day shipping and
    #             two-day shipping.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>In Australia, you have access to express shipping. Typically, devices shipped
    #             express are delivered in about a day.</p>
    #               </li>
    #               <li>
    #                  <p>In the European Union (EU), you have access to express shipping. Typically, Snow
    #             devices shipped express are delivered in about a day. In addition, most countries in the
    #             EU have access to standard shipping, which typically takes less than a week, one
    #             way.</p>
    #               </li>
    #               <li>
    #                  <p>In India, Snow devices are delivered in one to seven days.</p>
    #               </li>
    #               <li>
    #                  <p>In the US, you have access to one-day shipping and two-day shipping.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute notification
    #   <p>The Amazon Simple Notification Service (Amazon SNS) notification settings for this
    #         cluster.</p>
    #   @return [Types::Notification]
    # @!attribute forwarding_address_id
    #   <p>The forwarding address ID for a cluster. This field is not supported in most
    #         regions.</p>
    #   @return [String]
    # @!attribute tax_documents
    #   <p>The tax documents required in your Amazon Web Services Region.</p>
    #   @return [Types::TaxDocuments]
    # @!attribute remote_management
    #   <p>Allows you to securely operate and manage Snow devices in a cluster remotely from outside
    #         of your internal network. When set to <code>INSTALLED_AUTOSTART</code>, remote management will
    #         automatically be available when the device arrives at your location. Otherwise, you need to
    #         use the Snowball Client to manage the device.</p>
    #   @return [String]
    # @!attribute initial_cluster_size
    #   <p>If provided, each job will be automatically created and associated with the new cluster. If not provided, will be treated as 0.</p>
    #   @return [Integer]
    # @!attribute force_create_jobs
    #   <p>Force to create cluster when user attempts to overprovision or underprovision a cluster. A cluster is overprovisioned or underprovisioned if the initial size of the cluster is more (overprovisioned) or less (underprovisioned) than what 
    #         needed to meet capacity requirement specified with <code>OnDeviceServiceConfiguration</code>.</p>
    #   @return [Boolean]
    # @!attribute long_term_pricing_ids
    #   <p>Lists long-term pricing id that will be used to associate with jobs automatically created for the new cluster.</p>
    #   @return [Array<String>]
    # @!attribute snowball_capacity_preference
    #   <p>If your job is being created in one of the US regions, you have the option of
    #         specifying what size Snow device you'd like for this job. In all other regions, Snowballs come
    #         with 80 TB in storage capacity.</p>
    #            <p>For more information, see
    #         "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
    #         "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>
    #   @return [String]
    class CreateClusterRequest < Struct.new(
      :job_type,
      :resources,
      :on_device_service_configuration,
      :description,
      :address_id,
      :kms_key_arn,
      :role_arn,
      :snowball_type,
      :shipping_option,
      :notification,
      :forwarding_address_id,
      :tax_documents,
      :remote_management,
      :initial_cluster_size,
      :force_create_jobs,
      :long_term_pricing_ids,
      :snowball_capacity_preference,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_id
    #   <p>The automatically generated ID for a cluster.</p>
    #   @return [String]
    # @!attribute job_list_entries
    #   <p>List of jobs created for this cluster. For syntax, see <a href="http://amazonaws.com/snowball/latest/api-reference/API_ListJobs.html#API_ListJobs_ResponseSyntax">ListJobsResult$JobListEntries</a> in this guide.</p>
    #   @return [Array<Types::JobListEntry>]
    class CreateClusterResult < Struct.new(
      :cluster_id,
      :job_list_entries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_type
    #   <p>Defines the type of job that you're creating.
    #         </p>
    #   @return [String]
    # @!attribute resources
    #   <p>Defines the Amazon S3 buckets associated with this job.</p>
    #            <p>With <code>IMPORT</code> jobs, you specify the bucket or buckets that your transferred
    #         data will be imported into.</p>
    #            <p>With <code>EXPORT</code> jobs, you specify the bucket or buckets that your transferred
    #         data will be exported from. Optionally, you can also specify a <code>KeyRange</code> value. If
    #         you choose to export a range, you define the length of the range by providing either an
    #         inclusive <code>BeginMarker</code> value, an inclusive <code>EndMarker</code> value, or both.
    #         Ranges are UTF-8 binary sorted.</p>
    #   @return [Types::JobResource]
    # @!attribute on_device_service_configuration
    #   <p>Specifies the service or services on the Snow Family device that your transferred data
    #         will be exported from or imported into. Amazon Web Services Snow Family supports Amazon S3 and NFS (Network File
    #         System) and the Amazon Web Services Storage Gateway service Tape Gateway type.</p>
    #   @return [Types::OnDeviceServiceConfiguration]
    # @!attribute description
    #   <p>Defines an optional description of this specific job, for example <code>Important
    #           Photos 2016-08-11</code>.</p>
    #   @return [String]
    # @!attribute address_id
    #   <p>The ID for the address that you want the Snow device shipped to.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The <code>KmsKeyARN</code> that you want to associate with this job.
    #           <code>KmsKeyARN</code>s are created using the <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html">CreateKey</a>
    #         Key Management Service (KMS) API action.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The <code>RoleARN</code> that you want to associate with this job.
    #         <code>RoleArn</code>s are created using the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a>
    #         Identity and Access Management (IAM) API action.</p>
    #   @return [String]
    # @!attribute snowball_capacity_preference
    #   <p>If your job is being created in one of the US regions, you have the option of
    #         specifying what size Snow device you'd like for this job. In all other regions, Snowballs come
    #         with 80 TB in storage capacity.</p>
    #            <p>For more information, see
    #         "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
    #         "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>
    #   @return [String]
    # @!attribute shipping_option
    #   <p>The shipping speed for this job. This speed doesn't dictate how soon you'll get the
    #         Snow device, rather it represents how quickly the Snow device moves to its destination while
    #         in transit. Regional shipping speeds are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>In Australia, you have access to express shipping. Typically, Snow devices shipped
    #             express are delivered in about a day.</p>
    #               </li>
    #               <li>
    #                  <p>In the European Union (EU), you have access to express shipping. Typically, Snow
    #             devices shipped express are delivered in about a day. In addition, most countries in the
    #             EU have access to standard shipping, which typically takes less than a week, one
    #             way.</p>
    #               </li>
    #               <li>
    #                  <p>In India, Snow devices are delivered in one to seven days.</p>
    #               </li>
    #               <li>
    #                  <p>In the US, you have access to one-day shipping and two-day shipping.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute notification
    #   <p>Defines the Amazon Simple Notification Service (Amazon SNS) notification settings for
    #         this job.</p>
    #   @return [Types::Notification]
    # @!attribute cluster_id
    #   <p>The ID of a cluster. If you're creating a job for a node in a cluster, you need to
    #         provide only this <code>clusterId</code> value. The other job attributes are inherited from
    #         the cluster.</p>
    #   @return [String]
    # @!attribute snowball_type
    #   <p>The type of Snow Family devices to use for this job.
    #         </p>
    #            <note>
    #               <p>For cluster jobs, Amazon Web Services Snow Family currently supports only the
    #             <code>EDGE</code> device type.</p>
    #            </note>
    #            <p>The type of Amazon Web Services Snow device to use for this job. Currently, the only
    #         supported device type for cluster jobs is <code>EDGE</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/snowball/latest/developer-guide/device-differences.html">Snowball Edge Device
    #           Options</a> in the Snowball Edge Developer Guide.</p>
    #            <p>For more information, see
    #         "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
    #         "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>
    #   @return [String]
    # @!attribute forwarding_address_id
    #   <p>The forwarding address ID for a job. This field is not supported in most
    #         Regions.</p>
    #   @return [String]
    # @!attribute tax_documents
    #   <p>The tax documents required in your Amazon Web Services Region.</p>
    #   @return [Types::TaxDocuments]
    # @!attribute device_configuration
    #   <p>Defines the device configuration for an Snowball Edge job.</p>
    #            <p>For more information, see
    #         "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
    #         "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>
    #   @return [Types::DeviceConfiguration]
    # @!attribute remote_management
    #   <p>Allows you to securely operate and manage Snowcone devices remotely from outside of your
    #         internal network. When set to <code>INSTALLED_AUTOSTART</code>, remote management will
    #         automatically be available when the device arrives at your location. Otherwise, you need to
    #         use the Snowball Edge client to manage the device. When set to <code>NOT_INSTALLED</code>, remote management will not be available on the device. </p>
    #   @return [String]
    # @!attribute long_term_pricing_id
    #   <p>The ID of the long-term pricing type for the device.</p>
    #   @return [String]
    # @!attribute impact_level
    #   <p>The highest impact level of data that will be stored or processed on the device, provided at job creation.</p>
    #   @return [String]
    # @!attribute pickup_details
    #   <p>Information identifying the person picking up the device.</p>
    #   @return [Types::PickupDetails]
    class CreateJobRequest < Struct.new(
      :job_type,
      :resources,
      :on_device_service_configuration,
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
      :device_configuration,
      :remote_management,
      :long_term_pricing_id,
      :impact_level,
      :pickup_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The automatically generated ID for a job, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #   @return [String]
    class CreateJobResult < Struct.new(
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute long_term_pricing_type
    #   <p>The type of long-term pricing option you want for the device, either 1-year or 3-year
    #         long-term pricing.</p>
    #   @return [String]
    # @!attribute is_long_term_pricing_auto_renew
    #   <p>Specifies whether the current long-term pricing type for the device should be
    #         renewed.</p>
    #   @return [Boolean]
    # @!attribute snowball_type
    #   <p>The type of Snow Family devices to use for the long-term pricing job.</p>
    #   @return [String]
    class CreateLongTermPricingRequest < Struct.new(
      :long_term_pricing_type,
      :is_long_term_pricing_auto_renew,
      :snowball_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute long_term_pricing_id
    #   <p>The ID of the long-term pricing type for the device.</p>
    #   @return [String]
    class CreateLongTermPricingResult < Struct.new(
      :long_term_pricing_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID for a job that you want to create the return shipping label for; for example,
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #   @return [String]
    # @!attribute shipping_option
    #   <p>The shipping speed for a particular job. This speed doesn't dictate how soon the device
    #         is returned to Amazon Web Services. This speed represents how quickly it moves to its
    #         destination while in transit. Regional shipping speeds are as follows:</p>
    #   @return [String]
    class CreateReturnShippingLabelRequest < Struct.new(
      :job_id,
      :shipping_option,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status information of the task on a Snow device that is being returned to Amazon Web Services.</p>
    #   @return [String]
    class CreateReturnShippingLabelResult < Struct.new(
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the real-time status of a Snow device's data transfer while the device is at
    #         Amazon Web Services. This data is only available while a job has a <code>JobState</code>
    #       value of <code>InProgress</code>, for both import and export jobs.</p>
    # @!attribute bytes_transferred
    #   <p>The number of bytes transferred between a Snow device and Amazon S3.</p>
    #   @return [Integer]
    # @!attribute objects_transferred
    #   <p>The number of objects transferred between a Snow device and Amazon S3.</p>
    #   @return [Integer]
    # @!attribute total_bytes
    #   <p>The total bytes of data for a transfer between a Snow device and Amazon S3. This value
    #         is set to 0 (zero) until all the keys that will be transferred have been listed.</p>
    #   @return [Integer]
    # @!attribute total_objects
    #   <p>The total number of objects for a transfer between a Snow device and Amazon S3. This
    #         value is set to 0 (zero) until all the keys that will be transferred have been
    #         listed.</p>
    #   @return [Integer]
    class DataTransfer < Struct.new(
      :bytes_transferred,
      :objects_transferred,
      :total_bytes,
      :total_objects,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:bytes_transferred] = 0 unless options.key?(:bytes_transferred)
        options[:objects_transferred] = 0 unless options.key?(:objects_transferred)
        options[:total_bytes] = 0 unless options.key?(:total_bytes)
        options[:total_objects] = 0 unless options.key?(:total_objects)
        super
      end
    end

    # <p>The name and version of the service dependant on the requested service.</p>
    # @!attribute service_name
    #   <p>The name of the dependent service.</p>
    #   @return [String]
    # @!attribute service_version
    #   <p>The version of the dependent service.</p>
    #   @return [Types::ServiceVersion]
    class DependentService < Struct.new(
      :service_name,
      :service_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute address_id
    #   <p>The automatically generated ID for a specific address.</p>
    #   @return [String]
    class DescribeAddressRequest < Struct.new(
      :address_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute address
    #   <p>The address that you want the Snow device(s) associated with a specific job to be
    #         shipped to.</p>
    #   @return [Types::Address]
    class DescribeAddressResult < Struct.new(
      :address,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of <code>ADDRESS</code> objects to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>HTTP requests are stateless. To identify what object comes "next" in the list of
    #           <code>ADDRESS</code> objects, you have the option of specifying a value for
    #           <code>NextToken</code> as the starting point for your list of returned addresses.</p>
    #   @return [String]
    class DescribeAddressesRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute addresses
    #   <p>The Snow device shipping addresses that were created for this account.</p>
    #   @return [Array<Types::Address>]
    # @!attribute next_token
    #   <p>HTTP requests are stateless. If you use the automatically generated
    #           <code>NextToken</code> value in your next <code>DescribeAddresses</code> call, your list of
    #         returned addresses will start from this point in the array.</p>
    #   @return [String]
    class DescribeAddressesResult < Struct.new(
      :addresses,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_id
    #   <p>The automatically generated ID for a cluster.</p>
    #   @return [String]
    class DescribeClusterRequest < Struct.new(
      :cluster_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_metadata
    #   <p>Information about a specific cluster, including shipping information, cluster status,
    #         and other important metadata.</p>
    #   @return [Types::ClusterMetadata]
    class DescribeClusterResult < Struct.new(
      :cluster_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The automatically generated ID for a job, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #   @return [String]
    class DescribeJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_metadata
    #   <p>Information about a specific job, including shipping information, job status, and other
    #         important metadata.</p>
    #   @return [Types::JobMetadata]
    # @!attribute sub_job_metadata
    #   <p>Information about a specific job part (in the case of an export job), including
    #         shipping information, job status, and other important metadata.</p>
    #   @return [Array<Types::JobMetadata>]
    class DescribeJobResult < Struct.new(
      :job_metadata,
      :sub_job_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The automatically generated ID for a job, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #   @return [String]
    class DescribeReturnShippingLabelRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status information of the task on a Snow device that is being returned to Amazon Web Services.</p>
    #   @return [String]
    # @!attribute expiration_date
    #   <p>The expiration date of the current return shipping label.</p>
    #   @return [Time]
    # @!attribute return_shipping_label_uri
    #   <p>The pre-signed Amazon S3 URI used to download the return shipping label.</p>
    #   @return [String]
    class DescribeReturnShippingLabelResult < Struct.new(
      :status,
      :expiration_date,
      :return_shipping_label_uri,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The container for <code>SnowconeDeviceConfiguration</code>. </p>
    # @!attribute snowcone_device_configuration
    #   <p>Returns information about the device configuration for an Snowball Edge
    #         job.</p>
    #   @return [Types::SnowconeDeviceConfiguration]
    class DeviceConfiguration < Struct.new(
      :snowcone_device_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the metadata and configuration settings of EKS Anywhere on the Snow Family device.</p>
    # @!attribute kubernetes_version
    #   <p>The Kubernetes version for EKS Anywhere on the Snow Family device.</p>
    #   @return [String]
    # @!attribute eks_anywhere_version
    #   <p>The optional version of EKS Anywhere on the Snow Family device.</p>
    #   @return [String]
    class EKSOnDeviceServiceConfiguration < Struct.new(
      :kubernetes_version,
      :eks_anywhere_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A JSON-formatted object that contains the IDs for an Amazon Machine Image (AMI),
    #       including the Amazon EC2-compatible AMI ID and the Snow device AMI ID. Each AMI has these two IDs to
    #       simplify identifying the AMI in both the Amazon Web Services Cloud and on the device.</p>
    # @!attribute ami_id
    #   <p>The ID of the AMI in Amazon EC2.</p>
    #   @return [String]
    # @!attribute snowball_ami_id
    #   <p>The ID of the AMI on the Snow device.</p>
    #   @return [String]
    class Ec2AmiResource < Struct.new(
      :ami_id,
      :snowball_ami_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Your user lacks the necessary Amazon EC2 permissions to perform the attempted
    #       action.</p>
    # @!attribute message
    #   @return [String]
    class Ec2RequestFailedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The container for the <a>EventTriggerDefinition$EventResourceARN</a>.</p>
    # @!attribute event_resource_arn
    #   <p>The Amazon Resource Name (ARN) for any local Amazon S3 resource that is an Lambda function's event trigger associated with this job.</p>
    #   @return [String]
    class EventTriggerDefinition < Struct.new(
      :event_resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID for a job that you want to get the manifest file for, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #   @return [String]
    class GetJobManifestRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute manifest_uri
    #   <p>The Amazon S3 presigned URL for the manifest file associated with the specified
    #           <code>JobId</code> value.</p>
    #   @return [String]
    class GetJobManifestResult < Struct.new(
      :manifest_uri,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID for the job that you want to get the <code>UnlockCode</code> value for, for
    #         example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #   @return [String]
    class GetJobUnlockCodeRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute unlock_code
    #   <p>The <code>UnlockCode</code> value for the specified job. The <code>UnlockCode</code>
    #         value can be accessed for up to 360 days after the job has been created.</p>
    #   @return [String]
    class GetJobUnlockCodeResult < Struct.new(
      :unlock_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetSnowballUsageRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute snowball_limit
    #   <p>The service limit for number of Snow devices this account can have at once. The default
    #         service limit is 1 (one).</p>
    #   @return [Integer]
    # @!attribute snowballs_in_use
    #   <p>The number of Snow devices that this account is currently using.</p>
    #   @return [Integer]
    class GetSnowballUsageResult < Struct.new(
      :snowball_limit,
      :snowballs_in_use,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The ID for a job that you want to get the software update file for, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #   @return [String]
    class GetSoftwareUpdatesRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute updates_uri
    #   <p>The Amazon S3 presigned URL for the update file associated with the specified
    #           <code>JobId</code> value. The software update will be available for 2 days after this
    #         request is made. To access an update after the 2 days have passed, you'll have to make another
    #         call to <code>GetSoftwareUpdates</code>.</p>
    #   @return [String]
    class GetSoftwareUpdatesResult < Struct.new(
      :updates_uri,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The tax documents required in Amazon Web Services Region in India.</p>
    # @!attribute gstin
    #   <p>The Goods and Services Tax (GST) documents required in Amazon Web Services Region in
    #         India.</p>
    #   @return [String]
    class INDTaxDocuments < Struct.new(
      :gstin,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The address provided was invalid. Check the address with your region's carrier, and try
    #       again.</p>
    # @!attribute message
    #   @return [String]
    class InvalidAddressException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Job or cluster creation failed. One or more inputs were invalid. Confirm that the <a>CreateClusterRequest$SnowballType</a> value supports your <a>CreateJobRequest$JobType</a>, and try again.</p>
    # @!attribute message
    #   @return [String]
    class InvalidInputCombinationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The action can't be performed because the job's current state doesn't allow that action
    #       to be performed.</p>
    # @!attribute message
    #   @return [String]
    class InvalidJobStateException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>NextToken</code> string was altered unexpectedly, and the operation has
    #       stopped. Run the operation without changing the <code>NextToken</code> string, and try
    #       again.</p>
    # @!attribute message
    #   @return [String]
    class InvalidNextTokenException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource can't be found. Check the information you provided in your last
    #       request, and try again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_type
    #   <p>The provided resource value is invalid.</p>
    #   @return [String]
    class InvalidResourceException < Struct.new(
      :message,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value
    #       that indicates whether the job is a job part, in the case of an export job.</p>
    # @!attribute job_id
    #   <p>The automatically generated ID for a job, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #   @return [String]
    # @!attribute job_state
    #   <p>The current state of this job.</p>
    #   @return [String]
    # @!attribute is_master
    #   <p>A value that indicates that this job is a main job. A main job represents a successful
    #         request to create an export job. Main jobs aren't associated with any Snowballs. Instead, each
    #         main job will have at least one job part, and each job part is associated with a Snowball. It
    #         might take some time before the job parts associated with a particular main job are listed,
    #         because they are created after the main job is created.</p>
    #   @return [Boolean]
    # @!attribute job_type
    #   <p>The type of job.</p>
    #   @return [String]
    # @!attribute snowball_type
    #   <p>The type of device used with this job.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The creation date for this job.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The optional description of this specific job, for example <code>Important Photos
    #           2016-08-11</code>.</p>
    #   @return [String]
    class JobListEntry < Struct.new(
      :job_id,
      :job_state,
      :is_master,
      :job_type,
      :snowball_type,
      :creation_date,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_master] = false unless options.key?(:is_master)
        super
      end
    end

    # <p>Contains job logs. Whenever a Snow device is used to import data into or export data
    #       out of Amazon S3, you'll have the option of downloading a PDF job report. Job logs are
    #       returned as a part of the response syntax of the <code>DescribeJob</code> action in the
    #         <code>JobMetadata</code> data type. The job logs can be accessed for up to 60 minutes after
    #       this request has been made. To access any of the job logs after 60 minutes have passed, you'll
    #       have to make another call to the <code>DescribeJob</code> action.</p>
    #          <p>For import jobs, the PDF job report becomes available at the end of the import process.
    #       For export jobs, your job report typically becomes available while the Snow device for your
    #       job part is being delivered to you.</p>
    #          <p>The job report provides you insight into the state of your Amazon S3 data transfer. The
    #       report includes details about your job or job part for your records.</p>
    #          <p>For deeper visibility into the status of your transferred objects, you can look at the
    #       two associated logs: a success log and a failure log. The logs are saved in comma-separated
    #       value (CSV) format, and the name of each log includes the ID of the job or job part that the
    #       log describes.</p>
    # @!attribute job_completion_report_uri
    #   <p>A link to an Amazon S3 presigned URL where the job completion report is
    #         located.</p>
    #   @return [String]
    # @!attribute job_success_log_uri
    #   <p>A link to an Amazon S3 presigned URL where the job success log is located.</p>
    #   @return [String]
    # @!attribute job_failure_log_uri
    #   <p>A link to an Amazon S3 presigned URL where the job failure log is located.</p>
    #   @return [String]
    class JobLogs < Struct.new(
      :job_completion_report_uri,
      :job_success_log_uri,
      :job_failure_log_uri,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a specific job including shipping information, job status,
    #       and other important metadata. This information is returned as a part of the response syntax of
    #       the <code>DescribeJob</code> action.</p>
    # @!attribute job_id
    #   <p>The automatically generated ID for a job, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #   @return [String]
    # @!attribute job_state
    #   <p>The current status of the jobs.</p>
    #   @return [String]
    # @!attribute job_type
    #   <p>The type of job.</p>
    #   @return [String]
    # @!attribute snowball_type
    #   <p>The type of device used with this job.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The creation date for this job.</p>
    #   @return [Time]
    # @!attribute resources
    #   <p>An array of <code>S3Resource</code> objects. Each <code>S3Resource</code> object
    #         represents an Amazon S3 bucket that your transferred data will be exported from or imported
    #         into.</p>
    #   @return [Types::JobResource]
    # @!attribute description
    #   <p>The description of the job, provided at job creation.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) for the Key Management Service (KMS) key
    #         associated with this job. This ARN was created using the <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html">CreateKey</a> API action in KMS.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The role ARN associated with this job. This ARN was created using the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a>
    #         API action in Identity and Access Management.</p>
    #   @return [String]
    # @!attribute address_id
    #   <p>The ID for the address that you want the Snow device shipped to.</p>
    #   @return [String]
    # @!attribute shipping_details
    #   <p>A job's shipping information, including inbound and outbound tracking numbers and
    #         shipping speed options.</p>
    #   @return [Types::ShippingDetails]
    # @!attribute snowball_capacity_preference
    #   <p>The Snow device capacity preference for this job, specified at job creation. In US
    #         regions, you can choose between 50 TB and 80 TB Snowballs. All other regions use 80 TB
    #         capacity Snowballs.</p>
    #            <p>For more information, see
    #         "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
    #         "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>
    #   @return [String]
    # @!attribute notification
    #   <p>The Amazon Simple Notification Service (Amazon SNS) notification settings associated
    #         with a specific job. The <code>Notification</code> object is returned as a part of the
    #         response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data
    #         type.</p>
    #   @return [Types::Notification]
    # @!attribute data_transfer_progress
    #   <p>A value that defines the real-time status of a Snow device's data transfer while the
    #         device is at Amazon Web Services. This data is only available while a job has a
    #           <code>JobState</code> value of <code>InProgress</code>, for both import and export
    #         jobs.</p>
    #   @return [Types::DataTransfer]
    # @!attribute job_log_info
    #   <p>Links to Amazon S3 presigned URLs for the job report and logs. For import jobs, the PDF
    #         job report becomes available at the end of the import process. For export jobs, your job
    #         report typically becomes available while the Snow device for your job part is being delivered
    #         to you.</p>
    #   @return [Types::JobLogs]
    # @!attribute cluster_id
    #   <p>The 39-character ID for the cluster, for example
    #           <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #   @return [String]
    # @!attribute forwarding_address_id
    #   <p>The ID of the address that you want a job shipped to, after it will be
    #         shipped to its primary address. This field is not supported in most regions.</p>
    #   @return [String]
    # @!attribute tax_documents
    #   <p>The metadata associated with the tax documents required in your Amazon Web Services Region.</p>
    #   @return [Types::TaxDocuments]
    # @!attribute device_configuration
    #   <p>The container for <code>SnowconeDeviceConfiguration</code>. </p>
    #   @return [Types::DeviceConfiguration]
    # @!attribute remote_management
    #   <p>Allows you to securely operate and manage Snowcone devices remotely from outside of your
    #         internal network. When set to <code>INSTALLED_AUTOSTART</code>, remote management will
    #         automatically be available when the device arrives at your location. Otherwise, you need to
    #         use the Snowball Client to manage the device.</p>
    #   @return [String]
    # @!attribute long_term_pricing_id
    #   <p>The ID of the long-term pricing type for the device.</p>
    #   @return [String]
    # @!attribute on_device_service_configuration
    #   <p>Represents metadata and configuration settings for services on an Amazon Web Services Snow Family
    #         device.</p>
    #   @return [Types::OnDeviceServiceConfiguration]
    # @!attribute impact_level
    #   <p>The highest impact level of data that will be stored or processed on the device, provided at job creation.</p>
    #   @return [String]
    # @!attribute pickup_details
    #   <p>Information identifying the person picking up the device.</p>
    #   @return [Types::PickupDetails]
    # @!attribute snowball_id
    #   <p>Unique ID associated with a device.</p>
    #   @return [String]
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
      :device_configuration,
      :remote_management,
      :long_term_pricing_id,
      :on_device_service_configuration,
      :impact_level,
      :pickup_details,
      :snowball_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an array of Amazon Web Services resource objects. Each object represents an
    #       Amazon S3 bucket, an Lambda function, or an Amazon Machine Image (AMI) based
    #       on Amazon EC2 that is associated with a particular job.</p>
    # @!attribute s3_resources
    #   <p>An array of <code>S3Resource</code> objects.</p>
    #   @return [Array<Types::S3Resource>]
    # @!attribute lambda_resources
    #   <p>The Python-language Lambda functions for this job.</p>
    #   @return [Array<Types::LambdaResource>]
    # @!attribute ec2_ami_resources
    #   <p>The Amazon Machine Images (AMIs) associated with this job.</p>
    #   @return [Array<Types::Ec2AmiResource>]
    class JobResource < Struct.new(
      :s3_resources,
      :lambda_resources,
      :ec2_ami_resources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The provided Key Management Service key lacks the permissions to perform the specified
    #         <a>CreateJob</a> or <a>UpdateJob</a> action.</p>
    # @!attribute message
    #   @return [String]
    class KMSRequestFailedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a key range. For export jobs, a <code>S3Resource</code> object can have an
    #       optional <code>KeyRange</code> value. The length of the range is defined at job creation, and
    #       has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or
    #       both. Ranges are UTF-8 binary sorted.</p>
    # @!attribute begin_marker
    #   <p>The key that starts an optional key range for an export job. Ranges are inclusive and
    #         UTF-8 binary sorted.</p>
    #   @return [String]
    # @!attribute end_marker
    #   <p>The key that ends an optional key range for an export job. Ranges are inclusive and
    #         UTF-8 binary sorted.</p>
    #   @return [String]
    class KeyRange < Struct.new(
      :begin_marker,
      :end_marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies </p>
    # @!attribute lambda_arn
    #   <p>An Amazon Resource Name (ARN) that represents an Lambda function to be
    #         triggered by PUT object actions on the associated local Amazon S3 resource.</p>
    #   @return [String]
    # @!attribute event_triggers
    #   <p>The array of ARNs for <a>S3Resource</a> objects to trigger the <a>LambdaResource</a> objects associated with this job.</p>
    #   @return [Array<Types::EventTriggerDefinition>]
    class LambdaResource < Struct.new(
      :lambda_arn,
      :event_triggers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_id
    #   <p>The 39-character ID for the cluster that you want to list, for example
    #           <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of <code>JobListEntry</code> objects to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>HTTP requests are stateless. To identify what object comes "next" in the list of
    #           <code>JobListEntry</code> objects, you have the option of specifying <code>NextToken</code>
    #         as the starting point for your returned list.</p>
    #   @return [String]
    class ListClusterJobsRequest < Struct.new(
      :cluster_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_list_entries
    #   <p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value
    #         that indicates whether the job is a job part, in the case of export jobs. </p>
    #   @return [Array<Types::JobListEntry>]
    # @!attribute next_token
    #   <p>HTTP requests are stateless. If you use the automatically generated
    #           <code>NextToken</code> value in your next <code>ListClusterJobsResult</code> call, your list
    #         of returned jobs will start from this point in the array.</p>
    #   @return [String]
    class ListClusterJobsResult < Struct.new(
      :job_list_entries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of <code>ClusterListEntry</code> objects to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>HTTP requests are stateless. To identify what object comes "next" in the list of
    #           <code>ClusterListEntry</code> objects, you have the option of specifying
    #           <code>NextToken</code> as the starting point for your returned list.</p>
    #   @return [String]
    class ListClustersRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_list_entries
    #   <p>Each <code>ClusterListEntry</code> object contains a cluster's state, a cluster's ID,
    #         and other important status information.</p>
    #   @return [Array<Types::ClusterListEntry>]
    # @!attribute next_token
    #   <p>HTTP requests are stateless. If you use the automatically generated
    #           <code>NextToken</code> value in your next <code>ClusterListEntry</code> call, your list of
    #         returned clusters will start from this point in the array.</p>
    #   @return [String]
    class ListClustersResult < Struct.new(
      :cluster_list_entries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results for the list of compatible images. Currently, a Snowball
    #         Edge device can store 10 AMIs.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>HTTP requests are stateless. To identify what object comes "next" in the list of
    #         compatible images, you can specify a value for <code>NextToken</code> as the starting point
    #         for your list of returned images.</p>
    #   @return [String]
    class ListCompatibleImagesRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute compatible_images
    #   <p>A JSON-formatted object that describes a compatible AMI, including the ID and name for
    #         a Snow device AMI.</p>
    #   @return [Array<Types::CompatibleImage>]
    # @!attribute next_token
    #   <p>Because HTTP requests are stateless, this is the starting point for your next list of
    #         returned images.</p>
    #   @return [String]
    class ListCompatibleImagesResult < Struct.new(
      :compatible_images,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of <code>JobListEntry</code> objects to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>HTTP requests are stateless. To identify what object comes "next" in the list of
    #           <code>JobListEntry</code> objects, you have the option of specifying <code>NextToken</code>
    #         as the starting point for your returned list.</p>
    #   @return [String]
    class ListJobsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_list_entries
    #   <p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value
    #         that indicates whether the job is a job part, in the case of export jobs. </p>
    #   @return [Array<Types::JobListEntry>]
    # @!attribute next_token
    #   <p>HTTP requests are stateless. If you use this automatically generated
    #           <code>NextToken</code> value in your next <code>ListJobs</code> call, your returned
    #           <code>JobListEntry</code> objects will start from this point in the array.</p>
    #   @return [String]
    class ListJobsResult < Struct.new(
      :job_list_entries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of <code>ListLongTermPricing</code> objects to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Because HTTP requests are stateless, this is the starting point for your next list of
    #           <code>ListLongTermPricing</code> to return.</p>
    #   @return [String]
    class ListLongTermPricingRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute long_term_pricing_entries
    #   <p>Each <code>LongTermPricingEntry</code> object contains a status, ID, and other information
    #         about the <code>LongTermPricing</code> type. </p>
    #   @return [Array<Types::LongTermPricingListEntry>]
    # @!attribute next_token
    #   <p>Because HTTP requests are stateless, this is the starting point for your next list of
    #         returned <code>ListLongTermPricing</code> list.</p>
    #   @return [String]
    class ListLongTermPricingResult < Struct.new(
      :long_term_pricing_entries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of locations to list per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>HTTP requests are stateless. To identify what object comes "next" in the list of <code>ListPickupLocationsRequest</code> objects, you have the option of specifying <code>NextToken</code> as the starting point for your returned list.</p>
    #   @return [String]
    class ListPickupLocationsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute addresses
    #   <p>Information about the address of pickup locations.</p>
    #   @return [Array<Types::Address>]
    # @!attribute next_token
    #   <p>HTTP requests are stateless. To identify what object comes "next" in the list of <code>ListPickupLocationsResult</code> objects, you have the option of specifying <code>NextToken</code> as the starting point for your returned list.</p>
    #   @return [String]
    class ListPickupLocationsResult < Struct.new(
      :addresses,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the service for which you're requesting supported versions.</p>
    #   @return [String]
    # @!attribute dependent_services
    #   <p>A list of names and versions of dependant services of the requested service.</p>
    #   @return [Array<Types::DependentService>]
    # @!attribute max_results
    #   <p>The maximum number of <code>ListServiceVersions</code> objects to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Because HTTP requests are stateless, this is the starting point for the next list of returned 
    #         <code>ListServiceVersionsRequest</code> versions.</p>
    #   @return [String]
    class ListServiceVersionsRequest < Struct.new(
      :service_name,
      :dependent_services,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_versions
    #   <p>A list of supported versions.</p>
    #   @return [Array<Types::ServiceVersion>]
    # @!attribute service_name
    #   <p>The name of the service for which the system provided supported versions.</p>
    #   @return [String]
    # @!attribute dependent_services
    #   <p>A list of names and versions of dependant services of the service for which the system provided supported versions.</p>
    #   @return [Array<Types::DependentService>]
    # @!attribute next_token
    #   <p>Because HTTP requests are stateless, this is the starting point of the next list of returned 
    #         <code>ListServiceVersionsResult</code> results.</p>
    #   @return [String]
    class ListServiceVersionsResult < Struct.new(
      :service_versions,
      :service_name,
      :dependent_services,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Each <code>LongTermPricingListEntry</code> object contains information about a long-term
    #       pricing type.</p>
    # @!attribute long_term_pricing_id
    #   <p>The ID of the long-term pricing type for the device.</p>
    #   @return [String]
    # @!attribute long_term_pricing_end_date
    #   <p>The end date the long-term pricing contract.</p>
    #   @return [Time]
    # @!attribute long_term_pricing_start_date
    #   <p>The start date of the long-term pricing contract.</p>
    #   @return [Time]
    # @!attribute long_term_pricing_type
    #   <p>The type of long-term pricing that was selected for the device.</p>
    #   @return [String]
    # @!attribute current_active_job
    #   <p>The current active jobs on the device the long-term pricing type.</p>
    #   @return [String]
    # @!attribute replacement_job
    #   <p>A new device that replaces a device that is ordered with long-term pricing.</p>
    #   @return [String]
    # @!attribute is_long_term_pricing_auto_renew
    #   <p>If set to <code>true</code>, specifies that the current long-term pricing type for the
    #         device should be automatically renewed before the long-term pricing contract expires.</p>
    #   @return [Boolean]
    # @!attribute long_term_pricing_status
    #   <p>The status of the long-term pricing type.</p>
    #   @return [String]
    # @!attribute snowball_type
    #   <p>The type of Snow Family devices associated with this long-term pricing job.</p>
    #   @return [String]
    # @!attribute job_ids
    #   <p>The IDs of the jobs that are associated with a long-term pricing type.</p>
    #   @return [Array<String>]
    class LongTermPricingListEntry < Struct.new(
      :long_term_pricing_id,
      :long_term_pricing_end_date,
      :long_term_pricing_start_date,
      :long_term_pricing_type,
      :current_active_job,
      :replacement_job,
      :is_long_term_pricing_auto_renew,
      :long_term_pricing_status,
      :snowball_type,
      :job_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that represents the metadata and configuration settings for the NFS (Network
    #       File System) service on an Amazon Web Services Snow Family device.</p>
    # @!attribute storage_limit
    #   <p>The maximum NFS storage for one Snow Family device.</p>
    #   @return [Integer]
    # @!attribute storage_unit
    #   <p>The scale unit of the NFS storage on the device.</p>
    #            <p>Valid values: TB.</p>
    #   @return [String]
    class NFSOnDeviceServiceConfiguration < Struct.new(
      :storage_limit,
      :storage_unit,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:storage_limit] = 0 unless options.key?(:storage_limit)
        super
      end
    end

    # <p>The Amazon Simple Notification Service (Amazon SNS) notification settings associated
    #       with a specific job. The <code>Notification</code> object is returned as a part of the
    #       response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data
    #       type.</p>
    #          <p>When the notification settings are defined during job creation, you can choose to
    #       notify based on a specific set of job states using the <code>JobStatesToNotify</code> array of
    #       strings, or you can specify that you want to have Amazon SNS notifications sent out for all
    #       job states with <code>NotifyAll</code> set to true.</p>
    # @!attribute sns_topic_arn
    #   <p>The new SNS <code>TopicArn</code> that you want to associate with this job. You can
    #         create Amazon Resource Names (ARNs) for topics by using the <a href="https://docs.aws.amazon.com/sns/latest/api/API_CreateTopic.html">CreateTopic</a> Amazon SNS API
    #         action.</p>
    #            <p>You can subscribe email addresses to an Amazon SNS topic through the Amazon Web Services Management Console, or by using the <a href="https://docs.aws.amazon.com/sns/latest/api/API_Subscribe.html">Subscribe</a> Amazon Simple Notification
    #         Service (Amazon SNS) API action.</p>
    #   @return [String]
    # @!attribute job_states_to_notify
    #   <p>The list of job states that will trigger a notification for this job.</p>
    #   @return [Array<String>]
    # @!attribute notify_all
    #   <p>Any change in job state will trigger a notification for this job.</p>
    #   @return [Boolean]
    # @!attribute device_pickup_sns_topic_arn
    #   <p>Used to send SNS notifications for the person picking up the device (identified during job creation).</p>
    #   @return [String]
    class Notification < Struct.new(
      :sns_topic_arn,
      :job_states_to_notify,
      :notify_all,
      :device_pickup_sns_topic_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:notify_all] = false unless options.key?(:notify_all)
        super
      end
    end

    # <p>An object that represents the metadata and configuration settings for services on an Amazon Web Services
    #       Snow Family device.</p>
    # @!attribute nfs_on_device_service
    #   <p>Represents the NFS (Network File System) service on a Snow Family device.</p>
    #   @return [Types::NFSOnDeviceServiceConfiguration]
    # @!attribute tgw_on_device_service
    #   <p>Represents the Storage Gateway service Tape Gateway type on a Snow Family device.</p>
    #   @return [Types::TGWOnDeviceServiceConfiguration]
    # @!attribute eks_on_device_service
    #   <p>The configuration of EKS Anywhere on the Snow Family device.</p>
    #   @return [Types::EKSOnDeviceServiceConfiguration]
    # @!attribute s3_on_device_service
    #   <p>Configuration for Amazon S3 compatible storage on Snow family devices.</p>
    #   @return [Types::S3OnDeviceServiceConfiguration]
    class OnDeviceServiceConfiguration < Struct.new(
      :nfs_on_device_service,
      :tgw_on_device_service,
      :eks_on_device_service,
      :s3_on_device_service,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information identifying the person picking up the device.</p>
    # @!attribute name
    #   <p>The name of the person picking up the device.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The phone number of the person picking up the device.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address of the person picking up the device.</p>
    #   @return [String]
    # @!attribute identification_number
    #   <p>The number on the credential identifying the person picking up the device.</p>
    #   @return [String]
    # @!attribute identification_expiration_date
    #   <p>Expiration date of the credential identifying the person picking up the device.</p>
    #   @return [Time]
    # @!attribute identification_issuing_org
    #   <p>Organization that issued the credential identifying the person picking up the device.</p>
    #   @return [String]
    # @!attribute device_pickup_id
    #   <p>The unique ID for a device that will be picked up.</p>
    #   @return [String]
    class PickupDetails < Struct.new(
      :name,
      :phone_number,
      :email,
      :identification_number,
      :identification_expiration_date,
      :identification_issuing_org,
      :device_pickup_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You get this exception if you call <code>CreateReturnShippingLabel</code> and a valid
    #       return shipping label already exists. In this case, use
    #         <code>DescribeReturnShippingLabel</code> to get the URL.</p>
    # @!attribute message
    #   @return [String]
    class ReturnShippingLabelAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon S3 compatible storage on Snow family devices configuration items.</p>
    # @!attribute storage_limit
    #   <p>If the specified storage limit value matches storage limit of one of the defined configurations, that configuration will be used. 
    #         If the specified storage limit value does not match any defined configuration, the request will fail. If more than one configuration has 
    #         the same storage limit as specified, the other input need to be provided.</p>
    #   @return [Float]
    # @!attribute storage_unit
    #   <p>Storage unit. Currently the only supported unit is TB.</p>
    #   @return [String]
    # @!attribute service_size
    #   <p>Applicable when creating a cluster. Specifies how many nodes are needed for Amazon S3 compatible storage on Snow family devices. If specified, the other input can be omitted.</p>
    #   @return [Integer]
    # @!attribute fault_tolerance
    #   <p>>Fault tolerance level of the cluster. This indicates the number of nodes that can go down without degrading the performance of the cluster. This additional input helps when the specified <code>StorageLimit</code> matches more than one Amazon S3 compatible storage on Snow family devices service configuration.</p>
    #   @return [Integer]
    class S3OnDeviceServiceConfiguration < Struct.new(
      :storage_limit,
      :storage_unit,
      :service_size,
      :fault_tolerance,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Each <code>S3Resource</code> object represents an Amazon S3 bucket that your
    #       transferred data will be exported from or imported into. For export jobs, this object can have
    #       an optional <code>KeyRange</code> value. The length of the range is defined at job creation,
    #       and has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or
    #       both. Ranges are UTF-8 binary sorted.</p>
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute key_range
    #   <p>For export jobs, you can provide an optional <code>KeyRange</code> within a specific
    #         Amazon S3 bucket. The length of the range is defined at job creation, and has either an
    #         inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are
    #         UTF-8 binary sorted.</p>
    #   @return [Types::KeyRange]
    # @!attribute target_on_device_services
    #   <p>Specifies the service or services on the Snow Family device that your transferred data
    #         will be exported from or imported into. Amazon Web Services Snow Family supports Amazon S3 and NFS (Network File
    #         System).</p>
    #   @return [Array<Types::TargetOnDeviceService>]
    class S3Resource < Struct.new(
      :bucket_arn,
      :key_range,
      :target_on_device_services,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The version of the requested service.</p>
    # @!attribute version
    #   <p>The version number of the requested service.</p>
    #   @return [String]
    class ServiceVersion < Struct.new(
      :version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>Status</code> and <code>TrackingNumber</code> information for an inbound or
    #       outbound shipment.</p>
    # @!attribute status
    #   <p>Status information for a shipment.</p>
    #   @return [String]
    # @!attribute tracking_number
    #   <p>The tracking number for this job. Using this tracking number with your region's
    #         carrier's website, you can track a Snow device as the carrier transports it.</p>
    #            <p>For India, the carrier is Amazon Logistics. For all other regions, UPS is the
    #         carrier.</p>
    #   @return [String]
    class Shipment < Struct.new(
      :status,
      :tracking_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A job's shipping information, including inbound and outbound tracking numbers and
    #       shipping speed options.</p>
    # @!attribute shipping_option
    #   <p>The shipping speed for a particular job. This speed doesn't dictate how soon you'll get
    #         the Snow device from the job's creation date. This speed represents how quickly it moves to
    #         its destination while in transit. Regional shipping speeds are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>In Australia, you have access to express shipping. Typically, Snow devices shipped
    #             express are delivered in about a day.</p>
    #               </li>
    #               <li>
    #                  <p>In the European Union (EU), you have access to express shipping. Typically, Snow
    #             devices shipped express are delivered in about a day. In addition, most countries in the
    #             EU have access to standard shipping, which typically takes less than a week, one
    #             way.</p>
    #               </li>
    #               <li>
    #                  <p>In India, Snow devices are delivered in one to seven days.</p>
    #               </li>
    #               <li>
    #                  <p>In the United States of America (US), you have access to one-day shipping and
    #             two-day shipping.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute inbound_shipment
    #   <p>The <code>Status</code> and <code>TrackingNumber</code> values for a Snow device being
    #         returned to Amazon Web Services for a particular job.</p>
    #   @return [Types::Shipment]
    # @!attribute outbound_shipment
    #   <p>The <code>Status</code> and <code>TrackingNumber</code> values for a Snow device being
    #         delivered to the address that you specified for a particular job.</p>
    #   @return [Types::Shipment]
    class ShippingDetails < Struct.new(
      :shipping_option,
      :inbound_shipment,
      :outbound_shipment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the device configuration for an Snowball Edge job.</p>
    # @!attribute wireless_connection
    #   <p>Configures the wireless connection for the Snowball Edge device.</p>
    #   @return [Types::WirelessConnection]
    class SnowconeDeviceConfiguration < Struct.new(
      :wireless_connection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that represents the metadata and configuration settings for the Storage Gateway
    #       service Tape Gateway type on an Amazon Web Services Snow Family device.</p>
    # @!attribute storage_limit
    #   <p>The maximum number of virtual tapes to store on one Snow Family device. Due to physical
    #         resource limitations, this value must be set to 80 for Snowball Edge.</p>
    #   @return [Integer]
    # @!attribute storage_unit
    #   <p>The scale unit of the virtual tapes on the device.</p>
    #   @return [String]
    class TGWOnDeviceServiceConfiguration < Struct.new(
      :storage_limit,
      :storage_unit,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:storage_limit] = 0 unless options.key?(:storage_limit)
        super
      end
    end

    # <p>An object that represents the service or services on the Snow Family device that your
    #       transferred data will be exported from or imported into. Amazon Web Services Snow Family supports Amazon S3 and
    #       NFS (Network File System).</p>
    # @!attribute service_name
    #   <p>Specifies the name of the service on the Snow Family device that your transferred data
    #         will be exported from or imported into.</p>
    #   @return [String]
    # @!attribute transfer_option
    #   <p>Specifies whether the data is being imported or exported. You can import or export the
    #         data, or use it locally on the device.</p>
    #   @return [String]
    class TargetOnDeviceService < Struct.new(
      :service_name,
      :transfer_option,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The tax documents required in your Amazon Web Services Region.</p>
    # @!attribute ind
    #   <p>The tax documents required in Amazon Web Services Region in India.</p>
    #   @return [Types::INDTaxDocuments]
    class TaxDocuments < Struct.new(
      :ind,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The address is either outside the serviceable area for your region, or an error
    #       occurred. Check the address with your region's carrier and try again. If the issue persists,
    #       contact Amazon Web Services Support.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedAddressException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_id
    #   <p>The cluster ID of the cluster that you want to update, for example
    #           <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The new role Amazon Resource Name (ARN) that you want to associate with this cluster.
    #         To create a role ARN, use the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> API action in Identity and Access Management (IAM).</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of this cluster.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The updated arrays of <a>JobResource</a> objects that can include updated
    #           <a>S3Resource</a> objects or <a>LambdaResource</a> objects.</p>
    #   @return [Types::JobResource]
    # @!attribute on_device_service_configuration
    #   <p>Specifies the service or services on the Snow Family device that your transferred data
    #         will be exported from or imported into. Amazon Web Services Snow Family device clusters support Amazon S3 and NFS
    #         (Network File System).</p>
    #   @return [Types::OnDeviceServiceConfiguration]
    # @!attribute address_id
    #   <p>The ID of the updated <a>Address</a> object.</p>
    #   @return [String]
    # @!attribute shipping_option
    #   <p>The updated shipping option value of this cluster's <a>ShippingDetails</a>
    #         object.</p>
    #   @return [String]
    # @!attribute notification
    #   <p>The new or updated <a>Notification</a> object.</p>
    #   @return [Types::Notification]
    # @!attribute forwarding_address_id
    #   <p>The updated ID for the forwarding address for a cluster. This field is not
    #         supported in most regions.</p>
    #   @return [String]
    class UpdateClusterRequest < Struct.new(
      :cluster_id,
      :role_arn,
      :description,
      :resources,
      :on_device_service_configuration,
      :address_id,
      :shipping_option,
      :notification,
      :forwarding_address_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateClusterResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The job ID of the job that you want to update, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The new role Amazon Resource Name (ARN) that you want to associate with this job. To
    #         create a role ARN, use the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a>Identity and Access Management
    #         (IAM) API action.</p>
    #   @return [String]
    # @!attribute notification
    #   <p>The new or updated <a>Notification</a> object.</p>
    #   @return [Types::Notification]
    # @!attribute resources
    #   <p>The updated <code>JobResource</code> object, or the updated <a>JobResource</a> object. </p>
    #   @return [Types::JobResource]
    # @!attribute on_device_service_configuration
    #   <p>Specifies the service or services on the Snow Family device that your transferred data
    #         will be exported from or imported into. Amazon Web Services Snow Family supports Amazon S3 and NFS (Network File
    #         System) and the Amazon Web Services Storage Gateway service Tape Gateway type.</p>
    #   @return [Types::OnDeviceServiceConfiguration]
    # @!attribute address_id
    #   <p>The ID of the updated <a>Address</a> object.</p>
    #   @return [String]
    # @!attribute shipping_option
    #   <p>The updated shipping option value of this job's <a>ShippingDetails</a>
    #         object.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of this job's <a>JobMetadata</a> object.</p>
    #   @return [String]
    # @!attribute snowball_capacity_preference
    #   <p>The updated <code>SnowballCapacityPreference</code> of this job's <a>JobMetadata</a> object. The 50 TB Snowballs are only available in the US
    #         regions.</p>
    #            <p>For more information, see
    #         "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i> or
    #         "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html" (Snow
    #         Family Devices and Capacity) in the <i>Snowcone User Guide</i>.</p>
    #   @return [String]
    # @!attribute forwarding_address_id
    #   <p>The updated ID for the forwarding address for a job. This field is not
    #         supported in most regions.</p>
    #   @return [String]
    # @!attribute pickup_details
    #   <p>Information identifying the person picking up the device.</p>
    #   @return [Types::PickupDetails]
    class UpdateJobRequest < Struct.new(
      :job_id,
      :role_arn,
      :notification,
      :resources,
      :on_device_service_configuration,
      :address_id,
      :shipping_option,
      :description,
      :snowball_capacity_preference,
      :forwarding_address_id,
      :pickup_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateJobResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The job ID of the job whose shipment date you want to update, for example
    #           <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
    #   @return [String]
    # @!attribute shipment_state
    #   <p>The state of a device when it is being shipped. </p>
    #            <p>Set to <code>RECEIVED</code> when the device arrives at your location.</p>
    #            <p>Set to <code>RETURNED</code> when you have returned the device to Amazon Web Services.</p>
    #   @return [String]
    class UpdateJobShipmentStateRequest < Struct.new(
      :job_id,
      :shipment_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateJobShipmentStateResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute long_term_pricing_id
    #   <p>The ID of the long-term pricing type for the device.</p>
    #   @return [String]
    # @!attribute replacement_job
    #   <p>Specifies that a device that is ordered with long-term pricing should be replaced with a
    #         new device.</p>
    #   @return [String]
    # @!attribute is_long_term_pricing_auto_renew
    #   <p>If set to <code>true</code>, specifies that the current long-term pricing type for the
    #         device should be automatically renewed before the long-term pricing contract expires.</p>
    #   @return [Boolean]
    class UpdateLongTermPricingRequest < Struct.new(
      :long_term_pricing_id,
      :replacement_job,
      :is_long_term_pricing_auto_renew,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateLongTermPricingResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configures the wireless connection on an Snowball Edge device.</p>
    # @!attribute is_wifi_enabled
    #   <p>Enables the Wi-Fi adapter on an Snowball Edge device.</p>
    #   @return [Boolean]
    class WirelessConnection < Struct.new(
      :is_wifi_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_wifi_enabled] = false unless options.key?(:is_wifi_enabled)
        super
      end
    end

  end
end
