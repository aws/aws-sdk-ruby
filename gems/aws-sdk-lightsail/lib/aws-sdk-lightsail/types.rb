# frozen_string_literal: true

# This is generated code!

module Aws::Lightsail
  # This module contains the types returned by client operations.
  module Types

    # <p>Lightsail throws this exception when the user cannot be authenticated or uses invalid
    #       credentials to access a resource.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute docs
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute tip
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :code,
      :docs,
      :message,
      :tip,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an access key for an Amazon Lightsail bucket.</p>
    #          <p>Access keys grant full programmatic access to the specified bucket and its objects. You
    #       can have a maximum of two access keys per bucket. Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_CreateBucketAccessKey.html">CreateBucketAccessKey</a> action to create an access key for a specific bucket. For
    #       more information about access keys, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-creating-bucket-access-keys">Creating access keys for a bucket in Amazon Lightsail</a> in the
    #         <i>Amazon Lightsail Developer Guide</i>.</p>
    #          <important>
    #             <p>The <code>secretAccessKey</code> value is returned only in response to the
    #           <code>CreateBucketAccessKey</code> action. You can get a secret access key only when you
    #         first create an access key; you cannot get the secret access key later. If you lose the
    #         secret access key, you must create a new access key.</p>
    #          </important>
    # @!attribute access_key_id
    #   <p>The ID of the access key.</p>
    #   @return [String]
    # @!attribute secret_access_key
    #   <p>The secret access key used to sign requests.</p>
    #            <p>You should store the secret access key in a safe location. We recommend that you delete
    #         the access key if the secret access key is compromised.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the access key.</p>
    #            <p>A status of <code>Active</code> means that the key is valid, while <code>Inactive</code>
    #         means it is not.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the access key was created.</p>
    #   @return [Time]
    # @!attribute last_used
    #   <p>An object that describes the last time the access key was used.</p>
    #            <note>
    #               <p>This object does not include data in the response of a <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_CreateBucketAccessKey.html">CreateBucketAccessKey</a> action. If the access key has not been used, the
    #             <code>region</code> and <code>serviceName</code> values are <code>N/A</code>, and the
    #             <code>lastUsedDate</code> value is null.</p>
    #            </note>
    #   @return [Types::AccessKeyLastUsed]
    class AccessKey < Struct.new(
      :access_key_id,
      :secret_access_key,
      :status,
      :created_at,
      :last_used,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the last time an access key was used.</p>
    #          <note>
    #             <p>This object does not include data in the response of a <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_CreateBucketAccessKey.html">CreateBucketAccessKey</a> action.</p>
    #          </note>
    # @!attribute last_used_date
    #   <p>The date and time when the access key was most recently used.</p>
    #            <p>This value is null if the access key has not been used.</p>
    #   @return [Time]
    # @!attribute region
    #   <p>The Amazon Web Services Region where this access key was most recently used.</p>
    #            <p>This value is <code>N/A</code> if the access key has not been used.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the Amazon Web Services service with which this access key was most recently
    #         used.</p>
    #            <p>This value is <code>N/A</code> if the access key has not been used.</p>
    #   @return [String]
    class AccessKeyLastUsed < Struct.new(
      :last_used_date,
      :region,
      :service_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the anonymous access permissions for an Amazon Lightsail bucket and its
    #       objects.</p>
    #          <p>For more information about bucket access permissions, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-understanding-bucket-permissions">Understanding bucket permissions in Amazon Lightsail</a> in the </p>
    #          <p>
    #             <i>Amazon Lightsail Developer Guide</i>.</p>
    # @!attribute get_object
    #   <p>Specifies the anonymous access to all objects in a bucket.</p>
    #            <p>The following options can be specified:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>public</code> - Sets all objects in the bucket to public (read-only), making
    #             them readable by anyone in the world.</p>
    #                  <p>If the <code>getObject</code> value is set to <code>public</code>, then all objects in
    #             the bucket default to public regardless of the <code>allowPublicOverrides</code>
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>private</code> - Sets all objects in the bucket to private, making them readable
    #             only by you or anyone you give access to.</p>
    #                  <p>If the <code>getObject</code> value is set to <code>private</code>, and the
    #               <code>allowPublicOverrides</code> value is set to <code>true</code>, then all objects in
    #             the bucket default to private unless they are configured with a <code>public-read</code>
    #             ACL. Individual objects with a <code>public-read</code> ACL are readable by anyone in the
    #             world.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute allow_public_overrides
    #   <p>A Boolean value that indicates whether the access control list (ACL) permissions that are
    #         applied to individual objects override the <code>getObject</code> option that is currently
    #         specified.</p>
    #            <p>When this is true, you can use the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObjectAcl.html">PutObjectAcl</a> Amazon S3 API action to set
    #         individual objects to public (read-only) using the <code>public-read</code> ACL, or to private
    #         using the <code>private</code> ACL.</p>
    #   @return [Boolean]
    class AccessRules < Struct.new(
      :get_object,
      :allow_public_overrides,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the synchronization status of the Amazon Simple Storage Service (Amazon S3)
    #       account-level block public access (BPA) feature for your Lightsail buckets.</p>
    #          <p>The account-level BPA feature of Amazon S3 provides centralized controls to limit
    #       public access to all Amazon S3 buckets in an account. BPA can make all Amazon S3 buckets in an Amazon Web Services account private regardless of the individual bucket and
    #       object permissions that are configured. Lightsail buckets take into account the
    #         Amazon S3 account-level BPA configuration when allowing or denying public access. To
    #       do this, Lightsail periodically fetches the account-level BPA configuration
    #       from Amazon S3. When the account-level BPA status is <code>InSync</code>, the Amazon S3 account-level BPA configuration is synchronized and it applies to your Lightsail
    #       buckets. For more information about Amazon Simple Storage Service account-level BPA and how it affects
    #         Lightsail buckets, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-block-public-access-for-buckets">Block public access for buckets in Amazon Lightsail</a> in the
    #           <i>Amazon Lightsail Developer Guide</i>.</p>
    # @!attribute status
    #   <p>The status of the account-level BPA synchronization.</p>
    #            <p>The following statuses are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>InSync</code> - Account-level BPA is synchronized. The Amazon S3
    #             account-level BPA configuration applies to your Lightsail buckets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NeverSynced</code> - Synchronization has not yet happened. The Amazon S3
    #             account-level BPA configuration does not apply to your Lightsail buckets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code> - Synchronization failed. The Amazon S3 account-level BPA
    #             configuration does not apply to your Lightsail buckets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Defaulted</code> - Synchronization failed and account-level BPA for your
    #             Lightsail buckets is defaulted to <i>active</i>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>You might need to complete further actions if the status is <code>Failed</code> or
    #             <code>Defaulted</code>. The <code>message</code> parameter provides more information for
    #           those statuses.</p>
    #            </note>
    #   @return [String]
    # @!attribute last_synced_at
    #   <p>The timestamp of when the account-level BPA configuration was last synchronized. This
    #         value is null when the account-level BPA configuration has not been synchronized.</p>
    #   @return [Time]
    # @!attribute message
    #   <p>A message that provides a reason for a <code>Failed</code> or <code>Defaulted</code>
    #         synchronization status.</p>
    #            <p>The following messages are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SYNC_ON_HOLD</code> - The synchronization has not yet happened. This status
    #             message occurs immediately after you create your first Lightsail bucket. This status
    #             message should change after the first synchronization happens, approximately 1 hour after
    #             the first bucket is created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEFAULTED_FOR_SLR_MISSING</code> - The synchronization failed because the
    #             required service-linked role is missing from your Amazon Web Services account. The
    #             account-level BPA configuration for your Lightsail buckets is defaulted to
    #               <i>active</i> until the synchronization can occur. This means that all
    #             your buckets are private and not publicly accessible. For more information about how to
    #             create the required service-linked role to allow synchronization, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-using-service-linked-roles">Using Service-Linked Roles for Amazon Lightsail</a> in the
    #                 <i>Amazon Lightsail Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEFAULTED_FOR_SLR_MISSING_ON_HOLD</code> - The synchronization failed because
    #             the required service-linked role is missing from your Amazon Web Services account.
    #             Account-level BPA is not yet configured for your Lightsail buckets. Therefore, only the
    #             bucket access permissions and individual object access permissions apply to your
    #             Lightsail buckets. For more information about how to create the required service-linked
    #             role to allow synchronization, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-using-service-linked-roles">Using Service-Linked Roles for Amazon Lightsail</a> in the
    #                 <i>Amazon Lightsail Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Unknown</code> - The reason that synchronization failed is unknown. Contact
    #               Amazon Web ServicesSupport for more information.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute bpa_impacts_lightsail
    #   <p>A Boolean value that indicates whether account-level block public access is affecting your
    #           Lightsail buckets.</p>
    #   @return [Boolean]
    class AccountLevelBpaSync < Struct.new(
      :status,
      :last_synced_at,
      :message,
      :bpa_impacts_lightsail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Lightsail throws this exception when an account is still in the setup in progress
    #       state.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute docs
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute tip
    #   @return [String]
    class AccountSetupInProgressException < Struct.new(
      :code,
      :docs,
      :message,
      :tip,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an add-on that is enabled for an Amazon Lightsail resource.</p>
    # @!attribute name
    #   <p>The name of the add-on.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the add-on.</p>
    #   @return [String]
    # @!attribute snapshot_time_of_day
    #   <p>The daily time when an automatic snapshot is created.</p>
    #            <p>The time shown is in <code>HH:00</code> format, and in Coordinated Universal Time
    #         (UTC).</p>
    #            <p>The snapshot is automatically created between the time shown and up to 45 minutes
    #         after.</p>
    #   @return [String]
    # @!attribute next_snapshot_time_of_day
    #   <p>The next daily time an automatic snapshot will be created.</p>
    #            <p>The time shown is in <code>HH:00</code> format, and in Coordinated Universal Time
    #         (UTC).</p>
    #            <p>The snapshot is automatically created between the time shown and up to 45 minutes
    #         after.</p>
    #   @return [String]
    # @!attribute threshold
    #   <p>The trigger threshold of the action.</p>
    #            <important>
    #               <p>This add-on only applies to Lightsail for Research resources.</p>
    #            </important>
    #   @return [String]
    # @!attribute duration
    #   <p>The amount of idle time in minutes after which your virtual computer will automatically
    #         stop.</p>
    #            <important>
    #               <p>This add-on only applies to Lightsail for Research resources.</p>
    #            </important>
    #   @return [String]
    class AddOn < Struct.new(
      :name,
      :status,
      :snapshot_time_of_day,
      :next_snapshot_time_of_day,
      :threshold,
      :duration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a request to enable, modify, or disable an add-on for an Amazon Lightsail
    #       resource.</p>
    #          <note>
    #             <p>An additional cost may be associated with enabling add-ons. For more information, see
    #         the <a href="https://aws.amazon.com/lightsail/pricing/">Lightsail pricing
    #         page</a>.</p>
    #          </note>
    # @!attribute add_on_type
    #   <p>The add-on type.</p>
    #   @return [String]
    # @!attribute auto_snapshot_add_on_request
    #   <p>An object that represents additional parameters when enabling or modifying the automatic
    #         snapshot add-on.</p>
    #   @return [Types::AutoSnapshotAddOnRequest]
    # @!attribute stop_instance_on_idle_request
    #   <p>An object that represents additional parameters when enabling or modifying the
    #           <code>StopInstanceOnIdle</code> add-on.</p>
    #            <important>
    #               <p>This object only applies to Lightsail for Research resources.</p>
    #            </important>
    #   @return [Types::StopInstanceOnIdleRequest]
    class AddOnRequest < Struct.new(
      :add_on_type,
      :auto_snapshot_add_on_request,
      :stop_instance_on_idle_request,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an alarm.</p>
    #          <p>An alarm is a way to monitor your Lightsail resource metrics. For more information, see
    #         <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-alarms">Alarms in Amazon Lightsail</a>.</p>
    # @!attribute name
    #   <p>The name of the alarm.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the alarm.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the alarm was created.</p>
    #   @return [Time]
    # @!attribute location
    #   <p>An object that lists information about the location of the alarm.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute resource_type
    #   <p>The Lightsail resource type of the alarm.</p>
    #   @return [String]
    # @!attribute support_code
    #   <p>The support code. Include this code in your email to support when you have questions about
    #         your Lightsail alarm. This code enables our support team to look up your Lightsail
    #         information more easily.</p>
    #   @return [String]
    # @!attribute monitored_resource_info
    #   <p>An object that lists information about the resource monitored by the alarm.</p>
    #   @return [Types::MonitoredResourceInfo]
    # @!attribute comparison_operator
    #   <p>The arithmetic operation used when comparing the specified statistic and threshold.</p>
    #   @return [String]
    # @!attribute evaluation_periods
    #   <p>The number of periods over which data is compared to the specified threshold.</p>
    #   @return [Integer]
    # @!attribute period
    #   <p>The period, in seconds, over which the statistic is applied.</p>
    #   @return [Integer]
    # @!attribute threshold
    #   <p>The value against which the specified statistic is compared.</p>
    #   @return [Float]
    # @!attribute datapoints_to_alarm
    #   <p>The number of data points that must not within the specified threshold to trigger the
    #         alarm.</p>
    #   @return [Integer]
    # @!attribute treat_missing_data
    #   <p>Specifies how the alarm handles missing data points.</p>
    #            <p>An alarm can treat missing data in the following ways:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>breaching</code> - Assume the missing data is not within the threshold. Missing
    #             data counts towards the number of times the metric is not within the threshold.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>notBreaching</code> - Assume the missing data is within the threshold. Missing
    #             data does not count towards the number of times the metric is not within the
    #             threshold.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ignore</code> - Ignore the missing data. Maintains the current alarm
    #             state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>missing</code> - Missing data is treated as missing.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute statistic
    #   <p>The statistic for the metric associated with the alarm.</p>
    #            <p>The following statistics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Minimum</code> - The lowest value observed during the specified period. Use this
    #             value to determine low volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Maximum</code> - The highest value observed during the specified period. Use
    #             this value to determine high volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> - All values submitted for the matching metric added together. You
    #             can use this statistic to determine the total volume of a metric.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> - The value of Sum / SampleCount during the specified period. By
    #             comparing this statistic with the Minimum and Maximum values, you can determine the full
    #             scope of a metric and how close the average use is to the Minimum and Maximum values. This
    #             comparison helps you to know when to increase or decrease your resources.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SampleCount</code> - The count, or number, of data points used for the
    #             statistical calculation.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The name of the metric associated with the alarm.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the alarm.</p>
    #            <p>An alarm has the following possible states:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALARM</code> - The metric is outside of the defined threshold.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSUFFICIENT_DATA</code> - The alarm has just started, the metric is not
    #             available, or not enough data is available for the metric to determine the alarm
    #             state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OK</code> - The metric is within the defined threshold.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute unit
    #   <p>The unit of the metric associated with the alarm.</p>
    #   @return [String]
    # @!attribute contact_protocols
    #   <p>The contact protocols for the alarm, such as <code>Email</code>, <code>SMS</code> (text
    #         messaging), or both.</p>
    #   @return [Array<String>]
    # @!attribute notification_triggers
    #   <p>The alarm states that trigger a notification.</p>
    #   @return [Array<String>]
    # @!attribute notification_enabled
    #   <p>Indicates whether the alarm is enabled.</p>
    #   @return [Boolean]
    class Alarm < Struct.new(
      :name,
      :arn,
      :created_at,
      :location,
      :resource_type,
      :support_code,
      :monitored_resource_info,
      :comparison_operator,
      :evaluation_periods,
      :period,
      :threshold,
      :datapoints_to_alarm,
      :treat_missing_data,
      :statistic,
      :metric_name,
      :state,
      :unit,
      :contact_protocols,
      :notification_triggers,
      :notification_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute static_ip_name
    #   <p>The name of the static IP address.</p>
    #   @return [String]
    class AllocateStaticIpRequest < Struct.new(
      :static_ip_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class AllocateStaticIpResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_name
    #   <p>The name of the distribution that the certificate will be attached to.</p>
    #            <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
    #         can specify.</p>
    #   @return [String]
    # @!attribute certificate_name
    #   <p>The name of the certificate to attach to a distribution.</p>
    #            <p>Only certificates with a status of <code>ISSUED</code> can be attached to a
    #         distribution.</p>
    #            <p>Use the <code>GetCertificates</code> action to get a list of certificate names that you
    #         can specify.</p>
    #            <note>
    #               <p>This is the name of the certificate resource type and is used only to reference the
    #           certificate in other API actions. It can be different than the domain name of the
    #           certificate. For example, your certificate name might be
    #             <code>WordPress-Blog-Certificate</code> and the domain name of the certificate might be
    #             <code>example.com</code>.</p>
    #            </note>
    #   @return [String]
    class AttachCertificateToDistributionRequest < Struct.new(
      :distribution_name,
      :certificate_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation
    #   <p>An object that describes the result of the action, such as the status of the request, the
    #         timestamp of the request, and the resources affected by the request.</p>
    #   @return [Types::Operation]
    class AttachCertificateToDistributionResult < Struct.new(
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute disk_name
    #   <p>The unique Lightsail disk name (<code>my-disk</code>).</p>
    #   @return [String]
    # @!attribute instance_name
    #   <p>The name of the Lightsail instance where you want to utilize the storage disk.</p>
    #   @return [String]
    # @!attribute disk_path
    #   <p>The disk path to expose to the instance (<code>/dev/xvdf</code>).</p>
    #   @return [String]
    # @!attribute auto_mounting
    #   <p>A Boolean value used to determine the automatic mounting of a storage volume to a virtual
    #         computer. The default value is <code>False</code>.</p>
    #            <important>
    #               <p>This value only applies to Lightsail for Research resources.</p>
    #            </important>
    #   @return [Boolean]
    class AttachDiskRequest < Struct.new(
      :disk_name,
      :instance_name,
      :disk_path,
      :auto_mounting,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class AttachDiskResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute instance_names
    #   <p>An array of strings representing the instance name(s) you want to attach to your load
    #         balancer.</p>
    #            <p>An instance must be <code>running</code> before you can attach it to your load
    #         balancer.</p>
    #            <p>There are no additional limits on the number of instances you can attach to your load
    #         balancer, aside from the limit of Lightsail instances you can create in your account
    #         (20).</p>
    #   @return [Array<String>]
    class AttachInstancesToLoadBalancerRequest < Struct.new(
      :load_balancer_name,
      :instance_names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class AttachInstancesToLoadBalancerResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_name
    #   <p>The name of the load balancer to which you want to associate the SSL/TLS
    #         certificate.</p>
    #   @return [String]
    # @!attribute certificate_name
    #   <p>The name of your SSL/TLS certificate.</p>
    #   @return [String]
    class AttachLoadBalancerTlsCertificateRequest < Struct.new(
      :load_balancer_name,
      :certificate_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #            <p>These SSL/TLS certificates are only usable by Lightsail load balancers. You can't get
    #         the certificate and use it for another purpose.</p>
    #   @return [Array<Types::Operation>]
    class AttachLoadBalancerTlsCertificateResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute static_ip_name
    #   <p>The name of the static IP.</p>
    #   @return [String]
    # @!attribute instance_name
    #   <p>The instance name to which you want to attach the static IP address.</p>
    #   @return [String]
    class AttachStaticIpRequest < Struct.new(
      :static_ip_name,
      :instance_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class AttachStaticIpResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a block storage disk that is attached to an instance, and is included in an
    #       automatic snapshot.</p>
    # @!attribute path
    #   <p>The path of the disk (<code>/dev/xvdf</code>).</p>
    #   @return [String]
    # @!attribute size_in_gb
    #   <p>The size of the disk in GB.</p>
    #   @return [Integer]
    class AttachedDisk < Struct.new(
      :path,
      :size_in_gb,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a request to enable or modify the automatic snapshot add-on for an
    #       Amazon Lightsail instance or disk.</p>
    #          <p>When you modify the automatic snapshot time for a resource, it is typically effective
    #       immediately except under the following conditions:</p>
    #          <ul>
    #             <li>
    #                <p>If an automatic snapshot has been created for the current day, and you change the
    #           snapshot time to a later time of day, then the new snapshot time will be effective the
    #           following day. This ensures that two snapshots are not created for the current day.</p>
    #             </li>
    #             <li>
    #                <p>If an automatic snapshot has not yet been created for the current day, and you change
    #           the snapshot time to an earlier time of day, then the new snapshot time will be effective
    #           the following day and a snapshot is automatically created at the previously set time for
    #           the current day. This ensures that a snapshot is created for the current day.</p>
    #             </li>
    #             <li>
    #                <p>If an automatic snapshot has not yet been created for the current day, and you change
    #           the snapshot time to a time that is within 30 minutes from your current time, then the new
    #           snapshot time will be effective the following day and a snapshot is automatically created
    #           at the previously set time for the current day. This ensures that a snapshot is created
    #           for the current day, because 30 minutes is required between your current time and the new
    #           snapshot time that you specify.</p>
    #             </li>
    #             <li>
    #                <p>If an automatic snapshot is scheduled to be created within 30 minutes from your
    #           current time and you change the snapshot time, then the new snapshot time will be
    #           effective the following day and a snapshot is automatically created at the previously set
    #           time for the current day. This ensures that a snapshot is created for the current day,
    #           because 30 minutes is required between your current time and the new snapshot time that
    #           you specify.</p>
    #             </li>
    #          </ul>
    # @!attribute snapshot_time_of_day
    #   <p>The daily time when an automatic snapshot will be created.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be in <code>HH:00</code> format, and in an hourly increment.</p>
    #               </li>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>The snapshot will be automatically created between the time specified and up to 45
    #             minutes after.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AutoSnapshotAddOnRequest < Struct.new(
      :snapshot_time_of_day,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an automatic snapshot.</p>
    # @!attribute date
    #   <p>The date of the automatic snapshot in <code>YYYY-MM-DD</code> format.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the automatic snapshot was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the automatic snapshot.</p>
    #   @return [String]
    # @!attribute from_attached_disks
    #   <p>An array of objects that describe the block storage disks attached to the instance when
    #         the automatic snapshot was created.</p>
    #   @return [Array<Types::AttachedDisk>]
    class AutoSnapshotDetails < Struct.new(
      :date,
      :created_at,
      :status,
      :from_attached_disks,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Availability Zone. This is returned only as part of a <code>GetRegions</code>
    #       request.</p>
    # @!attribute zone_name
    #   <p>The name of the Availability Zone. The format is <code>us-east-2a</code>
    #         (case-sensitive).</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the Availability Zone.</p>
    #   @return [String]
    class AvailabilityZone < Struct.new(
      :zone_name,
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a blueprint (a virtual private server image).</p>
    # @!attribute blueprint_id
    #   <p>The ID for the virtual private server image (<code>app_wordpress_x_x</code> or
    #           <code>app_lamp_x_x</code>).</p>
    #   @return [String]
    # @!attribute name
    #   <p>The friendly name of the blueprint (<code>Amazon Linux</code>).</p>
    #   @return [String]
    # @!attribute group
    #   <p>The group name of the blueprint (<code>amazon-linux</code>).</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the blueprint (<code>os</code> or <code>app</code>).</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the blueprint.</p>
    #   @return [String]
    # @!attribute is_active
    #   <p>A Boolean value indicating whether the blueprint is active. Inactive blueprints are listed
    #         to support customers with existing instances but are not necessarily available for launch of
    #         new instances. Blueprints are marked inactive when they become outdated due to operating
    #         system updates or new application releases.</p>
    #   @return [Boolean]
    # @!attribute min_power
    #   <p>The minimum bundle power required to run this blueprint. For example, you need a bundle
    #         with a power value of 500 or more to create an instance that uses a blueprint with a minimum
    #         power value of 500. <code>0</code> indicates that the blueprint runs on all instance sizes.
    #       </p>
    #   @return [Integer]
    # @!attribute version
    #   <p>The version number of the operating system, application, or stack (
    #         <code>2016.03.0</code>).</p>
    #   @return [String]
    # @!attribute version_code
    #   <p>The version code.</p>
    #   @return [String]
    # @!attribute product_url
    #   <p>The product URL to learn more about the image or blueprint.</p>
    #   @return [String]
    # @!attribute license_url
    #   <p>The end-user license agreement URL for the image or blueprint.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The operating system platform (either Linux/Unix-based or Windows Server-based) of the
    #         blueprint.</p>
    #   @return [String]
    # @!attribute app_category
    #   <p>Virtual computer blueprints that are supported by Lightsail for Research.</p>
    #            <important>
    #               <p>This parameter only applies to Lightsail for Research resources.</p>
    #            </important>
    #   @return [String]
    class Blueprint < Struct.new(
      :blueprint_id,
      :name,
      :group,
      :type,
      :description,
      :is_active,
      :min_power,
      :version,
      :version_code,
      :product_url,
      :license_url,
      :platform,
      :app_category,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon Lightsail bucket.</p>
    # @!attribute resource_type
    #   <p>The Lightsail resource type of the bucket.</p>
    #   @return [String]
    # @!attribute access_rules
    #   <p>An object that describes the access rules of the bucket.</p>
    #   @return [Types::AccessRules]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the bucket.</p>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The ID of the bundle currently applied to the bucket.</p>
    #            <p>A bucket bundle specifies the monthly cost, storage space, and data transfer quota for a
    #         bucket.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_UpdateBucketBundle.html">UpdateBucketBundle</a> action to change the
    #         bundle of a bucket.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the distribution was created.</p>
    #   @return [Time]
    # @!attribute url
    #   <p>The URL of the bucket.</p>
    #   @return [String]
    # @!attribute location
    #   <p>An object that describes the location of the bucket, such as the Amazon Web Services Region
    #         and Availability Zone.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute name
    #   <p>The name of the bucket.</p>
    #   @return [String]
    # @!attribute support_code
    #   <p>The support code for a bucket. Include this code in your email to support when you have
    #         questions about a Lightsail bucket. This code enables our support team to look up your
    #         Lightsail information more easily.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values for the bucket. For more information, see <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags">Tags in
    #           Amazon Lightsail</a> in the <i>Amazon Lightsail Developer Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute object_versioning
    #   <p>Indicates whether object versioning is enabled for the bucket.</p>
    #            <p>The following options can be configured:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Enabled</code> - Object versioning is enabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Suspended</code> - Object versioning was previously enabled but is currently
    #             suspended. Existing object versions are retained.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NeverEnabled</code> - Object versioning has never been enabled.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute able_to_update_bundle
    #   <p>Indicates whether the bundle that is currently applied to a bucket can be changed to
    #         another bundle.</p>
    #            <p>You can update a bucket's bundle only one time within a monthly Amazon Web Services billing
    #         cycle.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_UpdateBucketBundle.html">UpdateBucketBundle</a> action to change a
    #         bucket's bundle.</p>
    #   @return [Boolean]
    # @!attribute readonly_access_accounts
    #   <p>An array of strings that specify the Amazon Web Services account IDs that have read-only
    #         access to the bucket.</p>
    #   @return [Array<String>]
    # @!attribute resources_receiving_access
    #   <p>An array of objects that describe Lightsail instances that have access to the
    #         bucket.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_SetResourceAccessForBucket.html">SetResourceAccessForBucket</a>
    #         action to update the instances that have access to a bucket.</p>
    #   @return [Array<Types::ResourceReceivingAccess>]
    # @!attribute state
    #   <p>An object that describes the state of the bucket.</p>
    #   @return [Types::BucketState]
    # @!attribute access_log_config
    #   <p>An object that describes the access log configuration for the bucket.</p>
    #   @return [Types::BucketAccessLogConfig]
    class Bucket < Struct.new(
      :resource_type,
      :access_rules,
      :arn,
      :bundle_id,
      :created_at,
      :url,
      :location,
      :name,
      :support_code,
      :tags,
      :object_versioning,
      :able_to_update_bundle,
      :readonly_access_accounts,
      :resources_receiving_access,
      :state,
      :access_log_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the access log configuration for a bucket in the Amazon Lightsail object storage
    #       service.</p>
    #          <p>For more information about bucket access logs, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-bucket-access-logs">Logging bucket requests using access logging in Amazon Lightsail</a> in the
    #         <i>Amazon Lightsail Developer Guide</i>.</p>
    # @!attribute enabled
    #   <p>A Boolean value that indicates whether bucket access logging is enabled for the
    #         bucket.</p>
    #   @return [Boolean]
    # @!attribute destination
    #   <p>The name of the bucket where the access logs are saved. The destination can be a
    #         Lightsail bucket in the same account, and in the same Amazon Web Services Region as the
    #         source bucket.</p>
    #            <note>
    #               <p>This parameter is required when enabling the access log for a bucket, and should be
    #           omitted when disabling the access log.</p>
    #            </note>
    #   @return [String]
    # @!attribute prefix
    #   <p>The optional object prefix for the bucket access log.</p>
    #            <p>The prefix is an optional addition to the object key that organizes your access log files
    #         in the destination bucket. For example, if you specify a <code>logs/</code> prefix, then each
    #         log object will begin with the <code>logs/</code> prefix in its key (for example,
    #           <code>logs/2021-11-01-21-32-16-E568B2907131C0C0</code>).</p>
    #            <note>
    #               <p>This parameter can be optionally specified when enabling the access log for a bucket,
    #           and should be omitted when disabling the access log.</p>
    #            </note>
    #   @return [String]
    class BucketAccessLogConfig < Struct.new(
      :enabled,
      :destination,
      :prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the specifications of a bundle that can be applied to an Amazon Lightsail
    #       bucket.</p>
    #          <p>A bucket bundle specifies the monthly cost, storage space, and data transfer quota for a
    #       bucket.</p>
    # @!attribute bundle_id
    #   <p>The ID of the bundle.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the bundle.</p>
    #   @return [String]
    # @!attribute price
    #   <p>The monthly price of the bundle, in US dollars.</p>
    #   @return [Float]
    # @!attribute storage_per_month_in_gb
    #   <p>The storage size of the bundle, in GB.</p>
    #   @return [Integer]
    # @!attribute transfer_per_month_in_gb
    #   <p>The monthly network transfer quota of the bundle.</p>
    #   @return [Integer]
    # @!attribute is_active
    #   <p>Indicates whether the bundle is active. Use for a new or existing bucket.</p>
    #   @return [Boolean]
    class BucketBundle < Struct.new(
      :bundle_id,
      :name,
      :price,
      :storage_per_month_in_gb,
      :transfer_per_month_in_gb,
      :is_active,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the state of an Amazon Lightsail bucket.</p>
    # @!attribute code
    #   <p>The state code of the bucket.</p>
    #            <p>The following codes are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>OK</code> - The bucket is in a running state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Unknown</code> - Creation of the bucket might have timed-out. You might want to
    #             delete the bucket and create a new one.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>A message that describes the state of the bucket.</p>
    #   @return [String]
    class BucketState < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a bundle, which is a set of specs describing your virtual private server (or
    #         <i>instance</i>).</p>
    # @!attribute price
    #   <p>The price in US dollars (<code>5.0</code>) of the bundle.</p>
    #   @return [Float]
    # @!attribute cpu_count
    #   <p>The number of vCPUs included in the bundle (<code>2</code>).</p>
    #   @return [Integer]
    # @!attribute disk_size_in_gb
    #   <p>The size of the SSD (<code>30</code>).</p>
    #   @return [Integer]
    # @!attribute bundle_id
    #   <p>The bundle ID (<code>micro_x_x</code>).</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The instance type (<code>micro</code>).</p>
    #   @return [String]
    # @!attribute is_active
    #   <p>A Boolean value indicating whether the bundle is active.</p>
    #   @return [Boolean]
    # @!attribute name
    #   <p>A friendly name for the bundle (<code>Micro</code>).</p>
    #   @return [String]
    # @!attribute power
    #   <p>A numeric value that represents the power of the bundle (<code>500</code>). You can use
    #         the bundle's power value in conjunction with a blueprint's minimum power value to determine
    #         whether the blueprint will run on the bundle. For example, you need a bundle with a power
    #         value of 500 or more to create an instance that uses a blueprint with a minimum power value of
    #         500.</p>
    #   @return [Integer]
    # @!attribute ram_size_in_gb
    #   <p>The amount of RAM in GB (<code>2.0</code>).</p>
    #   @return [Float]
    # @!attribute transfer_per_month_in_gb
    #   <p>The data transfer rate per month in GB (<code>2000</code>).</p>
    #   @return [Integer]
    # @!attribute supported_platforms
    #   <p>The operating system platform (Linux/Unix-based or Windows Server-based) that the bundle
    #         supports. You can only launch a <code>WINDOWS</code> bundle on a blueprint that supports the
    #           <code>WINDOWS</code> platform. <code>LINUX_UNIX</code> blueprints require a
    #           <code>LINUX_UNIX</code> bundle.</p>
    #   @return [Array<String>]
    # @!attribute supported_app_categories
    #   <p>Virtual computer blueprints that are supported by a Lightsail for Research bundle.</p>
    #            <important>
    #               <p>This parameter only applies to Lightsail for Research resources.</p>
    #            </important>
    #   @return [Array<String>]
    # @!attribute public_ipv4_address_count
    #   <p>An integer that indicates the public ipv4 address count included in the bundle, the value
    #         is either 0 or 1.</p>
    #   @return [Integer]
    class Bundle < Struct.new(
      :price,
      :cpu_count,
      :disk_size_in_gb,
      :bundle_id,
      :instance_type,
      :is_active,
      :name,
      :power,
      :ram_size_in_gb,
      :transfer_per_month_in_gb,
      :supported_platforms,
      :supported_app_categories,
      :public_ipv4_address_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the default cache behavior of an Amazon Lightsail content delivery network (CDN)
    #       distribution.</p>
    # @!attribute behavior
    #   <p>The cache behavior of the distribution.</p>
    #            <p>The following cache behaviors can be specified:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>cache</code>
    #                     </b> - This option is best for static
    #             sites. When specified, your distribution caches and serves your entire website as static
    #             content. This behavior is ideal for websites with static content that doesn't change
    #             depending on who views it, or for websites that don't use cookies, headers, or query
    #             strings to personalize content.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>dont-cache</code>
    #                     </b> - This option is best for
    #             sites that serve a mix of static and dynamic content. When specified, your distribution
    #             caches and serve only the content that is specified in the distribution's
    #               <code>CacheBehaviorPerPath</code> parameter. This behavior is ideal for websites or web
    #             applications that use cookies, headers, and query strings to personalize content for
    #             individual users.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class CacheBehavior < Struct.new(
      :behavior,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the per-path cache behavior of an Amazon Lightsail content delivery network (CDN)
    #       distribution.</p>
    #          <p>A per-path cache behavior is used to override, or add an exception to, the default cache
    #       behavior of a distribution. For example, if the <code>cacheBehavior</code> is set to
    #         <code>cache</code>, then a per-path cache behavior can be used to specify a directory, file,
    #       or file type that your distribution will cache. Alternately, if the distribution's
    #         <code>cacheBehavior</code> is <code>dont-cache</code>, then a per-path cache behavior can be
    #       used to specify a directory, file, or file type that your distribution will not cache.</p>
    # @!attribute path
    #   <p>The path to a directory or file to cached, or not cache. Use an asterisk symbol to specify
    #         wildcard directories (<code>path/to/assets/*</code>), and file types (<code>*.html, *jpg,
    #           *js</code>). Directories and file paths are case-sensitive.</p>
    #            <p>Examples:</p>
    #            <ul>
    #               <li>
    #                  <p>Specify the following to cache all files in the document root of an Apache web server
    #             running on a Lightsail instance.</p>
    #                  <p>
    #                     <code>var/www/html/</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Specify the following file to cache only the index page in the document root of an
    #             Apache web server.</p>
    #                  <p>
    #                     <code>var/www/html/index.html</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Specify the following to cache only the .html files in the document root of an Apache
    #             web server.</p>
    #                  <p>
    #                     <code>var/www/html/*.html</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Specify the following to cache only the .jpg, .png, and .gif files in the images
    #             sub-directory of the document root of an Apache web server.</p>
    #                  <p>
    #                     <code>var/www/html/images/*.jpg</code>
    #                  </p>
    #                  <p>
    #                     <code>var/www/html/images/*.png</code>
    #                  </p>
    #                  <p>
    #                     <code>var/www/html/images/*.gif</code>
    #                  </p>
    #                  <p>Specify the following to cache all files in the images sub-directory of the document
    #             root of an Apache web server.</p>
    #                  <p>
    #                     <code>var/www/html/images/</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute behavior
    #   <p>The cache behavior for the specified path.</p>
    #            <p>You can specify one of the following per-path cache behaviors:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>cache</code>
    #                     </b> - This behavior caches the
    #             specified path. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>dont-cache</code>
    #                     </b> - This behavior doesn't cache
    #             the specified path. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class CacheBehaviorPerPath < Struct.new(
      :path,
      :behavior,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the cache settings of an Amazon Lightsail content delivery network (CDN)
    #       distribution.</p>
    #          <p>These settings apply only to your distribution's <code>cacheBehaviors</code> (including
    #       the <code>defaultCacheBehavior</code>) that have a <code>behavior</code> of
    #       <code>cache</code>.</p>
    # @!attribute default_ttl
    #   <p>The default amount of time that objects stay in the distribution's cache before the
    #         distribution forwards another request to the origin to determine whether the content has been
    #         updated.</p>
    #            <note>
    #               <p>The value specified applies only when the origin does not add HTTP headers such as
    #             <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and
    #             <code>Expires</code> to objects.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute minimum_ttl
    #   <p>The minimum amount of time that objects stay in the distribution's cache before the
    #         distribution forwards another request to the origin to determine whether the object has been
    #         updated.</p>
    #            <p>A value of <code>0</code> must be specified for <code>minimumTTL</code> if the
    #         distribution is configured to forward all headers to the origin.</p>
    #   @return [Integer]
    # @!attribute maximum_ttl
    #   <p>The maximum amount of time that objects stay in the distribution's cache before the
    #         distribution forwards another request to the origin to determine whether the object has been
    #         updated.</p>
    #            <p>The value specified applies only when the origin adds HTTP headers such as
    #           <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and
    #           <code>Expires</code> to objects.</p>
    #   @return [Integer]
    # @!attribute allowed_http_methods
    #   <p>The HTTP methods that are processed and forwarded to the distribution's origin.</p>
    #            <p>You can specify the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>GET,HEAD</code> - The distribution forwards the <code>GET</code> and
    #               <code>HEAD</code> methods.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GET,HEAD,OPTIONS</code> - The distribution forwards the <code>GET</code>,
    #               <code>HEAD</code>, and <code>OPTIONS</code> methods.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GET,HEAD,OPTIONS,PUT,PATCH,POST,DELETE</code> - The distribution forwards the
    #               <code>GET</code>, <code>HEAD</code>, <code>OPTIONS</code>, <code>PUT</code>,
    #               <code>PATCH</code>, <code>POST</code>, and <code>DELETE</code> methods.</p>
    #               </li>
    #            </ul>
    #            <p>If you specify the third option, you might need to restrict access to your distribution's
    #         origin so users can't perform operations that you don't want them to. For example, you might
    #         not want users to have permission to delete objects from your origin.</p>
    #   @return [String]
    # @!attribute cached_http_methods
    #   <p>The HTTP method responses that are cached by your distribution.</p>
    #            <p>You can specify the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>GET,HEAD</code> - The distribution caches responses to the <code>GET</code> and
    #               <code>HEAD</code> methods.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GET,HEAD,OPTIONS</code> - The distribution caches responses to the
    #               <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> methods.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute forwarded_cookies
    #   <p>An object that describes the cookies that are forwarded to the origin. Your content is
    #         cached based on the cookies that are forwarded.</p>
    #   @return [Types::CookieObject]
    # @!attribute forwarded_headers
    #   <p>An object that describes the headers that are forwarded to the origin. Your content is
    #         cached based on the headers that are forwarded.</p>
    #   @return [Types::HeaderObject]
    # @!attribute forwarded_query_strings
    #   <p>An object that describes the query strings that are forwarded to the origin. Your content
    #         is cached based on the query strings that are forwarded.</p>
    #   @return [Types::QueryStringObject]
    class CacheSettings < Struct.new(
      :default_ttl,
      :minimum_ttl,
      :maximum_ttl,
      :allowed_http_methods,
      :cached_http_methods,
      :forwarded_cookies,
      :forwarded_headers,
      :forwarded_query_strings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the full details of an Amazon Lightsail SSL/TLS certificate.</p>
    #          <note>
    #             <p>To get a summary of a certificate, use the <code>GetCertificates</code> action and omit
    #           <code>includeCertificateDetails</code> from your request. The response will include only
    #         the certificate Amazon Resource Name (ARN), certificate name, domain name, and tags.</p>
    #          </note>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the certificate.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the certificate (<code>my-certificate</code>).</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name of the certificate.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The validation status of the certificate.</p>
    #   @return [String]
    # @!attribute serial_number
    #   <p>The serial number of the certificate.</p>
    #   @return [String]
    # @!attribute subject_alternative_names
    #   <p>An array of strings that specify the alternate domains (<code>example2.com</code>) and
    #         subdomains (<code>blog.example.com</code>) of the certificate.</p>
    #   @return [Array<String>]
    # @!attribute domain_validation_records
    #   <p>An array of objects that describe the domain validation records of the certificate.</p>
    #   @return [Array<Types::DomainValidationRecord>]
    # @!attribute request_failure_reason
    #   <p>The validation failure reason, if any, of the certificate.</p>
    #            <p>The following failure reasons are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NO_AVAILABLE_CONTACTS</code>
    #                     </b> - This failure
    #             applies to email validation, which is not available for Lightsail certificates.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>ADDITIONAL_VERIFICATION_REQUIRED</code>
    #                     </b> -
    #             Lightsail requires additional information to process this certificate request. This can
    #             happen as a fraud-protection measure, such as when the domain ranks within the Alexa top
    #             1000 websites. To provide the required information, use the <a href="https://console.aws.amazon.com/support/home">Amazon Web Services Support
    #               Center</a> to contact Amazon Web Services Support.</p>
    #                  <note>
    #                     <p>You cannot request a certificate for Amazon-owned domain names such as those ending
    #               in amazonaws.com, cloudfront.net, or elasticbeanstalk.com.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>DOMAIN_NOT_ALLOWED</code>
    #                     </b> - One or more of the
    #             domain names in the certificate request was reported as an unsafe domain by <a href="https://www.virustotal.com/gui/home/url">VirusTotal</a>. To correct the
    #             problem, search for your domain name on the <a href="https://www.virustotal.com/gui/home/url">VirusTotal</a> website. If your domain
    #             is reported as suspicious, see <a href="https://developers.google.com/web/fundamentals/security/hacked">Google Help for
    #               Hacked Websites</a> to learn what you can do.</p>
    #                  <p>If you believe that the result is a false positive, notify the organization that is
    #             reporting the domain. VirusTotal is an aggregate of several antivirus and URL scanners and
    #             cannot remove your domain from a block list itself. After you correct the problem and the
    #             VirusTotal registry has been updated, request a new certificate.</p>
    #                  <p>If you see this error and your domain is not included in the VirusTotal list, visit
    #             the <a href="https://console.aws.amazon.com/support/home">Amazon Web Services Support
    #               Center</a> and create a case.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>INVALID_PUBLIC_DOMAIN</code>
    #                     </b> - One or more of
    #             the domain names in the certificate request is not valid. Typically, this is because a
    #             domain name in the request is not a valid top-level domain. Try to request a certificate
    #             again, correcting any spelling errors or typos that were in the failed request, and ensure
    #             that all domain names in the request are for valid top-level domains. For example, you
    #             cannot request a certificate for <code>example.invalidpublicdomain</code> because
    #               <code>invalidpublicdomain</code> is not a valid top-level domain.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>OTHER</code>
    #                     </b> - Typically, this failure occurs
    #             when there is a typographical error in one or more of the domain names in the certificate
    #             request. Try to request a certificate again, correcting any spelling errors or typos that
    #             were in the failed request. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute in_use_resource_count
    #   <p>The number of Lightsail resources that the certificate is attached to.</p>
    #   @return [Integer]
    # @!attribute key_algorithm
    #   <p>The algorithm used to generate the key pair (the public and private key) of the
    #         certificate.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the certificate was created.</p>
    #   @return [Time]
    # @!attribute issued_at
    #   <p>The timestamp when the certificate was issued.</p>
    #   @return [Time]
    # @!attribute issuer_ca
    #   <p>The certificate authority that issued the certificate.</p>
    #   @return [String]
    # @!attribute not_before
    #   <p>The timestamp when the certificate is first valid.</p>
    #   @return [Time]
    # @!attribute not_after
    #   <p>The timestamp when the certificate expires.</p>
    #   @return [Time]
    # @!attribute eligible_to_renew
    #   <p>The renewal eligibility of the certificate.</p>
    #   @return [String]
    # @!attribute renewal_summary
    #   <p>An object that describes the status of the certificate renewal managed by
    #         Lightsail.</p>
    #   @return [Types::RenewalSummary]
    # @!attribute revoked_at
    #   <p>The timestamp when the certificate was revoked. This value is present only when the
    #         certificate status is <code>REVOKED</code>.</p>
    #   @return [Time]
    # @!attribute revocation_reason
    #   <p>The reason the certificate was revoked. This value is present only when the certificate
    #         status is <code>REVOKED</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values for the resource. For more information about tags in
    #         Lightsail, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags">Amazon Lightsail Developer Guide</a>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute support_code
    #   <p>The support code. Include this code in your email to support when you have questions about
    #         your Lightsail certificate. This code enables our support team to look up your Lightsail
    #         information more easily.</p>
    #   @return [String]
    class Certificate < Struct.new(
      :arn,
      :name,
      :domain_name,
      :status,
      :serial_number,
      :subject_alternative_names,
      :domain_validation_records,
      :request_failure_reason,
      :in_use_resource_count,
      :key_algorithm,
      :created_at,
      :issued_at,
      :issuer_ca,
      :not_before,
      :not_after,
      :eligible_to_renew,
      :renewal_summary,
      :revoked_at,
      :revocation_reason,
      :tags,
      :support_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:in_use_resource_count] = 0 unless options.key?(:in_use_resource_count)
        super
      end
    end

    # <p>Describes an Amazon Lightsail SSL/TLS certificate.</p>
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate.</p>
    #   @return [String]
    # @!attribute certificate_name
    #   <p>The name of the certificate.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name of the certificate.</p>
    #   @return [String]
    # @!attribute certificate_detail
    #   <p>An object that describes a certificate in detail.</p>
    #   @return [Types::Certificate]
    # @!attribute tags
    #   <p>The tag keys and optional values for the resource. For more information about tags in
    #         Lightsail, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags">Amazon Lightsail Developer Guide</a>.</p>
    #   @return [Array<Types::Tag>]
    class CertificateSummary < Struct.new(
      :certificate_arn,
      :certificate_name,
      :domain_name,
      :certificate_detail,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute port_info
    #   <p>An object to describe the ports to close for the specified instance.</p>
    #   @return [Types::PortInfo]
    # @!attribute instance_name
    #   <p>The name of the instance for which to close ports.</p>
    #   @return [String]
    class CloseInstancePublicPortsRequest < Struct.new(
      :port_info,
      :instance_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation
    #   <p>An object that describes the result of the action, such as the status of the request, the
    #         timestamp of the request, and the resources affected by the request.</p>
    #   @return [Types::Operation]
    class CloseInstancePublicPortsResult < Struct.new(
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a CloudFormation stack record created as a result of the <code>create cloud
    #         formation stack</code> action.</p>
    #          <p>A CloudFormation stack record provides information about the AWS CloudFormation stack used to
    #       create a new Amazon Elastic Compute Cloud instance from an exported Lightsail instance snapshot.</p>
    # @!attribute name
    #   <p>The name of the CloudFormation stack record. It starts with
    #           <code>CloudFormationStackRecord</code> followed by a GUID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the CloudFormation stack record.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date when the CloudFormation stack record was created.</p>
    #   @return [Time]
    # @!attribute location
    #   <p>A list of objects describing the Availability Zone and Amazon Web Services Region of the
    #         CloudFormation stack record.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute resource_type
    #   <p>The Lightsail resource type (<code>CloudFormationStackRecord</code>).</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the CloudFormation stack record.</p>
    #   @return [String]
    # @!attribute source_info
    #   <p>A list of objects describing the source of the CloudFormation stack record.</p>
    #   @return [Array<Types::CloudFormationStackRecordSourceInfo>]
    # @!attribute destination_info
    #   <p>A list of objects describing the destination service, which is AWS CloudFormation, and the Amazon
    #         Resource Name (ARN) of the AWS CloudFormation stack.</p>
    #   @return [Types::DestinationInfo]
    class CloudFormationStackRecord < Struct.new(
      :name,
      :arn,
      :created_at,
      :location,
      :resource_type,
      :state,
      :source_info,
      :destination_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the source of a CloudFormation stack record (i.e., the export snapshot
    #       record).</p>
    # @!attribute resource_type
    #   <p>The Lightsail resource type (<code>ExportSnapshotRecord</code>).</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the record.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the export snapshot record.</p>
    #   @return [String]
    class CloudFormationStackRecordSourceInfo < Struct.new(
      :resource_type,
      :name,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a contact method.</p>
    #          <p>A contact method is a way to send you notifications. For more information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-notifications">Notifications in Amazon Lightsail</a>.</p>
    # @!attribute contact_endpoint
    #   <p>The destination of the contact method, such as an email address or a mobile phone
    #         number.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the contact method.</p>
    #            <p>A contact method has the following possible status:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PendingVerification</code> - The contact method has not yet been verified, and
    #             the verification has not yet expired.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Valid</code> - The contact method has been verified.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InValid</code> - An attempt was made to verify the contact method, but the
    #             verification has expired.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute protocol
    #   <p>The protocol of the contact method, such as email or SMS (text messaging).</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the contact method.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the contact method.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the contact method was created.</p>
    #   @return [Time]
    # @!attribute location
    #   <p>An object that describes the location of the contact method, such as the Amazon Web Services Region and Availability Zone.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute resource_type
    #   <p>The Lightsail resource type of the contact method.</p>
    #   @return [String]
    # @!attribute support_code
    #   <p>The support code. Include this code in your email to support when you have questions about
    #         your Lightsail contact method. This code enables our support team to look up your
    #         Lightsail information more easily.</p>
    #   @return [String]
    class ContactMethod < Struct.new(
      :contact_endpoint,
      :status,
      :protocol,
      :name,
      :arn,
      :created_at,
      :location,
      :resource_type,
      :support_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the settings of a container that will be launched, or that is launched, to an
    #       Amazon Lightsail container service.</p>
    # @!attribute image
    #   <p>The name of the image used for the container.</p>
    #            <p>Container images sourced from your Lightsail container service, that are registered and
    #         stored on your service, start with a colon (<code>:</code>). For example, if your container
    #         service name is <code>container-service-1</code>, the container image label is
    #           <code>mystaticsite</code>, and you want to use the third (<code>3</code>) version of the
    #         registered container image, then you should specify
    #           <code>:container-service-1.mystaticsite.3</code>. To use the latest version of a container
    #         image, specify <code>latest</code> instead of a version number (for example,
    #           <code>:container-service-1.mystaticsite.latest</code>). Lightsail will automatically use
    #         the highest numbered version of the registered container image.</p>
    #            <p>Container images sourced from a public registry like Docker Hub don't start with a colon.
    #         For example, <code>nginx:latest</code> or <code>nginx</code>.</p>
    #   @return [String]
    # @!attribute command
    #   <p>The launch command for the container.</p>
    #   @return [Array<String>]
    # @!attribute environment
    #   <p>The environment variables of the container.</p>
    #   @return [Hash<String, String>]
    # @!attribute ports
    #   <p>The open firewall ports of the container.</p>
    #   @return [Hash<String, String>]
    class Container < Struct.new(
      :image,
      :command,
      :environment,
      :ports,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a container image that is registered to an Amazon Lightsail container
    #       service.</p>
    # @!attribute image
    #   <p>The name of the container image.</p>
    #   @return [String]
    # @!attribute digest
    #   <p>The digest of the container image.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the container image was created.</p>
    #   @return [Time]
    class ContainerImage < Struct.new(
      :image,
      :digest,
      :created_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon Lightsail container service.</p>
    # @!attribute container_service_name
    #   <p>The name of the container service.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the container service.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the container service was created.</p>
    #   @return [Time]
    # @!attribute location
    #   <p>An object that describes the location of the container service, such as the Amazon Web Services Region and Availability Zone.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute resource_type
    #   <p>The Lightsail resource type of the container service.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values for the resource. For more information about tags in
    #         Lightsail, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags">Amazon Lightsail Developer Guide</a>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute power
    #   <p>The power specification of the container service.</p>
    #            <p>The power specifies the amount of RAM, the number of vCPUs, and the base price of the
    #         container service.</p>
    #   @return [String]
    # @!attribute power_id
    #   <p>The ID of the power of the container service.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the container service.</p>
    #            <p>The following container service states are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - The container service is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READY</code> - The container service is running but it does not have an active
    #             container deployment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPLOYING</code> - The container service is launching a container
    #             deployment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code> - The container service is running and it has an active container
    #             deployment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The container service capacity or its custom domains are being
    #             updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The container service is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> - The container service is disabled, and its active deployment
    #             and containers, if any, are shut down.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute state_detail
    #   <p>An object that describes the current state of the container service.</p>
    #            <note>
    #               <p>The state detail is populated only when a container service is in a
    #           <code>PENDING</code>, <code>DEPLOYING</code>, or <code>UPDATING</code> state.</p>
    #            </note>
    #   @return [Types::ContainerServiceStateDetail]
    # @!attribute scale
    #   <p>The scale specification of the container service.</p>
    #            <p>The scale specifies the allocated compute nodes of the container service.</p>
    #   @return [Integer]
    # @!attribute current_deployment
    #   <p>An object that describes the current container deployment of the container service.</p>
    #   @return [Types::ContainerServiceDeployment]
    # @!attribute next_deployment
    #   <p>An object that describes the next deployment of the container service.</p>
    #            <p>This value is <code>null</code> when there is no deployment in a <code>pending</code>
    #         state.</p>
    #   @return [Types::ContainerServiceDeployment]
    # @!attribute is_disabled
    #   <p>A Boolean value indicating whether the container service is disabled.</p>
    #   @return [Boolean]
    # @!attribute principal_arn
    #   <p>The principal ARN of the container service.</p>
    #            <p>The principal ARN can be used to create a trust relationship between your standard Amazon Web Services account and your Lightsail container service. This allows you to give your
    #         service permission to access resources in your standard Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute private_domain_name
    #   <p>The private domain name of the container service.</p>
    #            <p>The private domain name is accessible only by other resources within the default virtual
    #         private cloud (VPC) of your Lightsail account.</p>
    #   @return [String]
    # @!attribute public_domain_names
    #   <p>The public domain name of the container service, such as <code>example.com</code> and
    #           <code>www.example.com</code>.</p>
    #            <p>You can specify up to four public domain names for a container service. The domain names
    #         that you specify are used when you create a deployment with a container configured as the
    #         public endpoint of your container service.</p>
    #            <p>If you don't specify public domain names, then you can use the default domain of the
    #         container service.</p>
    #            <important>
    #               <p>You must create and validate an SSL/TLS certificate before you can use public domain
    #           names with your container service. Use the <code>CreateCertificate</code> action to create a
    #           certificate for the public domain names you want to use with your container service.</p>
    #            </important>
    #            <p>See <code>CreateContainerService</code> or <code>UpdateContainerService</code> for
    #         information about how to specify public domain names for your Lightsail container
    #         service.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute url
    #   <p>The publicly accessible URL of the container service.</p>
    #            <p>If no public endpoint is specified in the <code>currentDeployment</code>, this URL returns
    #         a 404 response.</p>
    #   @return [String]
    # @!attribute private_registry_access
    #   <p>An object that describes the configuration for the container service to access private
    #         container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private
    #         repositories.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-container-service-ecr-private-repo-access">Configuring access to an Amazon ECR private repository for an Amazon Lightsail container service</a> in the <i>Amazon Lightsail Developer Guide</i>.</p>
    #   @return [Types::PrivateRegistryAccess]
    class ContainerService < Struct.new(
      :container_service_name,
      :arn,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :power,
      :power_id,
      :state,
      :state_detail,
      :scale,
      :current_deployment,
      :next_deployment,
      :is_disabled,
      :principal_arn,
      :private_domain_name,
      :public_domain_names,
      :url,
      :private_registry_access,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a container deployment configuration of an Amazon Lightsail container
    #       service.</p>
    #          <p>A deployment specifies the settings, such as the ports and launch command, of containers
    #       that are deployed to your container service.</p>
    # @!attribute version
    #   <p>The version number of the deployment.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>The state of the deployment.</p>
    #            <p>A deployment can be in one of the following states:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVATING</code> - The deployment is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The deployment was successfully created, and it's currently
    #             running on the container service. The container service can have only one deployment in an
    #             active state at a time.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACTIVE</code> - The deployment was previously successfully created, but it is
    #             not currently running on the container service.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The deployment failed. Use the <code>GetContainerLog</code>
    #             action to view the log events for the containers in the deployment to try to determine the
    #             reason for the failure.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute containers
    #   <p>An object that describes the configuration for the containers of the deployment.</p>
    #   @return [Hash<String, Types::Container>]
    # @!attribute public_endpoint
    #   <p>An object that describes the endpoint of the deployment.</p>
    #   @return [Types::ContainerServiceEndpoint]
    # @!attribute created_at
    #   <p>The timestamp when the deployment was created.</p>
    #   @return [Time]
    class ContainerServiceDeployment < Struct.new(
      :version,
      :state,
      :containers,
      :public_endpoint,
      :created_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a container deployment configuration of an Amazon Lightsail container
    #       service.</p>
    #          <p>A deployment specifies the settings, such as the ports and launch command, of containers
    #       that are deployed to your container service.</p>
    # @!attribute containers
    #   <p>An object that describes the configuration for the containers of the deployment.</p>
    #   @return [Hash<String, Types::Container>]
    # @!attribute public_endpoint
    #   <p>An object that describes the endpoint of the deployment.</p>
    #   @return [Types::EndpointRequest]
    class ContainerServiceDeploymentRequest < Struct.new(
      :containers,
      :public_endpoint,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the activation status of the role that you can use to grant an Amazon Lightsail container service access to Amazon Elastic Container Registry (Amazon ECR)
    #       private repositories.</p>
    #          <p>When activated, Lightsail creates an Identity and Access Management (IAM) role
    #       for the specified Lightsail container service. You can use the ARN of the role to create a
    #       trust relationship between your Lightsail container service and an Amazon ECR private repository in your Amazon Web Services account. This allows your container
    #       service to pull images from Amazon ECR private repositories. For more information, see
    #         <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-container-service-ecr-private-repo-access">Configuring access to an Amazon ECR private repository for an Amazon Lightsail container service</a> in the <i>Amazon Lightsail Developer Guide</i>.</p>
    # @!attribute is_active
    #   <p>A Boolean value that indicates whether the role is activated.</p>
    #   @return [Boolean]
    # @!attribute principal_arn
    #   <p>The Amazon Resource Name (ARN) of the role, if it is activated.</p>
    #   @return [String]
    class ContainerServiceECRImagePullerRole < Struct.new(
      :is_active,
      :principal_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a request to activate or deactivate the role that you can use to grant an
    #         Amazon Lightsail container service access to Amazon Elastic Container Registry (Amazon ECR) private repositories.</p>
    #          <p>When activated, Lightsail creates an Identity and Access Management (IAM) role
    #       for the specified Lightsail container service. You can use the ARN of the role to create a
    #       trust relationship between your Lightsail container service and an Amazon ECR private repository in your Amazon Web Services account. This allows your container
    #       service to pull images from Amazon ECR private repositories. For more information, see
    #         <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-container-service-ecr-private-repo-access">Configuring access to an Amazon ECR private repository for an Amazon Lightsail container service</a> in the <i>Amazon Lightsail Developer Guide</i>.</p>
    # @!attribute is_active
    #   <p>A Boolean value that indicates whether to activate the role.</p>
    #   @return [Boolean]
    class ContainerServiceECRImagePullerRoleRequest < Struct.new(
      :is_active,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the public endpoint configuration of a deployment of an Amazon Lightsail
    #       container service.</p>
    # @!attribute container_name
    #   <p>The name of the container entry of the deployment that the endpoint configuration applies
    #         to.</p>
    #   @return [String]
    # @!attribute container_port
    #   <p>The port of the specified container to which traffic is forwarded to.</p>
    #   @return [Integer]
    # @!attribute health_check
    #   <p>An object that describes the health check configuration of the container.</p>
    #   @return [Types::ContainerServiceHealthCheckConfig]
    class ContainerServiceEndpoint < Struct.new(
      :container_name,
      :container_port,
      :health_check,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the health check configuration of an Amazon Lightsail container service.</p>
    # @!attribute healthy_threshold
    #   <p>The number of consecutive health checks successes required before moving the container to
    #         the <code>Healthy</code> state. The default value is <code>2</code>.</p>
    #   @return [Integer]
    # @!attribute unhealthy_threshold
    #   <p>The number of consecutive health check failures required before moving the container to
    #         the <code>Unhealthy</code> state. The default value is <code>2</code>.</p>
    #   @return [Integer]
    # @!attribute timeout_seconds
    #   <p>The amount of time, in seconds, during which no response means a failed health check. You
    #         can specify between 2 and 60 seconds. The default value is <code>2</code>.</p>
    #   @return [Integer]
    # @!attribute interval_seconds
    #   <p>The approximate interval, in seconds, between health checks of an individual container.
    #         You can specify between 5 and 300 seconds. The default value is <code>5</code>.</p>
    #   @return [Integer]
    # @!attribute path
    #   <p>The path on the container on which to perform the health check. The default value is
    #           <code>/</code>.</p>
    #   @return [String]
    # @!attribute success_codes
    #   <p>The HTTP codes to use when checking for a successful response from a container. You can
    #         specify values between <code>200</code> and <code>499</code>. You can specify multiple values
    #         (for example, <code>200,202</code>) or a range of values (for example,
    #         <code>200-299</code>).</p>
    #   @return [String]
    class ContainerServiceHealthCheckConfig < Struct.new(
      :healthy_threshold,
      :unhealthy_threshold,
      :timeout_seconds,
      :interval_seconds,
      :path,
      :success_codes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the log events of a container of an Amazon Lightsail container service.</p>
    # @!attribute created_at
    #   <p>The timestamp when the container service log event was created.</p>
    #   @return [Time]
    # @!attribute message
    #   <p>The message of the container service log event.</p>
    #   @return [String]
    class ContainerServiceLogEvent < Struct.new(
      :created_at,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the powers that can be specified for an Amazon Lightsail container
    #       service.</p>
    #          <p>The power specifies the amount of RAM, the number of vCPUs, and the base price of the
    #       container service.</p>
    # @!attribute power_id
    #   <p>The ID of the power (<code>nano-1</code>).</p>
    #   @return [String]
    # @!attribute price
    #   <p>The monthly price of the power in USD.</p>
    #   @return [Float]
    # @!attribute cpu_count
    #   <p>The number of vCPUs included in the power.</p>
    #   @return [Float]
    # @!attribute ram_size_in_gb
    #   <p>The amount of RAM (in GB) of the power.</p>
    #   @return [Float]
    # @!attribute name
    #   <p>The friendly name of the power (<code>nano</code>).</p>
    #   @return [String]
    # @!attribute is_active
    #   <p>A Boolean value indicating whether the power is active and can be specified for container
    #         services.</p>
    #   @return [Boolean]
    class ContainerServicePower < Struct.new(
      :power_id,
      :price,
      :cpu_count,
      :ram_size_in_gb,
      :name,
      :is_active,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the sign-in credentials for the container image registry of an Amazon Lightsail
    #       account.</p>
    # @!attribute username
    #   <p>The container service registry username to use to push container images to the container
    #         image registry of a Lightsail account.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The container service registry password to use to push container images to the container
    #         image registry of a Lightsail account</p>
    #   @return [String]
    # @!attribute expires_at
    #   <p>The timestamp of when the container image registry sign-in credentials expire.</p>
    #            <p>The log in credentials expire 12 hours after they are created, at which point you will
    #         need to create a new set of log in credentials using the
    #           <code>CreateContainerServiceRegistryLogin</code> action.</p>
    #   @return [Time]
    # @!attribute registry
    #   <p>The address to use to push container images to the container image registry of a
    #         Lightsail account.</p>
    #   @return [String]
    class ContainerServiceRegistryLogin < Struct.new(
      :username,
      :password,
      :expires_at,
      :registry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the current state of a container service.</p>
    # @!attribute code
    #   <p>The state code of the container service.</p>
    #            <p>The following state codes are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>The following state codes are possible if your container service is in a
    #               <code>DEPLOYING</code> or <code>UPDATING</code> state:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>CREATING_SYSTEM_RESOURCES</code> - The system resources for your container
    #                 service are being created.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>CREATING_NETWORK_INFRASTRUCTURE</code> - The network infrastructure for your
    #                 container service are being created.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>PROVISIONING_CERTIFICATE</code> - The SSL/TLS certificate for your container
    #                 service is being created.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>PROVISIONING_SERVICE</code> - Your container service is being
    #                 provisioned.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>CREATING_DEPLOYMENT</code> - Your deployment is being created on your
    #                 container service.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>EVALUATING_HEALTH_CHECK</code> - The health of your deployment is being
    #                 evaluated.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ACTIVATING_DEPLOYMENT</code> - Your deployment is being activated.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>The following state codes are possible if your container service is in a
    #               <code>PENDING</code> state:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>CERTIFICATE_LIMIT_EXCEEDED</code> - The SSL/TLS certificate required for
    #                 your container service exceeds the maximum number of certificates allowed for your
    #                 account.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>UNKNOWN_ERROR</code> - An error was experienced when your container service
    #                 was being created.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>A message that provides more information for the state code.</p>
    #            <note>
    #               <p>The state detail is populated only when a container service is in a
    #           <code>PENDING</code>, <code>DEPLOYING</code>, or <code>UPDATING</code> state.</p>
    #            </note>
    #   @return [String]
    class ContainerServiceStateDetail < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_services
    #   <p>An array of objects that describe one or more container services.</p>
    #   @return [Array<Types::ContainerService>]
    class ContainerServicesListResult < Struct.new(
      :container_services,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes whether an Amazon Lightsail content delivery network (CDN) distribution forwards
    #       cookies to the origin and, if so, which ones.</p>
    #          <p>For the cookies that you specify, your distribution caches separate versions of the
    #       specified content based on the cookie values in viewer
    #       requests.</p>
    # @!attribute option
    #   <p>Specifies which cookies to forward to the distribution's origin for a cache behavior:
    #           <code>all</code>, <code>none</code>, or <code>allow-list</code> to forward only the cookies
    #         specified in the <code>cookiesAllowList</code> parameter.</p>
    #   @return [String]
    # @!attribute cookies_allow_list
    #   <p>The specific cookies to forward to your distribution's origin.</p>
    #   @return [Array<String>]
    class CookieObject < Struct.new(
      :option,
      :cookies_allow_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_snapshot_name
    #   <p>The name of the source manual snapshot to copy.</p>
    #            <p>Constraint:</p>
    #            <ul>
    #               <li>
    #                  <p>Define this parameter only when copying a manual snapshot as another manual
    #             snapshot.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute source_resource_name
    #   <p>The name of the source instance or disk from which the source automatic snapshot was
    #         created.</p>
    #            <p>Constraint:</p>
    #            <ul>
    #               <li>
    #                  <p>Define this parameter only when copying an automatic snapshot as a manual snapshot.
    #             For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-keeping-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute restore_date
    #   <p>The date of the source automatic snapshot to copy. Use the <code>get auto snapshots</code>
    #         operation to identify the dates of the available automatic snapshots.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be specified in <code>YYYY-MM-DD</code> format.</p>
    #               </li>
    #               <li>
    #                  <p>This parameter cannot be defined together with the <code>use latest restorable auto
    #               snapshot</code> parameter. The <code>restore date</code> and <code>use latest restorable
    #               auto snapshot</code> parameters are mutually exclusive.</p>
    #               </li>
    #               <li>
    #                  <p>Define this parameter only when copying an automatic snapshot as a manual snapshot.
    #             For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-keeping-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute use_latest_restorable_auto_snapshot
    #   <p>A Boolean value to indicate whether to use the latest available automatic snapshot of the
    #         specified source instance or disk.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>This parameter cannot be defined together with the <code>restore date</code>
    #             parameter. The <code>use latest restorable auto snapshot</code> and <code>restore
    #               date</code> parameters are mutually exclusive.</p>
    #               </li>
    #               <li>
    #                  <p>Define this parameter only when copying an automatic snapshot as a manual snapshot.
    #             For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-keeping-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    #               </li>
    #            </ul>
    #   @return [Boolean]
    # @!attribute target_snapshot_name
    #   <p>The name of the new manual snapshot to be created as a copy.</p>
    #   @return [String]
    # @!attribute source_region
    #   <p>The Amazon Web Services Region where the source manual or automatic snapshot is
    #         located.</p>
    #   @return [String]
    class CopySnapshotRequest < Struct.new(
      :source_snapshot_name,
      :source_resource_name,
      :restore_date,
      :use_latest_restorable_auto_snapshot,
      :target_snapshot_name,
      :source_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class CopySnapshotResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the estimated cost for resources in your Lightsail for Research account.</p>
    # @!attribute usage_type
    #   <p>The types of usage that are included in the estimate, such as costs, usage, or data
    #         transfer.</p>
    #   @return [String]
    # @!attribute results_by_time
    #   <p>The cost estimate result that's associated with a time period.</p>
    #   @return [Array<Types::EstimateByTime>]
    class CostEstimate < Struct.new(
      :usage_type,
      :results_by_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket_name
    #   <p>The name of the bucket that the new access key will belong to, and grant access to.</p>
    #   @return [String]
    class CreateBucketAccessKeyRequest < Struct.new(
      :bucket_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_key
    #   <p>An object that describes the access key that is created.</p>
    #   @return [Types::AccessKey]
    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class CreateBucketAccessKeyResult < Struct.new(
      :access_key,
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket_name
    #   <p>The name for the bucket.</p>
    #            <p>For more information about bucket names, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/bucket-naming-rules-in-amazon-lightsail">Bucket naming rules in Amazon Lightsail</a> in the <i>Amazon Lightsail Developer
    #           Guide</i>.</p>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The ID of the bundle to use for the bucket.</p>
    #            <p>A bucket bundle specifies the monthly cost, storage space, and data transfer quota for a
    #         bucket.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetBucketBundles.html">GetBucketBundles</a> action to get a list of
    #         bundle IDs that you can specify.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_UpdateBucketBundle.html">UpdateBucketBundle</a> action to change the
    #         bundle after the bucket is created.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values to add to the bucket during creation.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_TagResource.html">TagResource</a> action to tag the bucket after it's
    #         created.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute enable_object_versioning
    #   <p>A Boolean value that indicates whether to enable versioning of objects in the
    #         bucket.</p>
    #            <p>For more information about versioning, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-managing-bucket-object-versioning">Enabling and suspending object versioning in a bucket in Amazon Lightsail</a> in the
    #           <i>Amazon Lightsail Developer Guide</i>.</p>
    #   @return [Boolean]
    class CreateBucketRequest < Struct.new(
      :bucket_name,
      :bundle_id,
      :tags,
      :enable_object_versioning,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>An object that describes the bucket that is created.</p>
    #   @return [Types::Bucket]
    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class CreateBucketResult < Struct.new(
      :bucket,
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_name
    #   <p>The name for the certificate.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name (<code>example.com</code>) for the certificate.</p>
    #   @return [String]
    # @!attribute subject_alternative_names
    #   <p>An array of strings that specify the alternate domains (<code>example2.com</code>) and
    #         subdomains (<code>blog.example.com</code>) for the certificate.</p>
    #            <p>You can specify a maximum of nine alternate domains (in addition to the primary domain
    #         name).</p>
    #            <p>Wildcard domain entries (<code>*.example.com</code>) are not supported.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tag keys and optional values to add to the certificate during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    #   @return [Array<Types::Tag>]
    class CreateCertificateRequest < Struct.new(
      :certificate_name,
      :domain_name,
      :subject_alternative_names,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate
    #   <p>An object that describes the certificate created.</p>
    #   @return [Types::CertificateSummary]
    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class CreateCertificateResult < Struct.new(
      :certificate,
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instances
    #   <p>An array of parameters that will be used to create the new Amazon EC2 instance. You can only
    #         pass one instance entry at a time in this array. You will get an invalid parameter error if
    #         you pass more than one instance entry in this array.</p>
    #   @return [Array<Types::InstanceEntry>]
    class CreateCloudFormationStackRequest < Struct.new(
      :instances,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class CreateCloudFormationStackResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute protocol
    #   <p>The protocol of the contact method, such as <code>Email</code> or <code>SMS</code> (text
    #         messaging).</p>
    #            <p>The <code>SMS</code> protocol is supported only in the following Amazon Web Services
    #         Regions.</p>
    #            <ul>
    #               <li>
    #                  <p>US East (N. Virginia) (<code>us-east-1</code>)</p>
    #               </li>
    #               <li>
    #                  <p>US West (Oregon) (<code>us-west-2</code>)</p>
    #               </li>
    #               <li>
    #                  <p>Europe (Ireland) (<code>eu-west-1</code>)</p>
    #               </li>
    #               <li>
    #                  <p>Asia Pacific (Tokyo) (<code>ap-northeast-1</code>)</p>
    #               </li>
    #               <li>
    #                  <p>Asia Pacific (Singapore) (<code>ap-southeast-1</code>)</p>
    #               </li>
    #               <li>
    #                  <p>Asia Pacific (Sydney) (<code>ap-southeast-2</code>)</p>
    #               </li>
    #            </ul>
    #            <p>For a list of countries/regions where SMS text messages can be sent, and the latest
    #           Amazon Web Services Regions where SMS text messaging is supported, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-supported-regions-countries.html">Supported Regions and Countries</a> in the <i>Amazon SNS Developer
    #           Guide</i>.</p>
    #            <p>For more information about notifications in Amazon Lightsail, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-notifications">Notifications in Amazon Lightsail</a>.</p>
    #   @return [String]
    # @!attribute contact_endpoint
    #   <p>The destination of the contact method, such as an email address or a mobile phone
    #         number.</p>
    #            <p>Use the E.164 format when specifying a mobile phone number. E.164 is a standard for the
    #         phone number structure used for international telecommunication. Phone numbers that follow
    #         this format can have a maximum of 15 digits, and they are prefixed with the plus character (+)
    #         and the country code. For example, a U.S. phone number in E.164 format would be specified as
    #         +1XXX5550100. For more information, see <a href="https://en.wikipedia.org/wiki/E.164">E.164</a> on <i>Wikipedia</i>.</p>
    #   @return [String]
    class CreateContactMethodRequest < Struct.new(
      :protocol,
      :contact_endpoint,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class CreateContactMethodResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the container service for which to create the deployment.</p>
    #   @return [String]
    # @!attribute containers
    #   <p>An object that describes the settings of the containers that will be launched on the
    #         container service.</p>
    #   @return [Hash<String, Types::Container>]
    # @!attribute public_endpoint
    #   <p>An object that describes the settings of the public endpoint for the container
    #         service.</p>
    #   @return [Types::EndpointRequest]
    class CreateContainerServiceDeploymentRequest < Struct.new(
      :service_name,
      :containers,
      :public_endpoint,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_service
    #   <p>An object that describes a container service.</p>
    #   @return [Types::ContainerService]
    class CreateContainerServiceDeploymentResult < Struct.new(
      :container_service,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class CreateContainerServiceRegistryLoginRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_login
    #   <p>An object that describes the log in information for the container service registry of your
    #         Lightsail account.</p>
    #   @return [Types::ContainerServiceRegistryLogin]
    class CreateContainerServiceRegistryLoginResult < Struct.new(
      :registry_login,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name for the container service.</p>
    #            <p>The name that you specify for your container service will make up part of its default
    #         domain. The default domain of a container service is typically
    #           <code>https://<ServiceName>.<RandomGUID>.<AWSRegion>.cs.amazonlightsail.com</code>.
    #         If the name of your container service is <code>container-service-1</code>, and it's located in
    #         the US East (Ohio) Amazon Web Services Region (<code>us-east-2</code>), then the domain for
    #         your container service will be like the following example:
    #           <code>https://container-service-1.ur4EXAMPLE2uq.us-east-2.cs.amazonlightsail.com</code>
    #            </p>
    #            <p>The following are the requirements for container service names:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be unique within each Amazon Web Services Region in your Lightsail
    #             account.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain 1 to 63 characters.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain only alphanumeric characters and hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>A hyphen (-) can separate words but cannot be at the start or end of the name.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute power
    #   <p>The power specification for the container service.</p>
    #            <p>The power specifies the amount of memory, vCPUs, and base monthly cost of each node of the
    #         container service. The <code>power</code> and <code>scale</code> of a container service makes
    #         up its configured capacity. To determine the monthly price of your container service, multiply
    #         the base price of the <code>power</code> with the <code>scale</code> (the number of nodes) of
    #         the service.</p>
    #            <p>Use the <code>GetContainerServicePowers</code> action to get a list of power options that
    #         you can specify using this parameter, and their base monthly cost.</p>
    #   @return [String]
    # @!attribute scale
    #   <p>The scale specification for the container service.</p>
    #            <p>The scale specifies the allocated compute nodes of the container service. The
    #           <code>power</code> and <code>scale</code> of a container service makes up its configured
    #         capacity. To determine the monthly price of your container service, multiply the base price of
    #         the <code>power</code> with the <code>scale</code> (the number of nodes) of the
    #         service.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>The tag keys and optional values to add to the container service during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    #            <p>For more information about tags in Lightsail, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags">Amazon Lightsail Developer Guide</a>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute public_domain_names
    #   <p>The public domain names to use with the container service, such as
    #           <code>example.com</code> and <code>www.example.com</code>.</p>
    #            <p>You can specify up to four public domain names for a container service. The domain names
    #         that you specify are used when you create a deployment with a container configured as the
    #         public endpoint of your container service.</p>
    #            <p>If you don't specify public domain names, then you can use the default domain of the
    #         container service.</p>
    #            <important>
    #               <p>You must create and validate an SSL/TLS certificate before you can use public domain
    #           names with your container service. Use the <code>CreateCertificate</code> action to create a
    #           certificate for the public domain names you want to use with your container service.</p>
    #            </important>
    #            <p>You can specify public domain names using a string to array map as shown in the example
    #         later on this page.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute deployment
    #   <p>An object that describes a deployment for the container service.</p>
    #            <p>A deployment specifies the containers that will be launched on the container service and
    #         their settings, such as the ports to open, the environment variables to apply, and the launch
    #         command to run. It also specifies the container that will serve as the public endpoint of the
    #         deployment and its settings, such as the HTTP or HTTPS port to use, and the health check
    #         configuration.</p>
    #   @return [Types::ContainerServiceDeploymentRequest]
    # @!attribute private_registry_access
    #   <p>An object to describe the configuration for the container service to access private
    #         container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private
    #         repositories.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-container-service-ecr-private-repo-access">Configuring access to an Amazon ECR private repository for an Amazon Lightsail container service</a> in the <i>Amazon Lightsail Developer Guide</i>.</p>
    #   @return [Types::PrivateRegistryAccessRequest]
    class CreateContainerServiceRequest < Struct.new(
      :service_name,
      :power,
      :scale,
      :tags,
      :public_domain_names,
      :deployment,
      :private_registry_access,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_service
    #   <p>An object that describes a container service.</p>
    #   @return [Types::ContainerService]
    class CreateContainerServiceResult < Struct.new(
      :container_service,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute disk_name
    #   <p>The unique Lightsail disk name (<code>my-disk</code>).</p>
    #   @return [String]
    # @!attribute disk_snapshot_name
    #   <p>The name of the disk snapshot (<code>my-snapshot</code>) from which to create the new
    #         storage disk.</p>
    #            <p>Constraint:</p>
    #            <ul>
    #               <li>
    #                  <p>This parameter cannot be defined together with the <code>source disk name</code>
    #             parameter. The <code>disk snapshot name</code> and <code>source disk name</code>
    #             parameters are mutually exclusive.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone where you want to create the disk (<code>us-east-2a</code>). Choose
    #         the same Availability Zone as the Lightsail instance where you want to create the
    #         disk.</p>
    #            <p>Use the GetRegions operation to list the Availability Zones where Lightsail is currently
    #         available.</p>
    #   @return [String]
    # @!attribute size_in_gb
    #   <p>The size of the disk in GB (<code>32</code>).</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute add_ons
    #   <p>An array of objects that represent the add-ons to enable for the new disk.</p>
    #   @return [Array<Types::AddOnRequest>]
    # @!attribute source_disk_name
    #   <p>The name of the source disk from which the source automatic snapshot was created.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>This parameter cannot be defined together with the <code>disk snapshot name</code>
    #             parameter. The <code>source disk name</code> and <code>disk snapshot name</code>
    #             parameters are mutually exclusive.</p>
    #               </li>
    #               <li>
    #                  <p>Define this parameter only when creating a new disk from an automatic snapshot. For
    #             more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute restore_date
    #   <p>The date of the automatic snapshot to use for the new disk. Use the <code>get auto
    #           snapshots</code> operation to identify the dates of the available automatic
    #         snapshots.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be specified in <code>YYYY-MM-DD</code> format.</p>
    #               </li>
    #               <li>
    #                  <p>This parameter cannot be defined together with the <code>use latest restorable auto
    #               snapshot</code> parameter. The <code>restore date</code> and <code>use latest restorable
    #               auto snapshot</code> parameters are mutually exclusive.</p>
    #               </li>
    #               <li>
    #                  <p>Define this parameter only when creating a new disk from an automatic snapshot. For
    #             more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute use_latest_restorable_auto_snapshot
    #   <p>A Boolean value to indicate whether to use the latest available automatic snapshot.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>This parameter cannot be defined together with the <code>restore date</code>
    #             parameter. The <code>use latest restorable auto snapshot</code> and <code>restore
    #               date</code> parameters are mutually exclusive.</p>
    #               </li>
    #               <li>
    #                  <p>Define this parameter only when creating a new disk from an automatic snapshot. For
    #             more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    #               </li>
    #            </ul>
    #   @return [Boolean]
    class CreateDiskFromSnapshotRequest < Struct.new(
      :disk_name,
      :disk_snapshot_name,
      :availability_zone,
      :size_in_gb,
      :tags,
      :add_ons,
      :source_disk_name,
      :restore_date,
      :use_latest_restorable_auto_snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class CreateDiskFromSnapshotResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute disk_name
    #   <p>The unique Lightsail disk name (<code>my-disk</code>).</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone where you want to create the disk (<code>us-east-2a</code>). Use the
    #         same Availability Zone as the Lightsail instance to which you want to attach the
    #         disk.</p>
    #            <p>Use the <code>get regions</code> operation to list the Availability Zones where
    #         Lightsail is currently available.</p>
    #   @return [String]
    # @!attribute size_in_gb
    #   <p>The size of the disk in GB (<code>32</code>).</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute add_ons
    #   <p>An array of objects that represent the add-ons to enable for the new disk.</p>
    #   @return [Array<Types::AddOnRequest>]
    class CreateDiskRequest < Struct.new(
      :disk_name,
      :availability_zone,
      :size_in_gb,
      :tags,
      :add_ons,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class CreateDiskResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute disk_name
    #   <p>The unique name of the source disk (<code>Disk-Virginia-1</code>).</p>
    #            <note>
    #               <p>This parameter cannot be defined together with the <code>instance name</code> parameter.
    #           The <code>disk name</code> and <code>instance name</code> parameters are mutually
    #           exclusive.</p>
    #            </note>
    #   @return [String]
    # @!attribute disk_snapshot_name
    #   <p>The name of the destination disk snapshot (<code>my-disk-snapshot</code>) based on the
    #         source disk.</p>
    #   @return [String]
    # @!attribute instance_name
    #   <p>The unique name of the source instance (<code>Amazon_Linux-512MB-Virginia-1</code>). When
    #         this is defined, a snapshot of the instance's system volume is created.</p>
    #            <note>
    #               <p>This parameter cannot be defined together with the <code>disk name</code> parameter. The
    #             <code>instance name</code> and <code>disk name</code> parameters are mutually
    #           exclusive.</p>
    #            </note>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    #   @return [Array<Types::Tag>]
    class CreateDiskSnapshotRequest < Struct.new(
      :disk_name,
      :disk_snapshot_name,
      :instance_name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class CreateDiskSnapshotResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_name
    #   <p>The name for the distribution.</p>
    #   @return [String]
    # @!attribute origin
    #   <p>An object that describes the origin resource for the distribution, such as a Lightsail
    #         instance, bucket, or load balancer.</p>
    #            <p>The distribution pulls, caches, and serves content from the origin.</p>
    #   @return [Types::InputOrigin]
    # @!attribute default_cache_behavior
    #   <p>An object that describes the default cache behavior for the distribution.</p>
    #   @return [Types::CacheBehavior]
    # @!attribute cache_behavior_settings
    #   <p>An object that describes the cache behavior settings for the distribution.</p>
    #   @return [Types::CacheSettings]
    # @!attribute cache_behaviors
    #   <p>An array of objects that describe the per-path cache behavior for the distribution.</p>
    #   @return [Array<Types::CacheBehaviorPerPath>]
    # @!attribute bundle_id
    #   <p>The bundle ID to use for the distribution.</p>
    #            <p>A distribution bundle describes the specifications of your distribution, such as the
    #         monthly cost and monthly network transfer quota.</p>
    #            <p>Use the <code>GetDistributionBundles</code> action to get a list of distribution bundle
    #         IDs that you can specify.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type for the distribution.</p>
    #            <p>The possible values are <code>ipv4</code> for IPv4 only, and <code>dualstack</code> for
    #         IPv4 and IPv6.</p>
    #            <p>The default value is <code>dualstack</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values to add to the distribution during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute certificate_name
    #   <p>The name of the SSL/TLS certificate that you want to attach to the distribution.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetCertificates.html">GetCertificates</a>
    #         action to get a list of certificate names that you can specify.</p>
    #   @return [String]
    # @!attribute viewer_minimum_tls_protocol_version
    #   <p>The minimum TLS protocol version for the SSL/TLS certificate.</p>
    #   @return [String]
    class CreateDistributionRequest < Struct.new(
      :distribution_name,
      :origin,
      :default_cache_behavior,
      :cache_behavior_settings,
      :cache_behaviors,
      :bundle_id,
      :ip_address_type,
      :tags,
      :certificate_name,
      :viewer_minimum_tls_protocol_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution
    #   <p>An object that describes the distribution created.</p>
    #   @return [Types::LightsailDistribution]
    # @!attribute operation
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Types::Operation]
    class CreateDistributionResult < Struct.new(
      :distribution,
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name (<code>example.com</code>) for which you want to create the domain
    #         entry.</p>
    #   @return [String]
    # @!attribute domain_entry
    #   <p>An array of key-value pairs containing information about the domain entry request.</p>
    #   @return [Types::DomainEntry]
    class CreateDomainEntryRequest < Struct.new(
      :domain_name,
      :domain_entry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Types::Operation]
    class CreateDomainEntryResult < Struct.new(
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name to manage (<code>example.com</code>).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    #   @return [Array<Types::Tag>]
    class CreateDomainRequest < Struct.new(
      :domain_name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Types::Operation]
    class CreateDomainResult < Struct.new(
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_name
    #   <p>The resource name.</p>
    #   @return [String]
    class CreateGUISessionAccessDetailsRequest < Struct.new(
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_name
    #   <p>The resource name.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the operation.</p>
    #   @return [String]
    # @!attribute percentage_complete
    #   <p>The percentage of completion for the operation.</p>
    #   @return [Integer]
    # @!attribute failure_reason
    #   <p>The reason the operation failed.</p>
    #   @return [String]
    # @!attribute sessions
    #   <p>Returns information about the specified Amazon DCV GUI session.</p>
    #   @return [Array<Types::Session>]
    class CreateGUISessionAccessDetailsResult < Struct.new(
      :resource_name,
      :status,
      :percentage_complete,
      :failure_reason,
      :sessions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_snapshot_name
    #   <p>The name for your new snapshot.</p>
    #   @return [String]
    # @!attribute instance_name
    #   <p>The Lightsail instance on which to base your snapshot.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    #   @return [Array<Types::Tag>]
    class CreateInstanceSnapshotRequest < Struct.new(
      :instance_snapshot_name,
      :instance_name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class CreateInstanceSnapshotResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_names
    #   <p>The names for your new instances.</p>
    #   @return [Array<String>]
    # @!attribute attached_disk_mapping
    #   <p>An object containing information about one or more disk mappings.</p>
    #   @return [Hash<String, Array<Types::DiskMap>>]
    # @!attribute availability_zone
    #   <p>The Availability Zone where you want to create your instances. Use the following
    #         formatting: <code>us-east-2a</code> (case sensitive). You can get a list of Availability Zones
    #         by using the <a href="http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html">get
    #           regions</a> operation. Be sure to add the <code>include Availability Zones</code>
    #         parameter to your request.</p>
    #   @return [String]
    # @!attribute instance_snapshot_name
    #   <p>The name of the instance snapshot on which you are basing your new instances. Use the get
    #         instance snapshots operation to return information about your existing snapshots.</p>
    #            <p>Constraint:</p>
    #            <ul>
    #               <li>
    #                  <p>This parameter cannot be defined together with the <code>source instance name</code>
    #             parameter. The <code>instance snapshot name</code> and <code>source instance name</code>
    #             parameters are mutually exclusive.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The bundle of specification information for your virtual private server (or
    #           <i>instance</i>), including the pricing plan (<code>micro_x_x</code>).</p>
    #   @return [String]
    # @!attribute user_data
    #   <p>You can create a launch script that configures a server with additional user data. For
    #         example, <code>apt-get -y update</code>.</p>
    #            <note>
    #               <p>Depending on the machine image you choose, the command to get software on your instance
    #           varies. Amazon Linux and CentOS use <code>yum</code>, Debian and Ubuntu use
    #             <code>apt-get</code>, and FreeBSD uses <code>pkg</code>. For a complete list, see the
    #             <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/compare-options-choose-lightsail-instance-image">Amazon Lightsail Developer Guide</a>.</p>
    #            </note>
    #   @return [String]
    # @!attribute key_pair_name
    #   <p>The name for your key pair.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute add_ons
    #   <p>An array of objects representing the add-ons to enable for the new instance.</p>
    #   @return [Array<Types::AddOnRequest>]
    # @!attribute ip_address_type
    #   <p>The IP address type for the instance.</p>
    #            <p>The possible values are <code>ipv4</code> for IPv4 only, <code>ipv6</code> for IPv6 only,
    #         and <code>dualstack</code> for IPv4 and IPv6.</p>
    #            <p>The default value is <code>dualstack</code>.</p>
    #   @return [String]
    # @!attribute source_instance_name
    #   <p>The name of the source instance from which the source automatic snapshot was
    #         created.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>This parameter cannot be defined together with the <code>instance snapshot name</code>
    #             parameter. The <code>source instance name</code> and <code>instance snapshot name</code>
    #             parameters are mutually exclusive.</p>
    #               </li>
    #               <li>
    #                  <p>Define this parameter only when creating a new instance from an automatic snapshot.
    #             For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute restore_date
    #   <p>The date of the automatic snapshot to use for the new instance. Use the <code>get auto
    #           snapshots</code> operation to identify the dates of the available automatic
    #         snapshots.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be specified in <code>YYYY-MM-DD</code> format.</p>
    #               </li>
    #               <li>
    #                  <p>This parameter cannot be defined together with the <code>use latest restorable auto
    #               snapshot</code> parameter. The <code>restore date</code> and <code>use latest restorable
    #               auto snapshot</code> parameters are mutually exclusive.</p>
    #               </li>
    #               <li>
    #                  <p>Define this parameter only when creating a new instance from an automatic snapshot.
    #             For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute use_latest_restorable_auto_snapshot
    #   <p>A Boolean value to indicate whether to use the latest available automatic snapshot.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>This parameter cannot be defined together with the <code>restore date</code>
    #             parameter. The <code>use latest restorable auto snapshot</code> and <code>restore
    #               date</code> parameters are mutually exclusive.</p>
    #               </li>
    #               <li>
    #                  <p>Define this parameter only when creating a new instance from an automatic snapshot.
    #             For more information, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configuring-automatic-snapshots">Amazon Lightsail Developer Guide</a>.</p>
    #               </li>
    #            </ul>
    #   @return [Boolean]
    class CreateInstancesFromSnapshotRequest < Struct.new(
      :instance_names,
      :attached_disk_mapping,
      :availability_zone,
      :instance_snapshot_name,
      :bundle_id,
      :user_data,
      :key_pair_name,
      :tags,
      :add_ons,
      :ip_address_type,
      :source_instance_name,
      :restore_date,
      :use_latest_restorable_auto_snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class CreateInstancesFromSnapshotResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_names
    #   <p>The names to use for your new Lightsail instances. Separate multiple values using
    #         quotation marks and commas, for example:
    #         <code>["MyFirstInstance","MySecondInstance"]</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute availability_zone
    #   <p>The Availability Zone in which to create your instance. Use the following format:
    #           <code>us-east-2a</code> (case sensitive). You can get a list of Availability Zones by using
    #         the <a href="http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html">get
    #           regions</a> operation. Be sure to add the <code>include Availability Zones</code>
    #         parameter to your request.</p>
    #   @return [String]
    # @!attribute custom_image_name
    #   <p>(Discontinued) The name for your custom image.</p>
    #            <note>
    #               <p>In releases prior to June 12, 2017, this parameter was ignored by the API. It is now
    #           discontinued.</p>
    #            </note>
    #   @deprecated
    #   @return [String]
    # @!attribute blueprint_id
    #   <p>The ID for a virtual private server image (<code>app_wordpress_x_x</code> or
    #           <code>app_lamp_x_x</code>). Use the <code>get blueprints</code> operation to return a list
    #         of available images (or <i>blueprints</i>).</p>
    #            <note>
    #               <p>Use active blueprints when creating new instances. Inactive blueprints are listed to
    #           support customers with existing instances and are not necessarily available to create new
    #           instances. Blueprints are marked inactive when they become outdated due to operating system
    #           updates or new application releases.</p>
    #            </note>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The bundle of specification information for your virtual private server (or
    #           <i>instance</i>), including the pricing plan (<code>medium_x_x</code>).</p>
    #   @return [String]
    # @!attribute user_data
    #   <p>A launch script you can create that configures a server with additional user data. For
    #         example, you might want to run <code>apt-get -y update</code>.</p>
    #            <note>
    #               <p>Depending on the machine image you choose, the command to get software on your instance
    #           varies. Amazon Linux and CentOS use <code>yum</code>, Debian and Ubuntu use
    #             <code>apt-get</code>, and FreeBSD uses <code>pkg</code>. For a complete list, see the
    #             <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/compare-options-choose-lightsail-instance-image">Amazon Lightsail Developer Guide</a>.</p>
    #            </note>
    #   @return [String]
    # @!attribute key_pair_name
    #   <p>The name of your key pair.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute add_ons
    #   <p>An array of objects representing the add-ons to enable for the new instance.</p>
    #   @return [Array<Types::AddOnRequest>]
    # @!attribute ip_address_type
    #   <p>The IP address type for the instance.</p>
    #            <p>The possible values are <code>ipv4</code> for IPv4 only, <code>ipv6</code> for IPv6 only,
    #         and <code>dualstack</code> for IPv4 and IPv6.</p>
    #            <p>The default value is <code>dualstack</code>.</p>
    #   @return [String]
    class CreateInstancesRequest < Struct.new(
      :instance_names,
      :availability_zone,
      :custom_image_name,
      :blueprint_id,
      :bundle_id,
      :user_data,
      :key_pair_name,
      :tags,
      :add_ons,
      :ip_address_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class CreateInstancesResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_pair_name
    #   <p>The name for your new key pair.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    #   @return [Array<Types::Tag>]
    class CreateKeyPairRequest < Struct.new(
      :key_pair_name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_pair
    #   <p>An array of key-value pairs containing information about the new key pair you just
    #         created.</p>
    #   @return [Types::KeyPair]
    # @!attribute public_key_base64
    #   <p>A base64-encoded public key of the <code>ssh-rsa</code> type.</p>
    #   @return [String]
    # @!attribute private_key_base64
    #   <p>A base64-encoded RSA private key.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Types::Operation]
    class CreateKeyPairResult < Struct.new(
      :key_pair,
      :public_key_base64,
      :private_key_base64,
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_name
    #   <p>The name of your load balancer.</p>
    #   @return [String]
    # @!attribute instance_port
    #   <p>The instance port where you're creating your load balancer.</p>
    #   @return [Integer]
    # @!attribute health_check_path
    #   <p>The path you provided to perform the load balancer health check. If you didn't specify a
    #         health check path, Lightsail uses the root path of your website (<code>"/"</code>).</p>
    #            <p>You may want to specify a custom health check path other than the root of your application
    #         if your home page loads slowly or has a lot of media or scripting on it.</p>
    #   @return [String]
    # @!attribute certificate_name
    #   <p>The name of the SSL/TLS certificate.</p>
    #            <p>If you specify <code>certificateName</code>, then <code>certificateDomainName</code> is
    #         required (and vice-versa).</p>
    #   @return [String]
    # @!attribute certificate_domain_name
    #   <p>The domain name with which your certificate is associated
    #         (<code>example.com</code>).</p>
    #            <p>If you specify <code>certificateDomainName</code>, then <code>certificateName</code> is
    #         required (and vice-versa).</p>
    #   @return [String]
    # @!attribute certificate_alternative_names
    #   <p>The optional alternative domains and subdomains to use with your SSL/TLS certificate
    #           (<code>www.example.com</code>, <code>example.com</code>, <code>m.example.com</code>,
    #           <code>blog.example.com</code>).</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute ip_address_type
    #   <p>The IP address type for the load balancer.</p>
    #            <p>The possible values are <code>ipv4</code> for IPv4 only, <code>ipv6</code> for IPv6 only,
    #         and <code>dualstack</code> for IPv4 and IPv6.</p>
    #            <p>The default value is <code>dualstack</code>.</p>
    #   @return [String]
    # @!attribute tls_policy_name
    #   <p>The name of the TLS policy to apply to the load balancer.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetLoadBalancerTlsPolicies.html">GetLoadBalancerTlsPolicies</a> action to get a list of TLS policy names that you can
    #         specify.</p>
    #            <p>For more information about load balancer TLS policies, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configure-load-balancer-tls-security-policy">Configuring TLS security policies on your Amazon Lightsail load
    #           balancers</a> in the <i>Amazon Lightsail Developer Guide</i>.</p>
    #   @return [String]
    class CreateLoadBalancerRequest < Struct.new(
      :load_balancer_name,
      :instance_port,
      :health_check_path,
      :certificate_name,
      :certificate_domain_name,
      :certificate_alternative_names,
      :tags,
      :ip_address_type,
      :tls_policy_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class CreateLoadBalancerResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_name
    #   <p>The load balancer name where you want to create the SSL/TLS certificate.</p>
    #   @return [String]
    # @!attribute certificate_name
    #   <p>The SSL/TLS certificate name.</p>
    #            <p>You can have up to 10 certificates in your account at one time. Each Lightsail load
    #         balancer can have up to 2 certificates associated with it at one time. There is also an
    #         overall limit to the number of certificates that can be issue in a 365-day period. For more
    #         information, see <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html">Limits</a>.</p>
    #   @return [String]
    # @!attribute certificate_domain_name
    #   <p>The domain name (<code>example.com</code>) for your SSL/TLS certificate.</p>
    #   @return [String]
    # @!attribute certificate_alternative_names
    #   <p>An array of strings listing alternative domains and subdomains for your SSL/TLS
    #         certificate. Lightsail will de-dupe the names for you. You can have a maximum of 9
    #         alternative names (in addition to the 1 primary domain). We do not support wildcards
    #           (<code>*.example.com</code>).</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    #   @return [Array<Types::Tag>]
    class CreateLoadBalancerTlsCertificateRequest < Struct.new(
      :load_balancer_name,
      :certificate_name,
      :certificate_domain_name,
      :certificate_alternative_names,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class CreateLoadBalancerTlsCertificateResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database_name
    #   <p>The name to use for your new Lightsail database resource.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 2 to 255 alphanumeric characters, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first and last character must be a letter or number.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone in which to create your new database. Use the
    #           <code>us-east-2a</code> case-sensitive format.</p>
    #            <p>You can get a list of Availability Zones by using the <code>get regions</code> operation.
    #         Be sure to add the <code>include relational database Availability Zones</code> parameter to
    #         your request.</p>
    #   @return [String]
    # @!attribute publicly_accessible
    #   <p>Specifies the accessibility options for your new database. A value of <code>true</code>
    #         specifies a database that is available to resources outside of your Lightsail account. A
    #         value of <code>false</code> specifies a database that is available only to your Lightsail
    #         resources in the same region as your database.</p>
    #   @return [Boolean]
    # @!attribute relational_database_snapshot_name
    #   <p>The name of the database snapshot from which to create your new database.</p>
    #   @return [String]
    # @!attribute relational_database_bundle_id
    #   <p>The bundle ID for your new database. A bundle describes the performance specifications for
    #         your database.</p>
    #            <p>You can get a list of database bundle IDs by using the <code>get relational database
    #           bundles</code> operation.</p>
    #            <p>When creating a new database from a snapshot, you cannot choose a bundle that is smaller
    #         than the bundle of the source database.</p>
    #   @return [String]
    # @!attribute source_relational_database_name
    #   <p>The name of the source database.</p>
    #   @return [String]
    # @!attribute restore_time
    #   <p>The date and time to restore your database from.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be before the latest restorable time for the database.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be specified if the <code>use latest restorable time</code> parameter is
    #               <code>true</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you wish to use a restore time of October 1, 2018, at 8 PM UTC, then
    #             you input <code>1538424000</code> as the restore time.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute use_latest_restorable_time
    #   <p>Specifies whether your database is restored from the latest backup time. A value of
    #           <code>true</code> restores from the latest backup time. </p>
    #            <p>Default: <code>false</code>
    #            </p>
    #            <p>Constraints: Cannot be specified if the <code>restore time</code> parameter is
    #         provided.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    #   @return [Array<Types::Tag>]
    class CreateRelationalDatabaseFromSnapshotRequest < Struct.new(
      :relational_database_name,
      :availability_zone,
      :publicly_accessible,
      :relational_database_snapshot_name,
      :relational_database_bundle_id,
      :source_relational_database_name,
      :restore_time,
      :use_latest_restorable_time,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class CreateRelationalDatabaseFromSnapshotResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database_name
    #   <p>The name to use for your new Lightsail database resource.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 2 to 255 alphanumeric characters, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first and last character must be a letter or number.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone in which to create your new database. Use the
    #           <code>us-east-2a</code> case-sensitive format.</p>
    #            <p>You can get a list of Availability Zones by using the <code>get regions</code> operation.
    #         Be sure to add the <code>include relational database Availability Zones</code> parameter to
    #         your request.</p>
    #   @return [String]
    # @!attribute relational_database_blueprint_id
    #   <p>The blueprint ID for your new database. A blueprint describes the major engine version of
    #         a database.</p>
    #            <p>You can get a list of database blueprints IDs by using the <code>get relational database
    #           blueprints</code> operation.</p>
    #   @return [String]
    # @!attribute relational_database_bundle_id
    #   <p>The bundle ID for your new database. A bundle describes the performance specifications for
    #         your database.</p>
    #            <p>You can get a list of database bundle IDs by using the <code>get relational database
    #           bundles</code> operation.</p>
    #   @return [String]
    # @!attribute master_database_name
    #   <p>The meaning of this parameter differs according to the database engine you use.</p>
    #            <p>
    #               <b>MySQL</b>
    #            </p>
    #            <p>The name of the database to create when the Lightsail database resource is created. If
    #         this parameter isn't specified, no database is created in the database resource.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain 1 to 64 letters or numbers.</p>
    #               </li>
    #               <li>
    #                  <p>Must begin with a letter. Subsequent characters can be letters, underscores, or digits
    #             (0- 9).</p>
    #               </li>
    #               <li>
    #                  <p>Can't be a word reserved by the specified database engine.</p>
    #                  <p>For more information about reserved words in MySQL, see the Keywords and Reserved
    #             Words articles for <a href="https://dev.mysql.com/doc/refman/5.6/en/keywords.html">MySQL 5.6</a>, <a href="https://dev.mysql.com/doc/refman/5.7/en/keywords.html">MySQL 5.7</a>, and <a href="https://dev.mysql.com/doc/refman/8.0/en/keywords.html">MySQL 8.0</a>.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>PostgreSQL</b>
    #            </p>
    #            <p>The name of the database to create when the Lightsail database resource is created. If
    #         this parameter isn't specified, a database named <code>postgres</code> is created in the
    #         database resource.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain 1 to 63 letters or numbers.</p>
    #               </li>
    #               <li>
    #                  <p>Must begin with a letter. Subsequent characters can be letters, underscores, or digits
    #             (0- 9).</p>
    #               </li>
    #               <li>
    #                  <p>Can't be a word reserved by the specified database engine.</p>
    #                  <p>For more information about reserved words in PostgreSQL, see the SQL Key Words
    #             articles for <a href="https://www.postgresql.org/docs/9.6/sql-keywords-appendix.html">PostgreSQL 9.6</a>, <a href="https://www.postgresql.org/docs/10/sql-keywords-appendix.html">PostgreSQL
    #               10</a>, <a href="https://www.postgresql.org/docs/11/sql-keywords-appendix.html">PostgreSQL 11</a>, and <a href="https://www.postgresql.org/docs/12/sql-keywords-appendix.html">PostgreSQL
    #               12</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute master_username
    #   <p>The name for the master user.</p>
    #            <p>
    #               <b>MySQL</b>
    #            </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Required for MySQL.</p>
    #               </li>
    #               <li>
    #                  <p>Must be 1 to 16 letters or numbers. Can contain underscores.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Can't be a reserved word for the chosen database engine.</p>
    #                  <p>For more information about reserved words in MySQL 5.6 or 5.7, see the Keywords and
    #             Reserved Words articles for <a href="https://dev.mysql.com/doc/refman/5.6/en/keywords.html">MySQL 5.6</a>, <a href="https://dev.mysql.com/doc/refman/5.7/en/keywords.html">MySQL 5.7</a>, or <a href="https://dev.mysql.com/doc/refman/8.0/en/keywords.html">MySQL 8.0</a>.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>PostgreSQL</b>
    #            </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Required for PostgreSQL.</p>
    #               </li>
    #               <li>
    #                  <p>Must be 1 to 63 letters or numbers. Can contain underscores.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Can't be a reserved word for the chosen database engine.</p>
    #                  <p>For more information about reserved words in MySQL 5.6 or 5.7, see the Keywords and
    #             Reserved Words articles for <a href="https://www.postgresql.org/docs/9.6/sql-keywords-appendix.html">PostgreSQL
    #               9.6</a>, <a href="https://www.postgresql.org/docs/10/sql-keywords-appendix.html">PostgreSQL 10</a>, <a href="https://www.postgresql.org/docs/11/sql-keywords-appendix.html">PostgreSQL
    #               11</a>, and <a href="https://www.postgresql.org/docs/12/sql-keywords-appendix.html">PostgreSQL
    #               12</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute master_user_password
    #   <p>The password for the master user. The password can include any printable ASCII character
    #         except "/", """, or "@". It cannot contain spaces.</p>
    #            <p>
    #               <b>MySQL</b>
    #            </p>
    #            <p>Constraints: Must contain from 8 to 41 characters.</p>
    #            <p>
    #               <b>PostgreSQL</b>
    #            </p>
    #            <p>Constraints: Must contain from 8 to 128 characters.</p>
    #   @return [String]
    # @!attribute preferred_backup_window
    #   <p>The daily time range during which automated backups are created for your new database if
    #         automated backups are enabled.</p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
    #         AWS Region. For more information about the preferred backup window time blocks for each
    #         region, see the <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow">Working With Backups</a> guide in the Amazon Relational Database Service documentation.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be in the <code>hh24:mi-hh24:mi</code> format.</p>
    #                  <p>Example: <code>16:00-16:30</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Must not conflict with the preferred maintenance window.</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 30 minutes.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur on your new
    #         database.</p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
    #         AWS Region, occurring on a random day of the week.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be in the <code>ddd:hh24:mi-ddd:hh24:mi</code> format.</p>
    #               </li>
    #               <li>
    #                  <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 30 minutes.</p>
    #               </li>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>Tue:17:00-Tue:17:30</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute publicly_accessible
    #   <p>Specifies the accessibility options for your new database. A value of <code>true</code>
    #         specifies a database that is available to resources outside of your Lightsail account. A
    #         value of <code>false</code> specifies a database that is available only to your Lightsail
    #         resources in the same region as your database.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    #   @return [Array<Types::Tag>]
    class CreateRelationalDatabaseRequest < Struct.new(
      :relational_database_name,
      :availability_zone,
      :relational_database_blueprint_id,
      :relational_database_bundle_id,
      :master_database_name,
      :master_username,
      :master_user_password,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :publicly_accessible,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class CreateRelationalDatabaseResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database_name
    #   <p>The name of the database on which to base your new snapshot.</p>
    #   @return [String]
    # @!attribute relational_database_snapshot_name
    #   <p>The name for your new database snapshot.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 2 to 255 alphanumeric characters, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first and last character must be a letter or number.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values to add to the resource during create.</p>
    #            <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    #   @return [Array<Types::Tag>]
    class CreateRelationalDatabaseSnapshotRequest < Struct.new(
      :relational_database_name,
      :relational_database_snapshot_name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class CreateRelationalDatabaseSnapshotResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute alarm_name
    #   <p>The name of the alarm to delete.</p>
    #   @return [String]
    class DeleteAlarmRequest < Struct.new(
      :alarm_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class DeleteAlarmResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_name
    #   <p>The name of the source instance or disk from which to delete the automatic
    #         snapshot.</p>
    #   @return [String]
    # @!attribute date
    #   <p>The date of the automatic snapshot to delete in <code>YYYY-MM-DD</code> format. Use the
    #           <code>get auto snapshots</code> operation to get the available automatic snapshots for a
    #         resource.</p>
    #   @return [String]
    class DeleteAutoSnapshotRequest < Struct.new(
      :resource_name,
      :date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class DeleteAutoSnapshotResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket_name
    #   <p>The name of the bucket that the access key belongs to.</p>
    #   @return [String]
    # @!attribute access_key_id
    #   <p>The ID of the access key to delete.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetBucketAccessKeys.html">GetBucketAccessKeys</a> action to get a
    #         list of access key IDs that you can specify.</p>
    #   @return [String]
    class DeleteBucketAccessKeyRequest < Struct.new(
      :bucket_name,
      :access_key_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class DeleteBucketAccessKeyResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket_name
    #   <p>The name of the bucket to delete.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetBuckets.html">GetBuckets</a> action to get a list of bucket names
    #         that you can specify.</p>
    #   @return [String]
    # @!attribute force_delete
    #   <p>A Boolean value that indicates whether to force delete the bucket.</p>
    #            <p>You must force delete the bucket if it has one of the following conditions:</p>
    #            <ul>
    #               <li>
    #                  <p>The bucket is the origin of a distribution.</p>
    #               </li>
    #               <li>
    #                  <p>The bucket has instances that were granted access to it using the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_SetResourceAccessForBucket.html">SetResourceAccessForBucket</a> action.</p>
    #               </li>
    #               <li>
    #                  <p>The bucket has objects.</p>
    #               </li>
    #               <li>
    #                  <p>The bucket has access keys.</p>
    #               </li>
    #            </ul>
    #            <important>
    #               <p>Force deleting a bucket might impact other resources that rely on the bucket, such as
    #           instances, distributions, or software that use the issued access keys.</p>
    #            </important>
    #   @return [Boolean]
    class DeleteBucketRequest < Struct.new(
      :bucket_name,
      :force_delete,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class DeleteBucketResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_name
    #   <p>The name of the certificate to delete.</p>
    #            <p>Use the <code>GetCertificates</code> action to get a list of certificate names that you
    #         can specify.</p>
    #   @return [String]
    class DeleteCertificateRequest < Struct.new(
      :certificate_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class DeleteCertificateResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute protocol
    #   <p>The protocol that will be deleted, such as <code>Email</code> or <code>SMS</code> (text
    #         messaging).</p>
    #            <note>
    #               <p>To delete an <code>Email</code> and an <code>SMS</code> contact method if you added
    #           both, you must run separate <code>DeleteContactMethod</code> actions to delete each
    #           protocol.</p>
    #            </note>
    #   @return [String]
    class DeleteContactMethodRequest < Struct.new(
      :protocol,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class DeleteContactMethodResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the container service for which to delete a registered container image.</p>
    #   @return [String]
    # @!attribute image
    #   <p>The name of the container image to delete from the container service.</p>
    #            <p>Use the <code>GetContainerImages</code> action to get the name of the container images
    #         that are registered to a container service.</p>
    #            <note>
    #               <p>Container images sourced from your Lightsail container service, that are registered
    #           and stored on your service, start with a colon (<code>:</code>). For example,
    #             <code>:container-service-1.mystaticwebsite.1</code>. Container images sourced from a
    #           public registry like Docker Hub don't start with a colon. For example,
    #             <code>nginx:latest</code> or <code>nginx</code>.</p>
    #            </note>
    #   @return [String]
    class DeleteContainerImageRequest < Struct.new(
      :service_name,
      :image,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteContainerImageResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the container service to delete.</p>
    #   @return [String]
    class DeleteContainerServiceRequest < Struct.new(
      :service_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteContainerServiceResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute disk_name
    #   <p>The unique name of the disk you want to delete (<code>my-disk</code>).</p>
    #   @return [String]
    # @!attribute force_delete_add_ons
    #   <p>A Boolean value to indicate whether to delete all add-ons for the disk.</p>
    #   @return [Boolean]
    class DeleteDiskRequest < Struct.new(
      :disk_name,
      :force_delete_add_ons,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class DeleteDiskResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute disk_snapshot_name
    #   <p>The name of the disk snapshot you want to delete (<code>my-disk-snapshot</code>).</p>
    #   @return [String]
    class DeleteDiskSnapshotRequest < Struct.new(
      :disk_snapshot_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class DeleteDiskSnapshotResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_name
    #   <p>The name of the distribution to delete.</p>
    #            <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
    #         can specify.</p>
    #   @return [String]
    class DeleteDistributionRequest < Struct.new(
      :distribution_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation
    #   <p>An object that describes the result of the action, such as the status of the request, the
    #         timestamp of the request, and the resources affected by the request.</p>
    #   @return [Types::Operation]
    class DeleteDistributionResult < Struct.new(
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the domain entry to delete.</p>
    #   @return [String]
    # @!attribute domain_entry
    #   <p>An array of key-value pairs containing information about your domain entries.</p>
    #   @return [Types::DomainEntry]
    class DeleteDomainEntryRequest < Struct.new(
      :domain_name,
      :domain_entry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Types::Operation]
    class DeleteDomainEntryResult < Struct.new(
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The specific domain name to delete.</p>
    #   @return [String]
    class DeleteDomainRequest < Struct.new(
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Types::Operation]
    class DeleteDomainResult < Struct.new(
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_name
    #   <p>The name of the instance to delete.</p>
    #   @return [String]
    # @!attribute force_delete_add_ons
    #   <p>A Boolean value to indicate whether to delete all add-ons for the instance.</p>
    #   @return [Boolean]
    class DeleteInstanceRequest < Struct.new(
      :instance_name,
      :force_delete_add_ons,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class DeleteInstanceResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_snapshot_name
    #   <p>The name of the snapshot to delete.</p>
    #   @return [String]
    class DeleteInstanceSnapshotRequest < Struct.new(
      :instance_snapshot_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class DeleteInstanceSnapshotResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_pair_name
    #   <p>The name of the key pair to delete.</p>
    #   @return [String]
    # @!attribute expected_fingerprint
    #   <p>The RSA fingerprint of the Lightsail default key pair to delete.</p>
    #            <note>
    #               <p>The <code>expectedFingerprint</code> parameter is required only when specifying to
    #           delete a Lightsail default key pair.</p>
    #            </note>
    #   @return [String]
    class DeleteKeyPairRequest < Struct.new(
      :key_pair_name,
      :expected_fingerprint,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Types::Operation]
    class DeleteKeyPairResult < Struct.new(
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_name
    #   <p>The name of the instance for which you want to reset the host key or certificate.</p>
    #   @return [String]
    class DeleteKnownHostKeysRequest < Struct.new(
      :instance_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class DeleteKnownHostKeysResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_name
    #   <p>The name of the load balancer you want to delete.</p>
    #   @return [String]
    class DeleteLoadBalancerRequest < Struct.new(
      :load_balancer_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class DeleteLoadBalancerResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_name
    #   <p>The load balancer name.</p>
    #   @return [String]
    # @!attribute certificate_name
    #   <p>The SSL/TLS certificate name.</p>
    #   @return [String]
    # @!attribute force
    #   <p>When <code>true</code>, forces the deletion of an SSL/TLS certificate.</p>
    #            <p>There can be two certificates associated with a Lightsail load balancer: the primary and
    #         the backup. The <code>force</code> parameter is required when the primary SSL/TLS certificate
    #         is in use by an instance attached to the load balancer.</p>
    #   @return [Boolean]
    class DeleteLoadBalancerTlsCertificateRequest < Struct.new(
      :load_balancer_name,
      :certificate_name,
      :force,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class DeleteLoadBalancerTlsCertificateResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database_name
    #   <p>The name of the database that you are deleting.</p>
    #   @return [String]
    # @!attribute skip_final_snapshot
    #   <p>Determines whether a final database snapshot is created before your database is deleted.
    #         If <code>true</code> is specified, no database snapshot is created. If <code>false</code> is
    #         specified, a database snapshot is created before your database is deleted.</p>
    #            <p>You must specify the <code>final relational database snapshot name</code> parameter if the
    #           <code>skip final snapshot</code> parameter is <code>false</code>.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute final_relational_database_snapshot_name
    #   <p>The name of the database snapshot created if <code>skip final snapshot</code> is
    #           <code>false</code>, which is the default value for that parameter.</p>
    #            <note>
    #               <p>Specifying this parameter and also specifying the <code>skip final snapshot</code>
    #           parameter to <code>true</code> results in an error.</p>
    #            </note>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 2 to 255 alphanumeric characters, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first and last character must be a letter or number.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeleteRelationalDatabaseRequest < Struct.new(
      :relational_database_name,
      :skip_final_snapshot,
      :final_relational_database_snapshot_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class DeleteRelationalDatabaseResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database_snapshot_name
    #   <p>The name of the database snapshot that you are deleting.</p>
    #   @return [String]
    class DeleteRelationalDatabaseSnapshotRequest < Struct.new(
      :relational_database_snapshot_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class DeleteRelationalDatabaseSnapshotResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the destination of a record.</p>
    # @!attribute id
    #   <p>The ID of the resource created at the destination.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The destination service of the record.</p>
    #   @return [String]
    class DestinationInfo < Struct.new(
      :id,
      :service,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_name
    #   <p>The name of the distribution from which to detach the certificate.</p>
    #            <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
    #         can specify.</p>
    #   @return [String]
    class DetachCertificateFromDistributionRequest < Struct.new(
      :distribution_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation
    #   <p>An object that describes the result of the action, such as the status of the request, the
    #         timestamp of the request, and the resources affected by the request.</p>
    #   @return [Types::Operation]
    class DetachCertificateFromDistributionResult < Struct.new(
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute disk_name
    #   <p>The unique name of the disk you want to detach from your instance
    #         (<code>my-disk</code>).</p>
    #   @return [String]
    class DetachDiskRequest < Struct.new(
      :disk_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class DetachDiskResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_name
    #   <p>The name of the Lightsail load balancer.</p>
    #   @return [String]
    # @!attribute instance_names
    #   <p>An array of strings containing the names of the instances you want to detach from the load
    #         balancer.</p>
    #   @return [Array<String>]
    class DetachInstancesFromLoadBalancerRequest < Struct.new(
      :load_balancer_name,
      :instance_names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class DetachInstancesFromLoadBalancerResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute static_ip_name
    #   <p>The name of the static IP to detach from the instance.</p>
    #   @return [String]
    class DetachStaticIpRequest < Struct.new(
      :static_ip_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class DetachStaticIpResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute add_on_type
    #   <p>The add-on type to disable.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the source resource for which to disable the add-on.</p>
    #   @return [String]
    class DisableAddOnRequest < Struct.new(
      :add_on_type,
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class DisableAddOnResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a block storage disk.</p>
    # @!attribute name
    #   <p>The unique name of the disk.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the disk.</p>
    #   @return [String]
    # @!attribute support_code
    #   <p>The support code. Include this code in your email to support when you have questions about
    #         an instance or another resource in Lightsail. This code enables our support team to look up
    #         your Lightsail information more easily.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date when the disk was created.</p>
    #   @return [Time]
    # @!attribute location
    #   <p>The AWS Region and Availability Zone where the disk is located.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute resource_type
    #   <p>The Lightsail resource type (<code>Disk</code>).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values for the resource. For more information about tags in
    #         Lightsail, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags">Amazon Lightsail Developer Guide</a>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute add_ons
    #   <p>An array of objects representing the add-ons enabled on the disk.</p>
    #   @return [Array<Types::AddOn>]
    # @!attribute size_in_gb
    #   <p>The size of the disk in GB.</p>
    #   @return [Integer]
    # @!attribute is_system_disk
    #   <p>A Boolean value indicating whether this disk is a system disk (has an operating system
    #         loaded on it).</p>
    #   @return [Boolean]
    # @!attribute iops
    #   <p>The input/output operations per second (IOPS) of the disk.</p>
    #   @return [Integer]
    # @!attribute path
    #   <p>The disk path.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Describes the status of the disk.</p>
    #   @return [String]
    # @!attribute attached_to
    #   <p>The resources to which the disk is attached.</p>
    #   @return [String]
    # @!attribute is_attached
    #   <p>A Boolean value indicating whether the disk is attached.</p>
    #   @return [Boolean]
    # @!attribute attachment_state
    #   <p>(Discontinued) The attachment state of the disk.</p>
    #            <note>
    #               <p>In releases prior to November 14, 2017, this parameter returned <code>attached</code>
    #           for system disks in the API response. It is now discontinued, but still included in the
    #           response. Use <code>isAttached</code> instead.</p>
    #            </note>
    #   @deprecated
    #   @return [String]
    # @!attribute gb_in_use
    #   <p>(Discontinued) The number of GB in use by the disk.</p>
    #            <note>
    #               <p>In releases prior to November 14, 2017, this parameter was not included in the API
    #           response. It is now discontinued.</p>
    #            </note>
    #   @deprecated
    #   @return [Integer]
    # @!attribute auto_mount_status
    #   <p>The status of automatically mounting a storage disk to a virtual computer.</p>
    #            <important>
    #               <p>This parameter only applies to Lightsail for Research resources.</p>
    #            </important>
    #   @return [String]
    class Disk < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :add_ons,
      :size_in_gb,
      :is_system_disk,
      :iops,
      :path,
      :state,
      :attached_to,
      :is_attached,
      :attachment_state,
      :gb_in_use,
      :auto_mount_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a disk.</p>
    # @!attribute name
    #   <p>The disk name.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The disk path.</p>
    #   @return [String]
    # @!attribute size_in_gb
    #   <p>The size of the disk in GB (<code>32</code>).</p>
    #   @return [Integer]
    # @!attribute is_system_disk
    #   <p>A Boolean value indicating whether this disk is a system disk (has an operating system
    #         loaded on it).</p>
    #   @return [Boolean]
    class DiskInfo < Struct.new(
      :name,
      :path,
      :size_in_gb,
      :is_system_disk,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a block storage disk mapping.</p>
    # @!attribute original_disk_path
    #   <p>The original disk path exposed to the instance (for example,
    #         <code>/dev/sdh</code>).</p>
    #   @return [String]
    # @!attribute new_disk_name
    #   <p>The new disk name (<code>my-new-disk</code>).</p>
    #   @return [String]
    class DiskMap < Struct.new(
      :original_disk_path,
      :new_disk_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a block storage disk snapshot.</p>
    # @!attribute name
    #   <p>The name of the disk snapshot (<code>my-disk-snapshot</code>).</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the disk snapshot.</p>
    #   @return [String]
    # @!attribute support_code
    #   <p>The support code. Include this code in your email to support when you have questions about
    #         an instance or another resource in Lightsail. This code enables our support team to look up
    #         your Lightsail information more easily.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date when the disk snapshot was created.</p>
    #   @return [Time]
    # @!attribute location
    #   <p>The AWS Region and Availability Zone where the disk snapshot was created.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute resource_type
    #   <p>The Lightsail resource type (<code>DiskSnapshot</code>).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values for the resource. For more information about tags in
    #         Lightsail, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags">Amazon Lightsail Developer Guide</a>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute size_in_gb
    #   <p>The size of the disk in GB.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>The status of the disk snapshot operation.</p>
    #   @return [String]
    # @!attribute progress
    #   <p>The progress of the snapshot.</p>
    #   @return [String]
    # @!attribute from_disk_name
    #   <p>The unique name of the source disk from which the disk snapshot was created.</p>
    #   @return [String]
    # @!attribute from_disk_arn
    #   <p>The Amazon Resource Name (ARN) of the source disk from which the disk snapshot was
    #         created.</p>
    #   @return [String]
    # @!attribute from_instance_name
    #   <p>The unique name of the source instance from which the disk (system volume) snapshot was
    #         created.</p>
    #   @return [String]
    # @!attribute from_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the source instance from which the disk (system volume)
    #         snapshot was created.</p>
    #   @return [String]
    # @!attribute is_from_auto_snapshot
    #   <p>A Boolean value indicating whether the snapshot was created from an automatic
    #         snapshot.</p>
    #   @return [Boolean]
    class DiskSnapshot < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :size_in_gb,
      :state,
      :progress,
      :from_disk_name,
      :from_disk_arn,
      :from_instance_name,
      :from_instance_arn,
      :is_from_auto_snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a disk snapshot.</p>
    # @!attribute size_in_gb
    #   <p>The size of the disk in GB (<code>32</code>).</p>
    #   @return [Integer]
    class DiskSnapshotInfo < Struct.new(
      :size_in_gb,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the specifications of a distribution bundle.</p>
    # @!attribute bundle_id
    #   <p>The ID of the bundle.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the distribution bundle.</p>
    #   @return [String]
    # @!attribute price
    #   <p>The monthly price, in US dollars, of the bundle.</p>
    #   @return [Float]
    # @!attribute transfer_per_month_in_gb
    #   <p>The monthly network transfer quota of the bundle.</p>
    #   @return [Integer]
    # @!attribute is_active
    #   <p>Indicates whether the bundle is active, and can be specified for a new or existing
    #         distribution.</p>
    #   @return [Boolean]
    class DistributionBundle < Struct.new(
      :bundle_id,
      :name,
      :price,
      :transfer_per_month_in_gb,
      :is_active,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the creation state of the canonical name (CNAME) records that are automatically
    #       added by Amazon Lightsail to the DNS of a domain to validate domain ownership for
    #       an SSL/TLS certificate.</p>
    #          <p>When you create an SSL/TLS certificate for a Lightsail resource, you must
    #       add a set of CNAME records to the DNS of the domains for the certificate to validate that you
    #       own the domains. Lightsail can automatically add the CNAME records to the DNS
    #       of the domain if the DNS zone for the domain exists within your Lightsail
    #       account. If automatic record addition fails, or if you manage the DNS of your domain using a
    #       third-party service, then you must manually add the CNAME records to the DNS of your domain.
    #       For more information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/verify-tls-ssl-certificate-using-dns-cname-https">Verify an SSL/TLS certificate in Amazon Lightsail</a> in the
    #           <i>Amazon Lightsail Developer Guide</i>.</p>
    # @!attribute code
    #   <p>The status code for the automated DNS record creation.</p>
    #            <p>Following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code> - The validation records were successfully added to the
    #             domain.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STARTED</code> - The automatic DNS record creation has started.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The validation records failed to be added to the domain.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>The message that describes the reason for the status code.</p>
    #   @return [String]
    class DnsRecordCreationState < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a domain where you are storing recordsets.</p>
    # @!attribute name
    #   <p>The name of the domain.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the domain recordset
    #           (<code>arn:aws:lightsail:global:123456789101:Domain/824cede0-abc7-4f84-8dbc-12345EXAMPLE</code>).</p>
    #   @return [String]
    # @!attribute support_code
    #   <p>The support code. Include this code in your email to support when you have questions about
    #         an instance or another resource in Lightsail. This code enables our support team to look up
    #         your Lightsail information more easily.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date when the domain recordset was created.</p>
    #   @return [Time]
    # @!attribute location
    #   <p>The AWS Region and Availability Zones where the domain recordset was created.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute resource_type
    #   <p>The resource type. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values for the resource. For more information about tags in
    #         Lightsail, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags">Amazon Lightsail Developer Guide</a>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute domain_entries
    #   <p>An array of key-value pairs containing information about the domain entries.</p>
    #   @return [Array<Types::DomainEntry>]
    # @!attribute registered_domain_delegation_info
    #   <p>An object that describes the state of the Route 53 domain delegation to a
    #           Lightsail DNS zone.</p>
    #   @return [Types::RegisteredDomainDelegationInfo]
    class Domain < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :domain_entries,
      :registered_domain_delegation_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a domain recordset entry.</p>
    # @!attribute id
    #   <p>The ID of the domain recordset entry.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the domain.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target IP address (<code>192.0.2.0</code>), or AWS name server
    #           (<code>ns-111.awsdns-22.com.</code>).</p>
    #            <p>For Lightsail load balancers, the value looks like
    #           <code>ab1234c56789c6b86aba6fb203d443bc-123456789.us-east-2.elb.amazonaws.com</code>. For
    #         Lightsail distributions, the value looks like <code>exampled1182ne.cloudfront.net</code>.
    #         For Lightsail container services, the value looks like
    #           <code>container-service-1.example23scljs.us-west-2.cs.amazonlightsail.com</code>. Be sure to
    #         also set <code>isAlias</code> to <code>true</code> when setting up an A record for a
    #         Lightsail load balancer, distribution, or container service.</p>
    #   @return [String]
    # @!attribute is_alias
    #   <p>When <code>true</code>, specifies whether the domain entry is an alias used by the Lightsail load balancer, Lightsail container service, Lightsail content delivery network (CDN) distribution, or another Amazon Web Services
    #         resource. You can include an alias (A type) record in your request, which points to the DNS
    #         name of a load balancer, container service, CDN distribution, or other Amazon Web Services
    #         resource and routes traffic to that resource.</p>
    #   @return [Boolean]
    # @!attribute type
    #   <p>The type of domain entry, such as address for IPv4 (A), address for IPv6 (AAAA), canonical
    #         name (CNAME), mail exchanger (MX), name server (NS), start of authority (SOA), service locator
    #         (SRV), or text (TXT).</p>
    #            <p>The following domain entry types can be used:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>A</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AAAA</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CNAME</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MX</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SOA</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SRV</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TXT</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute options
    #   <p>(Discontinued) The options for the domain entry.</p>
    #            <note>
    #               <p>In releases prior to November 29, 2017, this parameter was not included in the API
    #           response. It is now discontinued.</p>
    #            </note>
    #   @deprecated
    #   @return [Hash<String, String>]
    class DomainEntry < Struct.new(
      :id,
      :name,
      :target,
      :is_alias,
      :type,
      :options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the domain name system (DNS) records that you must add to the DNS of your
    #       registered domain to validate ownership for an Amazon Lightsail SSL/TLS certificate.</p>
    # @!attribute domain_name
    #   <p>The domain name of the certificate validation record. For example,
    #           <code>example.com</code> or <code>www.example.com</code>.</p>
    #   @return [String]
    # @!attribute resource_record
    #   <p>An object that describes the DNS records to add to your domain's DNS to validate it for
    #         the certificate.</p>
    #   @return [Types::ResourceRecord]
    # @!attribute dns_record_creation_state
    #   <p>An object that describes the state of the canonical name (CNAME) records that are
    #         automatically added by Lightsail to the DNS of the domain to validate domain
    #         ownership.</p>
    #   @return [Types::DnsRecordCreationState]
    # @!attribute validation_status
    #   <p>The validation status of the record.</p>
    #   @return [String]
    class DomainValidationRecord < Struct.new(
      :domain_name,
      :resource_record,
      :dns_record_creation_state,
      :validation_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DownloadDefaultKeyPairRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute public_key_base64
    #   <p>A base64-encoded public key of the <code>ssh-rsa</code> type.</p>
    #   @return [String]
    # @!attribute private_key_base64
    #   <p>A base64-encoded RSA private key.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the default key pair was created.</p>
    #   @return [Time]
    class DownloadDefaultKeyPairResult < Struct.new(
      :public_key_base64,
      :private_key_base64,
      :created_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_name
    #   <p>The name of the source resource for which to enable or modify the add-on.</p>
    #   @return [String]
    # @!attribute add_on_request
    #   <p>An array of strings representing the add-on to enable or modify.</p>
    #   @return [Types::AddOnRequest]
    class EnableAddOnRequest < Struct.new(
      :resource_name,
      :add_on_request,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class EnableAddOnResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the settings of a public endpoint for an Amazon Lightsail container
    #       service.</p>
    # @!attribute container_name
    #   <p>The name of the container for the endpoint.</p>
    #   @return [String]
    # @!attribute container_port
    #   <p>The port of the container to which traffic is forwarded to.</p>
    #   @return [Integer]
    # @!attribute health_check
    #   <p>An object that describes the health check configuration of the container.</p>
    #   @return [Types::ContainerServiceHealthCheckConfig]
    class EndpointRequest < Struct.new(
      :container_name,
      :container_port,
      :health_check,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An estimate that's associated with a time period. </p>
    # @!attribute usage_cost
    #   <p>The amount of cost or usage that's measured for the cost estimate.</p>
    #   @return [Float]
    # @!attribute pricing_unit
    #   <p>The unit of measurement that's used for the cost estimate.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The number of pricing units used to calculate the total number of hours. For example, 1
    #         unit equals 1 hour.</p>
    #   @return [Float]
    # @!attribute currency
    #   <p>The currency of the estimate in USD.</p>
    #   @return [String]
    # @!attribute time_period
    #   <p>The period of time, in days, that an estimate covers. The period has a start date and an
    #         end date. The start date must come before the end date.</p>
    #   @return [Types::TimePeriod]
    class EstimateByTime < Struct.new(
      :usage_cost,
      :pricing_unit,
      :unit,
      :currency,
      :time_period,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an export snapshot record.</p>
    # @!attribute name
    #   <p>The export snapshot record name.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the export snapshot record.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date when the export snapshot record was created.</p>
    #   @return [Time]
    # @!attribute location
    #   <p>The AWS Region and Availability Zone where the export snapshot record is located.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute resource_type
    #   <p>The Lightsail resource type (<code>ExportSnapshotRecord</code>).</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the export snapshot record.</p>
    #   @return [String]
    # @!attribute source_info
    #   <p>A list of objects describing the source of the export snapshot record.</p>
    #   @return [Types::ExportSnapshotRecordSourceInfo]
    # @!attribute destination_info
    #   <p>A list of objects describing the destination of the export snapshot record.</p>
    #   @return [Types::DestinationInfo]
    class ExportSnapshotRecord < Struct.new(
      :name,
      :arn,
      :created_at,
      :location,
      :resource_type,
      :state,
      :source_info,
      :destination_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the source of an export snapshot record.</p>
    # @!attribute resource_type
    #   <p>The Lightsail resource type (<code>InstanceSnapshot</code> or
    #         <code>DiskSnapshot</code>).</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date when the source instance or disk snapshot was created.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name of the source instance or disk snapshot.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the source instance or disk snapshot.</p>
    #   @return [String]
    # @!attribute from_resource_name
    #   <p>The name of the snapshot's source instance or disk.</p>
    #   @return [String]
    # @!attribute from_resource_arn
    #   <p>The Amazon Resource Name (ARN) of the snapshot's source instance or disk.</p>
    #   @return [String]
    # @!attribute instance_snapshot_info
    #   <p>A list of objects describing an instance snapshot.</p>
    #   @return [Types::InstanceSnapshotInfo]
    # @!attribute disk_snapshot_info
    #   <p>A list of objects describing a disk snapshot.</p>
    #   @return [Types::DiskSnapshotInfo]
    class ExportSnapshotRecordSourceInfo < Struct.new(
      :resource_type,
      :created_at,
      :name,
      :arn,
      :from_resource_name,
      :from_resource_arn,
      :instance_snapshot_info,
      :disk_snapshot_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_snapshot_name
    #   <p>The name of the instance or disk snapshot to be exported to Amazon EC2.</p>
    #   @return [String]
    class ExportSnapshotRequest < Struct.new(
      :source_snapshot_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class ExportSnapshotResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetActiveNames</code> request. If your
    #         results are paginated, the response will return a next page token that you can specify as the
    #         page token in a subsequent request.</p>
    #   @return [String]
    class GetActiveNamesRequest < Struct.new(
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute active_names
    #   <p>The list of active names returned by the get active names request.</p>
    #   @return [Array<String>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetActiveNames</code> request and
    #         specify the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetActiveNamesResult < Struct.new(
      :active_names,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute alarm_name
    #   <p>The name of the alarm.</p>
    #            <p>Specify an alarm name to return information about a specific alarm.</p>
    #   @return [String]
    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetAlarms</code> request. If your results
    #         are paginated, the response will return a next page token that you can specify as the page
    #         token in a subsequent request.</p>
    #   @return [String]
    # @!attribute monitored_resource_name
    #   <p>The name of the Lightsail resource being monitored by the alarm.</p>
    #            <p>Specify a monitored resource name to return information about all alarms for a specific
    #         resource.</p>
    #   @return [String]
    class GetAlarmsRequest < Struct.new(
      :alarm_name,
      :page_token,
      :monitored_resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute alarms
    #   <p>An array of objects that describe the alarms.</p>
    #   @return [Array<Types::Alarm>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetAlarms</code> request and
    #         specify the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetAlarmsResult < Struct.new(
      :alarms,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_name
    #   <p>The name of the source instance or disk from which to get automatic snapshot
    #         information.</p>
    #   @return [String]
    class GetAutoSnapshotsRequest < Struct.new(
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_name
    #   <p>The name of the source instance or disk for the automatic snapshots.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type of the automatic snapshot. The possible values are
    #         <code>Instance</code>, and <code>Disk</code>.</p>
    #   @return [String]
    # @!attribute auto_snapshots
    #   <p>An array of objects that describe the automatic snapshots that are available for the
    #         specified source instance or disk.</p>
    #   @return [Array<Types::AutoSnapshotDetails>]
    class GetAutoSnapshotsResult < Struct.new(
      :resource_name,
      :resource_type,
      :auto_snapshots,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute include_inactive
    #   <p>A Boolean value that indicates whether to include inactive (unavailable) blueprints in the
    #         response of your request.</p>
    #   @return [Boolean]
    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetBlueprints</code> request. If your
    #         results are paginated, the response will return a next page token that you can specify as the
    #         page token in a subsequent request.</p>
    #   @return [String]
    # @!attribute app_category
    #   <p>Returns a list of blueprints that are specific to Lightsail for Research.</p>
    #            <important>
    #               <p>You must use this parameter to view Lightsail for Research blueprints.</p>
    #            </important>
    #   @return [String]
    class GetBlueprintsRequest < Struct.new(
      :include_inactive,
      :page_token,
      :app_category,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute blueprints
    #   <p>An array of key-value pairs that contains information about the available
    #         blueprints.</p>
    #   @return [Array<Types::Blueprint>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetBlueprints</code> request and
    #         specify the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetBlueprintsResult < Struct.new(
      :blueprints,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket_name
    #   <p>The name of the bucket for which to return access keys.</p>
    #   @return [String]
    class GetBucketAccessKeysRequest < Struct.new(
      :bucket_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_keys
    #   <p>An object that describes the access keys for the specified bucket.</p>
    #   @return [Array<Types::AccessKey>]
    class GetBucketAccessKeysResult < Struct.new(
      :access_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute include_inactive
    #   <p>A Boolean value that indicates whether to include inactive (unavailable) bundles in the
    #         response of your request.</p>
    #   @return [Boolean]
    class GetBucketBundlesRequest < Struct.new(
      :include_inactive,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bundles
    #   <p>An object that describes bucket bundles.</p>
    #   @return [Array<Types::BucketBundle>]
    class GetBucketBundlesResult < Struct.new(
      :bundles,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket_name
    #   <p>The name of the bucket for which to get metric data.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The metric for which you want to return information.</p>
    #            <p>Valid bucket metric names are listed below, along with the most useful statistics to
    #         include in your request, and the published unit value.</p>
    #            <note>
    #               <p>These bucket metrics are reported once per day.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>BucketSizeBytes</code>
    #                     </b> - The amount of data in
    #             bytes stored in a bucket. This value is calculated by summing the size of all objects in
    #             the bucket (including object versions), including the size of all parts for all incomplete
    #             multipart uploads to the bucket.</p>
    #                  <p>Statistics: The most useful statistic is <code>Maximum</code>.</p>
    #                  <p>Unit: The published unit is <code>Bytes</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NumberOfObjects</code>
    #                     </b> - The total number of
    #             objects stored in a bucket. This value is calculated by counting all objects in the bucket
    #             (including object versions) and the total number of parts for all incomplete multipart
    #             uploads to the bucket.</p>
    #                  <p>Statistics: The most useful statistic is <code>Average</code>.</p>
    #                  <p>Unit: The published unit is <code>Count</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp indicating the earliest data to be returned.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp indicating the latest data to be returned.</p>
    #   @return [Time]
    # @!attribute period
    #   <p>The granularity, in seconds, of the returned data points.</p>
    #            <note>
    #               <p>Bucket storage metrics are reported once per day. Therefore, you should specify a period
    #           of 86400 seconds, which is the number of seconds in a day.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute statistics
    #   <p>The statistic for the metric.</p>
    #            <p>The following statistics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Minimum</code> - The lowest value observed during the specified period. Use this
    #             value to determine low volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Maximum</code> - The highest value observed during the specified period. Use
    #             this value to determine high volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> - The sum of all values submitted for the matching metric. You can
    #             use this statistic to determine the total volume of a metric.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> - The value of <code>Sum</code> / <code>SampleCount</code> during
    #             the specified period. By comparing this statistic with the <code>Minimum</code> and
    #               <code>Maximum</code> values, you can determine the full scope of a metric and how close
    #             the average use is to the <code>Minimum</code> and <code>Maximum</code> values. This
    #             comparison helps you to know when to increase or decrease your resources.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SampleCount</code> - The count, or number, of data points used for the
    #             statistical calculation.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute unit
    #   <p>The unit for the metric data request.</p>
    #            <p>Valid units depend on the metric data being requested. For the valid units with each
    #         available metric, see the <code>metricName</code> parameter.</p>
    #   @return [String]
    class GetBucketMetricDataRequest < Struct.new(
      :bucket_name,
      :metric_name,
      :start_time,
      :end_time,
      :period,
      :statistics,
      :unit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_name
    #   <p>The name of the metric returned.</p>
    #   @return [String]
    # @!attribute metric_data
    #   <p>An array of objects that describe the metric data returned.</p>
    #   @return [Array<Types::MetricDatapoint>]
    class GetBucketMetricDataResult < Struct.new(
      :metric_name,
      :metric_data,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket_name
    #   <p>The name of the bucket for which to return information.</p>
    #            <p>When omitted, the response includes all of your buckets in the Amazon Web Services Region
    #         where the request is made.</p>
    #   @return [String]
    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetBuckets</code> request. If your results
    #         are paginated, the response will return a next page token that you can specify as the page
    #         token in a subsequent request.</p>
    #   @return [String]
    # @!attribute include_connected_resources
    #   <p>A Boolean value that indicates whether to include Lightsail instances that were given
    #         access to the bucket using the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_SetResourceAccessForBucket.html">SetResourceAccessForBucket</a>
    #         action.</p>
    #   @return [Boolean]
    class GetBucketsRequest < Struct.new(
      :bucket_name,
      :page_token,
      :include_connected_resources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute buckets
    #   <p>An array of objects that describe buckets.</p>
    #   @return [Array<Types::Bucket>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetBuckets</code> request and
    #         specify the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    # @!attribute account_level_bpa_sync
    #   <p>An object that describes the synchronization status of the Amazon S3 account-level
    #         block public access feature for your Lightsail buckets.</p>
    #            <p>For more information about this feature and how it affects Lightsail buckets, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-block-public-access-for-buckets">Block public access for buckets in Amazon Lightsail</a>.</p>
    #   @return [Types::AccountLevelBpaSync]
    class GetBucketsResult < Struct.new(
      :buckets,
      :next_page_token,
      :account_level_bpa_sync,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute include_inactive
    #   <p>A Boolean value that indicates whether to include inactive (unavailable) bundles in the
    #         response of your request.</p>
    #   @return [Boolean]
    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetBundles</code> request. If your results
    #         are paginated, the response will return a next page token that you can specify as the page
    #         token in a subsequent request.</p>
    #   @return [String]
    # @!attribute app_category
    #   <p>Returns a list of bundles that are specific to Lightsail for Research.</p>
    #            <important>
    #               <p>You must use this parameter to view Lightsail for Research bundles.</p>
    #            </important>
    #   @return [String]
    class GetBundlesRequest < Struct.new(
      :include_inactive,
      :page_token,
      :app_category,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bundles
    #   <p>An array of key-value pairs that contains information about the available bundles.</p>
    #   @return [Array<Types::Bundle>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetBundles</code> request and
    #         specify the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetBundlesResult < Struct.new(
      :bundles,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_statuses
    #   <p>The status of the certificates for which to return information.</p>
    #            <p>For example, specify <code>ISSUED</code> to return only certificates with an
    #           <code>ISSUED</code> status.</p>
    #            <p>When omitted, the response includes all of your certificates in the Amazon Web Services
    #         Region where the request is made, regardless of their current status.</p>
    #   @return [Array<String>]
    # @!attribute include_certificate_details
    #   <p>Indicates whether to include detailed information about the certificates in the
    #         response.</p>
    #            <p>When omitted, the response includes only the certificate names, Amazon Resource Names
    #         (ARNs), domain names, and tags.</p>
    #   @return [Boolean]
    # @!attribute certificate_name
    #   <p>The name for the certificate for which to return information.</p>
    #            <p>When omitted, the response includes all of your certificates in the Amazon Web Services
    #         Region where the request is made.</p>
    #   @return [String]
    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetCertificates</code> request. If your
    #         results are paginated, the response will return a next page token that you can specify as the
    #         page token in a subsequent request.</p>
    #   @return [String]
    class GetCertificatesRequest < Struct.new(
      :certificate_statuses,
      :include_certificate_details,
      :certificate_name,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificates
    #   <p>An object that describes certificates.</p>
    #   @return [Array<Types::CertificateSummary>]
    # @!attribute next_page_token
    #   <p>If <code>NextPageToken</code> is returned there are more results available. The value of
    #           <code>NextPageToken</code> is a unique pagination token for each page. Make the call again
    #         using the returned token to retrieve the next page. Keep all other arguments unchanged.</p>
    #   @return [String]
    class GetCertificatesResult < Struct.new(
      :certificates,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetClouFormationStackRecords</code> request.
    #         If your results are paginated, the response will return a next page token that you can specify
    #         as the page token in a subsequent request.</p>
    #   @return [String]
    class GetCloudFormationStackRecordsRequest < Struct.new(
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cloud_formation_stack_records
    #   <p>A list of objects describing the CloudFormation stack records.</p>
    #   @return [Array<Types::CloudFormationStackRecord>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another
    #           <code>GetCloudFormationStackRecords</code> request and specify the next page token using the
    #           <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetCloudFormationStackRecordsResult < Struct.new(
      :cloud_formation_stack_records,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute protocols
    #   <p>The protocols used to send notifications, such as <code>Email</code>, or <code>SMS</code>
    #         (text messaging).</p>
    #            <p>Specify a protocol in your request to return information about a specific contact method
    #         protocol.</p>
    #   @return [Array<String>]
    class GetContactMethodsRequest < Struct.new(
      :protocols,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_methods
    #   <p>An array of objects that describe the contact methods.</p>
    #   @return [Array<Types::ContactMethod>]
    class GetContactMethodsResult < Struct.new(
      :contact_methods,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetContainerAPIMetadataRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute metadata
    #   <p>Metadata about Lightsail containers, such as the current version of the Lightsail
    #         Control (lightsailctl) plugin.</p>
    #   @return [Array<Hash<String, String>>]
    class GetContainerAPIMetadataResult < Struct.new(
      :metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the container service for which to return registered container images.</p>
    #   @return [String]
    class GetContainerImagesRequest < Struct.new(
      :service_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_images
    #   <p>An array of objects that describe container images that are registered to the container
    #         service.</p>
    #   @return [Array<Types::ContainerImage>]
    class GetContainerImagesResult < Struct.new(
      :container_images,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the container service for which to get a container log.</p>
    #   @return [String]
    # @!attribute container_name
    #   <p>The name of the container that is either running or previously ran on the container
    #         service for which to return a log.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start of the time interval for which to get log data.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, specify
    #               <code>1538424000</code> as the start time.</p>
    #               </li>
    #            </ul>
    #            <p>You can convert a human-friendly time to Unix time format using a converter like <a href="https://www.epochconverter.com/">Epoch converter</a>.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time interval for which to get log data.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you wish to use an end time of October 1, 2018, at 9 PM UTC, specify
    #               <code>1538427600</code> as the end time.</p>
    #               </li>
    #            </ul>
    #            <p>You can convert a human-friendly time to Unix time format using a converter like <a href="https://www.epochconverter.com/">Epoch converter</a>.</p>
    #   @return [Time]
    # @!attribute filter_pattern
    #   <p>The pattern to use to filter the returned log events to a specific term.</p>
    #            <p>The following are a few examples of filter patterns that you can specify:</p>
    #            <ul>
    #               <li>
    #                  <p>To return all log events, specify a filter pattern of <code>""</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To exclude log events that contain the <code>ERROR</code> term, and return all other
    #             log events, specify a filter pattern of <code>"-ERROR"</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To return log events that contain the <code>ERROR</code> term, specify a filter
    #             pattern of <code>"ERROR"</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To return log events that contain both the <code>ERROR</code> and
    #               <code>Exception</code> terms, specify a filter pattern of <code>"ERROR
    #             Exception"</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To return log events that contain the <code>ERROR</code>
    #                     <i>or</i> the <code>Exception</code> term, specify a filter pattern of
    #               <code>"?ERROR ?Exception"</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetContainerLog</code> request. If your
    #         results are paginated, the response will return a next page token that you can specify as the
    #         page token in a subsequent request.</p>
    #   @return [String]
    class GetContainerLogRequest < Struct.new(
      :service_name,
      :container_name,
      :start_time,
      :end_time,
      :filter_pattern,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute log_events
    #   <p>An array of objects that describe the log events of a container.</p>
    #   @return [Array<Types::ContainerServiceLogEvent>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetContainerLog</code> request and
    #         specify the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetContainerLogResult < Struct.new(
      :log_events,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the container service for which to return deployments.</p>
    #   @return [String]
    class GetContainerServiceDeploymentsRequest < Struct.new(
      :service_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployments
    #   <p>An array of objects that describe deployments for a container service.</p>
    #   @return [Array<Types::ContainerServiceDeployment>]
    class GetContainerServiceDeploymentsResult < Struct.new(
      :deployments,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the container service for which to get metric data.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The metric for which you want to return information.</p>
    #            <p>Valid container service metric names are listed below, along with the most useful
    #         statistics to include in your request, and the published unit value.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CPUUtilization</code> - The average percentage of compute units that are
    #             currently in use across all nodes of the container service. This metric identifies the
    #             processing power required to run containers on each node of the container service.</p>
    #                  <p>Statistics: The most useful statistics are <code>Maximum</code> and
    #               <code>Average</code>.</p>
    #                  <p>Unit: The published unit is <code>Percent</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MemoryUtilization</code> - The average percentage of available memory that is
    #             currently in use across all nodes of the container service. This metric identifies the
    #             memory required to run containers on each node of the container service.</p>
    #                  <p>Statistics: The most useful statistics are <code>Maximum</code> and
    #               <code>Average</code>.</p>
    #                  <p>Unit: The published unit is <code>Percent</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time of the time period.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the time period.</p>
    #   @return [Time]
    # @!attribute period
    #   <p>The granularity, in seconds, of the returned data points.</p>
    #            <p>All container service metric data is available in 5-minute (300 seconds)
    #         granularity.</p>
    #   @return [Integer]
    # @!attribute statistics
    #   <p>The statistic for the metric.</p>
    #            <p>The following statistics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Minimum</code> - The lowest value observed during the specified period. Use this
    #             value to determine low volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Maximum</code> - The highest value observed during the specified period. Use
    #             this value to determine high volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> - All values submitted for the matching metric added together. You
    #             can use this statistic to determine the total volume of a metric.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> - The value of <code>Sum</code> / <code>SampleCount</code> during
    #             the specified period. By comparing this statistic with the <code>Minimum</code> and
    #               <code>Maximum</code> values, you can determine the full scope of a metric and how close
    #             the average use is to the <code>Minimum</code> and <code>Maximum</code> values. This
    #             comparison helps you to know when to increase or decrease your resources.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SampleCount</code> - The count, or number, of data points used for the
    #             statistical calculation.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class GetContainerServiceMetricDataRequest < Struct.new(
      :service_name,
      :metric_name,
      :start_time,
      :end_time,
      :period,
      :statistics,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_name
    #   <p>The name of the metric returned. </p>
    #   @return [String]
    # @!attribute metric_data
    #   <p>An array of objects that describe the metric data returned.</p>
    #   @return [Array<Types::MetricDatapoint>]
    class GetContainerServiceMetricDataResult < Struct.new(
      :metric_name,
      :metric_data,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetContainerServicePowersRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute powers
    #   <p>An array of objects that describe the powers that can be specified for a container
    #         service.</p>
    #   @return [Array<Types::ContainerServicePower>]
    class GetContainerServicePowersResult < Struct.new(
      :powers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the container service for which to return information.</p>
    #            <p>When omitted, the response includes all of your container services in the Amazon Web Services Region where the request is made.</p>
    #   @return [String]
    class GetContainerServicesRequest < Struct.new(
      :service_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_name
    #   <p>The resource name.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The cost estimate start time.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you want to use a start time of October 1, 2018, at 8 PM UTC, specify
    #               <code>1538424000</code> as the start time.</p>
    #               </li>
    #            </ul>
    #            <p>You can convert a human-friendly time to Unix time format using a converter like <a href="https://www.epochconverter.com/">Epoch converter</a>.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The cost estimate end time.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you want to use an end time of October 1, 2018, at 9 PM UTC, specify
    #               <code>1538427600</code> as the end time.</p>
    #               </li>
    #            </ul>
    #            <p>You can convert a human-friendly time to Unix time format using a converter like <a href="https://www.epochconverter.com/">Epoch converter</a>.</p>
    #   @return [Time]
    class GetCostEstimateRequest < Struct.new(
      :resource_name,
      :start_time,
      :end_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resources_budget_estimate
    #   <p>Returns the estimate's forecasted cost or usage.</p>
    #   @return [Array<Types::ResourceBudgetEstimate>]
    class GetCostEstimateResult < Struct.new(
      :resources_budget_estimate,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute disk_name
    #   <p>The name of the disk (<code>my-disk</code>).</p>
    #   @return [String]
    class GetDiskRequest < Struct.new(
      :disk_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute disk
    #   <p>An object containing information about the disk.</p>
    #   @return [Types::Disk]
    class GetDiskResult < Struct.new(
      :disk,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute disk_snapshot_name
    #   <p>The name of the disk snapshot (<code>my-disk-snapshot</code>).</p>
    #   @return [String]
    class GetDiskSnapshotRequest < Struct.new(
      :disk_snapshot_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute disk_snapshot
    #   <p>An object containing information about the disk snapshot.</p>
    #   @return [Types::DiskSnapshot]
    class GetDiskSnapshotResult < Struct.new(
      :disk_snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetDiskSnapshots</code> request. If your
    #         results are paginated, the response will return a next page token that you can specify as the
    #         page token in a subsequent request.</p>
    #   @return [String]
    class GetDiskSnapshotsRequest < Struct.new(
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute disk_snapshots
    #   <p>An array of objects containing information about all block storage disk snapshots.</p>
    #   @return [Array<Types::DiskSnapshot>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetDiskSnapshots</code> request and
    #         specify the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetDiskSnapshotsResult < Struct.new(
      :disk_snapshots,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetDisks</code> request. If your results are
    #         paginated, the response will return a next page token that you can specify as the page token
    #         in a subsequent request.</p>
    #   @return [String]
    class GetDisksRequest < Struct.new(
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute disks
    #   <p>An array of objects containing information about all block storage disks.</p>
    #   @return [Array<Types::Disk>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetDisks</code> request and specify
    #         the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetDisksResult < Struct.new(
      :disks,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetDistributionBundlesRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bundles
    #   <p>An object that describes a distribution bundle.</p>
    #   @return [Array<Types::DistributionBundle>]
    class GetDistributionBundlesResult < Struct.new(
      :bundles,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_name
    #   <p>The name of the distribution for which to return the timestamp of the last cache
    #         reset.</p>
    #            <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
    #         can specify.</p>
    #            <p>When omitted, the response includes the latest cache reset timestamp of all your
    #         distributions.</p>
    #   @return [String]
    class GetDistributionLatestCacheResetRequest < Struct.new(
      :distribution_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the last cache reset.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The timestamp of the last cache reset (<code>1479734909.17</code>) in Unix time
    #         format.</p>
    #   @return [Time]
    class GetDistributionLatestCacheResetResult < Struct.new(
      :status,
      :create_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_name
    #   <p>The name of the distribution for which to get metric data.</p>
    #            <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
    #         can specify.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The metric for which you want to return information.</p>
    #            <p>Valid distribution metric names are listed below, along with the most useful
    #           <code>statistics</code> to include in your request, and the published <code>unit</code>
    #         value.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Requests</code>
    #                     </b> - The total number of viewer
    #             requests received by your Lightsail distribution, for all HTTP methods, and for both
    #             HTTP and HTTPS requests.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>None</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>BytesDownloaded</code>
    #                     </b> - The number of bytes
    #             downloaded by viewers for GET, HEAD, and OPTIONS requests.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>None</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>BytesUploaded </code>
    #                     </b> - The number of bytes
    #             uploaded to your origin by your Lightsail distribution, using POST and PUT
    #             requests.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>None</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>TotalErrorRate</code>
    #                     </b> - The percentage of all
    #             viewer requests for which the response's HTTP status code was 4xx or 5xx.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Percent</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>4xxErrorRate</code>
    #                     </b> - The percentage of all
    #             viewer requests for which the response's HTTP status cod was 4xx. In these cases, the
    #             client or client viewer may have made an error. For example, a status code of 404 (Not
    #             Found) means that the client requested an object that could not be found.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Percent</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>5xxErrorRate</code>
    #                     </b> - The percentage of all
    #             viewer requests for which the response's HTTP status code was 5xx. In these cases, the
    #             origin server did not satisfy the requests. For example, a status code of 503 (Service
    #             Unavailable) means that the origin server is currently unavailable.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Percent</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start of the time interval for which to get metric data.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, specify
    #               <code>1538424000</code> as the start time.</p>
    #               </li>
    #            </ul>
    #            <p>You can convert a human-friendly time to Unix time format using a converter like <a href="https://www.epochconverter.com/">Epoch converter</a>.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time interval for which to get metric data.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you wish to use an end time of October 1, 2018, at 9 PM UTC, specify
    #               <code>1538427600</code> as the end time.</p>
    #               </li>
    #            </ul>
    #            <p>You can convert a human-friendly time to Unix time format using a converter like <a href="https://www.epochconverter.com/">Epoch converter</a>.</p>
    #   @return [Time]
    # @!attribute period
    #   <p>The granularity, in seconds, for the metric data points that will be returned.</p>
    #   @return [Integer]
    # @!attribute unit
    #   <p>The unit for the metric data request.</p>
    #            <p>Valid units depend on the metric data being requested. For the valid units with each
    #         available metric, see the <code>metricName</code> parameter.</p>
    #   @return [String]
    # @!attribute statistics
    #   <p>The statistic for the metric.</p>
    #            <p>The following statistics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Minimum</code> - The lowest value observed during the specified period. Use this
    #             value to determine low volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Maximum</code> - The highest value observed during the specified period. Use
    #             this value to determine high volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> - All values submitted for the matching metric added together. You
    #             can use this statistic to determine the total volume of a metric.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> - The value of Sum / SampleCount during the specified period. By
    #             comparing this statistic with the Minimum and Maximum values, you can determine the full
    #             scope of a metric and how close the average use is to the Minimum and Maximum values. This
    #             comparison helps you to know when to increase or decrease your resources.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SampleCount</code> - The count, or number, of data points used for the
    #             statistical calculation.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class GetDistributionMetricDataRequest < Struct.new(
      :distribution_name,
      :metric_name,
      :start_time,
      :end_time,
      :period,
      :unit,
      :statistics,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_name
    #   <p>The name of the metric returned.</p>
    #   @return [String]
    # @!attribute metric_data
    #   <p>An array of objects that describe the metric data returned.</p>
    #   @return [Array<Types::MetricDatapoint>]
    class GetDistributionMetricDataResult < Struct.new(
      :metric_name,
      :metric_data,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_name
    #   <p>The name of the distribution for which to return information.</p>
    #            <p>When omitted, the response includes all of your distributions in the Amazon Web Services
    #         Region where the request is made.</p>
    #   @return [String]
    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetDistributions</code> request. If your
    #         results are paginated, the response will return a next page token that you can specify as the
    #         page token in a subsequent request.</p>
    #   @return [String]
    class GetDistributionsRequest < Struct.new(
      :distribution_name,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distributions
    #   <p>An array of objects that describe your distributions.</p>
    #   @return [Array<Types::LightsailDistribution>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetDistributions</code> request and
    #         specify the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetDistributionsResult < Struct.new(
      :distributions,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name for which your want to return information about.</p>
    #   @return [String]
    class GetDomainRequest < Struct.new(
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>An array of key-value pairs containing information about your get domain request.</p>
    #   @return [Types::Domain]
    class GetDomainResult < Struct.new(
      :domain,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetDomains</code> request. If your results
    #         are paginated, the response will return a next page token that you can specify as the page
    #         token in a subsequent request.</p>
    #   @return [String]
    class GetDomainsRequest < Struct.new(
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domains
    #   <p>An array of key-value pairs containing information about each of the domain entries in the
    #         user's account.</p>
    #   @return [Array<Types::Domain>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetDomains</code> request and
    #         specify the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetDomainsResult < Struct.new(
      :domains,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetExportSnapshotRecords</code> request. If
    #         your results are paginated, the response will return a next page token that you can specify as
    #         the page token in a subsequent request.</p>
    #   @return [String]
    class GetExportSnapshotRecordsRequest < Struct.new(
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_snapshot_records
    #   <p>A list of objects describing the export snapshot records.</p>
    #   @return [Array<Types::ExportSnapshotRecord>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetExportSnapshotRecords</code>
    #         request and specify the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetExportSnapshotRecordsResult < Struct.new(
      :export_snapshot_records,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_name
    #   <p>The name of the instance to access.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The protocol to use to connect to your instance. Defaults to <code>ssh</code>.</p>
    #   @return [String]
    class GetInstanceAccessDetailsRequest < Struct.new(
      :instance_name,
      :protocol,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_details
    #   <p>An array of key-value pairs containing information about a get instance access
    #         request.</p>
    #   @return [Types::InstanceAccessDetails]
    class GetInstanceAccessDetailsResult < Struct.new(
      :access_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_name
    #   <p>The name of the instance for which you want to get metrics data.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The metric for which you want to return information.</p>
    #            <p>Valid instance metric names are listed below, along with the most useful
    #           <code>statistics</code> to include in your request, and the published <code>unit</code>
    #         value.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>BurstCapacityPercentage</code>
    #                     </b> - The percentage
    #             of CPU performance available for your instance to burst above its baseline. Your instance
    #             continuously accrues and consumes burst capacity. Burst capacity stops accruing when your
    #             instance's <code>BurstCapacityPercentage</code> reaches 100%. For more information, see
    #               <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-viewing-instance-burst-capacity">Viewing instance burst capacity in Amazon Lightsail</a>.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistics are <code>Maximum</code> and
    #               <code>Average</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Percent</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>BurstCapacityTime</code>
    #                     </b> - The available amount
    #             of time for your instance to burst at 100% CPU utilization. Your instance continuously
    #             accrues and consumes burst capacity. Burst capacity time stops accruing when your
    #             instance's <code>BurstCapacityPercentage</code> metric reaches 100%.</p>
    #                  <p>Burst capacity time is consumed at the full rate only when your instance operates at
    #             100% CPU utilization. For example, if your instance operates at 50% CPU utilization in the
    #             burstable zone for a 5-minute period, then it consumes CPU burst capacity minutes at a 50%
    #             rate in that period. Your instance consumed 2 minutes and 30 seconds of CPU burst capacity
    #             minutes in the 5-minute period. For more information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-viewing-instance-burst-capacity">Viewing instance burst capacity in Amazon Lightsail</a>.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistics are <code>Maximum</code> and
    #               <code>Average</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Seconds</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>CPUUtilization</code>
    #                     </b> - The percentage of
    #             allocated compute units that are currently in use on the instance. This metric identifies
    #             the processing power to run the applications on the instance. Tools in your operating
    #             system can show a lower percentage than Lightsail when the instance is not allocated a
    #             full processor core.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistics are <code>Maximum</code> and
    #               <code>Average</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Percent</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NetworkIn</code>
    #                     </b> - The number of bytes received
    #             on all network interfaces by the instance. This metric identifies the volume of incoming
    #             network traffic to the instance. The number reported is the number of bytes received
    #             during the period. Because this metric is reported in 5-minute intervals, divide the
    #             reported number by 300 to find Bytes/second.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Bytes</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NetworkOut</code>
    #                     </b> - The number of bytes sent
    #             out on all network interfaces by the instance. This metric identifies the volume of
    #             outgoing network traffic from the instance. The number reported is the number of bytes
    #             sent during the period. Because this metric is reported in 5-minute intervals, divide the
    #             reported number by 300 to find Bytes/second.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Bytes</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>StatusCheckFailed</code>
    #                     </b> - Reports whether the
    #             instance passed or failed both the instance status check and the system status check. This
    #             metric can be either 0 (passed) or 1 (failed). This metric data is available in 1-minute
    #             (60 seconds) granularity.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>StatusCheckFailed_Instance</code>
    #                     </b> - Reports
    #             whether the instance passed or failed the instance status check. This metric can be either
    #             0 (passed) or 1 (failed). This metric data is available in 1-minute (60 seconds)
    #             granularity.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>StatusCheckFailed_System</code>
    #                     </b> - Reports
    #             whether the instance passed or failed the system status check. This metric can be either 0
    #             (passed) or 1 (failed). This metric data is available in 1-minute (60 seconds)
    #             granularity.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>MetadataNoToken</code>
    #                     </b> - Reports the number of
    #             times that the instance metadata service was successfully accessed without a token. This
    #             metric determines if there are any processes accessing instance metadata by using Instance
    #             Metadata Service Version 1, which doesn't use a token. If all requests use token-backed
    #             sessions, such as Instance Metadata Service Version 2, then the value is 0.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute period
    #   <p>The granularity, in seconds, of the returned data points.</p>
    #            <p>The <code>StatusCheckFailed</code>, <code>StatusCheckFailed_Instance</code>, and
    #           <code>StatusCheckFailed_System</code> instance metric data is available in 1-minute (60
    #         seconds) granularity. All other instance metric data is available in 5-minute (300 seconds)
    #         granularity.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>The start time of the time period.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the time period.</p>
    #   @return [Time]
    # @!attribute unit
    #   <p>The unit for the metric data request. Valid units depend on the metric data being
    #         requested. For the valid units to specify with each available metric, see the
    #           <code>metricName</code> parameter.</p>
    #   @return [String]
    # @!attribute statistics
    #   <p>The statistic for the metric.</p>
    #            <p>The following statistics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Minimum</code> - The lowest value observed during the specified period. Use this
    #             value to determine low volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Maximum</code> - The highest value observed during the specified period. Use
    #             this value to determine high volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> - All values submitted for the matching metric added together. You
    #             can use this statistic to determine the total volume of a metric.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> - The value of Sum / SampleCount during the specified period. By
    #             comparing this statistic with the Minimum and Maximum values, you can determine the full
    #             scope of a metric and how close the average use is to the Minimum and Maximum values. This
    #             comparison helps you to know when to increase or decrease your resources.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SampleCount</code> - The count, or number, of data points used for the
    #             statistical calculation.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class GetInstanceMetricDataRequest < Struct.new(
      :instance_name,
      :metric_name,
      :period,
      :start_time,
      :end_time,
      :unit,
      :statistics,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_name
    #   <p>The name of the metric returned.</p>
    #   @return [String]
    # @!attribute metric_data
    #   <p>An array of objects that describe the metric data returned.</p>
    #   @return [Array<Types::MetricDatapoint>]
    class GetInstanceMetricDataResult < Struct.new(
      :metric_name,
      :metric_data,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_name
    #   <p>The name of the instance for which to return firewall port states.</p>
    #   @return [String]
    class GetInstancePortStatesRequest < Struct.new(
      :instance_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute port_states
    #   <p>An array of objects that describe the firewall port states for the specified
    #         instance.</p>
    #   @return [Array<Types::InstancePortState>]
    class GetInstancePortStatesResult < Struct.new(
      :port_states,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_name
    #   <p>The name of the instance.</p>
    #   @return [String]
    class GetInstanceRequest < Struct.new(
      :instance_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance
    #   <p>An array of key-value pairs containing information about the specified instance.</p>
    #   @return [Types::Instance]
    class GetInstanceResult < Struct.new(
      :instance,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_snapshot_name
    #   <p>The name of the snapshot for which you are requesting information.</p>
    #   @return [String]
    class GetInstanceSnapshotRequest < Struct.new(
      :instance_snapshot_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_snapshot
    #   <p>An array of key-value pairs containing information about the results of your get instance
    #         snapshot request.</p>
    #   @return [Types::InstanceSnapshot]
    class GetInstanceSnapshotResult < Struct.new(
      :instance_snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetInstanceSnapshots</code> request. If your
    #         results are paginated, the response will return a next page token that you can specify as the
    #         page token in a subsequent request.</p>
    #   @return [String]
    class GetInstanceSnapshotsRequest < Struct.new(
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_snapshots
    #   <p>An array of key-value pairs containing information about the results of your get instance
    #         snapshots request.</p>
    #   @return [Array<Types::InstanceSnapshot>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetInstanceSnapshots</code> request
    #         and specify the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetInstanceSnapshotsResult < Struct.new(
      :instance_snapshots,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_name
    #   <p>The name of the instance to get state information about.</p>
    #   @return [String]
    class GetInstanceStateRequest < Struct.new(
      :instance_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute state
    #   <p>The state of the instance.</p>
    #   @return [Types::InstanceState]
    class GetInstanceStateResult < Struct.new(
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetInstances</code> request. If your results
    #         are paginated, the response will return a next page token that you can specify as the page
    #         token in a subsequent request.</p>
    #   @return [String]
    class GetInstancesRequest < Struct.new(
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instances
    #   <p>An array of key-value pairs containing information about your instances.</p>
    #   @return [Array<Types::Instance>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetInstances</code> request and
    #         specify the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetInstancesResult < Struct.new(
      :instances,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_pair_name
    #   <p>The name of the key pair for which you are requesting information.</p>
    #   @return [String]
    class GetKeyPairRequest < Struct.new(
      :key_pair_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_pair
    #   <p>An array of key-value pairs containing information about the key pair.</p>
    #   @return [Types::KeyPair]
    class GetKeyPairResult < Struct.new(
      :key_pair,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetKeyPairs</code> request. If your results
    #         are paginated, the response will return a next page token that you can specify as the page
    #         token in a subsequent request.</p>
    #   @return [String]
    # @!attribute include_default_key_pair
    #   <p>A Boolean value that indicates whether to include the default key pair in the response of
    #         your request.</p>
    #   @return [Boolean]
    class GetKeyPairsRequest < Struct.new(
      :page_token,
      :include_default_key_pair,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_pairs
    #   <p>An array of key-value pairs containing information about the key pairs.</p>
    #   @return [Array<Types::KeyPair>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetKeyPairs</code> request and
    #         specify the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetKeyPairsResult < Struct.new(
      :key_pairs,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The metric for which you want to return information.</p>
    #            <p>Valid load balancer metric names are listed below, along with the most useful
    #           <code>statistics</code> to include in your request, and the published <code>unit</code>
    #         value.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>ClientTLSNegotiationErrorCount</code>
    #                     </b> - The
    #             number of TLS connections initiated by the client that did not establish a session with
    #             the load balancer due to a TLS error generated by the load balancer. Possible causes
    #             include a mismatch of ciphers or protocols.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>HealthyHostCount</code>
    #                     </b> - The number of target
    #             instances that are considered healthy.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic are <code>Average</code>,
    #               <code>Minimum</code>, and <code>Maximum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>HTTPCode_Instance_2XX_Count</code>
    #                     </b> - The number
    #             of HTTP 2XX response codes generated by the target instances. This does not include any
    #             response codes generated by the load balancer.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that
    #               <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return
    #               <code>1</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>HTTPCode_Instance_3XX_Count</code>
    #                     </b> - The number
    #             of HTTP 3XX response codes generated by the target instances. This does not include any
    #             response codes generated by the load balancer.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that
    #               <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return
    #               <code>1</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>HTTPCode_Instance_4XX_Count</code>
    #                     </b> - The number
    #             of HTTP 4XX response codes generated by the target instances. This does not include any
    #             response codes generated by the load balancer.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that
    #               <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return
    #               <code>1</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>HTTPCode_Instance_5XX_Count</code>
    #                     </b> - The number
    #             of HTTP 5XX response codes generated by the target instances. This does not include any
    #             response codes generated by the load balancer.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that
    #               <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return
    #               <code>1</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>HTTPCode_LB_4XX_Count</code>
    #                     </b> - The number of
    #             HTTP 4XX client error codes that originated from the load balancer. Client errors are
    #             generated when requests are malformed or incomplete. These requests were not received by
    #             the target instance. This count does not include response codes generated by the target
    #             instances.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that
    #               <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return
    #               <code>1</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>HTTPCode_LB_5XX_Count</code>
    #                     </b> - The number of
    #             HTTP 5XX server error codes that originated from the load balancer. This does not include
    #             any response codes generated by the target instance. This metric is reported if there are
    #             no healthy instances attached to the load balancer, or if the request rate exceeds the
    #             capacity of the instances (spillover) or the load balancer.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that
    #               <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return
    #               <code>1</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>InstanceResponseTime</code>
    #                     </b> - The time elapsed,
    #             in seconds, after the request leaves the load balancer until a response from the target
    #             instance is received.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Seconds</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>RejectedConnectionCount</code>
    #                     </b> - The number of
    #             connections that were rejected because the load balancer had reached its maximum number of
    #             connections.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>RequestCount</code>
    #                     </b> - The number of requests
    #             processed over IPv4. This count includes only the requests with a response generated by a
    #             target instance of the load balancer.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that
    #               <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return
    #               <code>1</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>UnhealthyHostCount</code>
    #                     </b> - The number of
    #             target instances that are considered unhealthy.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic are <code>Average</code>,
    #               <code>Minimum</code>, and <code>Maximum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute period
    #   <p>The granularity, in seconds, of the returned data points.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>The start time of the period.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the period.</p>
    #   @return [Time]
    # @!attribute unit
    #   <p>The unit for the metric data request. Valid units depend on the metric data being
    #         requested. For the valid units with each available metric, see the <code>metricName</code>
    #         parameter.</p>
    #   @return [String]
    # @!attribute statistics
    #   <p>The statistic for the metric.</p>
    #            <p>The following statistics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Minimum</code> - The lowest value observed during the specified period. Use this
    #             value to determine low volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Maximum</code> - The highest value observed during the specified period. Use
    #             this value to determine high volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> - All values submitted for the matching metric added together. You
    #             can use this statistic to determine the total volume of a metric.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> - The value of Sum / SampleCount during the specified period. By
    #             comparing this statistic with the Minimum and Maximum values, you can determine the full
    #             scope of a metric and how close the average use is to the Minimum and Maximum values. This
    #             comparison helps you to know when to increase or decrease your resources.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SampleCount</code> - The count, or number, of data points used for the
    #             statistical calculation.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class GetLoadBalancerMetricDataRequest < Struct.new(
      :load_balancer_name,
      :metric_name,
      :period,
      :start_time,
      :end_time,
      :unit,
      :statistics,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_name
    #   <p>The name of the metric returned.</p>
    #   @return [String]
    # @!attribute metric_data
    #   <p>An array of objects that describe the metric data returned.</p>
    #   @return [Array<Types::MetricDatapoint>]
    class GetLoadBalancerMetricDataResult < Struct.new(
      :metric_name,
      :metric_data,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    class GetLoadBalancerRequest < Struct.new(
      :load_balancer_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer
    #   <p>An object containing information about your load balancer.</p>
    #   @return [Types::LoadBalancer]
    class GetLoadBalancerResult < Struct.new(
      :load_balancer,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_name
    #   <p>The name of the load balancer you associated with your SSL/TLS certificate.</p>
    #   @return [String]
    class GetLoadBalancerTlsCertificatesRequest < Struct.new(
      :load_balancer_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tls_certificates
    #   <p>An array of LoadBalancerTlsCertificate objects describing your SSL/TLS
    #         certificates.</p>
    #   @return [Array<Types::LoadBalancerTlsCertificate>]
    class GetLoadBalancerTlsCertificatesResult < Struct.new(
      :tls_certificates,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetLoadBalancerTlsPolicies</code> request.
    #         If your results are paginated, the response will return a next page token that you can specify
    #         as the page token in a subsequent request.</p>
    #   @return [String]
    class GetLoadBalancerTlsPoliciesRequest < Struct.new(
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tls_policies
    #   <p>An array of objects that describe the TLS security policies that are available.</p>
    #   @return [Array<Types::LoadBalancerTlsPolicy>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetLoadBalancerTlsPolicies</code>
    #         request and specify the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetLoadBalancerTlsPoliciesResult < Struct.new(
      :tls_policies,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetLoadBalancers</code> request. If your
    #         results are paginated, the response will return a next page token that you can specify as the
    #         page token in a subsequent request.</p>
    #   @return [String]
    class GetLoadBalancersRequest < Struct.new(
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancers
    #   <p>An array of LoadBalancer objects describing your load balancers.</p>
    #   @return [Array<Types::LoadBalancer>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetLoadBalancers</code> request and
    #         specify the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetLoadBalancersResult < Struct.new(
      :load_balancers,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>A GUID used to identify the operation.</p>
    #   @return [String]
    class GetOperationRequest < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Types::Operation]
    class GetOperationResult < Struct.new(
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_name
    #   <p>The name of the resource for which you are requesting information.</p>
    #   @return [String]
    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetOperationsForResource</code> request. If
    #         your results are paginated, the response will return a next page token that you can specify as
    #         the page token in a subsequent request.</p>
    #   @return [String]
    class GetOperationsForResourceRequest < Struct.new(
      :resource_name,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    # @!attribute next_page_count
    #   <p>(Discontinued) Returns the number of pages of results that remain.</p>
    #            <note>
    #               <p>In releases prior to June 12, 2017, this parameter returned <code>null</code> by the
    #           API. It is now discontinued, and the API returns the <code>next page token</code> parameter
    #           instead.</p>
    #            </note>
    #   @deprecated
    #   @return [String]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetOperationsForResource</code>
    #         request and specify the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetOperationsForResourceResult < Struct.new(
      :operations,
      :next_page_count,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetOperations</code> request. If your
    #         results are paginated, the response will return a next page token that you can specify as the
    #         page token in a subsequent request.</p>
    #   @return [String]
    class GetOperationsRequest < Struct.new(
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetOperations</code> request and
    #         specify the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetOperationsResult < Struct.new(
      :operations,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute include_availability_zones
    #   <p>A Boolean value indicating whether to also include Availability Zones in your get regions
    #         request. Availability Zones are indicated with a letter: <code>us-east-2a</code>.</p>
    #   @return [Boolean]
    # @!attribute include_relational_database_availability_zones
    #   <p>A Boolean value indicating whether to also include Availability Zones for databases in
    #         your get regions request. Availability Zones are indicated with a letter
    #           (<code>us-east-2a</code>).</p>
    #   @return [Boolean]
    class GetRegionsRequest < Struct.new(
      :include_availability_zones,
      :include_relational_database_availability_zones,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute regions
    #   <p>An array of key-value pairs containing information about your get regions request.</p>
    #   @return [Array<Types::Region>]
    class GetRegionsResult < Struct.new(
      :regions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetRelationalDatabaseBlueprints</code>
    #         request. If your results are paginated, the response will return a next page token that you
    #         can specify as the page token in a subsequent request.</p>
    #   @return [String]
    class GetRelationalDatabaseBlueprintsRequest < Struct.new(
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute blueprints
    #   <p>An object describing the result of your get relational database blueprints request.</p>
    #   @return [Array<Types::RelationalDatabaseBlueprint>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another
    #           <code>GetRelationalDatabaseBlueprints</code> request and specify the next page token using
    #         the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetRelationalDatabaseBlueprintsResult < Struct.new(
      :blueprints,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetRelationalDatabaseBundles</code> request.
    #         If your results are paginated, the response will return a next page token that you can specify
    #         as the page token in a subsequent request.</p>
    #   @return [String]
    # @!attribute include_inactive
    #   <p>A Boolean value that indicates whether to include inactive (unavailable) bundles in the
    #         response of your request.</p>
    #   @return [Boolean]
    class GetRelationalDatabaseBundlesRequest < Struct.new(
      :page_token,
      :include_inactive,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bundles
    #   <p>An object describing the result of your get relational database bundles request.</p>
    #   @return [Array<Types::RelationalDatabaseBundle>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetRelationalDatabaseBundles</code>
    #         request and specify the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetRelationalDatabaseBundlesResult < Struct.new(
      :bundles,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database_name
    #   <p>The name of the database from which to get events.</p>
    #   @return [String]
    # @!attribute duration_in_minutes
    #   <p>The number of minutes in the past from which to retrieve events. For example, to get all
    #         events from the past 2 hours, enter 120.</p>
    #            <p>Default: <code>60</code>
    #            </p>
    #            <p>The minimum is 1 and the maximum is 14 days (20160 minutes).</p>
    #   @return [Integer]
    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetRelationalDatabaseEvents</code> request.
    #         If your results are paginated, the response will return a next page token that you can specify
    #         as the page token in a subsequent request.</p>
    #   @return [String]
    class GetRelationalDatabaseEventsRequest < Struct.new(
      :relational_database_name,
      :duration_in_minutes,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database_events
    #   <p>An object describing the result of your get relational database events request.</p>
    #   @return [Array<Types::RelationalDatabaseEvent>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetRelationalDatabaseEvents</code>
    #         request and specify the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetRelationalDatabaseEventsResult < Struct.new(
      :relational_database_events,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database_name
    #   <p>The name of your database for which to get log events.</p>
    #   @return [String]
    # @!attribute log_stream_name
    #   <p>The name of the log stream.</p>
    #            <p>Use the <code>get relational database log streams</code> operation to get a list of
    #         available log streams.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start of the time interval from which to get log events.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, then you
    #             input <code>1538424000</code> as the start time.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time interval from which to get log events.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you wish to use an end time of October 1, 2018, at 8 PM UTC, then you
    #             input <code>1538424000</code> as the end time.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute start_from_head
    #   <p>Parameter to specify if the log should start from head or tail. If <code>true</code> is
    #         specified, the log event starts from the head of the log. If <code>false</code> is specified,
    #         the log event starts from the tail of the log.</p>
    #            <note>
    #               <p>For PostgreSQL, the default value of <code>false</code> is the only option
    #           available.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute page_token
    #   <p>The token to advance to the next or previous page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetRelationalDatabaseLogEvents</code>
    #         request. If your results are paginated, the response will return a next forward token and/or
    #         next backward token that you can specify as the page token in a subsequent request.</p>
    #   @return [String]
    class GetRelationalDatabaseLogEventsRequest < Struct.new(
      :relational_database_name,
      :log_stream_name,
      :start_time,
      :end_time,
      :start_from_head,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_log_events
    #   <p>An object describing the result of your get relational database log events request.</p>
    #   @return [Array<Types::LogEvent>]
    # @!attribute next_backward_token
    #   <p>A token used for advancing to the previous page of results from your get relational
    #         database log events request.</p>
    #   @return [String]
    # @!attribute next_forward_token
    #   <p>A token used for advancing to the next page of results from your get relational database
    #         log events request.</p>
    #   @return [String]
    class GetRelationalDatabaseLogEventsResult < Struct.new(
      :resource_log_events,
      :next_backward_token,
      :next_forward_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database_name
    #   <p>The name of your database for which to get log streams.</p>
    #   @return [String]
    class GetRelationalDatabaseLogStreamsRequest < Struct.new(
      :relational_database_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute log_streams
    #   <p>An object describing the result of your get relational database log streams
    #         request.</p>
    #   @return [Array<String>]
    class GetRelationalDatabaseLogStreamsResult < Struct.new(
      :log_streams,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database_name
    #   <p>The name of your database for which to get the master user password.</p>
    #   @return [String]
    # @!attribute password_version
    #   <p>The password version to return.</p>
    #            <p>Specifying <code>CURRENT</code> or <code>PREVIOUS</code> returns the current or previous
    #         passwords respectively. Specifying <code>PENDING</code> returns the newest version of the
    #         password that will rotate to <code>CURRENT</code>. After the <code>PENDING</code> password
    #         rotates to <code>CURRENT</code>, the <code>PENDING</code> password is no longer
    #         available.</p>
    #            <p>Default: <code>CURRENT</code>
    #            </p>
    #   @return [String]
    class GetRelationalDatabaseMasterUserPasswordRequest < Struct.new(
      :relational_database_name,
      :password_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute master_user_password
    #   <p>The master user password for the <code>password version</code> specified.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the specified version of the master user password was created.</p>
    #   @return [Time]
    class GetRelationalDatabaseMasterUserPasswordResult < Struct.new(
      :master_user_password,
      :created_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database_name
    #   <p>The name of your database from which to get metric data.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The metric for which you want to return information.</p>
    #            <p>Valid relational database metric names are listed below, along with the most useful
    #           <code>statistics</code> to include in your request, and the published <code>unit</code>
    #         value. All relational database metric data is available in 1-minute (60 seconds)
    #         granularity.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>CPUUtilization</code>
    #                     </b> - The percentage of CPU
    #             utilization currently in use on the database.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistics are <code>Maximum</code> and
    #               <code>Average</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Percent</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>DatabaseConnections</code>
    #                     </b> - The number of
    #             database connections in use.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistics are <code>Maximum</code> and
    #               <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>DiskQueueDepth</code>
    #                     </b> - The number of
    #             outstanding IOs (read/write requests) that are waiting to access the disk.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Count</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>FreeStorageSpace</code>
    #                     </b> - The amount of
    #             available storage space.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Bytes</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NetworkReceiveThroughput</code>
    #                     </b> - The incoming
    #             (Receive) network traffic on the database, including both customer database traffic and
    #             AWS traffic used for monitoring and replication.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Bytes/Second</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NetworkTransmitThroughput</code>
    #                     </b> - The outgoing
    #             (Transmit) network traffic on the database, including both customer database traffic and
    #             AWS traffic used for monitoring and replication.</p>
    #                  <p>
    #                     <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p>
    #                  <p>
    #                     <code>Unit</code>: The published unit is <code>Bytes/Second</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute period
    #   <p>The granularity, in seconds, of the returned data points.</p>
    #            <p>All relational database metric data is available in 1-minute (60 seconds)
    #         granularity.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>The start of the time interval from which to get metric data.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, then you
    #             input <code>1538424000</code> as the start time.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time interval from which to get metric data.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Specified in the Unix time format.</p>
    #                  <p>For example, if you wish to use an end time of October 1, 2018, at 8 PM UTC, then you
    #             input <code>1538424000</code> as the end time.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute unit
    #   <p>The unit for the metric data request. Valid units depend on the metric data being
    #         requested. For the valid units with each available metric, see the <code>metricName</code>
    #         parameter.</p>
    #   @return [String]
    # @!attribute statistics
    #   <p>The statistic for the metric.</p>
    #            <p>The following statistics are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Minimum</code> - The lowest value observed during the specified period. Use this
    #             value to determine low volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Maximum</code> - The highest value observed during the specified period. Use
    #             this value to determine high volumes of activity for your application.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> - All values submitted for the matching metric added together. You
    #             can use this statistic to determine the total volume of a metric.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> - The value of Sum / SampleCount during the specified period. By
    #             comparing this statistic with the Minimum and Maximum values, you can determine the full
    #             scope of a metric and how close the average use is to the Minimum and Maximum values. This
    #             comparison helps you to know when to increase or decrease your resources.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SampleCount</code> - The count, or number, of data points used for the
    #             statistical calculation.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class GetRelationalDatabaseMetricDataRequest < Struct.new(
      :relational_database_name,
      :metric_name,
      :period,
      :start_time,
      :end_time,
      :unit,
      :statistics,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute metric_name
    #   <p>The name of the metric returned.</p>
    #   @return [String]
    # @!attribute metric_data
    #   <p>An array of objects that describe the metric data returned.</p>
    #   @return [Array<Types::MetricDatapoint>]
    class GetRelationalDatabaseMetricDataResult < Struct.new(
      :metric_name,
      :metric_data,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database_name
    #   <p>The name of your database for which to get parameters.</p>
    #   @return [String]
    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetRelationalDatabaseParameters</code>
    #         request. If your results are paginated, the response will return a next page token that you
    #         can specify as the page token in a subsequent request.</p>
    #   @return [String]
    class GetRelationalDatabaseParametersRequest < Struct.new(
      :relational_database_name,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute parameters
    #   <p>An object describing the result of your get relational database parameters request.</p>
    #   @return [Array<Types::RelationalDatabaseParameter>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another
    #           <code>GetRelationalDatabaseParameters</code> request and specify the next page token using
    #         the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetRelationalDatabaseParametersResult < Struct.new(
      :parameters,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database_name
    #   <p>The name of the database that you are looking up.</p>
    #   @return [String]
    class GetRelationalDatabaseRequest < Struct.new(
      :relational_database_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database
    #   <p>An object describing the specified database.</p>
    #   @return [Types::RelationalDatabase]
    class GetRelationalDatabaseResult < Struct.new(
      :relational_database,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database_snapshot_name
    #   <p>The name of the database snapshot for which to get information.</p>
    #   @return [String]
    class GetRelationalDatabaseSnapshotRequest < Struct.new(
      :relational_database_snapshot_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database_snapshot
    #   <p>An object describing the specified database snapshot.</p>
    #   @return [Types::RelationalDatabaseSnapshot]
    class GetRelationalDatabaseSnapshotResult < Struct.new(
      :relational_database_snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetRelationalDatabaseSnapshots</code>
    #         request. If your results are paginated, the response will return a next page token that you
    #         can specify as the page token in a subsequent request.</p>
    #   @return [String]
    class GetRelationalDatabaseSnapshotsRequest < Struct.new(
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database_snapshots
    #   <p>An object describing the result of your get relational database snapshots request.</p>
    #   @return [Array<Types::RelationalDatabaseSnapshot>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another
    #           <code>GetRelationalDatabaseSnapshots</code> request and specify the next page token using
    #         the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetRelationalDatabaseSnapshotsResult < Struct.new(
      :relational_database_snapshots,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetRelationalDatabases</code> request. If
    #         your results are paginated, the response will return a next page token that you can specify as
    #         the page token in a subsequent request.</p>
    #   @return [String]
    class GetRelationalDatabasesRequest < Struct.new(
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_databases
    #   <p>An object describing the result of your get relational databases request.</p>
    #   @return [Array<Types::RelationalDatabase>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetRelationalDatabases</code>
    #         request and specify the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetRelationalDatabasesResult < Struct.new(
      :relational_databases,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_name
    #   <p>The name of the resource for which you are requesting information.</p>
    #   @return [String]
    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetSetupHistory</code> request. If your
    #         results are paginated, the response will return a next page token that you can specify as the
    #         page token in a subsequent request.</p>
    #   @return [String]
    class GetSetupHistoryRequest < Struct.new(
      :resource_name,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute setup_history
    #   <p>The historical information that's returned.</p>
    #   @return [Array<Types::SetupHistory>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetSetupHistory</code> request and
    #         specify the next page token using the pageToken parameter.</p>
    #   @return [String]
    class GetSetupHistoryResult < Struct.new(
      :setup_history,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute static_ip_name
    #   <p>The name of the static IP in Lightsail.</p>
    #   @return [String]
    class GetStaticIpRequest < Struct.new(
      :static_ip_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute static_ip
    #   <p>An array of key-value pairs containing information about the requested static IP.</p>
    #   @return [Types::StaticIp]
    class GetStaticIpResult < Struct.new(
      :static_ip,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>To get a page token, perform an initial <code>GetStaticIps</code> request. If your results
    #         are paginated, the response will return a next page token that you can specify as the page
    #         token in a subsequent request.</p>
    #   @return [String]
    class GetStaticIpsRequest < Struct.new(
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute static_ips
    #   <p>An array of key-value pairs containing information about your get static IPs
    #         request.</p>
    #   @return [Array<Types::StaticIp>]
    # @!attribute next_page_token
    #   <p>The token to advance to the next page of results from your request.</p>
    #            <p>A next page token is not returned if there are no more results to display.</p>
    #            <p>To get the next page of results, perform another <code>GetStaticIps</code> request and
    #         specify the next page token using the <code>pageToken</code> parameter.</p>
    #   @return [String]
    class GetStaticIpsResult < Struct.new(
      :static_ips,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the request headers that a Lightsail distribution bases caching on.</p>
    #          <p>For the headers that you specify, your distribution caches separate versions of the
    #       specified content based on the header values in viewer requests. For example, suppose viewer
    #       requests for <code>logo.jpg</code> contain a custom <code>product</code> header that has a
    #       value of either <code>acme</code> or <code>apex</code>, and you configure your distribution to
    #       cache your content based on values in the <code>product</code> header. Your distribution
    #       forwards the <code>product</code> header to the origin and caches the response from the origin
    #       once for each header value.
    #       </p>
    # @!attribute option
    #   <p>The headers that you want your distribution to forward to your origin and base caching
    #         on.</p>
    #            <p>You can configure your distribution to do one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>all</code>
    #                     </b> - Forward all headers to your
    #             origin.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>none</code>
    #                     </b> - Forward only the default
    #             headers.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>allow-list</code>
    #                     </b> - Forward only the headers
    #             you specify using the <code>headersAllowList</code> parameter.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute headers_allow_list
    #   <p>The specific headers to forward to your distribution's origin.</p>
    #   @return [Array<String>]
    class HeaderObject < Struct.new(
      :option,
      :headers_allow_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the public SSH host keys or the RDP certificate.</p>
    # @!attribute algorithm
    #   <p>The SSH host key algorithm or the RDP certificate format.</p>
    #            <p>For SSH host keys, the algorithm may be <code>ssh-rsa</code>,
    #           <code>ecdsa-sha2-nistp256</code>, <code>ssh-ed25519</code>, etc. For RDP certificates, the
    #         algorithm is always <code>x509-cert</code>.</p>
    #   @return [String]
    # @!attribute public_key
    #   <p>The public SSH host key or the RDP certificate.</p>
    #   @return [String]
    # @!attribute witnessed_at
    #   <p>The time that the SSH host key or RDP certificate was recorded by Lightsail.</p>
    #   @return [Time]
    # @!attribute fingerprint_sha1
    #   <p>The SHA-1 fingerprint of the returned SSH host key or RDP certificate.</p>
    #            <ul>
    #               <li>
    #                  <p>Example of an SHA-1 SSH fingerprint:</p>
    #                  <p>
    #                     <code>SHA1:1CHH6FaAaXjtFOsR/t83vf91SR0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Example of an SHA-1 RDP fingerprint:</p>
    #                  <p>
    #                     <code>af:34:51:fe:09:f0:e0:da:b8:4e:56:ca:60:c2:10:ff:38:06:db:45</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute fingerprint_sha256
    #   <p>The SHA-256 fingerprint of the returned SSH host key or RDP certificate.</p>
    #            <ul>
    #               <li>
    #                  <p>Example of an SHA-256 SSH fingerprint:</p>
    #                  <p>
    #                     <code>SHA256:KTsMnRBh1IhD17HpdfsbzeGA4jOijm5tyXsMjKVbB8o</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Example of an SHA-256 RDP fingerprint:</p>
    #                  <p>
    #                     <code>03:9b:36:9f:4b:de:4e:61:70:fc:7c:c9:78:e7:d2:1a:1c:25:a8:0c:91:f6:7c:e4:d6:a0:85:c8:b4:53:99:68</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute not_valid_before
    #   <p>The returned RDP certificate is valid after this point in time.</p>
    #            <p>This value is listed only for RDP certificates.</p>
    #   @return [Time]
    # @!attribute not_valid_after
    #   <p>The returned RDP certificate is not valid after this point in time.</p>
    #            <p>This value is listed only for RDP certificates.</p>
    #   @return [Time]
    class HostKeyAttributes < Struct.new(
      :algorithm,
      :public_key,
      :witnessed_at,
      :fingerprint_sha1,
      :fingerprint_sha256,
      :not_valid_before,
      :not_valid_after,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_pair_name
    #   <p>The name of the key pair for which you want to import the public key.</p>
    #   @return [String]
    # @!attribute public_key_base64
    #   <p>A base64-encoded public key of the <code>ssh-rsa</code> type.</p>
    #   @return [String]
    class ImportKeyPairRequest < Struct.new(
      :key_pair_name,
      :public_key_base64,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Types::Operation]
    class ImportKeyPairResult < Struct.new(
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the origin resource of an Amazon Lightsail content delivery network (CDN)
    #       distribution.</p>
    #          <p>An origin can be a Lightsail instance, bucket, container service, or load balancer. A
    #       distribution pulls content from an origin, caches it, and serves it to viewers via a worldwide
    #       network of edge servers.</p>
    # @!attribute name
    #   <p>The name of the origin resource.</p>
    #   @return [String]
    # @!attribute region_name
    #   <p>The AWS Region name of the origin resource.</p>
    #   @return [String]
    # @!attribute protocol_policy
    #   <p>The protocol that your Amazon Lightsail distribution uses when establishing a connection
    #         with your origin to pull content.</p>
    #   @return [String]
    # @!attribute response_timeout
    #   <p>The amount of time, in seconds, that the distribution waits for a response after
    #         forwarding a request to the origin. The minimum timeout is 1 second, the maximum is 60
    #         seconds, and the default (if you don't specify otherwise) is 30 seconds.</p>
    #   @return [Integer]
    class InputOrigin < Struct.new(
      :name,
      :region_name,
      :protocol_policy,
      :response_timeout,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an instance (a virtual private server).</p>
    # @!attribute name
    #   <p>The name the user gave the instance (<code>Amazon_Linux_2023-1</code>).</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the instance
    #           (<code>arn:aws:lightsail:us-east-2:123456789101:Instance/244ad76f-8aad-4741-809f-12345EXAMPLE</code>).</p>
    #   @return [String]
    # @!attribute support_code
    #   <p>The support code. Include this code in your email to support when you have questions about
    #         an instance or another resource in Lightsail. This code enables our support team to look up
    #         your Lightsail information more easily.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the instance was created (<code>1479734909.17</code>) in Unix time
    #         format.</p>
    #   @return [Time]
    # @!attribute location
    #   <p>The region name and Availability Zone where the instance is located.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute resource_type
    #   <p>The type of resource (usually <code>Instance</code>).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values for the resource. For more information about tags in
    #         Lightsail, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags">Amazon Lightsail Developer Guide</a>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute blueprint_id
    #   <p>The blueprint ID (<code>amazon_linux_2023</code>).</p>
    #   @return [String]
    # @!attribute blueprint_name
    #   <p>The friendly name of the blueprint (<code>Amazon Linux 2023</code>).</p>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The bundle for the instance (<code>micro_x_x</code>).</p>
    #   @return [String]
    # @!attribute add_ons
    #   <p>An array of objects representing the add-ons enabled on the instance.</p>
    #   @return [Array<Types::AddOn>]
    # @!attribute is_static_ip
    #   <p>A Boolean value indicating whether this instance has a static IP assigned to it.</p>
    #   @return [Boolean]
    # @!attribute private_ip_address
    #   <p>The private IP address of the instance.</p>
    #   @return [String]
    # @!attribute public_ip_address
    #   <p>The public IP address of the instance.</p>
    #   @return [String]
    # @!attribute ipv6_addresses
    #   <p>The IPv6 addresses of the instance.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The IP address type of the instance.</p>
    #            <p>The possible values are <code>ipv4</code> for IPv4 only, <code>ipv6</code> for IPv6 only,
    #         and <code>dualstack</code> for IPv4 and IPv6.</p>
    #   @return [String]
    # @!attribute hardware
    #   <p>The size of the vCPU and the amount of RAM for the instance.</p>
    #   @return [Types::InstanceHardware]
    # @!attribute networking
    #   <p>Information about the public ports and monthly data transfer rates for the
    #         instance.</p>
    #   @return [Types::InstanceNetworking]
    # @!attribute state
    #   <p>The status code and the state (<code>running</code>) for the instance.</p>
    #   @return [Types::InstanceState]
    # @!attribute username
    #   <p>The user name for connecting to the instance (<code>ec2-user</code>).</p>
    #   @return [String]
    # @!attribute ssh_key_name
    #   <p>The name of the SSH key being used to connect to the instance
    #           (<code>LightsailDefaultKeyPair</code>).</p>
    #   @return [String]
    # @!attribute metadata_options
    #   <p>The metadata options for the Amazon Lightsail instance.</p>
    #   @return [Types::InstanceMetadataOptions]
    class Instance < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :blueprint_id,
      :blueprint_name,
      :bundle_id,
      :add_ons,
      :is_static_ip,
      :private_ip_address,
      :public_ip_address,
      :ipv6_addresses,
      :ip_address_type,
      :hardware,
      :networking,
      :state,
      :username,
      :ssh_key_name,
      :metadata_options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for gaining temporary access to one of your Amazon Lightsail
    #       instances.</p>
    # @!attribute cert_key
    #   <p>For SSH access, the public key to use when accessing your instance For OpenSSH clients
    #         (command line SSH), you should save this value to <code>tempkey-cert.pub</code>.</p>
    #   @return [String]
    # @!attribute expires_at
    #   <p>For SSH access, the date on which the temporary keys expire.</p>
    #   @return [Time]
    # @!attribute ip_address
    #   <p>The public IP address of the Amazon Lightsail instance.</p>
    #   @return [String]
    # @!attribute ipv6_addresses
    #   <p>The IPv6 address of the Amazon Lightsail instance.</p>
    #   @return [Array<String>]
    # @!attribute password
    #   <p>For RDP access, the password for your Amazon Lightsail instance. Password will be an empty
    #         string if the password for your new instance is not ready yet. When you create an instance, it
    #         can take up to 15 minutes for the instance to be ready.</p>
    #            <note>
    #               <p>If you create an instance using any key pair other than the default
    #             (<code>LightsailDefaultKeyPair</code>), <code>password</code> will always be an empty
    #           string.</p>
    #               <p>If you change the Administrator password on the instance, Lightsail will continue to
    #           return the original password value. When accessing the instance using RDP, you need to
    #           manually enter the Administrator password after changing it from the default.</p>
    #            </note>
    #   @return [String]
    # @!attribute password_data
    #   <p>For a Windows Server-based instance, an object with the data you can use to retrieve your
    #         password. This is only needed if <code>password</code> is empty and the instance is not new
    #         (and therefore the password is not ready yet). When you create an instance, it can take up to
    #         15 minutes for the instance to be ready.</p>
    #   @return [Types::PasswordData]
    # @!attribute private_key
    #   <p>For SSH access, the temporary private key. For OpenSSH clients (command line SSH), you
    #         should save this value to <code>tempkey</code>).</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The protocol for these Amazon Lightsail instance access details.</p>
    #   @return [String]
    # @!attribute instance_name
    #   <p>The name of this Amazon Lightsail instance.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The user name to use when logging in to the Amazon Lightsail instance.</p>
    #   @return [String]
    # @!attribute host_keys
    #   <p>Describes the public SSH host keys or the RDP certificate.</p>
    #   @return [Array<Types::HostKeyAttributes>]
    class InstanceAccessDetails < Struct.new(
      :cert_key,
      :expires_at,
      :ip_address,
      :ipv6_addresses,
      :password,
      :password_data,
      :private_key,
      :protocol,
      :instance_name,
      :username,
      :host_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the Amazon Elastic Compute Cloud instance and related resources to be created using the
    #         <code>create cloud formation stack</code> operation.</p>
    # @!attribute source_name
    #   <p>The name of the export snapshot record, which contains the exported Lightsail instance
    #         snapshot that will be used as the source of the new Amazon EC2 instance.</p>
    #            <p>Use the <code>get export snapshot records</code> operation to get a list of export
    #         snapshot records that you can use to create a CloudFormation stack.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The instance type (<code>t2.micro</code>) to use for the new Amazon EC2 instance.</p>
    #   @return [String]
    # @!attribute port_info_source
    #   <p>The port configuration to use for the new Amazon EC2 instance.</p>
    #            <p>The following configuration options are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DEFAULT</code> - Use the default firewall settings from the Lightsail instance
    #             blueprint. If this is specified, then IPv4 and IPv6 will be configured for the new
    #             instance that is created in Amazon EC2.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE</code> - Use the configured firewall settings from the source
    #             Lightsail instance. If this is specified, the new instance that is created in Amazon EC2 will
    #             be configured to match the configuration of the source Lightsail instance. For example,
    #             if the source instance is configured for dual-stack (IPv4 and IPv6), then IPv4 and IPv6
    #             will be configured for the new instance that is created in Amazon EC2. If the source instance
    #             is configured for IPv4 only, then only IPv4 will be configured for the new instance that
    #             is created in Amazon EC2.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - Use the default Amazon EC2 security group. If this is specified, then
    #             only IPv4 will be configured for the new instance that is created in Amazon EC2.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CLOSED</code> - All ports closed. If this is specified, then only IPv4 will be
    #             configured for the new instance that is created in Amazon EC2.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If you configured <code>lightsail-connect</code> as a <code>cidrListAliases</code> on
    #           your instance, or if you chose to allow the Lightsail browser-based SSH or RDP clients to
    #           connect to your instance, that configuration is not carried over to your new Amazon EC2
    #           instance.</p>
    #            </note>
    #   @return [String]
    # @!attribute user_data
    #   <p>A launch script you can create that configures a server with additional user data. For
    #         example, you might want to run <code>apt-get -y update</code>.</p>
    #            <note>
    #               <p>Depending on the machine image you choose, the command to get software on your instance
    #           varies. Amazon Linux and CentOS use <code>yum</code>, Debian and Ubuntu use
    #             <code>apt-get</code>, and FreeBSD uses <code>pkg</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone for the new Amazon EC2 instance.</p>
    #   @return [String]
    class InstanceEntry < Struct.new(
      :source_name,
      :instance_type,
      :port_info_source,
      :user_data,
      :availability_zone,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the hardware for the instance.</p>
    # @!attribute cpu_count
    #   <p>The number of vCPUs the instance has.</p>
    #   @return [Integer]
    # @!attribute disks
    #   <p>The disks attached to the instance.</p>
    #   @return [Array<Types::Disk>]
    # @!attribute ram_size_in_gb
    #   <p>The amount of RAM in GB on the instance (<code>1.0</code>).</p>
    #   @return [Float]
    class InstanceHardware < Struct.new(
      :cpu_count,
      :disks,
      :ram_size_in_gb,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes information about the health of the instance.</p>
    # @!attribute instance_name
    #   <p>The name of the Lightsail instance for which you are requesting health check
    #         data.</p>
    #   @return [String]
    # @!attribute instance_health
    #   <p>Describes the overall instance health. Valid values are below.</p>
    #   @return [String]
    # @!attribute instance_health_reason
    #   <p>More information about the instance health. If the <code>instanceHealth</code> is
    #           <code>healthy</code>, then an <code>instanceHealthReason</code> value is not
    #         provided.</p>
    #            <p>If <b>
    #                  <code>instanceHealth</code>
    #               </b> is <code>initial</code>,
    #         the <b>
    #                  <code>instanceHealthReason</code>
    #               </b> value can be one of the
    #         following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Lb.RegistrationInProgress</code>
    #                     </b> - The target
    #             instance is in the process of being registered with the load balancer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Lb.InitialHealthChecking</code>
    #                     </b> - The
    #             Lightsail load balancer is still sending the target instance the minimum number of
    #             health checks required to determine its health status.</p>
    #               </li>
    #            </ul>
    #            <p>If <b>
    #                  <code>instanceHealth</code>
    #               </b> is <code>unhealthy</code>,
    #         the <b>
    #                  <code>instanceHealthReason</code>
    #               </b> value can be one of the
    #         following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Instance.ResponseCodeMismatch</code>
    #                     </b> - The
    #             health checks did not return an expected HTTP code.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Instance.Timeout</code>
    #                     </b> - The health check
    #             requests timed out.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Instance.FailedHealthChecks</code>
    #                     </b> - The health
    #             checks failed because the connection to the target instance timed out, the target instance
    #             response was malformed, or the target instance failed the health check for an unknown
    #             reason.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Lb.InternalError</code>
    #                     </b> - The health checks
    #             failed due to an internal error.</p>
    #               </li>
    #            </ul>
    #            <p>If <b>
    #                  <code>instanceHealth</code>
    #               </b> is <code>unused</code>,
    #         the <b>
    #                  <code>instanceHealthReason</code>
    #               </b> value can be one of the
    #         following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Instance.NotRegistered</code>
    #                     </b> - The target
    #             instance is not registered with the target group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Instance.NotInUse</code>
    #                     </b> - The target group is
    #             not used by any load balancer, or the target instance is in an Availability Zone that is
    #             not enabled for its load balancer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Instance.IpUnusable</code>
    #                     </b> - The target IP
    #             address is reserved for use by a Lightsail load balancer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Instance.InvalidState</code>
    #                     </b> - The target is in
    #             the stopped or terminated state.</p>
    #               </li>
    #            </ul>
    #            <p>If <b>
    #                  <code>instanceHealth</code>
    #               </b> is <code>draining</code>,
    #         the <b>
    #                  <code>instanceHealthReason</code>
    #               </b> value can be one of the
    #         following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Instance.DeregistrationInProgress</code>
    #                     </b> - The
    #             target instance is in the process of being deregistered and the deregistration delay
    #             period has not expired.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class InstanceHealthSummary < Struct.new(
      :instance_name,
      :instance_health,
      :instance_health_reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata options for the instance.</p>
    # @!attribute state
    #   <p>The state of the metadata option changes.</p>
    #            <p>The following states are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>pending</code> - The metadata options are being updated. The instance is not yet
    #             ready to process metadata traffic with the new selection.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>applied</code> - The metadata options have been successfully applied to the
    #             instance.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute http_tokens
    #   <p>The state of token usage for your instance metadata requests.</p>
    #            <p>If the state is <code>optional</code>, you can choose whether to retrieve instance
    #         metadata with a signed token header on your request. If you retrieve the IAM role credentials
    #         without a token, the version 1.0 role credentials are returned. If you retrieve the IAM role
    #         credentials by using a valid signed token, the version 2.0 role credentials are
    #         returned.</p>
    #            <p>If the state is <code>required</code>, you must send a signed token header with all
    #         instance metadata retrieval requests. In this state, retrieving the IAM role credential always
    #         returns the version 2.0 credentials. The version 1.0 credentials are not available.</p>
    #            <important>
    #               <p>Not all instance blueprints in Lightsail support version 2.0 credentials.
    #           Use the <code>MetadataNoToken</code> instance metric to track the number of calls to the
    #           instance metadata service that are using version 1.0 credentials. For more information, see
    #             <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-viewing-instance-health-metrics">Viewing instance metrics in Amazon Lightsail</a> in the <i>Amazon Lightsail Developer Guide</i>.</p>
    #            </important>
    #   @return [String]
    # @!attribute http_endpoint
    #   <p>Indicates whether the HTTP metadata endpoint on your instances is enabled or
    #         disabled.</p>
    #            <p>If the value is <code>disabled</code>, you cannot access your instance metadata.</p>
    #   @return [String]
    # @!attribute http_put_response_hop_limit
    #   <p>The desired HTTP PUT response hop limit for instance metadata requests. A larger number
    #         means that the instance metadata requests can travel farther.</p>
    #   @return [Integer]
    # @!attribute http_protocol_ipv6
    #   <p>Indicates whether the IPv6 endpoint for the instance metadata service is enabled or
    #         disabled.</p>
    #   @return [String]
    class InstanceMetadataOptions < Struct.new(
      :state,
      :http_tokens,
      :http_endpoint,
      :http_put_response_hop_limit,
      :http_protocol_ipv6,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes monthly data transfer rates and port information for an instance.</p>
    # @!attribute monthly_transfer
    #   <p>The amount of data in GB allocated for monthly data transfers.</p>
    #   @return [Types::MonthlyTransfer]
    # @!attribute ports
    #   <p>An array of key-value pairs containing information about the ports on the instance.</p>
    #   @return [Array<Types::InstancePortInfo>]
    class InstanceNetworking < Struct.new(
      :monthly_transfer,
      :ports,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes information about ports for an Amazon Lightsail instance.</p>
    # @!attribute from_port
    #   <p>The first port in a range of open ports on an instance.</p>
    #            <p>Allowed ports:</p>
    #            <ul>
    #               <li>
    #                  <p>TCP and UDP - <code>0</code> to <code>65535</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>ICMP - The ICMP type for IPv4 addresses. For example, specify <code>8</code> as the
    #               <code>fromPort</code> (ICMP type), and <code>-1</code> as the <code>toPort</code> (ICMP
    #             code), to enable ICMP Ping. For more information, see <a href="https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol#Control_messages">Control Messages</a> on <i>Wikipedia</i>.</p>
    #               </li>
    #               <li>
    #                  <p>ICMPv6 - The ICMP type for IPv6 addresses. For example, specify <code>128</code> as
    #             the <code>fromPort</code> (ICMPv6 type), and <code>0</code> as <code>toPort</code> (ICMPv6
    #             code). For more information, see <a href="https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol_for_IPv6">Internet
    #               Control Message Protocol for IPv6</a>.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute to_port
    #   <p>The last port in a range of open ports on an instance.</p>
    #            <p>Allowed ports:</p>
    #            <ul>
    #               <li>
    #                  <p>TCP and UDP - <code>0</code> to <code>65535</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>ICMP - The ICMP code for IPv4 addresses. For example, specify <code>8</code> as the
    #               <code>fromPort</code> (ICMP type), and <code>-1</code> as the <code>toPort</code> (ICMP
    #             code), to enable ICMP Ping. For more information, see <a href="https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol#Control_messages">Control Messages</a> on <i>Wikipedia</i>.</p>
    #               </li>
    #               <li>
    #                  <p>ICMPv6 - The ICMP code for IPv6 addresses. For example, specify <code>128</code> as
    #             the <code>fromPort</code> (ICMPv6 type), and <code>0</code> as <code>toPort</code> (ICMPv6
    #             code). For more information, see <a href="https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol_for_IPv6">Internet
    #               Control Message Protocol for IPv6</a>.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The IP protocol name.</p>
    #            <p>The name can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>tcp</code> - Transmission Control Protocol (TCP) provides reliable, ordered, and
    #             error-checked delivery of streamed data between applications running on hosts
    #             communicating by an IP network. If you have an application that doesn't require reliable
    #             data stream service, use UDP instead.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>all</code> - All transport layer protocol types. For more general information,
    #             see <a href="https://en.wikipedia.org/wiki/Transport_layer">Transport layer</a> on
    #               <i>Wikipedia</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>udp</code> - With User Datagram Protocol (UDP), computer applications can send
    #             messages (or datagrams) to other hosts on an Internet Protocol (IP) network. Prior
    #             communications are not required to set up transmission channels or data paths.
    #             Applications that don't require reliable data stream service can use UDP, which provides a
    #             connectionless datagram service that emphasizes reduced latency over reliability. If you
    #             do require reliable data stream service, use TCP instead.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>icmp</code> - Internet Control Message Protocol (ICMP) is used to send error
    #             messages and operational information indicating success or failure when communicating with
    #             an instance. For example, an error is indicated when an instance could not be reached.
    #             When you specify <code>icmp</code> as the <code>protocol</code>, you must specify the ICMP
    #             type using the <code>fromPort</code> parameter, and ICMP code using the
    #               <code>toPort</code> parameter.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>icmp6</code> - Internet Control Message Protocol (ICMP) for IPv6. When you
    #             specify <code>icmp6</code> as the <code>protocol</code>, you must specify the ICMP type
    #             using the <code>fromPort</code> parameter, and ICMP code using the <code>toPort</code>
    #             parameter.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute access_from
    #   <p>The location from which access is allowed. For example, <code>Anywhere (0.0.0.0/0)</code>,
    #         or <code>Custom</code> if a specific IP address or range of IP addresses is allowed.</p>
    #   @return [String]
    # @!attribute access_type
    #   <p>The type of access (<code>Public</code> or <code>Private</code>).</p>
    #   @return [String]
    # @!attribute common_name
    #   <p>The common name of the port information.</p>
    #   @return [String]
    # @!attribute access_direction
    #   <p>The access direction (<code>inbound</code> or <code>outbound</code>).</p>
    #            <note>
    #               <p>Lightsail currently supports only <code>inbound</code> access direction.</p>
    #            </note>
    #   @return [String]
    # @!attribute cidrs
    #   <p>The IPv4 address, or range of IPv4 addresses (in CIDR notation) that are allowed to
    #         connect to an instance through the ports, and the protocol.</p>
    #            <note>
    #               <p>The <code>ipv6Cidrs</code> parameter lists the IPv6 addresses that are allowed to
    #           connect to an instance.</p>
    #            </note>
    #            <p>For more information about CIDR block notation, see <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation">Classless
    #           Inter-Domain Routing</a> on <i>Wikipedia</i>.</p>
    #   @return [Array<String>]
    # @!attribute ipv6_cidrs
    #   <p>The IPv6 address, or range of IPv6 addresses (in CIDR notation) that are allowed to
    #         connect to an instance through the ports, and the protocol. Only devices with an IPv6 address
    #         can connect to an instance through IPv6; otherwise, IPv4 should be used.</p>
    #            <note>
    #               <p>The <code>cidrs</code> parameter lists the IPv4 addresses that are allowed to connect to
    #           an instance.</p>
    #            </note>
    #            <p>For more information about CIDR block notation, see <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation">Classless
    #           Inter-Domain Routing</a> on <i>Wikipedia</i>.</p>
    #   @return [Array<String>]
    # @!attribute cidr_list_aliases
    #   <p>An alias that defines access for a preconfigured range of IP addresses.</p>
    #            <p>The only alias currently supported is <code>lightsail-connect</code>, which allows IP
    #         addresses of the browser-based RDP/SSH client in the Lightsail console to connect to your
    #         instance.</p>
    #   @return [Array<String>]
    class InstancePortInfo < Struct.new(
      :from_port,
      :to_port,
      :protocol,
      :access_from,
      :access_type,
      :common_name,
      :access_direction,
      :cidrs,
      :ipv6_cidrs,
      :cidr_list_aliases,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:from_port] = 0 unless options.key?(:from_port)
        options[:to_port] = 0 unless options.key?(:to_port)
        super
      end
    end

    # <p>Describes open ports on an instance, the IP addresses allowed to connect to the instance
    #       through the ports, and the protocol.</p>
    # @!attribute from_port
    #   <p>The first port in a range of open ports on an instance.</p>
    #            <p>Allowed ports:</p>
    #            <ul>
    #               <li>
    #                  <p>TCP and UDP - <code>0</code> to <code>65535</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>ICMP - The ICMP type for IPv4 addresses. For example, specify <code>8</code> as the
    #               <code>fromPort</code> (ICMP type), and <code>-1</code> as the <code>toPort</code> (ICMP
    #             code), to enable ICMP Ping. For more information, see <a href="https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol#Control_messages">Control Messages</a> on <i>Wikipedia</i>.</p>
    #               </li>
    #               <li>
    #                  <p>ICMPv6 - The ICMP type for IPv6 addresses. For example, specify <code>128</code> as
    #             the <code>fromPort</code> (ICMPv6 type), and <code>0</code> as <code>toPort</code> (ICMPv6
    #             code). For more information, see <a href="https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol_for_IPv6">Internet
    #               Control Message Protocol for IPv6</a>.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute to_port
    #   <p>The last port in a range of open ports on an instance.</p>
    #            <p>Allowed ports:</p>
    #            <ul>
    #               <li>
    #                  <p>TCP and UDP - <code>0</code> to <code>65535</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>ICMP - The ICMP code for IPv4 addresses. For example, specify <code>8</code> as the
    #               <code>fromPort</code> (ICMP type), and <code>-1</code> as the <code>toPort</code> (ICMP
    #             code), to enable ICMP Ping. For more information, see <a href="https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol#Control_messages">Control Messages</a> on <i>Wikipedia</i>.</p>
    #               </li>
    #               <li>
    #                  <p>ICMPv6 - The ICMP code for IPv6 addresses. For example, specify <code>128</code> as
    #             the <code>fromPort</code> (ICMPv6 type), and <code>0</code> as <code>toPort</code> (ICMPv6
    #             code). For more information, see <a href="https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol_for_IPv6">Internet
    #               Control Message Protocol for IPv6</a>.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The IP protocol name.</p>
    #            <p>The name can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>tcp</code> - Transmission Control Protocol (TCP) provides reliable, ordered, and
    #             error-checked delivery of streamed data between applications running on hosts
    #             communicating by an IP network. If you have an application that doesn't require reliable
    #             data stream service, use UDP instead.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>all</code> - All transport layer protocol types. For more general information,
    #             see <a href="https://en.wikipedia.org/wiki/Transport_layer">Transport layer</a> on
    #               <i>Wikipedia</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>udp</code> - With User Datagram Protocol (UDP), computer applications can send
    #             messages (or datagrams) to other hosts on an Internet Protocol (IP) network. Prior
    #             communications are not required to set up transmission channels or data paths.
    #             Applications that don't require reliable data stream service can use UDP, which provides a
    #             connectionless datagram service that emphasizes reduced latency over reliability. If you
    #             do require reliable data stream service, use TCP instead.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>icmp</code> - Internet Control Message Protocol (ICMP) is used to send error
    #             messages and operational information indicating success or failure when communicating with
    #             an instance. For example, an error is indicated when an instance could not be reached.
    #             When you specify <code>icmp</code> as the <code>protocol</code>, you must specify the ICMP
    #             type using the <code>fromPort</code> parameter, and ICMP code using the
    #               <code>toPort</code> parameter.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>icmp6</code> - Internet Control Message Protocol (ICMP) for IPv6. When you
    #             specify <code>icmp6</code> as the <code>protocol</code>, you must specify the ICMP type
    #             using the <code>fromPort</code> parameter, and ICMP code using the <code>toPort</code>
    #             parameter.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute state
    #   <p>Specifies whether the instance port is <code>open</code> or <code>closed</code>.</p>
    #            <note>
    #               <p>The port state for Lightsail instances is always <code>open</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute cidrs
    #   <p>The IPv4 address, or range of IPv4 addresses (in CIDR notation) that are allowed to
    #         connect to an instance through the ports, and the protocol.</p>
    #            <note>
    #               <p>The <code>ipv6Cidrs</code> parameter lists the IPv6 addresses that are allowed to
    #           connect to an instance.</p>
    #            </note>
    #            <p>For more information about CIDR block notation, see <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation">Classless
    #           Inter-Domain Routing</a> on <i>Wikipedia</i>.</p>
    #   @return [Array<String>]
    # @!attribute ipv6_cidrs
    #   <p>The IPv6 address, or range of IPv6 addresses (in CIDR notation) that are allowed to
    #         connect to an instance through the ports, and the protocol. Only devices with an IPv6 address
    #         can connect to an instance through IPv6; otherwise, IPv4 should be used.</p>
    #            <note>
    #               <p>The <code>cidrs</code> parameter lists the IPv4 addresses that are allowed to connect to
    #           an instance.</p>
    #            </note>
    #            <p>For more information about CIDR block notation, see <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation">Classless
    #           Inter-Domain Routing</a> on <i>Wikipedia</i>.</p>
    #   @return [Array<String>]
    # @!attribute cidr_list_aliases
    #   <p>An alias that defines access for a preconfigured range of IP addresses.</p>
    #            <p>The only alias currently supported is <code>lightsail-connect</code>, which allows IP
    #         addresses of the browser-based RDP/SSH client in the Lightsail console to connect to your
    #         instance.</p>
    #   @return [Array<String>]
    class InstancePortState < Struct.new(
      :from_port,
      :to_port,
      :protocol,
      :state,
      :cidrs,
      :ipv6_cidrs,
      :cidr_list_aliases,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:from_port] = 0 unless options.key?(:from_port)
        options[:to_port] = 0 unless options.key?(:to_port)
        super
      end
    end

    # <p>Describes an instance snapshot.</p>
    # @!attribute name
    #   <p>The name of the snapshot.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the snapshot
    #           (<code>arn:aws:lightsail:us-east-2:123456789101:InstanceSnapshot/d23b5706-3322-4d83-81e5-12345EXAMPLE</code>).</p>
    #   @return [String]
    # @!attribute support_code
    #   <p>The support code. Include this code in your email to support when you have questions about
    #         an instance or another resource in Lightsail. This code enables our support team to look up
    #         your Lightsail information more easily.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the snapshot was created (<code>1479907467.024</code>).</p>
    #   @return [Time]
    # @!attribute location
    #   <p>The region name and Availability Zone where you created the snapshot.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute resource_type
    #   <p>The type of resource (usually <code>InstanceSnapshot</code>).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values for the resource. For more information about tags in
    #         Lightsail, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags">Amazon Lightsail Developer Guide</a>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute state
    #   <p>The state the snapshot is in.</p>
    #   @return [String]
    # @!attribute progress
    #   <p>The progress of the snapshot.</p>
    #            <note>
    #               <p>This is populated only for disk snapshots, and is <code>null</code> for instance
    #           snapshots.</p>
    #            </note>
    #   @return [String]
    # @!attribute from_attached_disks
    #   <p>An array of disk objects containing information about all block storage disks.</p>
    #   @return [Array<Types::Disk>]
    # @!attribute from_instance_name
    #   <p>The instance from which the snapshot was created.</p>
    #   @return [String]
    # @!attribute from_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the instance from which the snapshot was created
    #           (<code>arn:aws:lightsail:us-east-2:123456789101:Instance/64b8404c-ccb1-430b-8daf-12345EXAMPLE</code>).</p>
    #   @return [String]
    # @!attribute from_blueprint_id
    #   <p>The blueprint ID from which you created the snapshot (<code>amazon_linux_2023</code>). A
    #         blueprint is a virtual private server (or <i>instance</i>) image used to create
    #         instances quickly.</p>
    #   @return [String]
    # @!attribute from_bundle_id
    #   <p>The bundle ID from which you created the snapshot (<code>micro_x_x</code>).</p>
    #   @return [String]
    # @!attribute is_from_auto_snapshot
    #   <p>A Boolean value indicating whether the snapshot was created from an automatic
    #         snapshot.</p>
    #   @return [Boolean]
    # @!attribute size_in_gb
    #   <p>The size in GB of the SSD.</p>
    #   @return [Integer]
    class InstanceSnapshot < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :state,
      :progress,
      :from_attached_disks,
      :from_instance_name,
      :from_instance_arn,
      :from_blueprint_id,
      :from_bundle_id,
      :is_from_auto_snapshot,
      :size_in_gb,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an instance snapshot.</p>
    # @!attribute from_bundle_id
    #   <p>The bundle ID from which the source instance was created (<code>micro_x_x</code>).</p>
    #   @return [String]
    # @!attribute from_blueprint_id
    #   <p>The blueprint ID from which the source instance (<code>amazon_linux_2023</code>).</p>
    #   @return [String]
    # @!attribute from_disk_info
    #   <p>A list of objects describing the disks that were attached to the source instance.</p>
    #   @return [Array<Types::DiskInfo>]
    class InstanceSnapshotInfo < Struct.new(
      :from_bundle_id,
      :from_blueprint_id,
      :from_disk_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the virtual private server (or <i>instance</i>) status.</p>
    # @!attribute code
    #   <p>The status code for the instance.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The state of the instance (<code>running</code> or <code>pending</code>).</p>
    #   @return [String]
    class InstanceState < Struct.new(
      :code,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Lightsail throws this exception when user input does not conform to the validation rules
    #       of an input field.</p>
    #          <note>
    #             <p>Domain and distribution APIs are only available in the N. Virginia
    #           (<code>us-east-1</code>) Amazon Web Services Region. Please set your Amazon Web Services
    #         Region configuration to <code>us-east-1</code> to create, view, or edit these
    #         resources.</p>
    #          </note>
    # @!attribute code
    #   @return [String]
    # @!attribute docs
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute tip
    #   @return [String]
    class InvalidInputException < Struct.new(
      :code,
      :docs,
      :message,
      :tip,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class IsVpcPeeredRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute is_peered
    #   <p>Returns <code>true</code> if the Lightsail VPC is peered; otherwise,
    #         <code>false</code>.</p>
    #   @return [Boolean]
    class IsVpcPeeredResult < Struct.new(
      :is_peered,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an SSH key pair.</p>
    # @!attribute name
    #   <p>The friendly name of the SSH key pair.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the key pair
    #           (<code>arn:aws:lightsail:us-east-2:123456789101:KeyPair/05859e3d-331d-48ba-9034-12345EXAMPLE</code>).</p>
    #   @return [String]
    # @!attribute support_code
    #   <p>The support code. Include this code in your email to support when you have questions about
    #         an instance or another resource in Lightsail. This code enables our support team to look up
    #         your Lightsail information more easily.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the key pair was created (<code>1479816991.349</code>).</p>
    #   @return [Time]
    # @!attribute location
    #   <p>The region name and Availability Zone where the key pair was created.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute resource_type
    #   <p>The resource type (usually <code>KeyPair</code>).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values for the resource. For more information about tags in
    #         Lightsail, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags">Amazon Lightsail Developer Guide</a>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute fingerprint
    #   <p>The RSA fingerprint of the key pair.</p>
    #   @return [String]
    class KeyPair < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :fingerprint,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon Lightsail content delivery network (CDN) distribution.</p>
    # @!attribute name
    #   <p>The name of the distribution.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the distribution.</p>
    #   @return [String]
    # @!attribute support_code
    #   <p>The support code. Include this code in your email to support when you have questions about
    #         your Lightsail distribution. This code enables our support team to look up your Lightsail
    #         information more easily.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the distribution was created.</p>
    #   @return [Time]
    # @!attribute location
    #   <p>An object that describes the location of the distribution, such as the Amazon Web Services
    #         Region and Availability Zone.</p>
    #            <note>
    #               <p>Lightsail distributions are global resources that can reference an origin in any
    #             Amazon Web Services Region, and distribute its content globally. However, all distributions
    #           are located in the <code>us-east-1</code> Region.</p>
    #            </note>
    #   @return [Types::ResourceLocation]
    # @!attribute resource_type
    #   <p>The Lightsail resource type (<code>Distribution</code>).</p>
    #   @return [String]
    # @!attribute alternative_domain_names
    #   <p>The alternate domain names of the distribution.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the distribution.</p>
    #   @return [String]
    # @!attribute is_enabled
    #   <p>Indicates whether the distribution is enabled.</p>
    #   @return [Boolean]
    # @!attribute domain_name
    #   <p>The domain name of the distribution.</p>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The ID of the bundle currently applied to the distribution.</p>
    #   @return [String]
    # @!attribute certificate_name
    #   <p>The name of the SSL/TLS certificate attached to the distribution, if any.</p>
    #   @return [String]
    # @!attribute origin
    #   <p>An object that describes the origin resource of the distribution, such as a Lightsail
    #         instance, bucket, or load balancer.</p>
    #            <p>The distribution pulls, caches, and serves content from the origin.</p>
    #   @return [Types::Origin]
    # @!attribute origin_public_dns
    #   <p>The public DNS of the origin.</p>
    #   @return [String]
    # @!attribute default_cache_behavior
    #   <p>An object that describes the default cache behavior of the distribution.</p>
    #   @return [Types::CacheBehavior]
    # @!attribute cache_behavior_settings
    #   <p>An object that describes the cache behavior settings of the distribution.</p>
    #   @return [Types::CacheSettings]
    # @!attribute cache_behaviors
    #   <p>An array of objects that describe the per-path cache behavior of the distribution.</p>
    #   @return [Array<Types::CacheBehaviorPerPath>]
    # @!attribute able_to_update_bundle
    #   <p>Indicates whether the bundle that is currently applied to your distribution, specified
    #         using the <code>distributionName</code> parameter, can be changed to another bundle.</p>
    #            <p>Use the <code>UpdateDistributionBundle</code> action to change your distribution's
    #         bundle.</p>
    #   @return [Boolean]
    # @!attribute ip_address_type
    #   <p>The IP address type of the distribution.</p>
    #            <p>The possible values are <code>ipv4</code> for IPv4 only, and <code>dualstack</code> for
    #         IPv4 and IPv6.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values for the resource. For more information about tags in
    #         Lightsail, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags">Amazon Lightsail Developer Guide</a>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute viewer_minimum_tls_protocol_version
    #   <p>The minimum TLS protocol version that the distribution can use to communicate with
    #         viewers.</p>
    #   @return [String]
    class LightsailDistribution < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :alternative_domain_names,
      :status,
      :is_enabled,
      :domain_name,
      :bundle_id,
      :certificate_name,
      :origin,
      :origin_public_dns,
      :default_cache_behavior,
      :cache_behavior_settings,
      :cache_behaviors,
      :able_to_update_bundle,
      :ip_address_type,
      :tags,
      :viewer_minimum_tls_protocol_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a load balancer.</p>
    # @!attribute name
    #   <p>The name of the load balancer (<code>my-load-balancer</code>).</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #   @return [String]
    # @!attribute support_code
    #   <p>The support code. Include this code in your email to support when you have questions about
    #         your Lightsail load balancer. This code enables our support team to look up your Lightsail
    #         information more easily.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date when your load balancer was created.</p>
    #   @return [Time]
    # @!attribute location
    #   <p>The AWS Region where your load balancer was created (<code>us-east-2a</code>). Lightsail
    #         automatically creates your load balancer across Availability Zones.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute resource_type
    #   <p>The resource type (<code>LoadBalancer</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values for the resource. For more information about tags in
    #         Lightsail, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags">Amazon Lightsail Developer Guide</a>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute dns_name
    #   <p>The DNS name of your Lightsail load balancer.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The status of your load balancer. Valid values are below.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The protocol you have enabled for your load balancer. Valid values are below.</p>
    #            <p>You can't just have <code>HTTP_HTTPS</code>, but you can have just
    #         <code>HTTP</code>.</p>
    #   @return [String]
    # @!attribute public_ports
    #   <p>An array of public port settings for your load balancer. For HTTP, use port 80. For HTTPS,
    #         use port 443.</p>
    #   @return [Array<Integer>]
    # @!attribute health_check_path
    #   <p>The path you specified to perform your health checks. If no path is specified, the load
    #         balancer tries to make a request to the default (root) page.</p>
    #   @return [String]
    # @!attribute instance_port
    #   <p>The port where the load balancer will direct traffic to your Lightsail instances. For
    #         HTTP traffic, it's port 80. For HTTPS traffic, it's port 443.</p>
    #   @return [Integer]
    # @!attribute instance_health_summary
    #   <p>An array of InstanceHealthSummary objects describing the health of the load
    #         balancer.</p>
    #   @return [Array<Types::InstanceHealthSummary>]
    # @!attribute tls_certificate_summaries
    #   <p>An array of LoadBalancerTlsCertificateSummary objects that provide additional information
    #         about the SSL/TLS certificates. For example, if <code>true</code>, the certificate is attached
    #         to the load balancer.</p>
    #   @return [Array<Types::LoadBalancerTlsCertificateSummary>]
    # @!attribute configuration_options
    #   <p>A string to string map of the configuration options for your load balancer. Valid values
    #         are listed below.</p>
    #   @return [Hash<String, String>]
    # @!attribute ip_address_type
    #   <p>The IP address type of the load balancer.</p>
    #            <p>The possible values are <code>ipv4</code> for IPv4 only, <code>ipv6</code> for IPv6 only,
    #         and <code>dualstack</code> for IPv4 and IPv6.</p>
    #   @return [String]
    # @!attribute https_redirection_enabled
    #   <p>A Boolean value that indicates whether HTTPS redirection is enabled for the load
    #         balancer.</p>
    #   @return [Boolean]
    # @!attribute tls_policy_name
    #   <p>The name of the TLS security policy for the load balancer.</p>
    #   @return [String]
    class LoadBalancer < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :dns_name,
      :state,
      :protocol,
      :public_ports,
      :health_check_path,
      :instance_port,
      :instance_health_summary,
      :tls_certificate_summaries,
      :configuration_options,
      :ip_address_type,
      :https_redirection_enabled,
      :tls_policy_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a load balancer SSL/TLS certificate.</p>
    #          <p>TLS is just an updated, more secure version of Secure Socket Layer (SSL).</p>
    # @!attribute name
    #   <p>The name of the SSL/TLS certificate (<code>my-certificate</code>).</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the SSL/TLS certificate.</p>
    #   @return [String]
    # @!attribute support_code
    #   <p>The support code. Include this code in your email to support when you have questions about
    #         your Lightsail load balancer or SSL/TLS certificate. This code enables our support team to
    #         look up your Lightsail information more easily.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when you created your SSL/TLS certificate.</p>
    #   @return [Time]
    # @!attribute location
    #   <p>The Amazon Web Services Region and Availability Zone where you created your
    #         certificate.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute resource_type
    #   <p>The resource type (<code>LoadBalancerTlsCertificate</code>).</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Instance</code>
    #                     </b> - A Lightsail instance (a
    #             virtual private server)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>StaticIp</code>
    #                     </b> - A static IP address</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>KeyPair</code>
    #                     </b> - The key pair used to connect
    #             to a Lightsail instance</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>InstanceSnapshot</code>
    #                     </b> - A Lightsail
    #             instance snapshot</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Domain</code>
    #                     </b> - A DNS zone</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>PeeredVpc</code>
    #                     </b> - A peered VPC</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>LoadBalancer</code>
    #                     </b> - A Lightsail load
    #             balancer</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>LoadBalancerTlsCertificate</code>
    #                     </b> - An SSL/TLS
    #             certificate associated with a Lightsail load balancer</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Disk</code>
    #                     </b> - A Lightsail block storage
    #             disk</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>DiskSnapshot</code>
    #                     </b> - A block storage disk
    #             snapshot</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values for the resource. For more information about tags in
    #         Lightsail, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags">Amazon Lightsail Developer Guide</a>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute load_balancer_name
    #   <p>The load balancer name where your SSL/TLS certificate is attached.</p>
    #   @return [String]
    # @!attribute is_attached
    #   <p>When <code>true</code>, the SSL/TLS certificate is attached to the Lightsail load
    #         balancer.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>The validation status of the SSL/TLS certificate. Valid values are below.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name for your SSL/TLS certificate.</p>
    #   @return [String]
    # @!attribute domain_validation_records
    #   <p>An array of LoadBalancerTlsCertificateDomainValidationRecord objects describing the
    #         records.</p>
    #   @return [Array<Types::LoadBalancerTlsCertificateDomainValidationRecord>]
    # @!attribute failure_reason
    #   <p>The validation failure reason, if any, of the certificate.</p>
    #            <p>The following failure reasons are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NO_AVAILABLE_CONTACTS</code>
    #                     </b> - This failure
    #             applies to email validation, which is not available for Lightsail certificates.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>ADDITIONAL_VERIFICATION_REQUIRED</code>
    #                     </b> -
    #             Lightsail requires additional information to process this certificate request. This can
    #             happen as a fraud-protection measure, such as when the domain ranks within the Alexa top
    #             1000 websites. To provide the required information, use the <a href="https://console.aws.amazon.com/support/home">AWS Support Center</a> to contact
    #             AWS Support.</p>
    #                  <note>
    #                     <p>You cannot request a certificate for Amazon-owned domain names such as those ending
    #               in amazonaws.com, cloudfront.net, or elasticbeanstalk.com.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>DOMAIN_NOT_ALLOWED</code>
    #                     </b> - One or more of the
    #             domain names in the certificate request was reported as an unsafe domain by <a href="https://www.virustotal.com/gui/home/url">VirusTotal</a>. To correct the
    #             problem, search for your domain name on the <a href="https://www.virustotal.com/gui/home/url">VirusTotal</a> website. If your domain
    #             is reported as suspicious, see <a href="https://developers.google.com/web/fundamentals/security/hacked">Google Help for
    #               Hacked Websites</a> to learn what you can do.</p>
    #                  <p>If you believe that the result is a false positive, notify the organization that is
    #             reporting the domain. VirusTotal is an aggregate of several antivirus and URL scanners and
    #             cannot remove your domain from a block list itself. After you correct the problem and the
    #             VirusTotal registry has been updated, request a new certificate.</p>
    #                  <p>If you see this error and your domain is not included in the VirusTotal list, visit
    #             the <a href="https://console.aws.amazon.com/support/home">AWS Support Center</a>
    #             and create a case.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>INVALID_PUBLIC_DOMAIN</code>
    #                     </b> - One or more of
    #             the domain names in the certificate request is not valid. Typically, this is because a
    #             domain name in the request is not a valid top-level domain. Try to request a certificate
    #             again, correcting any spelling errors or typos that were in the failed request, and ensure
    #             that all domain names in the request are for valid top-level domains. For example, you
    #             cannot request a certificate for <code>example.invalidpublicdomain</code> because
    #               <code>invalidpublicdomain</code> is not a valid top-level domain.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>OTHER</code>
    #                     </b> - Typically, this failure occurs
    #             when there is a typographical error in one or more of the domain names in the certificate
    #             request. Try to request a certificate again, correcting any spelling errors or typos that
    #             were in the failed request. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute issued_at
    #   <p>The time when the SSL/TLS certificate was issued.</p>
    #   @return [Time]
    # @!attribute issuer
    #   <p>The issuer of the certificate.</p>
    #   @return [String]
    # @!attribute key_algorithm
    #   <p>The algorithm used to generate the key pair (the public and private key).</p>
    #   @return [String]
    # @!attribute not_after
    #   <p>The timestamp when the SSL/TLS certificate expires.</p>
    #   @return [Time]
    # @!attribute not_before
    #   <p>The timestamp when the SSL/TLS certificate is first valid.</p>
    #   @return [Time]
    # @!attribute renewal_summary
    #   <p>An object that describes the status of the certificate renewal managed by
    #         Lightsail.</p>
    #   @return [Types::LoadBalancerTlsCertificateRenewalSummary]
    # @!attribute revocation_reason
    #   <p>The reason the certificate was revoked. This value is present only when the certificate
    #         status is <code>REVOKED</code>.</p>
    #   @return [String]
    # @!attribute revoked_at
    #   <p>The timestamp when the certificate was revoked. This value is present only when the
    #         certificate status is <code>REVOKED</code>.</p>
    #   @return [Time]
    # @!attribute serial
    #   <p>The serial number of the certificate.</p>
    #   @return [String]
    # @!attribute signature_algorithm
    #   <p>The algorithm that was used to sign the certificate.</p>
    #   @return [String]
    # @!attribute subject
    #   <p>The name of the entity that is associated with the public key contained in the
    #         certificate.</p>
    #   @return [String]
    # @!attribute subject_alternative_names
    #   <p>An array of strings that specify the alternate domains (<code>example2.com</code>) and
    #         subdomains (<code>blog.example.com</code>) for the certificate.</p>
    #   @return [Array<String>]
    class LoadBalancerTlsCertificate < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :load_balancer_name,
      :is_attached,
      :status,
      :domain_name,
      :domain_validation_records,
      :failure_reason,
      :issued_at,
      :issuer,
      :key_algorithm,
      :not_after,
      :not_before,
      :renewal_summary,
      :revocation_reason,
      :revoked_at,
      :serial,
      :signature_algorithm,
      :subject,
      :subject_alternative_names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that describes the state of the canonical name (CNAME) records that are
    #       automatically added by Lightsail to the DNS of the domain to validate domain
    #       ownership.</p>
    # @!attribute code
    #   <p>The status code for the automated DNS record creation.</p>
    #            <p>Following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code> - The validation records were successfully added.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STARTED</code> - The automatic DNS record creation has started.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The validation record addition failed.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>The message that describes the reason for the status code.</p>
    #   @return [String]
    class LoadBalancerTlsCertificateDnsRecordCreationState < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the domain names on an SSL/TLS certificate that you will use to
    #       validate domain ownership.</p>
    # @!attribute domain_name
    #   <p>The fully qualified domain name in the certificate request.</p>
    #   @return [String]
    # @!attribute validation_status
    #   <p>The status of the domain validation. Valid values are listed below.</p>
    #   @return [String]
    class LoadBalancerTlsCertificateDomainValidationOption < Struct.new(
      :domain_name,
      :validation_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the validation record of each domain name in the SSL/TLS certificate.</p>
    # @!attribute name
    #   <p>A fully qualified domain name in the certificate. For example,
    #         <code>example.com</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of validation record. For example, <code>CNAME</code> for domain
    #         validation.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value for that type.</p>
    #   @return [String]
    # @!attribute validation_status
    #   <p>The validation status. Valid values are listed below.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name against which your SSL/TLS certificate was validated.</p>
    #   @return [String]
    # @!attribute dns_record_creation_state
    #   <p>An object that describes the state of the canonical name (CNAME) records that are
    #         automatically added by Lightsail to the DNS of a domain to validate domain
    #         ownership.</p>
    #   @return [Types::LoadBalancerTlsCertificateDnsRecordCreationState]
    class LoadBalancerTlsCertificateDomainValidationRecord < Struct.new(
      :name,
      :type,
      :value,
      :validation_status,
      :domain_name,
      :dns_record_creation_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the status of Lightsail's managed renewal for the
    #       certificate.</p>
    #          <p>The renewal status of the certificate.</p>
    #          <p>The following renewal status are possible:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>
    #                      <code>PendingAutoRenewal</code>
    #                   </b> - Lightsail is
    #           attempting to automatically validate the domain names in the certificate. No further
    #           action is required. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>
    #                      <code>PendingValidation</code>
    #                   </b> - Lightsail couldn't
    #           automatically validate one or more domain names in the certificate. You must take action
    #           to validate these domain names or the certificate won't be renewed. If you used DNS
    #           validation, check to make sure your certificate's domain validation records exist in your
    #           domain's DNS, and that your certificate remains in use.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>
    #                      <code>Success</code>
    #                   </b> - All domain names in the
    #           certificate are validated, and Lightsail renewed the certificate. No further action is
    #           required. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>
    #                      <code>Failed</code>
    #                   </b> - One or more domain names were
    #           not validated before the certificate expired, and Lightsail did not renew the
    #           certificate. You can request a new certificate using the <code>CreateCertificate</code>
    #           action.</p>
    #             </li>
    #          </ul>
    # @!attribute renewal_status
    #   <p>The renewal status of the certificate.</p>
    #            <p>The following renewal status are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>PendingAutoRenewal</code>
    #                     </b> - Lightsail is
    #             attempting to automatically validate the domain names of the certificate. No further
    #             action is required. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>PendingValidation</code>
    #                     </b> - Lightsail couldn't
    #             automatically validate one or more domain names of the certificate. You must take action
    #             to validate these domain names or the certificate won't be renewed. Check to make sure
    #             your certificate's domain validation records exist in your domain's DNS, and that your
    #             certificate remains in use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Success</code>
    #                     </b> - All domain names in the
    #             certificate are validated, and Lightsail renewed the certificate. No further action is
    #             required. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Failed</code>
    #                     </b> - One or more domain names were
    #             not validated before the certificate expired, and Lightsail did not renew the
    #             certificate. You can request a new certificate using the <code>CreateCertificate</code>
    #             action.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute domain_validation_options
    #   <p>Contains information about the validation of each domain name in the certificate, as it
    #         pertains to Lightsail's managed renewal. This is different from the initial validation that
    #         occurs as a result of the RequestCertificate request.</p>
    #   @return [Array<Types::LoadBalancerTlsCertificateDomainValidationOption>]
    class LoadBalancerTlsCertificateRenewalSummary < Struct.new(
      :renewal_status,
      :domain_validation_options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of SSL/TLS certificate metadata.</p>
    # @!attribute name
    #   <p>The name of the SSL/TLS certificate.</p>
    #   @return [String]
    # @!attribute is_attached
    #   <p>When <code>true</code>, the SSL/TLS certificate is attached to the Lightsail load
    #         balancer.</p>
    #   @return [Boolean]
    class LoadBalancerTlsCertificateSummary < Struct.new(
      :name,
      :is_attached,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the TLS security policies that are available for Lightsail load
    #       balancers.</p>
    #          <p>For more information about load balancer TLS security policies, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-configure-load-balancer-tls-security-policy">Configuring TLS security policies on your Amazon Lightsail load
    #         balancers</a> in the <i>Amazon Lightsail Developer
    #       Guide</i>.</p>
    # @!attribute name
    #   <p>The name of the TLS security policy.</p>
    #   @return [String]
    # @!attribute is_default
    #   <p>A Boolean value that indicates whether the TLS security policy is the default.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>The description of the TLS security policy.</p>
    #   @return [String]
    # @!attribute protocols
    #   <p>The protocols used in a given TLS security policy.</p>
    #   @return [Array<String>]
    # @!attribute ciphers
    #   <p>The ciphers used by the TLS security policy.</p>
    #            <p>The ciphers are listed in order of preference.</p>
    #   @return [Array<String>]
    class LoadBalancerTlsPolicy < Struct.new(
      :name,
      :is_default,
      :description,
      :protocols,
      :ciphers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a database log event.</p>
    # @!attribute created_at
    #   <p>The timestamp when the database log event was created.</p>
    #   @return [Time]
    # @!attribute message
    #   <p>The message of the database log event.</p>
    #   @return [String]
    class LogEvent < Struct.new(
      :created_at,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the metric data point.</p>
    # @!attribute average
    #   <p>The average.</p>
    #   @return [Float]
    # @!attribute maximum
    #   <p>The maximum.</p>
    #   @return [Float]
    # @!attribute minimum
    #   <p>The minimum.</p>
    #   @return [Float]
    # @!attribute sample_count
    #   <p>The sample count.</p>
    #   @return [Float]
    # @!attribute sum
    #   <p>The sum.</p>
    #   @return [Float]
    # @!attribute timestamp
    #   <p>The timestamp (<code>1479816991.349</code>).</p>
    #   @return [Time]
    # @!attribute unit
    #   <p>The unit. </p>
    #   @return [String]
    class MetricDatapoint < Struct.new(
      :average,
      :maximum,
      :minimum,
      :sample_count,
      :sum,
      :timestamp,
      :unit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes resource being monitored by an alarm.</p>
    #          <p>An alarm is a way to monitor your Amazon Lightsail resource metrics. For more information,
    #       see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-alarms">Alarms
    #         in Amazon Lightsail</a>.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource being monitored.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Lightsail resource being monitored.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The Lightsail resource type of the resource being monitored.</p>
    #            <p>Instances, load balancers, and relational databases are the only Lightsail resources
    #         that can currently be monitored by alarms.</p>
    #   @return [String]
    class MonitoredResourceInfo < Struct.new(
      :arn,
      :name,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the monthly data transfer in and out of your virtual private server (or
    #         <i>instance</i>).</p>
    # @!attribute gb_per_month_allocated
    #   <p>The amount allocated per month (in GB).</p>
    #   @return [Integer]
    class MonthlyTransfer < Struct.new(
      :gb_per_month_allocated,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the state of the name server records update made by Amazon Lightsail
    #       to an Amazon Route 53 registered domain.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/understanding-dns-in-amazon-lightsail">DNS in Amazon Lightsail</a> in the <i>Amazon Lightsail
    #         Developer Guide</i>.</p>
    # @!attribute code
    #   <p>The status code for the name servers update.</p>
    #            <p>Following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code> - The name server records were successfully updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - The name server record update is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The name server record update failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STARTED</code> - The automatic name server record update started.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>The message that describes the reason for the status code.</p>
    #   @return [String]
    class NameServersUpdateState < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Lightsail throws this exception when it cannot find a resource.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute docs
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute tip
    #   @return [String]
    class NotFoundException < Struct.new(
      :code,
      :docs,
      :message,
      :tip,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute port_info
    #   <p>An object to describe the ports to open for the specified instance.</p>
    #   @return [Types::PortInfo]
    # @!attribute instance_name
    #   <p>The name of the instance for which to open ports.</p>
    #   @return [String]
    class OpenInstancePublicPortsRequest < Struct.new(
      :port_info,
      :instance_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Types::Operation]
    class OpenInstancePublicPortsResult < Struct.new(
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the API operation.</p>
    # @!attribute id
    #   <p>The ID of the operation.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The resource name.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the operation was initialized (<code>1479816991.349</code>).</p>
    #   @return [Time]
    # @!attribute location
    #   <p>The Amazon Web Services Region and Availability Zone.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute is_terminal
    #   <p>A Boolean value indicating whether the operation is terminal.</p>
    #   @return [Boolean]
    # @!attribute operation_details
    #   <p>Details about the operation (<code>Debian-1GB-Ohio-1</code>).</p>
    #   @return [String]
    # @!attribute operation_type
    #   <p>The type of operation. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the operation. </p>
    #   @return [String]
    # @!attribute status_changed_at
    #   <p>The timestamp when the status was changed (<code>1479816991.349</code>).</p>
    #   @return [Time]
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_details
    #   <p>The error details.</p>
    #   @return [String]
    class Operation < Struct.new(
      :id,
      :resource_name,
      :resource_type,
      :created_at,
      :location,
      :is_terminal,
      :operation_details,
      :operation_type,
      :status,
      :status_changed_at,
      :error_code,
      :error_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Lightsail throws this exception when an operation fails to execute.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute docs
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute tip
    #   @return [String]
    class OperationFailureException < Struct.new(
      :code,
      :docs,
      :message,
      :tip,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the origin resource of an Amazon Lightsail content delivery network (CDN)
    #       distribution.</p>
    #          <p>An origin can be a Lightsail instance, bucket, or load balancer. A distribution pulls
    #       content from an origin, caches it, and serves it to viewers via a worldwide network of edge
    #       servers.</p>
    # @!attribute name
    #   <p>The name of the origin resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type of the origin resource (<i>Instance</i>).</p>
    #   @return [String]
    # @!attribute region_name
    #   <p>The AWS Region name of the origin resource.</p>
    #   @return [String]
    # @!attribute protocol_policy
    #   <p>The protocol that your Amazon Lightsail distribution uses when establishing a connection
    #         with your origin to pull content.</p>
    #   @return [String]
    # @!attribute response_timeout
    #   <p>The amount of time, in seconds, that the distribution waits for a response after
    #         forwarding a request to the origin. The minimum timeout is 1 second, the maximum is 60
    #         seconds, and the default (if you don't specify otherwise) is 30 seconds.</p>
    #   @return [Integer]
    class Origin < Struct.new(
      :name,
      :resource_type,
      :region_name,
      :protocol_policy,
      :response_timeout,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The password data for the Windows Server-based instance, including the ciphertext and the
    #       key pair name.</p>
    # @!attribute ciphertext
    #   <p>The encrypted password. Ciphertext will be an empty string if access to your new instance
    #         is not ready yet. When you create an instance, it can take up to 15 minutes for the instance
    #         to be ready.</p>
    #            <note>
    #               <p>If you use the default key pair (<code>LightsailDefaultKeyPair</code>), the decrypted
    #           password will be available in the password field.</p>
    #               <p>If you are using a custom key pair, you need to use your own means of decryption.</p>
    #               <p>If you change the Administrator password on the instance, Lightsail will continue to
    #           return the original ciphertext value. When accessing the instance using RDP, you need to
    #           manually enter the Administrator password after changing it from the default.</p>
    #            </note>
    #   @return [String]
    # @!attribute key_pair_name
    #   <p>The name of the key pair that you used when creating your instance. If no key pair name
    #         was specified when creating the instance, Lightsail uses the default key pair
    #           (<code>LightsailDefaultKeyPair</code>).</p>
    #            <p>If you are using a custom key pair, you need to use your own means of decrypting your
    #         password using the <code>ciphertext</code>. Lightsail creates the ciphertext by encrypting
    #         your password with the public key part of this key pair.</p>
    #   @return [String]
    class PasswordData < Struct.new(
      :ciphertext,
      :key_pair_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class PeerVpcRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Types::Operation]
    class PeerVpcResult < Struct.new(
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a pending database maintenance action.</p>
    # @!attribute action
    #   <p>The type of pending database maintenance action.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Additional detail about the pending database maintenance action.</p>
    #   @return [String]
    # @!attribute current_apply_date
    #   <p>The effective date of the pending database maintenance action.</p>
    #   @return [Time]
    class PendingMaintenanceAction < Struct.new(
      :action,
      :description,
      :current_apply_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a pending database value modification.</p>
    # @!attribute master_user_password
    #   <p>The password for the master user of the database.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The database engine version.</p>
    #   @return [String]
    # @!attribute backup_retention_enabled
    #   <p>A Boolean value indicating whether automated backup retention is enabled.</p>
    #   @return [Boolean]
    class PendingModifiedRelationalDatabaseValues < Struct.new(
      :master_user_password,
      :engine_version,
      :backup_retention_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes ports to open on an instance, the IP addresses allowed to connect to the
    #       instance through the ports, and the protocol.</p>
    # @!attribute from_port
    #   <p>The first port in a range of open ports on an instance.</p>
    #            <p>Allowed ports:</p>
    #            <ul>
    #               <li>
    #                  <p>TCP and UDP - <code>0</code> to <code>65535</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>ICMP - The ICMP type for IPv4 addresses. For example, specify <code>8</code> as the
    #               <code>fromPort</code> (ICMP type), and <code>-1</code> as the <code>toPort</code> (ICMP
    #             code), to enable ICMP Ping. For more information, see <a href="https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol#Control_messages">Control Messages</a> on <i>Wikipedia</i>.</p>
    #               </li>
    #               <li>
    #                  <p>ICMPv6 - The ICMP type for IPv6 addresses. For example, specify <code>128</code> as
    #             the <code>fromPort</code> (ICMPv6 type), and <code>0</code> as <code>toPort</code> (ICMPv6
    #             code). For more information, see <a href="https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol_for_IPv6">Internet
    #               Control Message Protocol for IPv6</a>.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute to_port
    #   <p>The last port in a range of open ports on an instance.</p>
    #            <p>Allowed ports:</p>
    #            <ul>
    #               <li>
    #                  <p>TCP and UDP - <code>0</code> to <code>65535</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>ICMP - The ICMP code for IPv4 addresses. For example, specify <code>8</code> as the
    #               <code>fromPort</code> (ICMP type), and <code>-1</code> as the <code>toPort</code> (ICMP
    #             code), to enable ICMP Ping. For more information, see <a href="https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol#Control_messages">Control Messages</a> on <i>Wikipedia</i>.</p>
    #               </li>
    #               <li>
    #                  <p>ICMPv6 - The ICMP code for IPv6 addresses. For example, specify <code>128</code> as
    #             the <code>fromPort</code> (ICMPv6 type), and <code>0</code> as <code>toPort</code> (ICMPv6
    #             code). For more information, see <a href="https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol_for_IPv6">Internet
    #               Control Message Protocol for IPv6</a>.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The IP protocol name.</p>
    #            <p>The name can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>tcp</code> - Transmission Control Protocol (TCP) provides reliable, ordered, and
    #             error-checked delivery of streamed data between applications running on hosts
    #             communicating by an IP network. If you have an application that doesn't require reliable
    #             data stream service, use UDP instead.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>all</code> - All transport layer protocol types. For more general information,
    #             see <a href="https://en.wikipedia.org/wiki/Transport_layer">Transport layer</a> on
    #               <i>Wikipedia</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>udp</code> - With User Datagram Protocol (UDP), computer applications can send
    #             messages (or datagrams) to other hosts on an Internet Protocol (IP) network. Prior
    #             communications are not required to set up transmission channels or data paths.
    #             Applications that don't require reliable data stream service can use UDP, which provides a
    #             connectionless datagram service that emphasizes reduced latency over reliability. If you
    #             do require reliable data stream service, use TCP instead.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>icmp</code> - Internet Control Message Protocol (ICMP) is used to send error
    #             messages and operational information indicating success or failure when communicating with
    #             an instance. For example, an error is indicated when an instance could not be reached.
    #             When you specify <code>icmp</code> as the <code>protocol</code>, you must specify the ICMP
    #             type using the <code>fromPort</code> parameter, and ICMP code using the
    #               <code>toPort</code> parameter.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>icmp6</code> - Internet Control Message Protocol (ICMP) for IPv6. When you
    #             specify <code>icmp6</code> as the <code>protocol</code>, you must specify the ICMP type
    #             using the <code>fromPort</code> parameter, and ICMP code using the <code>toPort</code>
    #             parameter.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute cidrs
    #   <p>The IPv4 address, or range of IPv4 addresses (in CIDR notation) that are allowed to
    #         connect to an instance through the ports, and the protocol.</p>
    #            <note>
    #               <p>The <code>ipv6Cidrs</code> parameter lists the IPv6 addresses that are allowed to
    #           connect to an instance.</p>
    #            </note>
    #            <p>Examples:</p>
    #            <ul>
    #               <li>
    #                  <p>To allow the IP address <code>192.0.2.44</code>, specify <code>192.0.2.44</code> or
    #               <code>192.0.2.44/32</code>. </p>
    #               </li>
    #               <li>
    #                  <p>To allow the IP addresses <code>192.0.2.0</code> to <code>192.0.2.255</code>, specify
    #               <code>192.0.2.0/24</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about CIDR block notation, see <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation">Classless
    #           Inter-Domain Routing</a> on <i>Wikipedia</i>.</p>
    #   @return [Array<String>]
    # @!attribute ipv6_cidrs
    #   <p>The IPv6 address, or range of IPv6 addresses (in CIDR notation) that are allowed to
    #         connect to an instance through the ports, and the protocol. Only devices with an IPv6 address
    #         can connect to an instance through IPv6; otherwise, IPv4 should be used.</p>
    #            <note>
    #               <p>The <code>cidrs</code> parameter lists the IPv4 addresses that are allowed to connect to
    #           an instance.</p>
    #            </note>
    #            <p>For more information about CIDR block notation, see <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation">Classless
    #           Inter-Domain Routing</a> on <i>Wikipedia</i>.</p>
    #   @return [Array<String>]
    # @!attribute cidr_list_aliases
    #   <p>An alias that defines access for a preconfigured range of IP addresses.</p>
    #            <p>The only alias currently supported is <code>lightsail-connect</code>, which allows IP
    #         addresses of the browser-based RDP/SSH client in the Lightsail console to connect to your
    #         instance.</p>
    #   @return [Array<String>]
    class PortInfo < Struct.new(
      :from_port,
      :to_port,
      :protocol,
      :cidrs,
      :ipv6_cidrs,
      :cidr_list_aliases,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:from_port] = 0 unless options.key?(:from_port)
        options[:to_port] = 0 unless options.key?(:to_port)
        super
      end
    end

    # <p>Describes the configuration for an Amazon Lightsail container service to
    #       access private container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private repositories.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-container-service-ecr-private-repo-access">Configuring access to an Amazon ECR private repository for an Amazon Lightsail container service</a> in the <i>Amazon Lightsail Developer Guide</i>.</p>
    # @!attribute ecr_image_puller_role
    #   <p>An object that describes the activation status of the role that you can use to grant a
    #           Lightsail container service access to Amazon ECR private
    #         repositories. If the role is activated, the Amazon Resource Name (ARN) of the role is also
    #         listed.</p>
    #   @return [Types::ContainerServiceECRImagePullerRole]
    class PrivateRegistryAccess < Struct.new(
      :ecr_image_puller_role,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a request to configure an Amazon Lightsail container service to
    #       access private container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private repositories.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-container-service-ecr-private-repo-access">Configuring access to an Amazon ECR private repository for an Amazon Lightsail container service</a> in the <i>Amazon Lightsail Developer Guide</i>.</p>
    # @!attribute ecr_image_puller_role
    #   <p>An object to describe a request to activate or deactivate the role that you can use to
    #         grant an Amazon Lightsail container service access to Amazon Elastic Container Registry
    #           (Amazon ECR) private repositories.</p>
    #   @return [Types::ContainerServiceECRImagePullerRoleRequest]
    class PrivateRegistryAccessRequest < Struct.new(
      :ecr_image_puller_role,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute alarm_name
    #   <p>The name for the alarm. Specify the name of an existing alarm to update, and overwrite the
    #         previous configuration of the alarm.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The name of the metric to associate with the alarm.</p>
    #            <p>You can configure up to two alarms per metric.</p>
    #            <p>The following metrics are available for each resource type:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Instances</b>: <code>BurstCapacityPercentage</code>,
    #               <code>BurstCapacityTime</code>, <code>CPUUtilization</code>, <code>NetworkIn</code>,
    #               <code>NetworkOut</code>, <code>StatusCheckFailed</code>,
    #               <code>StatusCheckFailed_Instance</code>, and
    #             <code>StatusCheckFailed_System</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Load balancers</b>:
    #               <code>ClientTLSNegotiationErrorCount</code>, <code>HealthyHostCount</code>,
    #               <code>UnhealthyHostCount</code>, <code>HTTPCode_LB_4XX_Count</code>,
    #               <code>HTTPCode_LB_5XX_Count</code>, <code>HTTPCode_Instance_2XX_Count</code>,
    #               <code>HTTPCode_Instance_3XX_Count</code>, <code>HTTPCode_Instance_4XX_Count</code>,
    #               <code>HTTPCode_Instance_5XX_Count</code>, <code>InstanceResponseTime</code>,
    #               <code>RejectedConnectionCount</code>, and <code>RequestCount</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Relational databases</b>: <code>CPUUtilization</code>,
    #               <code>DatabaseConnections</code>, <code>DiskQueueDepth</code>,
    #               <code>FreeStorageSpace</code>, <code>NetworkReceiveThroughput</code>, and
    #               <code>NetworkTransmitThroughput</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about these metrics, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-resource-health-metrics#available-metrics">Metrics available in Lightsail</a>.</p>
    #   @return [String]
    # @!attribute monitored_resource_name
    #   <p>The name of the Lightsail resource that will be monitored.</p>
    #            <p>Instances, load balancers, and relational databases are the only Lightsail resources
    #         that can currently be monitored by alarms.</p>
    #   @return [String]
    # @!attribute comparison_operator
    #   <p>The arithmetic operation to use when comparing the specified statistic to the threshold.
    #         The specified statistic value is used as the first operand.</p>
    #   @return [String]
    # @!attribute threshold
    #   <p>The value against which the specified statistic is compared.</p>
    #   @return [Float]
    # @!attribute evaluation_periods
    #   <p>The number of most recent periods over which data is compared to the specified threshold.
    #         If you are setting an "M out of N" alarm, this value (<code>evaluationPeriods</code>) is the
    #         N.</p>
    #            <p>If you are setting an alarm that requires that a number of consecutive data points be
    #         breaching to trigger the alarm, this value specifies the rolling period of time in which data
    #         points are evaluated.</p>
    #            <p>Each evaluation period is five minutes long. For example, specify an evaluation period of
    #         24 to evaluate a metric over a rolling period of two hours.</p>
    #            <p>You can specify a minimum valuation period of 1 (5 minutes), and a maximum evaluation
    #         period of 288 (24 hours).</p>
    #   @return [Integer]
    # @!attribute datapoints_to_alarm
    #   <p>The number of data points that must be not within the specified threshold to trigger the
    #         alarm. If you are setting an "M out of N" alarm, this value (<code>datapointsToAlarm</code>)
    #         is the M.</p>
    #   @return [Integer]
    # @!attribute treat_missing_data
    #   <p>Sets how this alarm will handle missing data points.</p>
    #            <p>An alarm can treat missing data in the following ways:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>breaching</code> - Assume the missing data is not within the threshold. Missing
    #             data counts towards the number of times the metric is not within the threshold.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>notBreaching</code> - Assume the missing data is within the threshold. Missing
    #             data does not count towards the number of times the metric is not within the
    #             threshold.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ignore</code> - Ignore the missing data. Maintains the current alarm
    #             state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>missing</code> - Missing data is treated as missing.</p>
    #               </li>
    #            </ul>
    #            <p>If <code>treatMissingData</code> is not specified, the default behavior of
    #           <code>missing</code> is used.</p>
    #   @return [String]
    # @!attribute contact_protocols
    #   <p>The contact protocols to use for the alarm, such as <code>Email</code>, <code>SMS</code>
    #         (text messaging), or both.</p>
    #            <p>A notification is sent via the specified contact protocol if notifications are enabled for
    #         the alarm, and when the alarm is triggered.</p>
    #            <p>A notification is not sent if a contact protocol is not specified, if the specified
    #         contact protocol is not configured in the Amazon Web Services Region, or if notifications are
    #         not enabled for the alarm using the <code>notificationEnabled</code> paramater.</p>
    #            <p>Use the <code>CreateContactMethod</code> action to configure a contact protocol in an
    #           Amazon Web Services Region.</p>
    #   @return [Array<String>]
    # @!attribute notification_triggers
    #   <p>The alarm states that trigger a notification.</p>
    #            <p>An alarm has the following possible states:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALARM</code> - The metric is outside of the defined threshold.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSUFFICIENT_DATA</code> - The alarm has just started, the metric is not
    #             available, or not enough data is available for the metric to determine the alarm
    #             state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OK</code> - The metric is within the defined threshold.</p>
    #               </li>
    #            </ul>
    #            <p>When you specify a notification trigger, the <code>ALARM</code> state must be specified.
    #         The <code>INSUFFICIENT_DATA</code> and <code>OK</code> states can be specified in addition to
    #         the <code>ALARM</code> state.</p>
    #            <ul>
    #               <li>
    #                  <p>If you specify <code>OK</code> as an alarm trigger, a notification is sent when the
    #             alarm switches from an <code>ALARM</code> or <code>INSUFFICIENT_DATA</code> alarm state to
    #             an <code>OK</code> state. This can be thought of as an <i>all clear</i>
    #             alarm notification.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify <code>INSUFFICIENT_DATA</code> as the alarm trigger, a notification is
    #             sent when the alarm switches from an <code>OK</code> or <code>ALARM</code> alarm state to
    #             an <code>INSUFFICIENT_DATA</code> state.</p>
    #               </li>
    #            </ul>
    #            <p>The notification trigger defaults to <code>ALARM</code> if you don't specify this
    #         parameter.</p>
    #   @return [Array<String>]
    # @!attribute notification_enabled
    #   <p>Indicates whether the alarm is enabled.</p>
    #            <p>Notifications are enabled by default if you don't specify this parameter.</p>
    #   @return [Boolean]
    class PutAlarmRequest < Struct.new(
      :alarm_name,
      :metric_name,
      :monitored_resource_name,
      :comparison_operator,
      :threshold,
      :evaluation_periods,
      :datapoints_to_alarm,
      :treat_missing_data,
      :contact_protocols,
      :notification_triggers,
      :notification_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class PutAlarmResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute port_infos
    #   <p>An array of objects to describe the ports to open for the specified instance.</p>
    #   @return [Array<Types::PortInfo>]
    # @!attribute instance_name
    #   <p>The name of the instance for which to open ports.</p>
    #   @return [String]
    class PutInstancePublicPortsRequest < Struct.new(
      :port_infos,
      :instance_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Types::Operation]
    class PutInstancePublicPortsResult < Struct.new(
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the query string parameters that an Amazon Lightsail content delivery network
    #       (CDN) distribution to bases caching on.</p>
    #          <p>For the query strings that you specify, your distribution caches separate versions of the
    #       specified content based on the query string values in viewer
    #       requests.</p>
    # @!attribute option
    #   <p>Indicates whether the distribution forwards and caches based on query strings.</p>
    #   @return [Boolean]
    # @!attribute query_strings_allow_list
    #   <p>The specific query strings that the distribution forwards to the origin.</p>
    #            <p>Your distribution will cache content based on the specified query strings.</p>
    #            <p>If the <code>option</code> parameter is true, then your distribution forwards all query
    #         strings, regardless of what you specify using the <code>queryStringsAllowList</code>
    #         parameter.</p>
    #   @return [Array<String>]
    class QueryStringObject < Struct.new(
      :option,
      :query_strings_allow_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the deletion state of an Amazon Route 53 hosted zone for a domain that is
    #       being automatically delegated to an Amazon Lightsail DNS zone.</p>
    # @!attribute code
    #   <p>The status code for the deletion state.</p>
    #            <p>Following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code> - The hosted zone was successfully deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - The hosted zone deletion is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The hosted zone deletion failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STARTED</code> - The hosted zone deletion started.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>The message that describes the reason for the status code.</p>
    #   @return [String]
    class R53HostedZoneDeletionState < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_name
    #   <p>The name of the instance to reboot.</p>
    #   @return [String]
    class RebootInstanceRequest < Struct.new(
      :instance_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class RebootInstanceResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database_name
    #   <p>The name of your database to reboot.</p>
    #   @return [String]
    class RebootRelationalDatabaseRequest < Struct.new(
      :relational_database_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class RebootRelationalDatabaseResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the Amazon Web Services Region.</p>
    # @!attribute continent_code
    #   <p>The continent code (<code>NA</code>, meaning North America).</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Amazon Web Services Region (<code>This region is recommended to
    #           serve users in the eastern United States and eastern Canada</code>).</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name (<code>Ohio</code>).</p>
    #   @return [String]
    # @!attribute name
    #   <p>The region name (<code>us-east-2</code>).</p>
    #   @return [String]
    # @!attribute availability_zones
    #   <p>The Availability Zones. Follows the format <code>us-east-2a</code>
    #         (case-sensitive).</p>
    #   @return [Array<Types::AvailabilityZone>]
    # @!attribute relational_database_availability_zones
    #   <p>The Availability Zones for databases. Follows the format <code>us-east-2a</code>
    #         (case-sensitive).</p>
    #   @return [Array<Types::AvailabilityZone>]
    class Region < Struct.new(
      :continent_code,
      :description,
      :display_name,
      :name,
      :availability_zones,
      :relational_database_availability_zones,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Lightsail throws this exception when an operation is performed on resources in an opt-in
    #       Region that is currently being set up.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute docs
    #   <p>
    #               <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/understanding-regions-and-availability-zones-in-amazon-lightsail.html">Regions
    #         and Availability Zones for Lightsail</a>
    #            </p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute tip
    #   <p>Opt-in Regions typically take a few minutes to finish setting up before you can work with them. Wait a few minutes and try again.</p>
    #   @return [String]
    class RegionSetupInProgressException < Struct.new(
      :code,
      :docs,
      :message,
      :tip,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the container service for which to register a container image.</p>
    #   @return [String]
    # @!attribute label
    #   <p>The label for the container image when it's registered to the container service.</p>
    #            <p>Use a descriptive label that you can use to track the different versions of your
    #         registered container images.</p>
    #            <p>Use the <code>GetContainerImages</code> action to return the container images registered
    #         to a Lightsail container service. The label is the <code><imagelabel></code> portion
    #         of the following image name example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>:container-service-1.<imagelabel>.1</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If the name of your container service is <code>mycontainerservice</code>, and the label
    #         that you specify is <code>mystaticwebsite</code>, then the name of the registered container
    #         image will be <code>:mycontainerservice.mystaticwebsite.1</code>.</p>
    #            <p>The number at the end of these image name examples represents the version of the
    #         registered container image. If you push and register another container image to the same
    #         Lightsail container service, with the same label, then the version number for the new
    #         registered container image will be <code>2</code>. If you push and register another container
    #         image, the version number will be <code>3</code>, and so on.</p>
    #   @return [String]
    # @!attribute digest
    #   <p>The digest of the container image to be registered.</p>
    #   @return [String]
    class RegisterContainerImageRequest < Struct.new(
      :service_name,
      :label,
      :digest,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_image
    #   <p>An object that describes a container image that is registered to a Lightsail container
    #         service</p>
    #   @return [Types::ContainerImage]
    class RegisterContainerImageResult < Struct.new(
      :container_image,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the delegation state of an Amazon Route 53 registered domain to Amazon Lightsail.</p>
    #          <p>When you delegate an Amazon Route 53 registered domain to Lightsail,
    #       you can manage the DNS of the domain using a Lightsail DNS zone. You no longer
    #       use the Route 53 hosted zone to manage the DNS of the domain. To delegate the
    #       domain, Lightsail automatically updates the domain's name servers in Route 53 to the name servers of the Lightsail DNS zone. Then, Lightsail automatically deletes the Route 53 hosted zone for the
    #       domain.</p>
    #          <p>All of the following conditions must be true for automatic domain delegation to be
    #       successful:</p>
    #          <ul>
    #             <li>
    #                <p>The registered domain must be in the same Amazon Web Services account as the Lightsail account making the request.</p>
    #             </li>
    #             <li>
    #                <p>The user or entity making the request must have permission to manage domains in
    #             Route 53.</p>
    #             </li>
    #             <li>
    #                <p>The Route 53 hosted zone for the domain must be empty. It cannot contain DNS
    #           records other than start of authority (SOA) and name server records.</p>
    #             </li>
    #          </ul>
    #          <p>If automatic domain delegation fails, or if you manage the DNS of your domain using a
    #       service other than Route 53, then you must manually add the Lightsail
    #       DNS zone name servers to your domain in order to delegate management of its DNS to Lightsail. For more information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/lightsail-how-to-create-dns-entry">Creating a DNS zone to manage your domain’s records in Amazon Lightsail</a>
    #       in the <i>Amazon Lightsail Developer Guide</i>.</p>
    # @!attribute name_servers_update_state
    #   <p>An object that describes the state of the name server records that are automatically added
    #         to the Route 53 domain by Lightsail.</p>
    #   @return [Types::NameServersUpdateState]
    # @!attribute r53_hosted_zone_deletion_state
    #   <p>Describes the deletion state of an Amazon Route 53 hosted zone for a domain that is
    #         being automatically delegated to an Amazon Lightsail DNS zone.</p>
    #   @return [Types::R53HostedZoneDeletionState]
    class RegisteredDomainDelegationInfo < Struct.new(
      :name_servers_update_state,
      :r53_hosted_zone_deletion_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a database.</p>
    # @!attribute name
    #   <p>The unique name of the database resource in Lightsail.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the database.</p>
    #   @return [String]
    # @!attribute support_code
    #   <p>The support code for the database. Include this code in your email to support when you
    #         have questions about a database in Lightsail. This code enables our support team to look up
    #         your Lightsail information more easily.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the database was created. Formatted in Unix time.</p>
    #   @return [Time]
    # @!attribute location
    #   <p>The Region name and Availability Zone where the database is located.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute resource_type
    #   <p>The Lightsail resource type for the database (for example,
    #           <code>RelationalDatabase</code>).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values for the resource. For more information about tags in
    #         Lightsail, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags">Amazon Lightsail Developer Guide</a>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute relational_database_blueprint_id
    #   <p>The blueprint ID for the database. A blueprint describes the major engine version of a
    #         database.</p>
    #   @return [String]
    # @!attribute relational_database_bundle_id
    #   <p>The bundle ID for the database. A bundle describes the performance specifications for your
    #         database.</p>
    #   @return [String]
    # @!attribute master_database_name
    #   <p>The name of the master database created when the Lightsail database resource is
    #         created.</p>
    #   @return [String]
    # @!attribute hardware
    #   <p>Describes the hardware of the database.</p>
    #   @return [Types::RelationalDatabaseHardware]
    # @!attribute state
    #   <p>Describes the current state of the database.</p>
    #   @return [String]
    # @!attribute secondary_availability_zone
    #   <p>Describes the secondary Availability Zone of a high availability database.</p>
    #            <p>The secondary database is used for failover support of a high availability
    #         database.</p>
    #   @return [String]
    # @!attribute backup_retention_enabled
    #   <p>A Boolean value indicating whether automated backup retention is enabled for the
    #         database.</p>
    #   @return [Boolean]
    # @!attribute pending_modified_values
    #   <p>Describes pending database value modifications.</p>
    #   @return [Types::PendingModifiedRelationalDatabaseValues]
    # @!attribute engine
    #   <p>The database software (for example, <code>MySQL</code>).</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The database engine version (for example, <code>5.7.23</code>).</p>
    #   @return [String]
    # @!attribute latest_restorable_time
    #   <p>The latest point in time to which the database can be restored. Formatted in Unix
    #         time.</p>
    #   @return [Time]
    # @!attribute master_username
    #   <p>The master user name of the database.</p>
    #   @return [String]
    # @!attribute parameter_apply_status
    #   <p>The status of parameter updates for the database.</p>
    #   @return [String]
    # @!attribute preferred_backup_window
    #   <p>The daily time range during which automated backups are created for the database (for
    #         example, <code>16:00-16:30</code>).</p>
    #   @return [String]
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur on the database.</p>
    #            <p>In the format <code>ddd:hh24:mi-ddd:hh24:mi</code>. For example,
    #           <code>Tue:17:00-Tue:17:30</code>.</p>
    #   @return [String]
    # @!attribute publicly_accessible
    #   <p>A Boolean value indicating whether the database is publicly accessible.</p>
    #   @return [Boolean]
    # @!attribute master_endpoint
    #   <p>The master endpoint for the database.</p>
    #   @return [Types::RelationalDatabaseEndpoint]
    # @!attribute pending_maintenance_actions
    #   <p>Describes the pending maintenance actions for the database.</p>
    #   @return [Array<Types::PendingMaintenanceAction>]
    # @!attribute ca_certificate_identifier
    #   <p>The certificate associated with the database.</p>
    #   @return [String]
    class RelationalDatabase < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :relational_database_blueprint_id,
      :relational_database_bundle_id,
      :master_database_name,
      :hardware,
      :state,
      :secondary_availability_zone,
      :backup_retention_enabled,
      :pending_modified_values,
      :engine,
      :engine_version,
      :latest_restorable_time,
      :master_username,
      :parameter_apply_status,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :publicly_accessible,
      :master_endpoint,
      :pending_maintenance_actions,
      :ca_certificate_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a database image, or blueprint. A blueprint describes the major engine version
    #       of a database.</p>
    # @!attribute blueprint_id
    #   <p>The ID for the database blueprint.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The database software of the database blueprint (for example, <code>MySQL</code>).</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The database engine version for the database blueprint (for example,
    #         <code>5.7.23</code>).</p>
    #   @return [String]
    # @!attribute engine_description
    #   <p>The description of the database engine for the database blueprint.</p>
    #   @return [String]
    # @!attribute engine_version_description
    #   <p>The description of the database engine version for the database blueprint.</p>
    #   @return [String]
    # @!attribute is_engine_default
    #   <p>A Boolean value indicating whether the engine version is the default for the database
    #         blueprint.</p>
    #   @return [Boolean]
    class RelationalDatabaseBlueprint < Struct.new(
      :blueprint_id,
      :engine,
      :engine_version,
      :engine_description,
      :engine_version_description,
      :is_engine_default,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a database bundle. A bundle describes the performance specifications of the
    #       database.</p>
    # @!attribute bundle_id
    #   <p>The ID for the database bundle.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the database bundle.</p>
    #   @return [String]
    # @!attribute price
    #   <p>The cost of the database bundle in US currency.</p>
    #   @return [Float]
    # @!attribute ram_size_in_gb
    #   <p>The amount of RAM in GB (for example, <code>2.0</code>) for the database bundle.</p>
    #   @return [Float]
    # @!attribute disk_size_in_gb
    #   <p>The size of the disk for the database bundle.</p>
    #   @return [Integer]
    # @!attribute transfer_per_month_in_gb
    #   <p>The data transfer rate per month in GB for the database bundle.</p>
    #   @return [Integer]
    # @!attribute cpu_count
    #   <p>The number of virtual CPUs (vCPUs) for the database bundle.</p>
    #   @return [Integer]
    # @!attribute is_encrypted
    #   <p>A Boolean value indicating whether the database bundle is encrypted.</p>
    #   @return [Boolean]
    # @!attribute is_active
    #   <p>A Boolean value indicating whether the database bundle is active.</p>
    #   @return [Boolean]
    class RelationalDatabaseBundle < Struct.new(
      :bundle_id,
      :name,
      :price,
      :ram_size_in_gb,
      :disk_size_in_gb,
      :transfer_per_month_in_gb,
      :cpu_count,
      :is_encrypted,
      :is_active,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an endpoint for a database.</p>
    # @!attribute port
    #   <p>Specifies the port that the database is listening on.</p>
    #   @return [Integer]
    # @!attribute address
    #   <p>Specifies the DNS address of the database.</p>
    #   @return [String]
    class RelationalDatabaseEndpoint < Struct.new(
      :port,
      :address,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an event for a database.</p>
    # @!attribute resource
    #   <p>The database that the database event relates to.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the database event was created.</p>
    #   @return [Time]
    # @!attribute message
    #   <p>The message of the database event.</p>
    #   @return [String]
    # @!attribute event_categories
    #   <p>The category that the database event belongs to.</p>
    #   @return [Array<String>]
    class RelationalDatabaseEvent < Struct.new(
      :resource,
      :created_at,
      :message,
      :event_categories,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the hardware of a database.</p>
    # @!attribute cpu_count
    #   <p>The number of vCPUs for the database.</p>
    #   @return [Integer]
    # @!attribute disk_size_in_gb
    #   <p>The size of the disk for the database.</p>
    #   @return [Integer]
    # @!attribute ram_size_in_gb
    #   <p>The amount of RAM in GB for the database.</p>
    #   @return [Float]
    class RelationalDatabaseHardware < Struct.new(
      :cpu_count,
      :disk_size_in_gb,
      :ram_size_in_gb,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the parameters of a database.</p>
    # @!attribute allowed_values
    #   <p>Specifies the valid range of values for the parameter.</p>
    #   @return [String]
    # @!attribute apply_method
    #   <p>Indicates when parameter updates are applied.</p>
    #            <p>Can be <code>immediate</code> or <code>pending-reboot</code>.</p>
    #   @return [String]
    # @!attribute apply_type
    #   <p>Specifies the engine-specific parameter type.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>Specifies the valid data type for the parameter.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Provides a description of the parameter.</p>
    #   @return [String]
    # @!attribute is_modifiable
    #   <p>A Boolean value indicating whether the parameter can be modified.</p>
    #   @return [Boolean]
    # @!attribute parameter_name
    #   <p>Specifies the name of the parameter.</p>
    #   @return [String]
    # @!attribute parameter_value
    #   <p>Specifies the value of the parameter.</p>
    #   @return [String]
    class RelationalDatabaseParameter < Struct.new(
      :allowed_values,
      :apply_method,
      :apply_type,
      :data_type,
      :description,
      :is_modifiable,
      :parameter_name,
      :parameter_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a database snapshot.</p>
    # @!attribute name
    #   <p>The name of the database snapshot.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the database snapshot.</p>
    #   @return [String]
    # @!attribute support_code
    #   <p>The support code for the database snapshot. Include this code in your email to support
    #         when you have questions about a database snapshot in Lightsail. This code enables our
    #         support team to look up your Lightsail information more easily.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the database snapshot was created.</p>
    #   @return [Time]
    # @!attribute location
    #   <p>The Region name and Availability Zone where the database snapshot is located.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute resource_type
    #   <p>The Lightsail resource type.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag keys and optional values for the resource. For more information about tags in
    #         Lightsail, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags">Amazon Lightsail Developer Guide</a>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute engine
    #   <p>The software of the database snapshot (for example, <code>MySQL</code>)</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The database engine version for the database snapshot (for example,
    #         <code>5.7.23</code>).</p>
    #   @return [String]
    # @!attribute size_in_gb
    #   <p>The size of the disk in GB (for example, <code>32</code>) for the database
    #         snapshot.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>The state of the database snapshot.</p>
    #   @return [String]
    # @!attribute from_relational_database_name
    #   <p>The name of the source database from which the database snapshot was created.</p>
    #   @return [String]
    # @!attribute from_relational_database_arn
    #   <p>The Amazon Resource Name (ARN) of the database from which the database snapshot was
    #         created.</p>
    #   @return [String]
    # @!attribute from_relational_database_bundle_id
    #   <p>The bundle ID of the database from which the database snapshot was created.</p>
    #   @return [String]
    # @!attribute from_relational_database_blueprint_id
    #   <p>The blueprint ID of the database from which the database snapshot was created. A blueprint
    #         describes the major engine version of a database.</p>
    #   @return [String]
    class RelationalDatabaseSnapshot < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :engine,
      :engine_version,
      :size_in_gb,
      :state,
      :from_relational_database_name,
      :from_relational_database_arn,
      :from_relational_database_bundle_id,
      :from_relational_database_blueprint_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute static_ip_name
    #   <p>The name of the static IP to delete.</p>
    #   @return [String]
    class ReleaseStaticIpRequest < Struct.new(
      :static_ip_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class ReleaseStaticIpResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the status of a SSL/TLS certificate renewal managed by Amazon Lightsail.</p>
    # @!attribute domain_validation_records
    #   <p>An array of objects that describe the domain validation records of the certificate.</p>
    #   @return [Array<Types::DomainValidationRecord>]
    # @!attribute renewal_status
    #   <p>The renewal status of the certificate.</p>
    #            <p>The following renewal status are possible:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>PendingAutoRenewal</code>
    #                     </b> - Lightsail is
    #             attempting to automatically validate the domain names of the certificate. No further
    #             action is required. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>PendingValidation</code>
    #                     </b> - Lightsail couldn't
    #             automatically validate one or more domain names of the certificate. You must take action
    #             to validate these domain names or the certificate won't be renewed. Check to make sure
    #             your certificate's domain validation records exist in your domain's DNS, and that your
    #             certificate remains in use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Success</code>
    #                     </b> - All domain names in the
    #             certificate are validated, and Lightsail renewed the certificate. No further action is
    #             required. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Failed</code>
    #                     </b> - One or more domain names were
    #             not validated before the certificate expired, and Lightsail did not renew the
    #             certificate. You can request a new certificate using the <code>CreateCertificate</code>
    #             action.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute renewal_status_reason
    #   <p>The reason for the renewal status of the certificate.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the certificate was last updated.</p>
    #   @return [Time]
    class RenewalSummary < Struct.new(
      :domain_validation_records,
      :renewal_status,
      :renewal_status_reason,
      :updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_name
    #   <p>The name of the distribution for which to reset cache.</p>
    #            <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
    #         can specify.</p>
    #   @return [String]
    class ResetDistributionCacheRequest < Struct.new(
      :distribution_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the reset cache request.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The timestamp of the reset cache request (<code>1479734909.17</code>) in Unix time
    #         format.</p>
    #   @return [Time]
    # @!attribute operation
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Types::Operation]
    class ResetDistributionCacheResult < Struct.new(
      :status,
      :create_time,
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the estimated cost or usage that a budget tracks.</p>
    # @!attribute resource_name
    #   <p>The resource name.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource the budget will track.</p>
    #   @return [String]
    # @!attribute cost_estimates
    #   <p>The cost estimate for the specified budget.</p>
    #   @return [Array<Types::CostEstimate>]
    # @!attribute start_time
    #   <p>The estimate start time.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The estimate end time.</p>
    #   @return [Time]
    class ResourceBudgetEstimate < Struct.new(
      :resource_name,
      :resource_type,
      :cost_estimates,
      :start_time,
      :end_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the resource location.</p>
    # @!attribute availability_zone
    #   <p>The Availability Zone. Follows the format <code>us-east-2a</code> (case-sensitive).</p>
    #   @return [String]
    # @!attribute region_name
    #   <p>The Amazon Web Services Region name.</p>
    #   @return [String]
    class ResourceLocation < Struct.new(
      :availability_zone,
      :region_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon Lightsail instance that has access to a Lightsail bucket.</p>
    # @!attribute name
    #   <p>The name of the Lightsail instance.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The Lightsail resource type (for example, <code>Instance</code>).</p>
    #   @return [String]
    class ResourceReceivingAccess < Struct.new(
      :name,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the domain name system (DNS) records to add to your domain's DNS to validate it
    #       for an Amazon Lightsail certificate.</p>
    # @!attribute name
    #   <p>The name of the record.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The DNS record type.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value for the DNS record.</p>
    #   @return [String]
    class ResourceRecord < Struct.new(
      :name,
      :type,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute protocol
    #   <p>The protocol to verify, such as <code>Email</code> or <code>SMS</code> (text
    #         messaging).</p>
    #   @return [String]
    class SendContactMethodVerificationRequest < Struct.new(
      :protocol,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class SendContactMethodVerificationResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A general service exception.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute docs
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute tip
    #   @return [String]
    class ServiceException < Struct.new(
      :code,
      :docs,
      :message,
      :tip,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a web-based, remote graphical user interface (GUI), Amazon DCV session. The
    #       session is used to access a virtual computer’s operating system or application.</p>
    # @!attribute name
    #   <p>The session name.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The session URL.</p>
    #   @return [String]
    # @!attribute is_primary
    #   <p>When true, this Boolean value indicates the primary session for the specified
    #         resource.</p>
    #   @return [Boolean]
    class Session < Struct.new(
      :name,
      :url,
      :is_primary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_type
    #   <p>The resource type.</p>
    #            <p>The resource values are <code>Distribution</code>, <code>Instance</code>, and
    #           <code>LoadBalancer</code>.</p>
    #            <note>
    #               <p>Distribution-related APIs are available only in the N. Virginia (<code>us-east-1</code>)
    #             Amazon Web Services Region. Set your Amazon Web Services Region configuration to
    #             <code>us-east-1</code> to create, view, or edit distributions.</p>
    #            </note>
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the resource for which to set the IP address type.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type to set for the specified resource.</p>
    #            <p>The possible values are <code>ipv4</code> for IPv4 only, <code>ipv6</code> for IPv6 only,
    #         and <code>dualstack</code> for IPv4 and IPv6.</p>
    #   @return [String]
    # @!attribute accept_bundle_update
    #   <p>Required parameter to accept the instance bundle update when changing to, and from,
    #         IPv6-only.</p>
    #            <note>
    #               <p>An instance bundle will change when switching from <code>dual-stack</code> or
    #             <code>ipv4</code>, to <code>ipv6</code>. It also changes when switching from
    #             <code>ipv6</code>, to <code>dual-stack</code> or <code>ipv4</code>.</p>
    #               <p>You must include this parameter in the command to update the bundle. For example, if you
    #           switch from <code>dual-stack</code> to <code>ipv6</code>, the bundle will be updated, and
    #           billing for the IPv6-only instance bundle begins immediately.</p>
    #            </note>
    #   @return [Boolean]
    class SetIpAddressTypeRequest < Struct.new(
      :resource_type,
      :resource_name,
      :ip_address_type,
      :accept_bundle_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class SetIpAddressTypeResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_name
    #   <p>The name of the Lightsail instance for which to set bucket access. The instance must be
    #         in a running or stopped state.</p>
    #   @return [String]
    # @!attribute bucket_name
    #   <p>The name of the bucket for which to set access to another Lightsail resource.</p>
    #   @return [String]
    # @!attribute access
    #   <p>The access setting.</p>
    #            <p>The following access settings are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>allow</code> - Allows access to the bucket and its objects.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deny</code> - Denies access to the bucket and its objects. Use this setting to
    #             remove access for a resource previously set to <code>allow</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class SetResourceAccessForBucketRequest < Struct.new(
      :resource_name,
      :bucket_name,
      :access,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class SetResourceAccessForBucketResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns details about the commands that were run.</p>
    # @!attribute command
    #   <p>The command that was executed.</p>
    #   @return [String]
    # @!attribute date_time
    #   <p>The timestamp for when the request was run.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name of the target resource.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the <code>SetupInstanceHttps</code> request.</p>
    #   @return [String]
    # @!attribute standard_error
    #   <p>The text written by the command to stderr.</p>
    #   @return [String]
    # @!attribute standard_output
    #   <p>The text written by the command to stdout.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The current version of the script..</p>
    #   @return [String]
    class SetupExecutionDetails < Struct.new(
      :command,
      :date_time,
      :name,
      :status,
      :standard_error,
      :standard_output,
      :version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns a list of the commands that were ran on the target resource.</p>
    #          <p>The status of each command is also returned.</p>
    # @!attribute operation_id
    #   <p>A GUID that's used to identify the operation.</p>
    #   @return [String]
    # @!attribute request
    #   <p>Information about the specified request.</p>
    #   @return [Types::SetupRequest]
    # @!attribute resource
    #   <p>The target resource name for the request.</p>
    #   @return [Types::SetupHistoryResource]
    # @!attribute execution_details
    #   <p>Describes the full details of the request.</p>
    #   @return [Array<Types::SetupExecutionDetails>]
    # @!attribute status
    #   <p>The status of the request.</p>
    #   @return [String]
    class SetupHistory < Struct.new(
      :operation_id,
      :request,
      :resource,
      :execution_details,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Lightsail resource that <code>SetupHistory</code> was ran on. </p>
    # @!attribute name
    #   <p>The name of the Lightsail resource.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Lightsail resource.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp for when the resource was created.</p>
    #   @return [Time]
    # @!attribute location
    #   <p>Describes the resource location.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute resource_type
    #   <p>The Lightsail resource type. For example, <code>Instance</code>.</p>
    #   @return [String]
    class SetupHistoryResource < Struct.new(
      :name,
      :arn,
      :created_at,
      :location,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_name
    #   <p>The name of the Lightsail instance.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>The contact method for SSL/TLS certificate renewal alerts. You can enter one email
    #         address. </p>
    #   @return [String]
    # @!attribute domain_names
    #   <p>The name of the domain and subdomains that were specified for the SSL/TLS
    #         certificate.</p>
    #   @return [Array<String>]
    # @!attribute certificate_provider
    #   <p>The certificate authority that issues the SSL/TLS certificate.</p>
    #   @return [String]
    class SetupInstanceHttpsRequest < Struct.new(
      :instance_name,
      :email_address,
      :domain_names,
      :certificate_provider,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>The available API operations for <code>SetupInstanceHttps</code>.</p>
    #   @return [Array<Types::Operation>]
    class SetupInstanceHttpsResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information that was submitted during the <code>SetupInstanceHttps</code> request.
    #       Email information is redacted for privacy.</p>
    # @!attribute instance_name
    #   <p>The name of the Lightsail instance.</p>
    #   @return [String]
    # @!attribute domain_names
    #   <p>The name of the domain and subdomains that the SSL/TLS certificate secures.</p>
    #   @return [Array<String>]
    # @!attribute certificate_provider
    #   <p>The Certificate Authority (CA) that issues the SSL/TLS certificate.</p>
    #   @return [String]
    class SetupRequest < Struct.new(
      :instance_name,
      :domain_names,
      :certificate_provider,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_name
    #   <p>The resource name.</p>
    #   @return [String]
    class StartGUISessionRequest < Struct.new(
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>The available API operations.</p>
    #   @return [Array<Types::Operation>]
    class StartGUISessionResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_name
    #   <p>The name of the instance (a virtual private server) to start.</p>
    #   @return [String]
    class StartInstanceRequest < Struct.new(
      :instance_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class StartInstanceResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database_name
    #   <p>The name of your database to start.</p>
    #   @return [String]
    class StartRelationalDatabaseRequest < Struct.new(
      :relational_database_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class StartRelationalDatabaseResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a static IP.</p>
    # @!attribute name
    #   <p>The name of the static IP (<code>StaticIP-Ohio-EXAMPLE</code>).</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the static IP
    #           (<code>arn:aws:lightsail:us-east-2:123456789101:StaticIp/9cbb4a9e-f8e3-4dfe-b57e-12345EXAMPLE</code>).</p>
    #   @return [String]
    # @!attribute support_code
    #   <p>The support code. Include this code in your email to support when you have questions about
    #         an instance or another resource in Lightsail. This code enables our support team to look up
    #         your Lightsail information more easily.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the static IP was created (<code>1479735304.222</code>).</p>
    #   @return [Time]
    # @!attribute location
    #   <p>The region and Availability Zone where the static IP was created.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute resource_type
    #   <p>The resource type (usually <code>StaticIp</code>).</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>The static IP address.</p>
    #   @return [String]
    # @!attribute attached_to
    #   <p>The instance where the static IP is attached
    #         (<code>Amazon_Linux-1GB-Ohio-1</code>).</p>
    #   @return [String]
    # @!attribute is_attached
    #   <p>A Boolean value indicating whether the static IP is attached.</p>
    #   @return [Boolean]
    class StaticIp < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :ip_address,
      :attached_to,
      :is_attached,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_name
    #   <p>The resource name.</p>
    #   @return [String]
    class StopGUISessionRequest < Struct.new(
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>The available API operations.</p>
    #   @return [Array<Types::Operation>]
    class StopGUISessionResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a request to create or edit the <code>StopInstanceOnIdle</code> add-on.</p>
    #          <important>
    #             <p>This add-on only applies to Lightsail for Research resources.</p>
    #          </important>
    # @!attribute threshold
    #   <p>The value to compare with the duration.</p>
    #   @return [String]
    # @!attribute duration
    #   <p>The amount of idle time in minutes after which your virtual computer will automatically
    #         stop.</p>
    #   @return [String]
    class StopInstanceOnIdleRequest < Struct.new(
      :threshold,
      :duration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_name
    #   <p>The name of the instance (a virtual private server) to stop.</p>
    #   @return [String]
    # @!attribute force
    #   <p>When set to <code>True</code>, forces a Lightsail instance that is stuck in a
    #           <code>stopping</code> state to stop.</p>
    #            <important>
    #               <p>Only use the <code>force</code> parameter if your instance is stuck in the
    #             <code>stopping</code> state. In any other state, your instance should stop normally
    #           without adding this parameter to your API request.</p>
    #            </important>
    #   @return [Boolean]
    class StopInstanceRequest < Struct.new(
      :instance_name,
      :force,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class StopInstanceResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database_name
    #   <p>The name of your database to stop.</p>
    #   @return [String]
    # @!attribute relational_database_snapshot_name
    #   <p>The name of your new database snapshot to be created before stopping your database.</p>
    #   @return [String]
    class StopRelationalDatabaseRequest < Struct.new(
      :relational_database_name,
      :relational_database_snapshot_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class StopRelationalDatabaseResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a tag key and optional value assigned to an Amazon Lightsail resource.</p>
    #          <p>For more information about tags in Lightsail, see the <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-tags">Amazon Lightsail Developer Guide</a>.</p>
    # @!attribute key
    #   <p>The key of the tag.</p>
    #            <p>Constraints: Tag keys accept a maximum of 128 letters, numbers, spaces in UTF-8, or the
    #         following characters: + - = . _ : / @</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag.</p>
    #            <p>Constraints: Tag values accept a maximum of 256 letters, numbers, spaces in UTF-8, or the
    #         following characters: + - = . _ : / @</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_name
    #   <p>The name of the resource to which you are adding tags.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which you want to add a tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag key and optional value.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_name,
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class TagResourceResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute alarm_name
    #   <p>The name of the alarm to test.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The alarm state to test.</p>
    #            <p>An alarm has the following possible states that can be tested:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALARM</code> - The metric is outside of the defined threshold.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSUFFICIENT_DATA</code> - The alarm has just started, the metric is not
    #             available, or not enough data is available for the metric to determine the alarm
    #             state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OK</code> - The metric is within the defined threshold.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class TestAlarmRequest < Struct.new(
      :alarm_name,
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class TestAlarmResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Sets the start date and end date for retrieving a cost estimate. The start date is
    #       inclusive, but the end date is exclusive. For example, if <code>start</code> is
    #         <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and
    #       usage data is retrieved from <code>2017-01-01</code> up to and including
    #         <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>
    # @!attribute start
    #   <p>The beginning of the time period. The start date is inclusive. For example, if
    #           <code>start</code> is <code>2017-01-01</code>, Lightsail for Research retrieves cost and usage data starting
    #         at <code>2017-01-01</code> up to the end date. The start date must be equal to or no later
    #         than the current date to avoid a validation error.</p>
    #   @return [Time]
    # @!attribute end
    #   <p>The end of the time period. The end date is exclusive. For example, if <code>end</code> is
    #           <code>2017-05-01</code>, Lightsail for Research retrieves cost and usage data from the start date up to, but
    #         not including, <code>2017-05-01</code>.</p>
    #   @return [Time]
    class TimePeriod < Struct.new(
      :start,
      :end,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Lightsail throws this exception when the user has not been authenticated.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute docs
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute tip
    #   @return [String]
    class UnauthenticatedException < Struct.new(
      :code,
      :docs,
      :message,
      :tip,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UnpeerVpcRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Types::Operation]
    class UnpeerVpcResult < Struct.new(
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_name
    #   <p>The name of the resource from which you are removing a tag.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which you want to remove a tag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys to delete from the specified resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_name,
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class UntagResourceResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket_name
    #   <p>The name of the bucket for which to update the bundle.</p>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The ID of the new bundle to apply to the bucket.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetBucketBundles.html">GetBucketBundles</a> action to get a list of
    #         bundle IDs that you can specify.</p>
    #   @return [String]
    class UpdateBucketBundleRequest < Struct.new(
      :bucket_name,
      :bundle_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class UpdateBucketBundleResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket_name
    #   <p>The name of the bucket to update.</p>
    #   @return [String]
    # @!attribute access_rules
    #   <p>An object that sets the public accessibility of objects in the specified bucket.</p>
    #   @return [Types::AccessRules]
    # @!attribute versioning
    #   <p>Specifies whether to enable or suspend versioning of objects in the bucket.</p>
    #            <p>The following options can be specified:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Enabled</code> - Enables versioning of objects in the specified bucket.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Suspended</code> - Suspends versioning of objects in the specified bucket.
    #             Existing object versions are retained.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute readonly_access_accounts
    #   <p>An array of strings to specify the Amazon Web Services account IDs that can access the
    #         bucket.</p>
    #            <p>You can give a maximum of 10 Amazon Web Services accounts access to a bucket.</p>
    #   @return [Array<String>]
    # @!attribute access_log_config
    #   <p>An object that describes the access log configuration for the bucket.</p>
    #   @return [Types::BucketAccessLogConfig]
    class UpdateBucketRequest < Struct.new(
      :bucket_name,
      :access_rules,
      :versioning,
      :readonly_access_accounts,
      :access_log_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>An object that describes the bucket that is updated.</p>
    #   @return [Types::Bucket]
    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class UpdateBucketResult < Struct.new(
      :bucket,
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the container service to update.</p>
    #   @return [String]
    # @!attribute power
    #   <p>The power for the container service.</p>
    #            <p>The power specifies the amount of memory, vCPUs, and base monthly cost of each node of the
    #         container service. The <code>power</code> and <code>scale</code> of a container service makes
    #         up its configured capacity. To determine the monthly price of your container service, multiply
    #         the base price of the <code>power</code> with the <code>scale</code> (the number of nodes) of
    #         the service.</p>
    #            <p>Use the <code>GetContainerServicePowers</code> action to view the specifications of each
    #         power option.</p>
    #   @return [String]
    # @!attribute scale
    #   <p>The scale for the container service.</p>
    #            <p>The scale specifies the allocated compute nodes of the container service. The
    #           <code>power</code> and <code>scale</code> of a container service makes up its configured
    #         capacity. To determine the monthly price of your container service, multiply the base price of
    #         the <code>power</code> with the <code>scale</code> (the number of nodes) of the
    #         service.</p>
    #   @return [Integer]
    # @!attribute is_disabled
    #   <p>A Boolean value to indicate whether the container service is disabled.</p>
    #   @return [Boolean]
    # @!attribute public_domain_names
    #   <p>The public domain names to use with the container service, such as
    #           <code>example.com</code> and <code>www.example.com</code>.</p>
    #            <p>You can specify up to four public domain names for a container service. The domain names
    #         that you specify are used when you create a deployment with a container configured as the
    #         public endpoint of your container service.</p>
    #            <p>If you don't specify public domain names, then you can use the default domain of the
    #         container service.</p>
    #            <important>
    #               <p>You must create and validate an SSL/TLS certificate before you can use public domain
    #           names with your container service. Use the <code>CreateCertificate</code> action to create a
    #           certificate for the public domain names you want to use with your container service.</p>
    #            </important>
    #            <p>You can specify public domain names using a string to array map as shown in the example
    #         later on this page.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute private_registry_access
    #   <p>An object to describe the configuration for the container service to access private
    #         container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private
    #         repositories.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-container-service-ecr-private-repo-access">Configuring access to an Amazon ECR private repository for an Amazon Lightsail container service</a> in the <i>Amazon Lightsail Developer Guide</i>.</p>
    #   @return [Types::PrivateRegistryAccessRequest]
    class UpdateContainerServiceRequest < Struct.new(
      :service_name,
      :power,
      :scale,
      :is_disabled,
      :public_domain_names,
      :private_registry_access,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_service
    #   <p>An object that describes a container service.</p>
    #   @return [Types::ContainerService]
    class UpdateContainerServiceResult < Struct.new(
      :container_service,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_name
    #   <p>The name of the distribution for which to update the bundle.</p>
    #            <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
    #         can specify.</p>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The bundle ID of the new bundle to apply to your distribution.</p>
    #            <p>Use the <code>GetDistributionBundles</code> action to get a list of distribution bundle
    #         IDs that you can specify.</p>
    #   @return [String]
    class UpdateDistributionBundleRequest < Struct.new(
      :distribution_name,
      :bundle_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation
    #   <p>An object that describes the result of the action, such as the status of the request, the
    #         timestamp of the request, and the resources affected by the request.</p>
    #   @return [Types::Operation]
    class UpdateDistributionBundleResult < Struct.new(
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_name
    #   <p>The name of the distribution to update.</p>
    #            <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
    #         can specify.</p>
    #   @return [String]
    # @!attribute origin
    #   <p>An object that describes the origin resource for the distribution, such as a Lightsail
    #         instance, bucket, or load balancer.</p>
    #            <p>The distribution pulls, caches, and serves content from the origin.</p>
    #   @return [Types::InputOrigin]
    # @!attribute default_cache_behavior
    #   <p>An object that describes the default cache behavior for the distribution.</p>
    #   @return [Types::CacheBehavior]
    # @!attribute cache_behavior_settings
    #   <p>An object that describes the cache behavior settings for the distribution.</p>
    #            <note>
    #               <p>The <code>cacheBehaviorSettings</code> specified in your
    #             <code>UpdateDistributionRequest</code> will replace your distribution's existing
    #           settings.</p>
    #            </note>
    #   @return [Types::CacheSettings]
    # @!attribute cache_behaviors
    #   <p>An array of objects that describe the per-path cache behavior for the distribution.</p>
    #   @return [Array<Types::CacheBehaviorPerPath>]
    # @!attribute is_enabled
    #   <p>Indicates whether to enable the distribution.</p>
    #   @return [Boolean]
    # @!attribute viewer_minimum_tls_protocol_version
    #   <p>Use this parameter to update the minimum TLS protocol version for the SSL/TLS certificate
    #         that's attached to the distribution.</p>
    #   @return [String]
    # @!attribute certificate_name
    #   <p>The name of the SSL/TLS certificate that you want to attach to the distribution.</p>
    #            <p>Only certificates with a status of <code>ISSUED</code> can be attached to a
    #         distribution.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetCertificates.html">GetCertificates</a>
    #         action to get a list of certificate names that you can specify.</p>
    #   @return [String]
    # @!attribute use_default_certificate
    #   <p>Indicates whether the default SSL/TLS certificate is attached to the distribution. The
    #         default value is <code>true</code>. When <code>true</code>, the distribution uses the default
    #         domain name such as <code>d111111abcdef8.cloudfront.net</code>.</p>
    #            <p> Set this value to <code>false</code> to attach a new certificate to the
    #         distribution.</p>
    #   @return [Boolean]
    class UpdateDistributionRequest < Struct.new(
      :distribution_name,
      :origin,
      :default_cache_behavior,
      :cache_behavior_settings,
      :cache_behaviors,
      :is_enabled,
      :viewer_minimum_tls_protocol_version,
      :certificate_name,
      :use_default_certificate,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Types::Operation]
    class UpdateDistributionResult < Struct.new(
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the domain recordset to update.</p>
    #   @return [String]
    # @!attribute domain_entry
    #   <p>An array of key-value pairs containing information about the domain entry.</p>
    #   @return [Types::DomainEntry]
    class UpdateDomainEntryRequest < Struct.new(
      :domain_name,
      :domain_entry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class UpdateDomainEntryResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute instance_name
    #   <p>The name of the instance for which to update metadata parameters.</p>
    #   @return [String]
    # @!attribute http_tokens
    #   <p>The state of token usage for your instance metadata requests. If the parameter is not
    #         specified in the request, the default state is <code>optional</code>.</p>
    #            <p>If the state is <code>optional</code>, you can choose whether to retrieve instance
    #         metadata with a signed token header on your request. If you retrieve the IAM role credentials
    #         without a token, the version 1.0 role credentials are returned. If you retrieve the IAM role
    #         credentials by using a valid signed token, the version 2.0 role credentials are
    #         returned.</p>
    #            <p>If the state is <code>required</code>, you must send a signed token header with all
    #         instance metadata retrieval requests. In this state, retrieving the IAM role credential always
    #         returns the version 2.0 credentials. The version 1.0 credentials are not available.</p>
    #   @return [String]
    # @!attribute http_endpoint
    #   <p>Enables or disables the HTTP metadata endpoint on your instances. If this parameter is not
    #         specified, the existing state is maintained.</p>
    #            <p>If you specify a value of <code>disabled</code>, you cannot access your instance
    #         metadata.</p>
    #   @return [String]
    # @!attribute http_put_response_hop_limit
    #   <p>The desired HTTP PUT response hop limit for instance metadata requests. A larger number
    #         means that the instance metadata requests can travel farther. If no parameter is specified,
    #         the existing state is maintained.</p>
    #   @return [Integer]
    # @!attribute http_protocol_ipv6
    #   <p>Enables or disables the IPv6 endpoint for the instance metadata service. This setting
    #         applies only when the HTTP metadata endpoint is enabled.</p>
    #            <note>
    #               <p>This parameter is available only for instances in the Europe (Stockholm) Amazon Web Services Region (<code>eu-north-1</code>).</p>
    #            </note>
    #   @return [String]
    class UpdateInstanceMetadataOptionsRequest < Struct.new(
      :instance_name,
      :http_tokens,
      :http_endpoint,
      :http_put_response_hop_limit,
      :http_protocol_ipv6,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Types::Operation]
    class UpdateInstanceMetadataOptionsResult < Struct.new(
      :operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_name
    #   <p>The name of the load balancer that you want to modify
    #         (<code>my-load-balancer</code>.</p>
    #   @return [String]
    # @!attribute attribute_name
    #   <p>The name of the attribute you want to update.</p>
    #   @return [String]
    # @!attribute attribute_value
    #   <p>The value that you want to specify for the attribute name.</p>
    #            <p>The following values are supported depending on what you specify for the
    #           <code>attributeName</code> request parameter:</p>
    #            <ul>
    #               <li>
    #                  <p>If you specify <code>HealthCheckPath</code> for the <code>attributeName</code> request
    #             parameter, then the <code>attributeValue</code> request parameter must be the path to ping
    #             on the target (for example, <code>/weather/us/wa/seattle</code>).</p>
    #               </li>
    #               <li>
    #                  <p>If you specify <code>SessionStickinessEnabled</code> for the
    #               <code>attributeName</code> request parameter, then the <code>attributeValue</code>
    #             request parameter must be <code>true</code> to activate session stickiness or
    #               <code>false</code> to deactivate session stickiness.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify <code>SessionStickiness_LB_CookieDurationSeconds</code> for the
    #               <code>attributeName</code> request parameter, then the <code>attributeValue</code>
    #             request parameter must be an interger that represents the cookie duration in
    #             seconds.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify <code>HttpsRedirectionEnabled</code> for the <code>attributeName</code>
    #             request parameter, then the <code>attributeValue</code> request parameter must be
    #               <code>true</code> to activate HTTP to HTTPS redirection or <code>false</code> to
    #             deactivate HTTP to HTTPS redirection.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify <code>TlsPolicyName</code> for the <code>attributeName</code> request
    #             parameter, then the <code>attributeValue</code> request parameter must be the name of the
    #             TLS policy.</p>
    #                  <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetLoadBalancerTlsPolicies.html">GetLoadBalancerTlsPolicies</a> action to get a list of TLS policy names that you
    #             can specify.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class UpdateLoadBalancerAttributeRequest < Struct.new(
      :load_balancer_name,
      :attribute_name,
      :attribute_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class UpdateLoadBalancerAttributeResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database_name
    #   <p>The name of your database for which to update parameters.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The database parameters to update.</p>
    #   @return [Array<Types::RelationalDatabaseParameter>]
    class UpdateRelationalDatabaseParametersRequest < Struct.new(
      :relational_database_name,
      :parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class UpdateRelationalDatabaseParametersResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relational_database_name
    #   <p>The name of your Lightsail database resource to update.</p>
    #   @return [String]
    # @!attribute master_user_password
    #   <p>The password for the master user. The password can include any printable ASCII character
    #         except "/", """, or "@".</p>
    #            <p>My<b>SQL</b>
    #            </p>
    #            <p>Constraints: Must contain from 8 to 41 characters.</p>
    #            <p>
    #               <b>PostgreSQL</b>
    #            </p>
    #            <p>Constraints: Must contain from 8 to 128 characters.</p>
    #   @return [String]
    # @!attribute rotate_master_user_password
    #   <p>When <code>true</code>, the master user password is changed to a new strong password
    #         generated by Lightsail.</p>
    #            <p>Use the <code>get relational database master user password</code> operation to get the new
    #         password.</p>
    #   @return [Boolean]
    # @!attribute preferred_backup_window
    #   <p>The daily time range during which automated backups are created for your database if
    #         automated backups are enabled.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be in the <code>hh24:mi-hh24:mi</code> format.</p>
    #                  <p>Example: <code>16:00-16:30</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Must not conflict with the preferred maintenance window.</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 30 minutes.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur on your database.</p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
    #           Amazon Web Services Region, occurring on a random day of the week.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be in the <code>ddd:hh24:mi-ddd:hh24:mi</code> format.</p>
    #               </li>
    #               <li>
    #                  <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 30 minutes.</p>
    #               </li>
    #               <li>
    #                  <p>Specified in Coordinated Universal Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>Tue:17:00-Tue:17:30</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute enable_backup_retention
    #   <p>When <code>true</code>, enables automated backup retention for your database.</p>
    #            <p>Updates are applied during the next maintenance window because this can result in an
    #         outage.</p>
    #   @return [Boolean]
    # @!attribute disable_backup_retention
    #   <p>When <code>true</code>, disables automated backup retention for your database.</p>
    #            <p>Disabling backup retention deletes all automated database backups. Before disabling this,
    #         you may want to create a snapshot of your database using the <code>create relational database
    #           snapshot</code> operation.</p>
    #            <p>Updates are applied during the next maintenance window because this can result in an
    #         outage.</p>
    #   @return [Boolean]
    # @!attribute publicly_accessible
    #   <p>Specifies the accessibility options for your database. A value of <code>true</code>
    #         specifies a database that is available to resources outside of your Lightsail account. A
    #         value of <code>false</code> specifies a database that is available only to your Lightsail
    #         resources in the same region as your database.</p>
    #   @return [Boolean]
    # @!attribute apply_immediately
    #   <p>When <code>true</code>, applies changes immediately. When <code>false</code>, applies
    #         changes during the preferred maintenance window. Some changes may cause an outage.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute ca_certificate_identifier
    #   <p>Indicates the certificate that needs to be associated with the database.</p>
    #   @return [String]
    # @!attribute relational_database_blueprint_id
    #   <p>This parameter is used to update the major version of the database. Enter the
    #           <code>blueprintId</code> for the major version that you want to update to.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRelationalDatabaseBlueprints.html">GetRelationalDatabaseBlueprints</a> action to get a list of available blueprint
    #         IDs.</p>
    #   @return [String]
    class UpdateRelationalDatabaseRequest < Struct.new(
      :relational_database_name,
      :master_user_password,
      :rotate_master_user_password,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :enable_backup_retention,
      :disable_backup_retention,
      :publicly_accessible,
      :apply_immediately,
      :ca_certificate_identifier,
      :relational_database_blueprint_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operations
    #   <p>An array of objects that describe the result of the action, such as the status of the
    #         request, the timestamp of the request, and the resources affected by the request.</p>
    #   @return [Array<Types::Operation>]
    class UpdateRelationalDatabaseResult < Struct.new(
      :operations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
