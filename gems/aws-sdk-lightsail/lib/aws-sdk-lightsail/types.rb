# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Lightsail
  module Types

    # Lightsail throws this exception when the user cannot be authenticated
    # or uses invalid credentials to access a resource.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] docs
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] tip
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :code,
      :docs,
      :message,
      :tip)
      include Aws::Structure
    end

    # Lightsail throws this exception when an account is still in the setup
    # in progress state.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] docs
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] tip
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AccountSetupInProgressException AWS API Documentation
    #
    class AccountSetupInProgressException < Struct.new(
      :code,
      :docs,
      :message,
      :tip)
      include Aws::Structure
    end

    # Describes an add-on that is enabled for an Amazon Lightsail resource.
    #
    # @!attribute [rw] name
    #   The name of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the add-on.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_time_of_day
    #   The daily time when an automatic snapshot is created.
    #
    #   The time shown is in `HH:00` format, and in Coordinated Universal
    #   Time (UTC).
    #
    #   The snapshot is automatically created between the time shown and up
    #   to 45 minutes after.
    #   @return [String]
    #
    # @!attribute [rw] next_snapshot_time_of_day
    #   The next daily time an automatic snapshot will be created.
    #
    #   The time shown is in `HH:00` format, and in Coordinated Universal
    #   Time (UTC).
    #
    #   The snapshot is automatically created between the time shown and up
    #   to 45 minutes after.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AddOn AWS API Documentation
    #
    class AddOn < Struct.new(
      :name,
      :status,
      :snapshot_time_of_day,
      :next_snapshot_time_of_day)
      include Aws::Structure
    end

    # Describes a request to enable, modify, or disable an add-on for an
    # Amazon Lightsail resource.
    #
    # <note markdown="1"> An additional cost may be associated with enabling add-ons. For more
    # information, see the [Lightsail pricing page][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://aws.amazon.com/lightsail/pricing/
    #
    # @note When making an API call, you may pass AddOnRequest
    #   data as a hash:
    #
    #       {
    #         add_on_type: "AutoSnapshot", # required, accepts AutoSnapshot
    #         auto_snapshot_add_on_request: {
    #           snapshot_time_of_day: "TimeOfDay",
    #         },
    #       }
    #
    # @!attribute [rw] add_on_type
    #   The add-on type.
    #   @return [String]
    #
    # @!attribute [rw] auto_snapshot_add_on_request
    #   An object that represents additional parameters when enabling or
    #   modifying the automatic snapshot add-on.
    #   @return [Types::AutoSnapshotAddOnRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AddOnRequest AWS API Documentation
    #
    class AddOnRequest < Struct.new(
      :add_on_type,
      :auto_snapshot_add_on_request)
      include Aws::Structure
    end

    # Describes an alarm.
    #
    # An alarm is a way to monitor your Amazon Lightsail resource metrics.
    # For more information, see [Alarms in Amazon Lightsail][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-alarms
    #
    # @!attribute [rw] name
    #   The name of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the alarm was created.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   An object that lists information about the location of the alarm.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type (e.g., `Alarm`).
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about your Lightsail alarm. This code enables our
    #   support team to look up your Lightsail information more easily.
    #   @return [String]
    #
    # @!attribute [rw] monitored_resource_info
    #   An object that lists information about the resource monitored by the
    #   alarm.
    #   @return [Types::MonitoredResourceInfo]
    #
    # @!attribute [rw] comparison_operator
    #   The arithmetic operation used when comparing the specified statistic
    #   and threshold.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_periods
    #   The number of periods over which data is compared to the specified
    #   threshold.
    #   @return [Integer]
    #
    # @!attribute [rw] period
    #   The period, in seconds, over which the statistic is applied.
    #   @return [Integer]
    #
    # @!attribute [rw] threshold
    #   The value against which the specified statistic is compared.
    #   @return [Float]
    #
    # @!attribute [rw] datapoints_to_alarm
    #   The number of data points that must not within the specified
    #   threshold to trigger the alarm.
    #   @return [Integer]
    #
    # @!attribute [rw] treat_missing_data
    #   Specifies how the alarm handles missing data points.
    #
    #   An alarm can treat missing data in the following ways:
    #
    #   * `breaching` - Assume the missing data is not within the threshold.
    #     Missing data counts towards the number of times the metric is not
    #     within the threshold.
    #
    #   * `notBreaching` - Assume the missing data is within the threshold.
    #     Missing data does not count towards the number of times the metric
    #     is not within the threshold.
    #
    #   * `ignore` - Ignore the missing data. Maintains the current alarm
    #     state.
    #
    #   * `missing` - Missing data is treated as missing.
    #   @return [String]
    #
    # @!attribute [rw] statistic
    #   The statistic for the metric associated with the alarm.
    #
    #   The following statistics are available:
    #
    #   * `Minimum` - The lowest value observed during the specified period.
    #     Use this value to determine low volumes of activity for your
    #     application.
    #
    #   * `Maximum` - The highest value observed during the specified
    #     period. Use this value to determine high volumes of activity for
    #     your application.
    #
    #   * `Sum` - All values submitted for the matching metric added
    #     together. You can use this statistic to determine the total volume
    #     of a metric.
    #
    #   * `Average` - The value of Sum / SampleCount during the specified
    #     period. By comparing this statistic with the Minimum and Maximum
    #     values, you can determine the full scope of a metric and how close
    #     the average use is to the Minimum and Maximum values. This
    #     comparison helps you to know when to increase or decrease your
    #     resources.
    #
    #   * `SampleCount` - The count, or number, of data points used for the
    #     statistical calculation.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric associated with the alarm.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the alarm.
    #
    #   An alarm has the following possible states:
    #
    #   * `ALARM` - The metric is outside of the defined threshold.
    #
    #   * `INSUFFICIENT_DATA` - The alarm has just started, the metric is
    #     not available, or not enough data is available for the metric to
    #     determine the alarm state.
    #
    #   * `OK` - The metric is within the defined threshold.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The unit of the metric associated with the alarm.
    #   @return [String]
    #
    # @!attribute [rw] contact_protocols
    #   The contact protocols for the alarm, such as `Email`, `SMS` (text
    #   messaging), or both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] notification_triggers
    #   The alarm states that trigger a notification.
    #   @return [Array<String>]
    #
    # @!attribute [rw] notification_enabled
    #   Indicates whether the alarm is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Alarm AWS API Documentation
    #
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
      :notification_enabled)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AllocateStaticIpRequest
    #   data as a hash:
    #
    #       {
    #         static_ip_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] static_ip_name
    #   The name of the static IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AllocateStaticIpRequest AWS API Documentation
    #
    class AllocateStaticIpRequest < Struct.new(
      :static_ip_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AllocateStaticIpResult AWS API Documentation
    #
    class AllocateStaticIpResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AttachDiskRequest
    #   data as a hash:
    #
    #       {
    #         disk_name: "ResourceName", # required
    #         instance_name: "ResourceName", # required
    #         disk_path: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] disk_name
    #   The unique Lightsail disk name (e.g., `my-disk`).
    #   @return [String]
    #
    # @!attribute [rw] instance_name
    #   The name of the Lightsail instance where you want to utilize the
    #   storage disk.
    #   @return [String]
    #
    # @!attribute [rw] disk_path
    #   The disk path to expose to the instance (e.g., `/dev/xvdf`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachDiskRequest AWS API Documentation
    #
    class AttachDiskRequest < Struct.new(
      :disk_name,
      :instance_name,
      :disk_path)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachDiskResult AWS API Documentation
    #
    class AttachDiskResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AttachInstancesToLoadBalancerRequest
    #   data as a hash:
    #
    #       {
    #         load_balancer_name: "ResourceName", # required
    #         instance_names: ["ResourceName"], # required
    #       }
    #
    # @!attribute [rw] load_balancer_name
    #   The name of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] instance_names
    #   An array of strings representing the instance name(s) you want to
    #   attach to your load balancer.
    #
    #   An instance must be `running` before you can attach it to your load
    #   balancer.
    #
    #   There are no additional limits on the number of instances you can
    #   attach to your load balancer, aside from the limit of Lightsail
    #   instances you can create in your account (20).
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachInstancesToLoadBalancerRequest AWS API Documentation
    #
    class AttachInstancesToLoadBalancerRequest < Struct.new(
      :load_balancer_name,
      :instance_names)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachInstancesToLoadBalancerResult AWS API Documentation
    #
    class AttachInstancesToLoadBalancerResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AttachLoadBalancerTlsCertificateRequest
    #   data as a hash:
    #
    #       {
    #         load_balancer_name: "ResourceName", # required
    #         certificate_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] load_balancer_name
    #   The name of the load balancer to which you want to associate the
    #   SSL/TLS certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_name
    #   The name of your SSL/TLS certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachLoadBalancerTlsCertificateRequest AWS API Documentation
    #
    class AttachLoadBalancerTlsCertificateRequest < Struct.new(
      :load_balancer_name,
      :certificate_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #
    #   These SSL/TLS certificates are only usable by Lightsail load
    #   balancers. You can't get the certificate and use it for another
    #   purpose.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachLoadBalancerTlsCertificateResult AWS API Documentation
    #
    class AttachLoadBalancerTlsCertificateResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AttachStaticIpRequest
    #   data as a hash:
    #
    #       {
    #         static_ip_name: "ResourceName", # required
    #         instance_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] static_ip_name
    #   The name of the static IP.
    #   @return [String]
    #
    # @!attribute [rw] instance_name
    #   The instance name to which you want to attach the static IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachStaticIpRequest AWS API Documentation
    #
    class AttachStaticIpRequest < Struct.new(
      :static_ip_name,
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachStaticIpResult AWS API Documentation
    #
    class AttachStaticIpResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # Describes a block storage disk that is attached to an instance, and is
    # included in an automatic snapshot.
    #
    # @!attribute [rw] path
    #   The path of the disk (e.g., `/dev/xvdf`).
    #   @return [String]
    #
    # @!attribute [rw] size_in_gb
    #   The size of the disk in GB.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AttachedDisk AWS API Documentation
    #
    class AttachedDisk < Struct.new(
      :path,
      :size_in_gb)
      include Aws::Structure
    end

    # Describes a request to enable or modify the automatic snapshot add-on
    # for an Amazon Lightsail instance or disk.
    #
    # When you modify the automatic snapshot time for a resource, it is
    # typically effective immediately except under the following conditions:
    #
    # * If an automatic snapshot has been created for the current day, and
    #   you change the snapshot time to a later time of day, then the new
    #   snapshot time will be effective the following day. This ensures that
    #   two snapshots are not created for the current day.
    #
    # * If an automatic snapshot has not yet been created for the current
    #   day, and you change the snapshot time to an earlier time of day,
    #   then the new snapshot time will be effective the following day and a
    #   snapshot is automatically created at the previously set time for the
    #   current day. This ensures that a snapshot is created for the current
    #   day.
    #
    # * If an automatic snapshot has not yet been created for the current
    #   day, and you change the snapshot time to a time that is within 30
    #   minutes from your current time, then the new snapshot time will be
    #   effective the following day and a snapshot is automatically created
    #   at the previously set time for the current day. This ensures that a
    #   snapshot is created for the current day, because 30 minutes is
    #   required between your current time and the new snapshot time that
    #   you specify.
    #
    # * If an automatic snapshot is scheduled to be created within 30
    #   minutes from your current time and you change the snapshot time,
    #   then the new snapshot time will be effective the following day and a
    #   snapshot is automatically created at the previously set time for the
    #   current day. This ensures that a snapshot is created for the current
    #   day, because 30 minutes is required between your current time and
    #   the new snapshot time that you specify.
    #
    # @note When making an API call, you may pass AutoSnapshotAddOnRequest
    #   data as a hash:
    #
    #       {
    #         snapshot_time_of_day: "TimeOfDay",
    #       }
    #
    # @!attribute [rw] snapshot_time_of_day
    #   The daily time when an automatic snapshot will be created.
    #
    #   Constraints:
    #
    #   * Must be in `HH:00` format, and in an hourly increment.
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * The snapshot will be automatically created between the time
    #     specified and up to 45 minutes after.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AutoSnapshotAddOnRequest AWS API Documentation
    #
    class AutoSnapshotAddOnRequest < Struct.new(
      :snapshot_time_of_day)
      include Aws::Structure
    end

    # Describes an automatic snapshot.
    #
    # @!attribute [rw] date
    #   The date of the automatic snapshot in `YYYY-MM-DD` format.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the automatic snapshot was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the automatic snapshot.
    #   @return [String]
    #
    # @!attribute [rw] from_attached_disks
    #   An array of objects that describe the block storage disks attached
    #   to the instance when the automatic snapshot was created.
    #   @return [Array<Types::AttachedDisk>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AutoSnapshotDetails AWS API Documentation
    #
    class AutoSnapshotDetails < Struct.new(
      :date,
      :created_at,
      :status,
      :from_attached_disks)
      include Aws::Structure
    end

    # Describes an Availability Zone.
    #
    # @!attribute [rw] zone_name
    #   The name of the Availability Zone. The format is `us-east-2a`
    #   (case-sensitive).
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the Availability Zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/AvailabilityZone AWS API Documentation
    #
    class AvailabilityZone < Struct.new(
      :zone_name,
      :state)
      include Aws::Structure
    end

    # Describes a blueprint (a virtual private server image).
    #
    # @!attribute [rw] blueprint_id
    #   The ID for the virtual private server image (e.g.,
    #   `app_wordpress_4_4` or `app_lamp_7_0`).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the blueprint (e.g., `Amazon Linux`).
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The group name of the blueprint (e.g., `amazon-linux`).
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the blueprint (e.g., `os` or `app`).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] is_active
    #   A Boolean value indicating whether the blueprint is active. Inactive
    #   blueprints are listed to support customers with existing instances
    #   but are not necessarily available for launch of new instances.
    #   Blueprints are marked inactive when they become outdated due to
    #   operating system updates or new application releases.
    #   @return [Boolean]
    #
    # @!attribute [rw] min_power
    #   The minimum bundle power required to run this blueprint. For
    #   example, you need a bundle with a power value of 500 or more to
    #   create an instance that uses a blueprint with a minimum power value
    #   of 500. `0` indicates that the blueprint runs on all instance sizes.
    #   @return [Integer]
    #
    # @!attribute [rw] version
    #   The version number of the operating system, application, or stack
    #   (e.g., `2016.03.0`).
    #   @return [String]
    #
    # @!attribute [rw] version_code
    #   The version code.
    #   @return [String]
    #
    # @!attribute [rw] product_url
    #   The product URL to learn more about the image or blueprint.
    #   @return [String]
    #
    # @!attribute [rw] license_url
    #   The end-user license agreement URL for the image or blueprint.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The operating system platform (either Linux/Unix-based or Windows
    #   Server-based) of the blueprint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Blueprint AWS API Documentation
    #
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
      :platform)
      include Aws::Structure
    end

    # Describes a bundle, which is a set of specs describing your virtual
    # private server (or *instance*).
    #
    # @!attribute [rw] price
    #   The price in US dollars (e.g., `5.0`) of the bundle.
    #   @return [Float]
    #
    # @!attribute [rw] cpu_count
    #   The number of vCPUs included in the bundle (e.g., `2`).
    #   @return [Integer]
    #
    # @!attribute [rw] disk_size_in_gb
    #   The size of the SSD (e.g., `30`).
    #   @return [Integer]
    #
    # @!attribute [rw] bundle_id
    #   The bundle ID (e.g., `micro_1_0`).
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The Amazon EC2 instance type (e.g., `t2.micro`).
    #   @return [String]
    #
    # @!attribute [rw] is_active
    #   A Boolean value indicating whether the bundle is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   A friendly name for the bundle (e.g., `Micro`).
    #   @return [String]
    #
    # @!attribute [rw] power
    #   A numeric value that represents the power of the bundle (e.g.,
    #   `500`). You can use the bundle's power value in conjunction with a
    #   blueprint's minimum power value to determine whether the blueprint
    #   will run on the bundle. For example, you need a bundle with a power
    #   value of 500 or more to create an instance that uses a blueprint
    #   with a minimum power value of 500.
    #   @return [Integer]
    #
    # @!attribute [rw] ram_size_in_gb
    #   The amount of RAM in GB (e.g., `2.0`).
    #   @return [Float]
    #
    # @!attribute [rw] transfer_per_month_in_gb
    #   The data transfer rate per month in GB (e.g., `2000`).
    #   @return [Integer]
    #
    # @!attribute [rw] supported_platforms
    #   The operating system platform (Linux/Unix-based or Windows
    #   Server-based) that the bundle supports. You can only launch a
    #   `WINDOWS` bundle on a blueprint that supports the `WINDOWS`
    #   platform. `LINUX_UNIX` blueprints require a `LINUX_UNIX` bundle.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Bundle AWS API Documentation
    #
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
      :supported_platforms)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CloseInstancePublicPortsRequest
    #   data as a hash:
    #
    #       {
    #         port_info: { # required
    #           from_port: 1,
    #           to_port: 1,
    #           protocol: "tcp", # accepts tcp, all, udp, icmp
    #           cidrs: ["string"],
    #           cidr_list_aliases: ["string"],
    #         },
    #         instance_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] port_info
    #   An object to describe the ports to close for the specified instance.
    #   @return [Types::PortInfo]
    #
    # @!attribute [rw] instance_name
    #   The name of the instance for which to close ports.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CloseInstancePublicPortsRequest AWS API Documentation
    #
    class CloseInstancePublicPortsRequest < Struct.new(
      :port_info,
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An object that describes the result of the action, such as the
    #   status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CloseInstancePublicPortsResult AWS API Documentation
    #
    class CloseInstancePublicPortsResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # Describes a CloudFormation stack record created as a result of the
    # `create cloud formation stack` operation.
    #
    # A CloudFormation stack record provides information about the AWS
    # CloudFormation stack used to create a new Amazon Elastic Compute Cloud
    # instance from an exported Lightsail instance snapshot.
    #
    # @!attribute [rw] name
    #   The name of the CloudFormation stack record. It starts with
    #   `CloudFormationStackRecord` followed by a GUID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the CloudFormation stack record.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date when the CloudFormation stack record was created.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   A list of objects describing the Availability Zone and AWS Region of
    #   the CloudFormation stack record.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type (e.g., `CloudFormationStackRecord`).
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the CloudFormation stack record.
    #   @return [String]
    #
    # @!attribute [rw] source_info
    #   A list of objects describing the source of the CloudFormation stack
    #   record.
    #   @return [Array<Types::CloudFormationStackRecordSourceInfo>]
    #
    # @!attribute [rw] destination_info
    #   A list of objects describing the destination service, which is AWS
    #   CloudFormation, and the Amazon Resource Name (ARN) of the AWS
    #   CloudFormation stack.
    #   @return [Types::DestinationInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CloudFormationStackRecord AWS API Documentation
    #
    class CloudFormationStackRecord < Struct.new(
      :name,
      :arn,
      :created_at,
      :location,
      :resource_type,
      :state,
      :source_info,
      :destination_info)
      include Aws::Structure
    end

    # Describes the source of a CloudFormation stack record (i.e., the
    # export snapshot record).
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type (e.g., `ExportSnapshotRecord`).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the record.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the export snapshot record.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CloudFormationStackRecordSourceInfo AWS API Documentation
    #
    class CloudFormationStackRecordSourceInfo < Struct.new(
      :resource_type,
      :name,
      :arn)
      include Aws::Structure
    end

    # Describes a contact method.
    #
    # A contact method is a way to send you notifications. For more
    # information, see [Notifications in Amazon Lightsail][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-notifications
    #
    # @!attribute [rw] contact_endpoint
    #   The destination of the contact method, such as an email address or a
    #   mobile phone number.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the contact method.
    #
    #   A contact method has the following possible status:
    #
    #   * `PendingVerification` - The contact method has not yet been
    #     verified, and the verification has not yet expired.
    #
    #   * `Valid` - The contact method has been verified.
    #
    #   * `InValid` - An attempt was made to verify the contact method, but
    #     the verification has expired.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol of the contact method, such as email or SMS (text
    #   messaging).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the contact method.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the contact method.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the contact method was created.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   Describes the resource location.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type (e.g., `ContactMethod`).
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about your Lightsail contact method. This code
    #   enables our support team to look up your Lightsail information more
    #   easily.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ContactMethod AWS API Documentation
    #
    class ContactMethod < Struct.new(
      :contact_endpoint,
      :status,
      :protocol,
      :name,
      :arn,
      :created_at,
      :location,
      :resource_type,
      :support_code)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CopySnapshotRequest
    #   data as a hash:
    #
    #       {
    #         source_snapshot_name: "ResourceName",
    #         source_resource_name: "string",
    #         restore_date: "string",
    #         use_latest_restorable_auto_snapshot: false,
    #         target_snapshot_name: "ResourceName", # required
    #         source_region: "us-east-1", # required, accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-west-2, eu-west-3, eu-central-1, ca-central-1, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2
    #       }
    #
    # @!attribute [rw] source_snapshot_name
    #   The name of the source manual snapshot to copy.
    #
    #   Constraint:
    #
    #   * Define this parameter only when copying a manual snapshot as
    #     another manual snapshot.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] source_resource_name
    #   The name of the source instance or disk from which the source
    #   automatic snapshot was created.
    #
    #   Constraint:
    #
    #   * Define this parameter only when copying an automatic snapshot as a
    #     manual snapshot. For more information, see the [Lightsail Dev
    #     Guide][1].
    #
    #   ^
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-keeping-automatic-snapshots
    #   @return [String]
    #
    # @!attribute [rw] restore_date
    #   The date of the source automatic snapshot to copy. Use the `get auto
    #   snapshots` operation to identify the dates of the available
    #   automatic snapshots.
    #
    #   Constraints:
    #
    #   * Must be specified in `YYYY-MM-DD` format.
    #
    #   * This parameter cannot be defined together with the `use latest
    #     restorable auto snapshot` parameter. The `restore date` and `use
    #     latest restorable auto snapshot` parameters are mutually
    #     exclusive.
    #
    #   * Define this parameter only when copying an automatic snapshot as a
    #     manual snapshot. For more information, see the [Lightsail Dev
    #     Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-keeping-automatic-snapshots
    #   @return [String]
    #
    # @!attribute [rw] use_latest_restorable_auto_snapshot
    #   A Boolean value to indicate whether to use the latest available
    #   automatic snapshot of the specified source instance or disk.
    #
    #   Constraints:
    #
    #   * This parameter cannot be defined together with the `restore date`
    #     parameter. The `use latest restorable auto snapshot` and `restore
    #     date` parameters are mutually exclusive.
    #
    #   * Define this parameter only when copying an automatic snapshot as a
    #     manual snapshot. For more information, see the [Lightsail Dev
    #     Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-keeping-automatic-snapshots
    #   @return [Boolean]
    #
    # @!attribute [rw] target_snapshot_name
    #   The name of the new manual snapshot to be created as a copy.
    #   @return [String]
    #
    # @!attribute [rw] source_region
    #   The AWS Region where the source manual or automatic snapshot is
    #   located.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CopySnapshotRequest AWS API Documentation
    #
    class CopySnapshotRequest < Struct.new(
      :source_snapshot_name,
      :source_resource_name,
      :restore_date,
      :use_latest_restorable_auto_snapshot,
      :target_snapshot_name,
      :source_region)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CopySnapshotResult AWS API Documentation
    #
    class CopySnapshotResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCloudFormationStackRequest
    #   data as a hash:
    #
    #       {
    #         instances: [ # required
    #           {
    #             source_name: "ResourceName", # required
    #             instance_type: "NonEmptyString", # required
    #             port_info_source: "DEFAULT", # required, accepts DEFAULT, INSTANCE, NONE, CLOSED
    #             user_data: "string",
    #             availability_zone: "string", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] instances
    #   An array of parameters that will be used to create the new Amazon
    #   EC2 instance. You can only pass one instance entry at a time in this
    #   array. You will get an invalid parameter error if you pass more than
    #   one instance entry in this array.
    #   @return [Array<Types::InstanceEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateCloudFormationStackRequest AWS API Documentation
    #
    class CreateCloudFormationStackRequest < Struct.new(
      :instances)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateCloudFormationStackResult AWS API Documentation
    #
    class CreateCloudFormationStackResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateContactMethodRequest
    #   data as a hash:
    #
    #       {
    #         protocol: "Email", # required, accepts Email, SMS
    #         contact_endpoint: "StringMax256", # required
    #       }
    #
    # @!attribute [rw] protocol
    #   The protocol of the contact method, such as `Email` or `SMS` (text
    #   messaging).
    #
    #   The `SMS` protocol is supported only in the following AWS Regions.
    #
    #   * US East (N. Virginia) (`us-east-1`)
    #
    #   * US West (Oregon) (`us-west-2`)
    #
    #   * Europe (Ireland) (`eu-west-1`)
    #
    #   * Asia Pacific (Tokyo) (`ap-northeast-1`)
    #
    #   * Asia Pacific (Singapore) (`ap-southeast-1`)
    #
    #   * Asia Pacific (Sydney) (`ap-southeast-2`)
    #
    #   For a list of countries/regions where SMS text messages can be sent,
    #   and the latest AWS Regions where SMS text messaging is supported,
    #   see [Supported Regions and Countries][1] in the *Amazon SNS
    #   Developer Guide*.
    #
    #   For more information about notifications in Amazon Lightsail, see
    #   [Notifications in Amazon Lightsail][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sns/latest/dg/sns-supported-regions-countries.html
    #   [2]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-notifications
    #   @return [String]
    #
    # @!attribute [rw] contact_endpoint
    #   The destination of the contact method, such as an email address or a
    #   mobile phone number.
    #
    #   Use the E.164 format when specifying a mobile phone number. E.164 is
    #   a standard for the phone number structure used for international
    #   telecommunication. Phone numbers that follow this format can have a
    #   maximum of 15 digits, and they are prefixed with the plus character
    #   (+) and the country code. For example, a U.S. phone number in E.164
    #   format would be specified as +1XXX5550100. For more information, see
    #   [E.164][1] on *Wikipedia*.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/E.164
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateContactMethodRequest AWS API Documentation
    #
    class CreateContactMethodRequest < Struct.new(
      :protocol,
      :contact_endpoint)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateContactMethodResult AWS API Documentation
    #
    class CreateContactMethodResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDiskFromSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         disk_name: "ResourceName", # required
    #         disk_snapshot_name: "ResourceName",
    #         availability_zone: "NonEmptyString", # required
    #         size_in_gb: 1, # required
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #         add_ons: [
    #           {
    #             add_on_type: "AutoSnapshot", # required, accepts AutoSnapshot
    #             auto_snapshot_add_on_request: {
    #               snapshot_time_of_day: "TimeOfDay",
    #             },
    #           },
    #         ],
    #         source_disk_name: "string",
    #         restore_date: "string",
    #         use_latest_restorable_auto_snapshot: false,
    #       }
    #
    # @!attribute [rw] disk_name
    #   The unique Lightsail disk name (e.g., `my-disk`).
    #   @return [String]
    #
    # @!attribute [rw] disk_snapshot_name
    #   The name of the disk snapshot (e.g., `my-snapshot`) from which to
    #   create the new storage disk.
    #
    #   Constraint:
    #
    #   * This parameter cannot be defined together with the `source disk
    #     name` parameter. The `disk snapshot name` and `source disk name`
    #     parameters are mutually exclusive.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone where you want to create the disk (e.g.,
    #   `us-east-2a`). Choose the same Availability Zone as the Lightsail
    #   instance where you want to create the disk.
    #
    #   Use the GetRegions operation to list the Availability Zones where
    #   Lightsail is currently available.
    #   @return [String]
    #
    # @!attribute [rw] size_in_gb
    #   The size of the disk in GB (e.g., `32`).
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] add_ons
    #   An array of objects that represent the add-ons to enable for the new
    #   disk.
    #   @return [Array<Types::AddOnRequest>]
    #
    # @!attribute [rw] source_disk_name
    #   The name of the source disk from which the source automatic snapshot
    #   was created.
    #
    #   Constraints:
    #
    #   * This parameter cannot be defined together with the `disk snapshot
    #     name` parameter. The `source disk name` and `disk snapshot name`
    #     parameters are mutually exclusive.
    #
    #   * Define this parameter only when creating a new disk from an
    #     automatic snapshot. For more information, see the [Lightsail Dev
    #     Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots
    #   @return [String]
    #
    # @!attribute [rw] restore_date
    #   The date of the automatic snapshot to use for the new disk. Use the
    #   `get auto snapshots` operation to identify the dates of the
    #   available automatic snapshots.
    #
    #   Constraints:
    #
    #   * Must be specified in `YYYY-MM-DD` format.
    #
    #   * This parameter cannot be defined together with the `use latest
    #     restorable auto snapshot` parameter. The `restore date` and `use
    #     latest restorable auto snapshot` parameters are mutually
    #     exclusive.
    #
    #   * Define this parameter only when creating a new disk from an
    #     automatic snapshot. For more information, see the [Lightsail Dev
    #     Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots
    #   @return [String]
    #
    # @!attribute [rw] use_latest_restorable_auto_snapshot
    #   A Boolean value to indicate whether to use the latest available
    #   automatic snapshot.
    #
    #   Constraints:
    #
    #   * This parameter cannot be defined together with the `restore date`
    #     parameter. The `use latest restorable auto snapshot` and `restore
    #     date` parameters are mutually exclusive.
    #
    #   * Define this parameter only when creating a new disk from an
    #     automatic snapshot. For more information, see the [Lightsail Dev
    #     Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDiskFromSnapshotRequest AWS API Documentation
    #
    class CreateDiskFromSnapshotRequest < Struct.new(
      :disk_name,
      :disk_snapshot_name,
      :availability_zone,
      :size_in_gb,
      :tags,
      :add_ons,
      :source_disk_name,
      :restore_date,
      :use_latest_restorable_auto_snapshot)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDiskFromSnapshotResult AWS API Documentation
    #
    class CreateDiskFromSnapshotResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDiskRequest
    #   data as a hash:
    #
    #       {
    #         disk_name: "ResourceName", # required
    #         availability_zone: "NonEmptyString", # required
    #         size_in_gb: 1, # required
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #         add_ons: [
    #           {
    #             add_on_type: "AutoSnapshot", # required, accepts AutoSnapshot
    #             auto_snapshot_add_on_request: {
    #               snapshot_time_of_day: "TimeOfDay",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] disk_name
    #   The unique Lightsail disk name (e.g., `my-disk`).
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone where you want to create the disk (e.g.,
    #   `us-east-2a`). Use the same Availability Zone as the Lightsail
    #   instance to which you want to attach the disk.
    #
    #   Use the `get regions` operation to list the Availability Zones where
    #   Lightsail is currently available.
    #   @return [String]
    #
    # @!attribute [rw] size_in_gb
    #   The size of the disk in GB (e.g., `32`).
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] add_ons
    #   An array of objects that represent the add-ons to enable for the new
    #   disk.
    #   @return [Array<Types::AddOnRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDiskRequest AWS API Documentation
    #
    class CreateDiskRequest < Struct.new(
      :disk_name,
      :availability_zone,
      :size_in_gb,
      :tags,
      :add_ons)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDiskResult AWS API Documentation
    #
    class CreateDiskResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDiskSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         disk_name: "ResourceName",
    #         disk_snapshot_name: "ResourceName", # required
    #         instance_name: "ResourceName",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] disk_name
    #   The unique name of the source disk (e.g., `Disk-Virginia-1`).
    #
    #   <note markdown="1"> This parameter cannot be defined together with the `instance name`
    #   parameter. The `disk name` and `instance name` parameters are
    #   mutually exclusive.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] disk_snapshot_name
    #   The name of the destination disk snapshot (e.g., `my-disk-snapshot`)
    #   based on the source disk.
    #   @return [String]
    #
    # @!attribute [rw] instance_name
    #   The unique name of the source instance (e.g.,
    #   `Amazon_Linux-512MB-Virginia-1`). When this is defined, a snapshot
    #   of the instance's system volume is created.
    #
    #   <note markdown="1"> This parameter cannot be defined together with the `disk name`
    #   parameter. The `instance name` and `disk name` parameters are
    #   mutually exclusive.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDiskSnapshotRequest AWS API Documentation
    #
    class CreateDiskSnapshotRequest < Struct.new(
      :disk_name,
      :disk_snapshot_name,
      :instance_name,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDiskSnapshotResult AWS API Documentation
    #
    class CreateDiskSnapshotResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDomainEntryRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         domain_entry: { # required
    #           id: "NonEmptyString",
    #           name: "DomainName",
    #           target: "string",
    #           is_alias: false,
    #           type: "DomainEntryType",
    #           options: {
    #             "DomainEntryOptionsKeys" => "string",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   The domain name (e.g., `example.com`) for which you want to create
    #   the domain entry.
    #   @return [String]
    #
    # @!attribute [rw] domain_entry
    #   An array of key-value pairs containing information about the domain
    #   entry request.
    #   @return [Types::DomainEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDomainEntryRequest AWS API Documentation
    #
    class CreateDomainEntryRequest < Struct.new(
      :domain_name,
      :domain_entry)
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDomainEntryResult AWS API Documentation
    #
    class CreateDomainEntryResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] domain_name
    #   The domain name to manage (e.g., `example.com`).
    #
    #   <note markdown="1"> You cannot register a new domain name using Lightsail. You must
    #   register a domain name using Amazon Route 53 or another domain name
    #   registrar. If you have already registered your domain, you can enter
    #   its name in this parameter to manage the DNS records for that
    #   domain.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDomainRequest AWS API Documentation
    #
    class CreateDomainRequest < Struct.new(
      :domain_name,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateDomainResult AWS API Documentation
    #
    class CreateDomainResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateInstanceSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         instance_snapshot_name: "ResourceName", # required
    #         instance_name: "ResourceName", # required
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] instance_snapshot_name
    #   The name for your new snapshot.
    #   @return [String]
    #
    # @!attribute [rw] instance_name
    #   The Lightsail instance on which to base your snapshot.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstanceSnapshotRequest AWS API Documentation
    #
    class CreateInstanceSnapshotRequest < Struct.new(
      :instance_snapshot_name,
      :instance_name,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstanceSnapshotResult AWS API Documentation
    #
    class CreateInstanceSnapshotResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateInstancesFromSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         instance_names: ["string"], # required
    #         attached_disk_mapping: {
    #           "ResourceName" => [
    #             {
    #               original_disk_path: "NonEmptyString",
    #               new_disk_name: "ResourceName",
    #             },
    #           ],
    #         },
    #         availability_zone: "string", # required
    #         instance_snapshot_name: "ResourceName",
    #         bundle_id: "NonEmptyString", # required
    #         user_data: "string",
    #         key_pair_name: "ResourceName",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #         add_ons: [
    #           {
    #             add_on_type: "AutoSnapshot", # required, accepts AutoSnapshot
    #             auto_snapshot_add_on_request: {
    #               snapshot_time_of_day: "TimeOfDay",
    #             },
    #           },
    #         ],
    #         source_instance_name: "string",
    #         restore_date: "string",
    #         use_latest_restorable_auto_snapshot: false,
    #       }
    #
    # @!attribute [rw] instance_names
    #   The names for your new instances.
    #   @return [Array<String>]
    #
    # @!attribute [rw] attached_disk_mapping
    #   An object containing information about one or more disk mappings.
    #   @return [Hash<String,Array<Types::DiskMap>>]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone where you want to create your instances. Use
    #   the following formatting: `us-east-2a` (case sensitive). You can get
    #   a list of Availability Zones by using the [get regions][1]
    #   operation. Be sure to add the `include Availability Zones` parameter
    #   to your request.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html
    #   @return [String]
    #
    # @!attribute [rw] instance_snapshot_name
    #   The name of the instance snapshot on which you are basing your new
    #   instances. Use the get instance snapshots operation to return
    #   information about your existing snapshots.
    #
    #   Constraint:
    #
    #   * This parameter cannot be defined together with the `source
    #     instance name` parameter. The `instance snapshot name` and `source
    #     instance name` parameters are mutually exclusive.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The bundle of specification information for your virtual private
    #   server (or *instance*), including the pricing plan (e.g.,
    #   `micro_1_0`).
    #   @return [String]
    #
    # @!attribute [rw] user_data
    #   You can create a launch script that configures a server with
    #   additional user data. For example, `apt-get -y update`.
    #
    #   <note markdown="1"> Depending on the machine image you choose, the command to get
    #   software on your instance varies. Amazon Linux and CentOS use `yum`,
    #   Debian and Ubuntu use `apt-get`, and FreeBSD uses `pkg`. For a
    #   complete list, see the [Dev Guide][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/getting-started/article/compare-options-choose-lightsail-instance-image
    #   @return [String]
    #
    # @!attribute [rw] key_pair_name
    #   The name for your key pair.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] add_ons
    #   An array of objects representing the add-ons to enable for the new
    #   instance.
    #   @return [Array<Types::AddOnRequest>]
    #
    # @!attribute [rw] source_instance_name
    #   The name of the source instance from which the source automatic
    #   snapshot was created.
    #
    #   Constraints:
    #
    #   * This parameter cannot be defined together with the `instance
    #     snapshot name` parameter. The `source instance name` and `instance
    #     snapshot name` parameters are mutually exclusive.
    #
    #   * Define this parameter only when creating a new instance from an
    #     automatic snapshot. For more information, see the [Lightsail Dev
    #     Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots
    #   @return [String]
    #
    # @!attribute [rw] restore_date
    #   The date of the automatic snapshot to use for the new instance. Use
    #   the `get auto snapshots` operation to identify the dates of the
    #   available automatic snapshots.
    #
    #   Constraints:
    #
    #   * Must be specified in `YYYY-MM-DD` format.
    #
    #   * This parameter cannot be defined together with the `use latest
    #     restorable auto snapshot` parameter. The `restore date` and `use
    #     latest restorable auto snapshot` parameters are mutually
    #     exclusive.
    #
    #   * Define this parameter only when creating a new instance from an
    #     automatic snapshot. For more information, see the [Lightsail Dev
    #     Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots
    #   @return [String]
    #
    # @!attribute [rw] use_latest_restorable_auto_snapshot
    #   A Boolean value to indicate whether to use the latest available
    #   automatic snapshot.
    #
    #   Constraints:
    #
    #   * This parameter cannot be defined together with the `restore date`
    #     parameter. The `use latest restorable auto snapshot` and `restore
    #     date` parameters are mutually exclusive.
    #
    #   * Define this parameter only when creating a new instance from an
    #     automatic snapshot. For more information, see the [Lightsail Dev
    #     Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstancesFromSnapshotRequest AWS API Documentation
    #
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
      :source_instance_name,
      :restore_date,
      :use_latest_restorable_auto_snapshot)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstancesFromSnapshotResult AWS API Documentation
    #
    class CreateInstancesFromSnapshotResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateInstancesRequest
    #   data as a hash:
    #
    #       {
    #         instance_names: ["string"], # required
    #         availability_zone: "string", # required
    #         custom_image_name: "ResourceName",
    #         blueprint_id: "NonEmptyString", # required
    #         bundle_id: "NonEmptyString", # required
    #         user_data: "string",
    #         key_pair_name: "ResourceName",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #         add_ons: [
    #           {
    #             add_on_type: "AutoSnapshot", # required, accepts AutoSnapshot
    #             auto_snapshot_add_on_request: {
    #               snapshot_time_of_day: "TimeOfDay",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] instance_names
    #   The names to use for your new Lightsail instances. Separate multiple
    #   values using quotation marks and commas, for example:
    #   `["MyFirstInstance","MySecondInstance"]`
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which to create your instance. Use the
    #   following format: `us-east-2a` (case sensitive). You can get a list
    #   of Availability Zones by using the [get regions][1] operation. Be
    #   sure to add the `include Availability Zones` parameter to your
    #   request.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html
    #   @return [String]
    #
    # @!attribute [rw] custom_image_name
    #   (Deprecated) The name for your custom image.
    #
    #   <note markdown="1"> In releases prior to June 12, 2017, this parameter was ignored by
    #   the API. It is now deprecated.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] blueprint_id
    #   The ID for a virtual private server image (e.g., `app_wordpress_4_4`
    #   or `app_lamp_7_0`). Use the `get blueprints` operation to return a
    #   list of available images (or *blueprints*).
    #
    #   <note markdown="1"> Use active blueprints when creating new instances. Inactive
    #   blueprints are listed to support customers with existing instances
    #   and are not necessarily available to create new instances.
    #   Blueprints are marked inactive when they become outdated due to
    #   operating system updates or new application releases.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The bundle of specification information for your virtual private
    #   server (or *instance*), including the pricing plan (e.g.,
    #   `micro_1_0`).
    #   @return [String]
    #
    # @!attribute [rw] user_data
    #   A launch script you can create that configures a server with
    #   additional user data. For example, you might want to run `apt-get -y
    #   update`.
    #
    #   <note markdown="1"> Depending on the machine image you choose, the command to get
    #   software on your instance varies. Amazon Linux and CentOS use `yum`,
    #   Debian and Ubuntu use `apt-get`, and FreeBSD uses `pkg`. For a
    #   complete list, see the [Dev Guide][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/getting-started/article/compare-options-choose-lightsail-instance-image
    #   @return [String]
    #
    # @!attribute [rw] key_pair_name
    #   The name of your key pair.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] add_ons
    #   An array of objects representing the add-ons to enable for the new
    #   instance.
    #   @return [Array<Types::AddOnRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstancesRequest AWS API Documentation
    #
    class CreateInstancesRequest < Struct.new(
      :instance_names,
      :availability_zone,
      :custom_image_name,
      :blueprint_id,
      :bundle_id,
      :user_data,
      :key_pair_name,
      :tags,
      :add_ons)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateInstancesResult AWS API Documentation
    #
    class CreateInstancesResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateKeyPairRequest
    #   data as a hash:
    #
    #       {
    #         key_pair_name: "ResourceName", # required
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] key_pair_name
    #   The name for your new key pair.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateKeyPairRequest AWS API Documentation
    #
    class CreateKeyPairRequest < Struct.new(
      :key_pair_name,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] key_pair
    #   An array of key-value pairs containing information about the new key
    #   pair you just created.
    #   @return [Types::KeyPair]
    #
    # @!attribute [rw] public_key_base_64
    #   A base64-encoded public key of the `ssh-rsa` type.
    #   @return [String]
    #
    # @!attribute [rw] private_key_base_64
    #   A base64-encoded RSA private key.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateKeyPairResult AWS API Documentation
    #
    class CreateKeyPairResult < Struct.new(
      :key_pair,
      :public_key_base_64,
      :private_key_base_64,
      :operation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateLoadBalancerRequest
    #   data as a hash:
    #
    #       {
    #         load_balancer_name: "ResourceName", # required
    #         instance_port: 1, # required
    #         health_check_path: "string",
    #         certificate_name: "ResourceName",
    #         certificate_domain_name: "DomainName",
    #         certificate_alternative_names: ["DomainName"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] load_balancer_name
    #   The name of your load balancer.
    #   @return [String]
    #
    # @!attribute [rw] instance_port
    #   The instance port where you're creating your load balancer.
    #   @return [Integer]
    #
    # @!attribute [rw] health_check_path
    #   The path you provided to perform the load balancer health check. If
    #   you didn't specify a health check path, Lightsail uses the root
    #   path of your website (e.g., `"/"`).
    #
    #   You may want to specify a custom health check path other than the
    #   root of your application if your home page loads slowly or has a lot
    #   of media or scripting on it.
    #   @return [String]
    #
    # @!attribute [rw] certificate_name
    #   The name of the SSL/TLS certificate.
    #
    #   If you specify `certificateName`, then `certificateDomainName` is
    #   required (and vice-versa).
    #   @return [String]
    #
    # @!attribute [rw] certificate_domain_name
    #   The domain name with which your certificate is associated (e.g.,
    #   `example.com`).
    #
    #   If you specify `certificateDomainName`, then `certificateName` is
    #   required (and vice-versa).
    #   @return [String]
    #
    # @!attribute [rw] certificate_alternative_names
    #   The optional alternative domains and subdomains to use with your
    #   SSL/TLS certificate (e.g., `www.example.com`, `example.com`,
    #   `m.example.com`, `blog.example.com`).
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateLoadBalancerRequest AWS API Documentation
    #
    class CreateLoadBalancerRequest < Struct.new(
      :load_balancer_name,
      :instance_port,
      :health_check_path,
      :certificate_name,
      :certificate_domain_name,
      :certificate_alternative_names,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateLoadBalancerResult AWS API Documentation
    #
    class CreateLoadBalancerResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateLoadBalancerTlsCertificateRequest
    #   data as a hash:
    #
    #       {
    #         load_balancer_name: "ResourceName", # required
    #         certificate_name: "ResourceName", # required
    #         certificate_domain_name: "DomainName", # required
    #         certificate_alternative_names: ["DomainName"],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] load_balancer_name
    #   The load balancer name where you want to create the SSL/TLS
    #   certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_name
    #   The SSL/TLS certificate name.
    #
    #   You can have up to 10 certificates in your account at one time. Each
    #   Lightsail load balancer can have up to 2 certificates associated
    #   with it at one time. There is also an overall limit to the number of
    #   certificates that can be issue in a 365-day period. For more
    #   information, see [Limits][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html
    #   @return [String]
    #
    # @!attribute [rw] certificate_domain_name
    #   The domain name (e.g., `example.com`) for your SSL/TLS certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_alternative_names
    #   An array of strings listing alternative domains and subdomains for
    #   your SSL/TLS certificate. Lightsail will de-dupe the names for you.
    #   You can have a maximum of 9 alternative names (in addition to the 1
    #   primary domain). We do not support wildcards (e.g.,
    #   `*.example.com`).
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateLoadBalancerTlsCertificateRequest AWS API Documentation
    #
    class CreateLoadBalancerTlsCertificateRequest < Struct.new(
      :load_balancer_name,
      :certificate_name,
      :certificate_domain_name,
      :certificate_alternative_names,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateLoadBalancerTlsCertificateResult AWS API Documentation
    #
    class CreateLoadBalancerTlsCertificateResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRelationalDatabaseFromSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         relational_database_name: "ResourceName", # required
    #         availability_zone: "string",
    #         publicly_accessible: false,
    #         relational_database_snapshot_name: "ResourceName",
    #         relational_database_bundle_id: "string",
    #         source_relational_database_name: "ResourceName",
    #         restore_time: Time.now,
    #         use_latest_restorable_time: false,
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] relational_database_name
    #   The name to use for your new database.
    #
    #   Constraints:
    #
    #   * Must contain from 2 to 255 alphanumeric characters, or hyphens.
    #
    #   * The first and last character must be a letter or number.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which to create your new database. Use the
    #   `us-east-2a` case-sensitive format.
    #
    #   You can get a list of Availability Zones by using the `get regions`
    #   operation. Be sure to add the `include relational database
    #   Availability Zones` parameter to your request.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies the accessibility options for your new database. A value
    #   of `true` specifies a database that is available to resources
    #   outside of your Lightsail account. A value of `false` specifies a
    #   database that is available only to your Lightsail resources in the
    #   same region as your database.
    #   @return [Boolean]
    #
    # @!attribute [rw] relational_database_snapshot_name
    #   The name of the database snapshot from which to create your new
    #   database.
    #   @return [String]
    #
    # @!attribute [rw] relational_database_bundle_id
    #   The bundle ID for your new database. A bundle describes the
    #   performance specifications for your database.
    #
    #   You can get a list of database bundle IDs by using the `get
    #   relational database bundles` operation.
    #
    #   When creating a new database from a snapshot, you cannot choose a
    #   bundle that is smaller than the bundle of the source database.
    #   @return [String]
    #
    # @!attribute [rw] source_relational_database_name
    #   The name of the source database.
    #   @return [String]
    #
    # @!attribute [rw] restore_time
    #   The date and time to restore your database from.
    #
    #   Constraints:
    #
    #   * Must be before the latest restorable time for the database.
    #
    #   * Cannot be specified if the `use latest restorable time` parameter
    #     is `true`.
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Specified in the Unix time format.
    #
    #     For example, if you wish to use a restore time of October 1, 2018,
    #     at 8 PM UTC, then you input `1538424000` as the restore time.
    #   @return [Time]
    #
    # @!attribute [rw] use_latest_restorable_time
    #   Specifies whether your database is restored from the latest backup
    #   time. A value of `true` restores from the latest backup time.
    #
    #   Default: `false`
    #
    #   Constraints: Cannot be specified if the `restore time` parameter is
    #   provided.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateRelationalDatabaseFromSnapshotRequest AWS API Documentation
    #
    class CreateRelationalDatabaseFromSnapshotRequest < Struct.new(
      :relational_database_name,
      :availability_zone,
      :publicly_accessible,
      :relational_database_snapshot_name,
      :relational_database_bundle_id,
      :source_relational_database_name,
      :restore_time,
      :use_latest_restorable_time,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateRelationalDatabaseFromSnapshotResult AWS API Documentation
    #
    class CreateRelationalDatabaseFromSnapshotResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRelationalDatabaseRequest
    #   data as a hash:
    #
    #       {
    #         relational_database_name: "ResourceName", # required
    #         availability_zone: "string",
    #         relational_database_blueprint_id: "string", # required
    #         relational_database_bundle_id: "string", # required
    #         master_database_name: "string", # required
    #         master_username: "string", # required
    #         master_user_password: "SensitiveString",
    #         preferred_backup_window: "string",
    #         preferred_maintenance_window: "string",
    #         publicly_accessible: false,
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] relational_database_name
    #   The name to use for your new database.
    #
    #   Constraints:
    #
    #   * Must contain from 2 to 255 alphanumeric characters, or hyphens.
    #
    #   * The first and last character must be a letter or number.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which to create your new database. Use the
    #   `us-east-2a` case-sensitive format.
    #
    #   You can get a list of Availability Zones by using the `get regions`
    #   operation. Be sure to add the `include relational database
    #   Availability Zones` parameter to your request.
    #   @return [String]
    #
    # @!attribute [rw] relational_database_blueprint_id
    #   The blueprint ID for your new database. A blueprint describes the
    #   major engine version of a database.
    #
    #   You can get a list of database blueprints IDs by using the `get
    #   relational database blueprints` operation.
    #   @return [String]
    #
    # @!attribute [rw] relational_database_bundle_id
    #   The bundle ID for your new database. A bundle describes the
    #   performance specifications for your database.
    #
    #   You can get a list of database bundle IDs by using the `get
    #   relational database bundles` operation.
    #   @return [String]
    #
    # @!attribute [rw] master_database_name
    #   The name of the master database created when the Lightsail database
    #   resource is created.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 64 alphanumeric characters.
    #
    #   * Cannot be a word reserved by the specified database engine
    #   @return [String]
    #
    # @!attribute [rw] master_username
    #   The master user name for your new database.
    #
    #   Constraints:
    #
    #   * Master user name is required.
    #
    #   * Must contain from 1 to 16 alphanumeric characters.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot be a reserved word for the database engine you choose.
    #
    #     For more information about reserved words in MySQL 5.6 or 5.7, see
    #     the Keywords and Reserved Words articles for [MySQL 5.6][1] or
    #     [MySQL 5.7][2] respectively.
    #
    #
    #
    #   [1]: https://dev.mysql.com/doc/refman/5.6/en/keywords.html
    #   [2]: https://dev.mysql.com/doc/refman/5.7/en/keywords.html
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   The password for the master user of your new database. The password
    #   can include any printable ASCII character except "/", """, or
    #   "@".
    #
    #   Constraints: Must contain 8 to 41 characters.
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created for
    #   your new database if automated backups are enabled.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region. For more information about the
    #   preferred backup window time blocks for each region, see the
    #   [Working With Backups][1] guide in the Amazon Relational Database
    #   Service (Amazon RDS) documentation.
    #
    #   Constraints:
    #
    #   * Must be in the `hh24:mi-hh24:mi` format.
    #
    #     Example: `16:00-16:30`
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur on
    #   your new database.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region, occurring on a random day of the
    #   week.
    #
    #   Constraints:
    #
    #   * Must be in the `ddd:hh24:mi-ddd:hh24:mi` format.
    #
    #   * Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   * Must be at least 30 minutes.
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Example: `Tue:17:00-Tue:17:30`
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies the accessibility options for your new database. A value
    #   of `true` specifies a database that is available to resources
    #   outside of your Lightsail account. A value of `false` specifies a
    #   database that is available only to your Lightsail resources in the
    #   same region as your database.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateRelationalDatabaseRequest AWS API Documentation
    #
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
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateRelationalDatabaseResult AWS API Documentation
    #
    class CreateRelationalDatabaseResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRelationalDatabaseSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         relational_database_name: "ResourceName", # required
    #         relational_database_snapshot_name: "ResourceName", # required
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] relational_database_name
    #   The name of the database on which to base your new snapshot.
    #   @return [String]
    #
    # @!attribute [rw] relational_database_snapshot_name
    #   The name for your new database snapshot.
    #
    #   Constraints:
    #
    #   * Must contain from 2 to 255 alphanumeric characters, or hyphens.
    #
    #   * The first and last character must be a letter or number.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values to add to the resource during
    #   create.
    #
    #   To tag a resource after it has been created, see the `tag resource`
    #   operation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateRelationalDatabaseSnapshotRequest AWS API Documentation
    #
    class CreateRelationalDatabaseSnapshotRequest < Struct.new(
      :relational_database_name,
      :relational_database_snapshot_name,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/CreateRelationalDatabaseSnapshotResult AWS API Documentation
    #
    class CreateRelationalDatabaseSnapshotResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAlarmRequest
    #   data as a hash:
    #
    #       {
    #         alarm_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] alarm_name
    #   The name of the alarm to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteAlarmRequest AWS API Documentation
    #
    class DeleteAlarmRequest < Struct.new(
      :alarm_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteAlarmResult AWS API Documentation
    #
    class DeleteAlarmResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAutoSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         resource_name: "ResourceName", # required
    #         date: "AutoSnapshotDate", # required
    #       }
    #
    # @!attribute [rw] resource_name
    #   The name of the source instance or disk from which to delete the
    #   automatic snapshot.
    #   @return [String]
    #
    # @!attribute [rw] date
    #   The date of the automatic snapshot to delete in `YYYY-MM-DD` format.
    #   Use the `get auto snapshots` operation to get the available
    #   automatic snapshots for a resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteAutoSnapshotRequest AWS API Documentation
    #
    class DeleteAutoSnapshotRequest < Struct.new(
      :resource_name,
      :date)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteAutoSnapshotResult AWS API Documentation
    #
    class DeleteAutoSnapshotResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteContactMethodRequest
    #   data as a hash:
    #
    #       {
    #         protocol: "Email", # required, accepts Email, SMS
    #       }
    #
    # @!attribute [rw] protocol
    #   The protocol that will be deleted, such as `Email` or `SMS` (text
    #   messaging).
    #
    #   <note markdown="1"> To delete an `Email` and an `SMS` contact method if you added both,
    #   you must run separate `DeleteContactMethod` actions to delete each
    #   protocol.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteContactMethodRequest AWS API Documentation
    #
    class DeleteContactMethodRequest < Struct.new(
      :protocol)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteContactMethodResult AWS API Documentation
    #
    class DeleteContactMethodResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDiskRequest
    #   data as a hash:
    #
    #       {
    #         disk_name: "ResourceName", # required
    #         force_delete_add_ons: false,
    #       }
    #
    # @!attribute [rw] disk_name
    #   The unique name of the disk you want to delete (e.g., `my-disk`).
    #   @return [String]
    #
    # @!attribute [rw] force_delete_add_ons
    #   A Boolean value to indicate whether to delete the enabled add-ons
    #   for the disk.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDiskRequest AWS API Documentation
    #
    class DeleteDiskRequest < Struct.new(
      :disk_name,
      :force_delete_add_ons)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDiskResult AWS API Documentation
    #
    class DeleteDiskResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDiskSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         disk_snapshot_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] disk_snapshot_name
    #   The name of the disk snapshot you want to delete (e.g.,
    #   `my-disk-snapshot`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDiskSnapshotRequest AWS API Documentation
    #
    class DeleteDiskSnapshotRequest < Struct.new(
      :disk_snapshot_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDiskSnapshotResult AWS API Documentation
    #
    class DeleteDiskSnapshotResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDomainEntryRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         domain_entry: { # required
    #           id: "NonEmptyString",
    #           name: "DomainName",
    #           target: "string",
    #           is_alias: false,
    #           type: "DomainEntryType",
    #           options: {
    #             "DomainEntryOptionsKeys" => "string",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain entry to delete.
    #   @return [String]
    #
    # @!attribute [rw] domain_entry
    #   An array of key-value pairs containing information about your domain
    #   entries.
    #   @return [Types::DomainEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDomainEntryRequest AWS API Documentation
    #
    class DeleteDomainEntryRequest < Struct.new(
      :domain_name,
      :domain_entry)
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDomainEntryResult AWS API Documentation
    #
    class DeleteDomainEntryResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The specific domain name to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDomainRequest AWS API Documentation
    #
    class DeleteDomainRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteDomainResult AWS API Documentation
    #
    class DeleteDomainResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteInstanceRequest
    #   data as a hash:
    #
    #       {
    #         instance_name: "ResourceName", # required
    #         force_delete_add_ons: false,
    #       }
    #
    # @!attribute [rw] instance_name
    #   The name of the instance to delete.
    #   @return [String]
    #
    # @!attribute [rw] force_delete_add_ons
    #   A Boolean value to indicate whether to delete the enabled add-ons
    #   for the disk.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteInstanceRequest AWS API Documentation
    #
    class DeleteInstanceRequest < Struct.new(
      :instance_name,
      :force_delete_add_ons)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteInstanceResult AWS API Documentation
    #
    class DeleteInstanceResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteInstanceSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         instance_snapshot_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] instance_snapshot_name
    #   The name of the snapshot to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteInstanceSnapshotRequest AWS API Documentation
    #
    class DeleteInstanceSnapshotRequest < Struct.new(
      :instance_snapshot_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteInstanceSnapshotResult AWS API Documentation
    #
    class DeleteInstanceSnapshotResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteKeyPairRequest
    #   data as a hash:
    #
    #       {
    #         key_pair_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] key_pair_name
    #   The name of the key pair to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteKeyPairRequest AWS API Documentation
    #
    class DeleteKeyPairRequest < Struct.new(
      :key_pair_name)
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteKeyPairResult AWS API Documentation
    #
    class DeleteKeyPairResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteKnownHostKeysRequest
    #   data as a hash:
    #
    #       {
    #         instance_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] instance_name
    #   The name of the instance for which you want to reset the host key or
    #   certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteKnownHostKeysRequest AWS API Documentation
    #
    class DeleteKnownHostKeysRequest < Struct.new(
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteKnownHostKeysResult AWS API Documentation
    #
    class DeleteKnownHostKeysResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteLoadBalancerRequest
    #   data as a hash:
    #
    #       {
    #         load_balancer_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] load_balancer_name
    #   The name of the load balancer you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteLoadBalancerRequest AWS API Documentation
    #
    class DeleteLoadBalancerRequest < Struct.new(
      :load_balancer_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteLoadBalancerResult AWS API Documentation
    #
    class DeleteLoadBalancerResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteLoadBalancerTlsCertificateRequest
    #   data as a hash:
    #
    #       {
    #         load_balancer_name: "ResourceName", # required
    #         certificate_name: "ResourceName", # required
    #         force: false,
    #       }
    #
    # @!attribute [rw] load_balancer_name
    #   The load balancer name.
    #   @return [String]
    #
    # @!attribute [rw] certificate_name
    #   The SSL/TLS certificate name.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   When `true`, forces the deletion of an SSL/TLS certificate.
    #
    #   There can be two certificates associated with a Lightsail load
    #   balancer: the primary and the backup. The `force` parameter is
    #   required when the primary SSL/TLS certificate is in use by an
    #   instance attached to the load balancer.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteLoadBalancerTlsCertificateRequest AWS API Documentation
    #
    class DeleteLoadBalancerTlsCertificateRequest < Struct.new(
      :load_balancer_name,
      :certificate_name,
      :force)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteLoadBalancerTlsCertificateResult AWS API Documentation
    #
    class DeleteLoadBalancerTlsCertificateResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRelationalDatabaseRequest
    #   data as a hash:
    #
    #       {
    #         relational_database_name: "ResourceName", # required
    #         skip_final_snapshot: false,
    #         final_relational_database_snapshot_name: "ResourceName",
    #       }
    #
    # @!attribute [rw] relational_database_name
    #   The name of the database that you are deleting.
    #   @return [String]
    #
    # @!attribute [rw] skip_final_snapshot
    #   Determines whether a final database snapshot is created before your
    #   database is deleted. If `true` is specified, no database snapshot is
    #   created. If `false` is specified, a database snapshot is created
    #   before your database is deleted.
    #
    #   You must specify the `final relational database snapshot name`
    #   parameter if the `skip final snapshot` parameter is `false`.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] final_relational_database_snapshot_name
    #   The name of the database snapshot created if `skip final snapshot`
    #   is `false`, which is the default value for that parameter.
    #
    #   <note markdown="1"> Specifying this parameter and also specifying the `skip final
    #   snapshot` parameter to `true` results in an error.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   * Must contain from 2 to 255 alphanumeric characters, or hyphens.
    #
    #   * The first and last character must be a letter or number.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteRelationalDatabaseRequest AWS API Documentation
    #
    class DeleteRelationalDatabaseRequest < Struct.new(
      :relational_database_name,
      :skip_final_snapshot,
      :final_relational_database_snapshot_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteRelationalDatabaseResult AWS API Documentation
    #
    class DeleteRelationalDatabaseResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRelationalDatabaseSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         relational_database_snapshot_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] relational_database_snapshot_name
    #   The name of the database snapshot that you are deleting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteRelationalDatabaseSnapshotRequest AWS API Documentation
    #
    class DeleteRelationalDatabaseSnapshotRequest < Struct.new(
      :relational_database_snapshot_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DeleteRelationalDatabaseSnapshotResult AWS API Documentation
    #
    class DeleteRelationalDatabaseSnapshotResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # Describes the destination of a record.
    #
    # @!attribute [rw] id
    #   The ID of the resource created at the destination.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The destination service of the record.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DestinationInfo AWS API Documentation
    #
    class DestinationInfo < Struct.new(
      :id,
      :service)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetachDiskRequest
    #   data as a hash:
    #
    #       {
    #         disk_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] disk_name
    #   The unique name of the disk you want to detach from your instance
    #   (e.g., `my-disk`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DetachDiskRequest AWS API Documentation
    #
    class DetachDiskRequest < Struct.new(
      :disk_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DetachDiskResult AWS API Documentation
    #
    class DetachDiskResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetachInstancesFromLoadBalancerRequest
    #   data as a hash:
    #
    #       {
    #         load_balancer_name: "ResourceName", # required
    #         instance_names: ["ResourceName"], # required
    #       }
    #
    # @!attribute [rw] load_balancer_name
    #   The name of the Lightsail load balancer.
    #   @return [String]
    #
    # @!attribute [rw] instance_names
    #   An array of strings containing the names of the instances you want
    #   to detach from the load balancer.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DetachInstancesFromLoadBalancerRequest AWS API Documentation
    #
    class DetachInstancesFromLoadBalancerRequest < Struct.new(
      :load_balancer_name,
      :instance_names)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DetachInstancesFromLoadBalancerResult AWS API Documentation
    #
    class DetachInstancesFromLoadBalancerResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetachStaticIpRequest
    #   data as a hash:
    #
    #       {
    #         static_ip_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] static_ip_name
    #   The name of the static IP to detach from the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DetachStaticIpRequest AWS API Documentation
    #
    class DetachStaticIpRequest < Struct.new(
      :static_ip_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DetachStaticIpResult AWS API Documentation
    #
    class DetachStaticIpResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisableAddOnRequest
    #   data as a hash:
    #
    #       {
    #         add_on_type: "AutoSnapshot", # required, accepts AutoSnapshot
    #         resource_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] add_on_type
    #   The add-on type to disable.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the source resource for which to disable the add-on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DisableAddOnRequest AWS API Documentation
    #
    class DisableAddOnRequest < Struct.new(
      :add_on_type,
      :resource_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DisableAddOnResult AWS API Documentation
    #
    class DisableAddOnResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # Describes a system disk or a block storage disk.
    #
    # @!attribute [rw] name
    #   The unique name of the disk.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the disk.
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about an instance or another resource in
    #   Lightsail. This code enables our support team to look up your
    #   Lightsail information more easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date when the disk was created.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The AWS Region and Availability Zone where the disk is located.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type (e.g., `Disk`).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Lightsail Dev
    #   Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] add_ons
    #   An array of objects representing the add-ons enabled on the disk.
    #   @return [Array<Types::AddOn>]
    #
    # @!attribute [rw] size_in_gb
    #   The size of the disk in GB.
    #   @return [Integer]
    #
    # @!attribute [rw] is_system_disk
    #   A Boolean value indicating whether this disk is a system disk (has
    #   an operating system loaded on it).
    #   @return [Boolean]
    #
    # @!attribute [rw] iops
    #   The input/output operations per second (IOPS) of the disk.
    #   @return [Integer]
    #
    # @!attribute [rw] path
    #   The disk path.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Describes the status of the disk.
    #   @return [String]
    #
    # @!attribute [rw] attached_to
    #   The resources to which the disk is attached.
    #   @return [String]
    #
    # @!attribute [rw] is_attached
    #   A Boolean value indicating whether the disk is attached.
    #   @return [Boolean]
    #
    # @!attribute [rw] attachment_state
    #   (Deprecated) The attachment state of the disk.
    #
    #   <note markdown="1"> In releases prior to November 14, 2017, this parameter returned
    #   `attached` for system disks in the API response. It is now
    #   deprecated, but still included in the response. Use `isAttached`
    #   instead.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] gb_in_use
    #   (Deprecated) The number of GB in use by the disk.
    #
    #   <note markdown="1"> In releases prior to November 14, 2017, this parameter was not
    #   included in the API response. It is now deprecated.
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Disk AWS API Documentation
    #
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
      :gb_in_use)
      include Aws::Structure
    end

    # Describes a disk.
    #
    # @!attribute [rw] name
    #   The disk name.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The disk path.
    #   @return [String]
    #
    # @!attribute [rw] size_in_gb
    #   The size of the disk in GB (e.g., `32`).
    #   @return [Integer]
    #
    # @!attribute [rw] is_system_disk
    #   A Boolean value indicating whether this disk is a system disk (has
    #   an operating system loaded on it).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DiskInfo AWS API Documentation
    #
    class DiskInfo < Struct.new(
      :name,
      :path,
      :size_in_gb,
      :is_system_disk)
      include Aws::Structure
    end

    # Describes a block storage disk mapping.
    #
    # @note When making an API call, you may pass DiskMap
    #   data as a hash:
    #
    #       {
    #         original_disk_path: "NonEmptyString",
    #         new_disk_name: "ResourceName",
    #       }
    #
    # @!attribute [rw] original_disk_path
    #   The original disk path exposed to the instance (for example,
    #   `/dev/sdh`).
    #   @return [String]
    #
    # @!attribute [rw] new_disk_name
    #   The new disk name (e.g., `my-new-disk`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DiskMap AWS API Documentation
    #
    class DiskMap < Struct.new(
      :original_disk_path,
      :new_disk_name)
      include Aws::Structure
    end

    # Describes a block storage disk snapshot.
    #
    # @!attribute [rw] name
    #   The name of the disk snapshot (e.g., `my-disk-snapshot`).
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the disk snapshot.
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about an instance or another resource in
    #   Lightsail. This code enables our support team to look up your
    #   Lightsail information more easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date when the disk snapshot was created.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The AWS Region and Availability Zone where the disk snapshot was
    #   created.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type (e.g., `DiskSnapshot`).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Lightsail Dev
    #   Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] size_in_gb
    #   The size of the disk in GB.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The status of the disk snapshot operation.
    #   @return [String]
    #
    # @!attribute [rw] progress
    #   The progress of the disk snapshot operation.
    #   @return [String]
    #
    # @!attribute [rw] from_disk_name
    #   The unique name of the source disk from which the disk snapshot was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] from_disk_arn
    #   The Amazon Resource Name (ARN) of the source disk from which the
    #   disk snapshot was created.
    #   @return [String]
    #
    # @!attribute [rw] from_instance_name
    #   The unique name of the source instance from which the disk (system
    #   volume) snapshot was created.
    #   @return [String]
    #
    # @!attribute [rw] from_instance_arn
    #   The Amazon Resource Name (ARN) of the source instance from which the
    #   disk (system volume) snapshot was created.
    #   @return [String]
    #
    # @!attribute [rw] is_from_auto_snapshot
    #   A Boolean value indicating whether the snapshot was created from an
    #   automatic snapshot.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DiskSnapshot AWS API Documentation
    #
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
      :is_from_auto_snapshot)
      include Aws::Structure
    end

    # Describes a disk snapshot.
    #
    # @!attribute [rw] size_in_gb
    #   The size of the disk in GB (e.g., `32`).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DiskSnapshotInfo AWS API Documentation
    #
    class DiskSnapshotInfo < Struct.new(
      :size_in_gb)
      include Aws::Structure
    end

    # Describes a domain where you are storing recordsets in Lightsail.
    #
    # @!attribute [rw] name
    #   The name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the domain recordset (e.g.,
    #   `arn:aws:lightsail:global:123456789101:Domain/824cede0-abc7-4f84-8dbc-12345EXAMPLE`).
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about an instance or another resource in
    #   Lightsail. This code enables our support team to look up your
    #   Lightsail information more easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date when the domain recordset was created.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The AWS Region and Availability Zones where the domain recordset was
    #   created.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Lightsail Dev
    #   Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] domain_entries
    #   An array of key-value pairs containing information about the domain
    #   entries.
    #   @return [Array<Types::DomainEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Domain AWS API Documentation
    #
    class Domain < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :domain_entries)
      include Aws::Structure
    end

    # Describes a domain recordset entry.
    #
    # @note When making an API call, you may pass DomainEntry
    #   data as a hash:
    #
    #       {
    #         id: "NonEmptyString",
    #         name: "DomainName",
    #         target: "string",
    #         is_alias: false,
    #         type: "DomainEntryType",
    #         options: {
    #           "DomainEntryOptionsKeys" => "string",
    #         },
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the domain recordset entry.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The target AWS name server (e.g., `ns-111.awsdns-22.com.`).
    #
    #   For Lightsail load balancers, the value looks like
    #   `ab1234c56789c6b86aba6fb203d443bc-123456789.us-east-2.elb.amazonaws.com`.
    #   Be sure to also set `isAlias` to `true` when setting up an A record
    #   for a load balancer.
    #   @return [String]
    #
    # @!attribute [rw] is_alias
    #   When `true`, specifies whether the domain entry is an alias used by
    #   the Lightsail load balancer. You can include an alias (A type)
    #   record in your request, which points to a load balancer DNS name and
    #   routes traffic to your load balancer
    #   @return [Boolean]
    #
    # @!attribute [rw] type
    #   The type of domain entry, such as address (A), canonical name
    #   (CNAME), mail exchanger (MX), name server (NS), start of authority
    #   (SOA), service locator (SRV), or text (TXT).
    #
    #   The following domain entry types can be used:
    #
    #   * `A`
    #
    #   * `CNAME`
    #
    #   * `MX`
    #
    #   * `NS`
    #
    #   * `SOA`
    #
    #   * `SRV`
    #
    #   * `TXT`
    #   @return [String]
    #
    # @!attribute [rw] options
    #   (Deprecated) The options for the domain entry.
    #
    #   <note markdown="1"> In releases prior to November 29, 2017, this parameter was not
    #   included in the API response. It is now deprecated.
    #
    #    </note>
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DomainEntry AWS API Documentation
    #
    class DomainEntry < Struct.new(
      :id,
      :name,
      :target,
      :is_alias,
      :type,
      :options)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DownloadDefaultKeyPairRequest AWS API Documentation
    #
    class DownloadDefaultKeyPairRequest < Aws::EmptyStructure; end

    # @!attribute [rw] public_key_base_64
    #   A base64-encoded public key of the `ssh-rsa` type.
    #   @return [String]
    #
    # @!attribute [rw] private_key_base_64
    #   A base64-encoded RSA private key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/DownloadDefaultKeyPairResult AWS API Documentation
    #
    class DownloadDefaultKeyPairResult < Struct.new(
      :public_key_base_64,
      :private_key_base_64)
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnableAddOnRequest
    #   data as a hash:
    #
    #       {
    #         resource_name: "ResourceName", # required
    #         add_on_request: { # required
    #           add_on_type: "AutoSnapshot", # required, accepts AutoSnapshot
    #           auto_snapshot_add_on_request: {
    #             snapshot_time_of_day: "TimeOfDay",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] resource_name
    #   The name of the source resource for which to enable or modify the
    #   add-on.
    #   @return [String]
    #
    # @!attribute [rw] add_on_request
    #   An array of strings representing the add-on to enable or modify.
    #   @return [Types::AddOnRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/EnableAddOnRequest AWS API Documentation
    #
    class EnableAddOnRequest < Struct.new(
      :resource_name,
      :add_on_request)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/EnableAddOnResult AWS API Documentation
    #
    class EnableAddOnResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # Describes an export snapshot record.
    #
    # @!attribute [rw] name
    #   The export snapshot record name.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the export snapshot record.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date when the export snapshot record was created.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The AWS Region and Availability Zone where the export snapshot
    #   record is located.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type (e.g., `ExportSnapshotRecord`).
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the export snapshot record.
    #   @return [String]
    #
    # @!attribute [rw] source_info
    #   A list of objects describing the source of the export snapshot
    #   record.
    #   @return [Types::ExportSnapshotRecordSourceInfo]
    #
    # @!attribute [rw] destination_info
    #   A list of objects describing the destination of the export snapshot
    #   record.
    #   @return [Types::DestinationInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ExportSnapshotRecord AWS API Documentation
    #
    class ExportSnapshotRecord < Struct.new(
      :name,
      :arn,
      :created_at,
      :location,
      :resource_type,
      :state,
      :source_info,
      :destination_info)
      include Aws::Structure
    end

    # Describes the source of an export snapshot record.
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type (e.g., `InstanceSnapshot` or
    #   `DiskSnapshot`).
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date when the source instance or disk snapshot was created.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the source instance or disk snapshot.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the source instance or disk
    #   snapshot.
    #   @return [String]
    #
    # @!attribute [rw] from_resource_name
    #   The name of the snapshot's source instance or disk.
    #   @return [String]
    #
    # @!attribute [rw] from_resource_arn
    #   The Amazon Resource Name (ARN) of the snapshot's source instance or
    #   disk.
    #   @return [String]
    #
    # @!attribute [rw] instance_snapshot_info
    #   A list of objects describing an instance snapshot.
    #   @return [Types::InstanceSnapshotInfo]
    #
    # @!attribute [rw] disk_snapshot_info
    #   A list of objects describing a disk snapshot.
    #   @return [Types::DiskSnapshotInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ExportSnapshotRecordSourceInfo AWS API Documentation
    #
    class ExportSnapshotRecordSourceInfo < Struct.new(
      :resource_type,
      :created_at,
      :name,
      :arn,
      :from_resource_name,
      :from_resource_arn,
      :instance_snapshot_info,
      :disk_snapshot_info)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ExportSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         source_snapshot_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] source_snapshot_name
    #   The name of the instance or disk snapshot to be exported to Amazon
    #   EC2.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ExportSnapshotRequest AWS API Documentation
    #
    class ExportSnapshotRequest < Struct.new(
      :source_snapshot_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ExportSnapshotResult AWS API Documentation
    #
    class ExportSnapshotResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetActiveNamesRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetActiveNames` request. If
    #   your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetActiveNamesRequest AWS API Documentation
    #
    class GetActiveNamesRequest < Struct.new(
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] active_names
    #   The list of active names returned by the get active names request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetActiveNames`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetActiveNamesResult AWS API Documentation
    #
    class GetActiveNamesResult < Struct.new(
      :active_names,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAlarmsRequest
    #   data as a hash:
    #
    #       {
    #         alarm_name: "ResourceName",
    #         page_token: "string",
    #         monitored_resource_name: "ResourceName",
    #       }
    #
    # @!attribute [rw] alarm_name
    #   The name of the alarm.
    #
    #   Specify an alarm name to return information about a specific alarm.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetAlarms` request. If your
    #   results are paginated, the response will return a next page token
    #   that you can specify as the page token in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] monitored_resource_name
    #   The name of the Lightsail resource being monitored by the alarm.
    #
    #   Specify a monitored resource name to return information about all
    #   alarms for a specific resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetAlarmsRequest AWS API Documentation
    #
    class GetAlarmsRequest < Struct.new(
      :alarm_name,
      :page_token,
      :monitored_resource_name)
      include Aws::Structure
    end

    # @!attribute [rw] alarms
    #   An array of objects that describe the alarms.
    #   @return [Array<Types::Alarm>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetAlarms` request
    #   and specify the next page token using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetAlarmsResult AWS API Documentation
    #
    class GetAlarmsResult < Struct.new(
      :alarms,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAutoSnapshotsRequest
    #   data as a hash:
    #
    #       {
    #         resource_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] resource_name
    #   The name of the source instance or disk from which to get automatic
    #   snapshot information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetAutoSnapshotsRequest AWS API Documentation
    #
    class GetAutoSnapshotsRequest < Struct.new(
      :resource_name)
      include Aws::Structure
    end

    # @!attribute [rw] resource_name
    #   The name of the source instance or disk for the automatic snapshots.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type (e.g., `Instance` or `Disk`).
    #   @return [String]
    #
    # @!attribute [rw] auto_snapshots
    #   An array of objects that describe the automatic snapshots that are
    #   available for the specified source instance or disk.
    #   @return [Array<Types::AutoSnapshotDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetAutoSnapshotsResult AWS API Documentation
    #
    class GetAutoSnapshotsResult < Struct.new(
      :resource_name,
      :resource_type,
      :auto_snapshots)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBlueprintsRequest
    #   data as a hash:
    #
    #       {
    #         include_inactive: false,
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] include_inactive
    #   A Boolean value indicating whether to include inactive results in
    #   your request.
    #   @return [Boolean]
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetBlueprints` request. If
    #   your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBlueprintsRequest AWS API Documentation
    #
    class GetBlueprintsRequest < Struct.new(
      :include_inactive,
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] blueprints
    #   An array of key-value pairs that contains information about the
    #   available blueprints.
    #   @return [Array<Types::Blueprint>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetBlueprints`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBlueprintsResult AWS API Documentation
    #
    class GetBlueprintsResult < Struct.new(
      :blueprints,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBundlesRequest
    #   data as a hash:
    #
    #       {
    #         include_inactive: false,
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] include_inactive
    #   A Boolean value that indicates whether to include inactive bundle
    #   results in your request.
    #   @return [Boolean]
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetBundles` request. If
    #   your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBundlesRequest AWS API Documentation
    #
    class GetBundlesRequest < Struct.new(
      :include_inactive,
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] bundles
    #   An array of key-value pairs that contains information about the
    #   available bundles.
    #   @return [Array<Types::Bundle>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetBundles`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetBundlesResult AWS API Documentation
    #
    class GetBundlesResult < Struct.new(
      :bundles,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCloudFormationStackRecordsRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial
    #   `GetClouFormationStackRecords` request. If your results are
    #   paginated, the response will return a next page token that you can
    #   specify as the page token in a subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetCloudFormationStackRecordsRequest AWS API Documentation
    #
    class GetCloudFormationStackRecordsRequest < Struct.new(
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] cloud_formation_stack_records
    #   A list of objects describing the CloudFormation stack records.
    #   @return [Array<Types::CloudFormationStackRecord>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another
    #   `GetCloudFormationStackRecords` request and specify the next page
    #   token using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetCloudFormationStackRecordsResult AWS API Documentation
    #
    class GetCloudFormationStackRecordsResult < Struct.new(
      :cloud_formation_stack_records,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetContactMethodsRequest
    #   data as a hash:
    #
    #       {
    #         protocols: ["Email"], # accepts Email, SMS
    #       }
    #
    # @!attribute [rw] protocols
    #   The protocols used to send notifications, such as `Email`, or `SMS`
    #   (text messaging).
    #
    #   Specify a protocol in your request to return information about a
    #   specific contact method protocol.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetContactMethodsRequest AWS API Documentation
    #
    class GetContactMethodsRequest < Struct.new(
      :protocols)
      include Aws::Structure
    end

    # @!attribute [rw] contact_methods
    #   An array of objects that describe the contact methods.
    #   @return [Array<Types::ContactMethod>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetContactMethodsResult AWS API Documentation
    #
    class GetContactMethodsResult < Struct.new(
      :contact_methods)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDiskRequest
    #   data as a hash:
    #
    #       {
    #         disk_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] disk_name
    #   The name of the disk (e.g., `my-disk`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDiskRequest AWS API Documentation
    #
    class GetDiskRequest < Struct.new(
      :disk_name)
      include Aws::Structure
    end

    # @!attribute [rw] disk
    #   An object containing information about the disk.
    #   @return [Types::Disk]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDiskResult AWS API Documentation
    #
    class GetDiskResult < Struct.new(
      :disk)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDiskSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         disk_snapshot_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] disk_snapshot_name
    #   The name of the disk snapshot (e.g., `my-disk-snapshot`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDiskSnapshotRequest AWS API Documentation
    #
    class GetDiskSnapshotRequest < Struct.new(
      :disk_snapshot_name)
      include Aws::Structure
    end

    # @!attribute [rw] disk_snapshot
    #   An object containing information about the disk snapshot.
    #   @return [Types::DiskSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDiskSnapshotResult AWS API Documentation
    #
    class GetDiskSnapshotResult < Struct.new(
      :disk_snapshot)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDiskSnapshotsRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetDiskSnapshots` request.
    #   If your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDiskSnapshotsRequest AWS API Documentation
    #
    class GetDiskSnapshotsRequest < Struct.new(
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] disk_snapshots
    #   An array of objects containing information about all block storage
    #   disk snapshots.
    #   @return [Array<Types::DiskSnapshot>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetDiskSnapshots`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDiskSnapshotsResult AWS API Documentation
    #
    class GetDiskSnapshotsResult < Struct.new(
      :disk_snapshots,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDisksRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetDisks` request. If your
    #   results are paginated, the response will return a next page token
    #   that you can specify as the page token in a subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDisksRequest AWS API Documentation
    #
    class GetDisksRequest < Struct.new(
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] disks
    #   An array of objects containing information about all block storage
    #   disks.
    #   @return [Array<Types::Disk>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetDisks` request
    #   and specify the next page token using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDisksResult AWS API Documentation
    #
    class GetDisksResult < Struct.new(
      :disks,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The domain name for which your want to return information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDomainRequest AWS API Documentation
    #
    class GetDomainRequest < Struct.new(
      :domain_name)
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   An array of key-value pairs containing information about your get
    #   domain request.
    #   @return [Types::Domain]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDomainResult AWS API Documentation
    #
    class GetDomainResult < Struct.new(
      :domain)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDomainsRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetDomains` request. If
    #   your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDomainsRequest AWS API Documentation
    #
    class GetDomainsRequest < Struct.new(
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] domains
    #   An array of key-value pairs containing information about each of the
    #   domain entries in the user's account.
    #   @return [Array<Types::Domain>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetDomains`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetDomainsResult AWS API Documentation
    #
    class GetDomainsResult < Struct.new(
      :domains,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetExportSnapshotRecordsRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetExportSnapshotRecords`
    #   request. If your results are paginated, the response will return a
    #   next page token that you can specify as the page token in a
    #   subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetExportSnapshotRecordsRequest AWS API Documentation
    #
    class GetExportSnapshotRecordsRequest < Struct.new(
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] export_snapshot_records
    #   A list of objects describing the export snapshot records.
    #   @return [Array<Types::ExportSnapshotRecord>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another
    #   `GetExportSnapshotRecords` request and specify the next page token
    #   using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetExportSnapshotRecordsResult AWS API Documentation
    #
    class GetExportSnapshotRecordsResult < Struct.new(
      :export_snapshot_records,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInstanceAccessDetailsRequest
    #   data as a hash:
    #
    #       {
    #         instance_name: "ResourceName", # required
    #         protocol: "ssh", # accepts ssh, rdp
    #       }
    #
    # @!attribute [rw] instance_name
    #   The name of the instance to access.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol to use to connect to your instance. Defaults to `ssh`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceAccessDetailsRequest AWS API Documentation
    #
    class GetInstanceAccessDetailsRequest < Struct.new(
      :instance_name,
      :protocol)
      include Aws::Structure
    end

    # @!attribute [rw] access_details
    #   An array of key-value pairs containing information about a get
    #   instance access request.
    #   @return [Types::InstanceAccessDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceAccessDetailsResult AWS API Documentation
    #
    class GetInstanceAccessDetailsResult < Struct.new(
      :access_details)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInstanceMetricDataRequest
    #   data as a hash:
    #
    #       {
    #         instance_name: "ResourceName", # required
    #         metric_name: "CPUUtilization", # required, accepts CPUUtilization, NetworkIn, NetworkOut, StatusCheckFailed, StatusCheckFailed_Instance, StatusCheckFailed_System, BurstCapacityTime, BurstCapacityPercentage
    #         period: 1, # required
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         unit: "Seconds", # required, accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #         statistics: ["Minimum"], # required, accepts Minimum, Maximum, Sum, Average, SampleCount
    #       }
    #
    # @!attribute [rw] instance_name
    #   The name of the instance for which you want to get metrics data.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The metric for which you want to return information.
    #
    #   Valid instance metric names are listed below, along with the most
    #   useful `statistics` to include in your request, and the published
    #   `unit` value.
    #
    #   * <b> <code>BurstCapacityPercentage</code> </b> - The percentage of
    #     CPU performance available for your instance to burst above its
    #     baseline. Your instance continously accrues and consumes burst
    #     capacity. Burst capacity stops accruing when your instance's
    #     `BurstCapacityPercentage` reaches 100%. For more information, see
    #     [Viewing instance burst capacity in Amazon Lightsail][1].
    #
    #     `Statistics`\: The most useful statistics are `Maximum` and
    #     `Average`.
    #
    #     `Unit`\: The published unit is `Percent`.
    #
    #   * <b> <code>BurstCapacityTime</code> </b> - The available amount of
    #     time for your instance to burst at 100% CPU utilization. Your
    #     instance continously accrues and consumes burst capacity. Burst
    #     capacity time stops accruing when your instance's
    #     `BurstCapacityPercentage` metric reaches 100%.
    #
    #     Burst capacity time is consumed at the full rate only when your
    #     instance operates at 100% CPU utilization. For example, if your
    #     instance operates at 50% CPU utilization in the burstable zone for
    #     a 5-minute period, then it consumes CPU burst capacity minutes at
    #     a 50% rate in that period. Your instance consumed 2 minutes and 30
    #     seconds of CPU burst capacity minutes in the 5-minute period. For
    #     more information, see [Viewing instance burst capacity in Amazon
    #     Lightsail][1].
    #
    #     `Statistics`\: The most useful statistics are `Maximum` and
    #     `Average`.
    #
    #     `Unit`\: The published unit is `Seconds`.
    #
    #   * <b> <code>CPUUtilization</code> </b> - The percentage of allocated
    #     compute units that are currently in use on the instance. This
    #     metric identifies the processing power to run the applications on
    #     the instance. Tools in your operating system can show a lower
    #     percentage than Lightsail when the instance is not allocated a
    #     full processor core.
    #
    #     `Statistics`\: The most useful statistics are `Maximum` and
    #     `Average`.
    #
    #     `Unit`\: The published unit is `Percent`.
    #
    #   * <b> <code>NetworkIn</code> </b> - The number of bytes received on
    #     all network interfaces by the instance. This metric identifies the
    #     volume of incoming network traffic to the instance. The number
    #     reported is the number of bytes received during the period.
    #     Because this metric is reported in 5-minute intervals, divide the
    #     reported number by 300 to find Bytes/second.
    #
    #     `Statistics`\: The most useful statistic is `Sum`.
    #
    #     `Unit`\: The published unit is `Bytes`.
    #
    #   * <b> <code>NetworkOut</code> </b> - The number of bytes sent out on
    #     all network interfaces by the instance. This metric identifies the
    #     volume of outgoing network traffic from the instance. The number
    #     reported is the number of bytes sent during the period. Because
    #     this metric is reported in 5-minute intervals, divide the reported
    #     number by 300 to find Bytes/second.
    #
    #     `Statistics`\: The most useful statistic is `Sum`.
    #
    #     `Unit`\: The published unit is `Bytes`.
    #
    #   * <b> <code>StatusCheckFailed</code> </b> - Reports whether the
    #     instance passed or failed both the instance status check and the
    #     system status check. This metric can be either 0 (passed) or 1
    #     (failed). This metric data is available in 1-minute (60 seconds)
    #     granularity.
    #
    #     `Statistics`\: The most useful statistic is `Sum`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>StatusCheckFailed_Instance</code> </b> - Reports whether
    #     the instance passed or failed the instance status check. This
    #     metric can be either 0 (passed) or 1 (failed). This metric data is
    #     available in 1-minute (60 seconds) granularity.
    #
    #     `Statistics`\: The most useful statistic is `Sum`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>StatusCheckFailed_System</code> </b> - Reports whether
    #     the instance passed or failed the system status check. This metric
    #     can be either 0 (passed) or 1 (failed). This metric data is
    #     available in 1-minute (60 seconds) granularity.
    #
    #     `Statistics`\: The most useful statistic is `Sum`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-viewing-instance-burst-capacity
    #   @return [String]
    #
    # @!attribute [rw] period
    #   The granularity, in seconds, of the returned data points.
    #
    #   The `StatusCheckFailed`, `StatusCheckFailed_Instance`, and
    #   `StatusCheckFailed_System` instance metric data is available in
    #   1-minute (60 seconds) granularity. All other instance metric data is
    #   available in 5-minute (300 seconds) granularity.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The start time of the time period.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the time period.
    #   @return [Time]
    #
    # @!attribute [rw] unit
    #   The unit for the metric data request. Valid units depend on the
    #   metric data being requested. For the valid units to specify with
    #   each available metric, see the `metricName` parameter.
    #   @return [String]
    #
    # @!attribute [rw] statistics
    #   The statistic for the metric.
    #
    #   The following statistics are available:
    #
    #   * `Minimum` - The lowest value observed during the specified period.
    #     Use this value to determine low volumes of activity for your
    #     application.
    #
    #   * `Maximum` - The highest value observed during the specified
    #     period. Use this value to determine high volumes of activity for
    #     your application.
    #
    #   * `Sum` - All values submitted for the matching metric added
    #     together. You can use this statistic to determine the total volume
    #     of a metric.
    #
    #   * `Average` - The value of Sum / SampleCount during the specified
    #     period. By comparing this statistic with the Minimum and Maximum
    #     values, you can determine the full scope of a metric and how close
    #     the average use is to the Minimum and Maximum values. This
    #     comparison helps you to know when to increase or decrease your
    #     resources.
    #
    #   * `SampleCount` - The count, or number, of data points used for the
    #     statistical calculation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceMetricDataRequest AWS API Documentation
    #
    class GetInstanceMetricDataRequest < Struct.new(
      :instance_name,
      :metric_name,
      :period,
      :start_time,
      :end_time,
      :unit,
      :statistics)
      include Aws::Structure
    end

    # @!attribute [rw] metric_name
    #   The name of the metric returned.
    #   @return [String]
    #
    # @!attribute [rw] metric_data
    #   An array of objects that describe the metric data returned.
    #   @return [Array<Types::MetricDatapoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceMetricDataResult AWS API Documentation
    #
    class GetInstanceMetricDataResult < Struct.new(
      :metric_name,
      :metric_data)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInstancePortStatesRequest
    #   data as a hash:
    #
    #       {
    #         instance_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] instance_name
    #   The name of the instance for which to return firewall port states.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstancePortStatesRequest AWS API Documentation
    #
    class GetInstancePortStatesRequest < Struct.new(
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] port_states
    #   An array of objects that describe the firewall port states for the
    #   specified instance.
    #   @return [Array<Types::InstancePortState>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstancePortStatesResult AWS API Documentation
    #
    class GetInstancePortStatesResult < Struct.new(
      :port_states)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInstanceRequest
    #   data as a hash:
    #
    #       {
    #         instance_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] instance_name
    #   The name of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceRequest AWS API Documentation
    #
    class GetInstanceRequest < Struct.new(
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] instance
    #   An array of key-value pairs containing information about the
    #   specified instance.
    #   @return [Types::Instance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceResult AWS API Documentation
    #
    class GetInstanceResult < Struct.new(
      :instance)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInstanceSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         instance_snapshot_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] instance_snapshot_name
    #   The name of the snapshot for which you are requesting information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceSnapshotRequest AWS API Documentation
    #
    class GetInstanceSnapshotRequest < Struct.new(
      :instance_snapshot_name)
      include Aws::Structure
    end

    # @!attribute [rw] instance_snapshot
    #   An array of key-value pairs containing information about the results
    #   of your get instance snapshot request.
    #   @return [Types::InstanceSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceSnapshotResult AWS API Documentation
    #
    class GetInstanceSnapshotResult < Struct.new(
      :instance_snapshot)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInstanceSnapshotsRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetInstanceSnapshots`
    #   request. If your results are paginated, the response will return a
    #   next page token that you can specify as the page token in a
    #   subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceSnapshotsRequest AWS API Documentation
    #
    class GetInstanceSnapshotsRequest < Struct.new(
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] instance_snapshots
    #   An array of key-value pairs containing information about the results
    #   of your get instance snapshots request.
    #   @return [Array<Types::InstanceSnapshot>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another
    #   `GetInstanceSnapshots` request and specify the next page token using
    #   the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceSnapshotsResult AWS API Documentation
    #
    class GetInstanceSnapshotsResult < Struct.new(
      :instance_snapshots,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInstanceStateRequest
    #   data as a hash:
    #
    #       {
    #         instance_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] instance_name
    #   The name of the instance to get state information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceStateRequest AWS API Documentation
    #
    class GetInstanceStateRequest < Struct.new(
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] state
    #   The state of the instance.
    #   @return [Types::InstanceState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstanceStateResult AWS API Documentation
    #
    class GetInstanceStateResult < Struct.new(
      :state)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInstancesRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetInstances` request. If
    #   your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstancesRequest AWS API Documentation
    #
    class GetInstancesRequest < Struct.new(
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] instances
    #   An array of key-value pairs containing information about your
    #   instances.
    #   @return [Array<Types::Instance>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetInstances`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetInstancesResult AWS API Documentation
    #
    class GetInstancesResult < Struct.new(
      :instances,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetKeyPairRequest
    #   data as a hash:
    #
    #       {
    #         key_pair_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] key_pair_name
    #   The name of the key pair for which you are requesting information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetKeyPairRequest AWS API Documentation
    #
    class GetKeyPairRequest < Struct.new(
      :key_pair_name)
      include Aws::Structure
    end

    # @!attribute [rw] key_pair
    #   An array of key-value pairs containing information about the key
    #   pair.
    #   @return [Types::KeyPair]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetKeyPairResult AWS API Documentation
    #
    class GetKeyPairResult < Struct.new(
      :key_pair)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetKeyPairsRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetKeyPairs` request. If
    #   your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetKeyPairsRequest AWS API Documentation
    #
    class GetKeyPairsRequest < Struct.new(
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] key_pairs
    #   An array of key-value pairs containing information about the key
    #   pairs.
    #   @return [Array<Types::KeyPair>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetKeyPairs`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetKeyPairsResult AWS API Documentation
    #
    class GetKeyPairsResult < Struct.new(
      :key_pairs,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLoadBalancerMetricDataRequest
    #   data as a hash:
    #
    #       {
    #         load_balancer_name: "ResourceName", # required
    #         metric_name: "ClientTLSNegotiationErrorCount", # required, accepts ClientTLSNegotiationErrorCount, HealthyHostCount, UnhealthyHostCount, HTTPCode_LB_4XX_Count, HTTPCode_LB_5XX_Count, HTTPCode_Instance_2XX_Count, HTTPCode_Instance_3XX_Count, HTTPCode_Instance_4XX_Count, HTTPCode_Instance_5XX_Count, InstanceResponseTime, RejectedConnectionCount, RequestCount
    #         period: 1, # required
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         unit: "Seconds", # required, accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #         statistics: ["Minimum"], # required, accepts Minimum, Maximum, Sum, Average, SampleCount
    #       }
    #
    # @!attribute [rw] load_balancer_name
    #   The name of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The metric for which you want to return information.
    #
    #   Valid load balancer metric names are listed below, along with the
    #   most useful `statistics` to include in your request, and the
    #   published `unit` value.
    #
    #   * <b> <code>ClientTLSNegotiationErrorCount</code> </b> - The number
    #     of TLS connections initiated by the client that did not establish
    #     a session with the load balancer due to a TLS error generated by
    #     the load balancer. Possible causes include a mismatch of ciphers
    #     or protocols.
    #
    #     `Statistics`\: The most useful statistic is `Sum`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>HealthyHostCount</code> </b> - The number of target
    #     instances that are considered healthy.
    #
    #     `Statistics`\: The most useful statistic are `Average`, `Minimum`,
    #     and `Maximum`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>HTTPCode_Instance_2XX_Count</code> </b> - The number of
    #     HTTP 2XX response codes generated by the target instances. This
    #     does not include any response codes generated by the load
    #     balancer.
    #
    #     `Statistics`\: The most useful statistic is `Sum`. Note that
    #     `Minimum`, `Maximum`, and `Average` all return `1`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>HTTPCode_Instance_3XX_Count</code> </b> - The number of
    #     HTTP 3XX response codes generated by the target instances. This
    #     does not include any response codes generated by the load
    #     balancer.
    #
    #     `Statistics`\: The most useful statistic is `Sum`. Note that
    #     `Minimum`, `Maximum`, and `Average` all return `1`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>HTTPCode_Instance_4XX_Count</code> </b> - The number of
    #     HTTP 4XX response codes generated by the target instances. This
    #     does not include any response codes generated by the load
    #     balancer.
    #
    #     `Statistics`\: The most useful statistic is `Sum`. Note that
    #     `Minimum`, `Maximum`, and `Average` all return `1`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>HTTPCode_Instance_5XX_Count</code> </b> - The number of
    #     HTTP 5XX response codes generated by the target instances. This
    #     does not include any response codes generated by the load
    #     balancer.
    #
    #     `Statistics`\: The most useful statistic is `Sum`. Note that
    #     `Minimum`, `Maximum`, and `Average` all return `1`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>HTTPCode_LB_4XX_Count</code> </b> - The number of HTTP
    #     4XX client error codes that originated from the load balancer.
    #     Client errors are generated when requests are malformed or
    #     incomplete. These requests were not received by the target
    #     instance. This count does not include response codes generated by
    #     the target instances.
    #
    #     `Statistics`\: The most useful statistic is `Sum`. Note that
    #     `Minimum`, `Maximum`, and `Average` all return `1`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>HTTPCode_LB_5XX_Count</code> </b> - The number of HTTP
    #     5XX server error codes that originated from the load balancer.
    #     This does not include any response codes generated by the target
    #     instance. This metric is reported if there are no healthy
    #     instances attached to the load balancer, or if the request rate
    #     exceeds the capacity of the instances (spillover) or the load
    #     balancer.
    #
    #     `Statistics`\: The most useful statistic is `Sum`. Note that
    #     `Minimum`, `Maximum`, and `Average` all return `1`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>InstanceResponseTime</code> </b> - The time elapsed, in
    #     seconds, after the request leaves the load balancer until a
    #     response from the target instance is received.
    #
    #     `Statistics`\: The most useful statistic is `Average`.
    #
    #     `Unit`\: The published unit is `Seconds`.
    #
    #   * <b> <code>RejectedConnectionCount</code> </b> - The number of
    #     connections that were rejected because the load balancer had
    #     reached its maximum number of connections.
    #
    #     `Statistics`\: The most useful statistic is `Sum`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>RequestCount</code> </b> - The number of requests
    #     processed over IPv4. This count includes only the requests with a
    #     response generated by a target instance of the load balancer.
    #
    #     `Statistics`\: The most useful statistic is `Sum`. Note that
    #     `Minimum`, `Maximum`, and `Average` all return `1`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>UnhealthyHostCount</code> </b> - The number of target
    #     instances that are considered unhealthy.
    #
    #     `Statistics`\: The most useful statistic are `Average`, `Minimum`,
    #     and `Maximum`.
    #
    #     `Unit`\: The published unit is `Count`.
    #   @return [String]
    #
    # @!attribute [rw] period
    #   The granularity, in seconds, of the returned data points.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The start time of the period.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the period.
    #   @return [Time]
    #
    # @!attribute [rw] unit
    #   The unit for the metric data request. Valid units depend on the
    #   metric data being requested. For the valid units with each available
    #   metric, see the `metricName` parameter.
    #   @return [String]
    #
    # @!attribute [rw] statistics
    #   The statistic for the metric.
    #
    #   The following statistics are available:
    #
    #   * `Minimum` - The lowest value observed during the specified period.
    #     Use this value to determine low volumes of activity for your
    #     application.
    #
    #   * `Maximum` - The highest value observed during the specified
    #     period. Use this value to determine high volumes of activity for
    #     your application.
    #
    #   * `Sum` - All values submitted for the matching metric added
    #     together. You can use this statistic to determine the total volume
    #     of a metric.
    #
    #   * `Average` - The value of Sum / SampleCount during the specified
    #     period. By comparing this statistic with the Minimum and Maximum
    #     values, you can determine the full scope of a metric and how close
    #     the average use is to the Minimum and Maximum values. This
    #     comparison helps you to know when to increase or decrease your
    #     resources.
    #
    #   * `SampleCount` - The count, or number, of data points used for the
    #     statistical calculation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancerMetricDataRequest AWS API Documentation
    #
    class GetLoadBalancerMetricDataRequest < Struct.new(
      :load_balancer_name,
      :metric_name,
      :period,
      :start_time,
      :end_time,
      :unit,
      :statistics)
      include Aws::Structure
    end

    # @!attribute [rw] metric_name
    #   The name of the metric returned.
    #   @return [String]
    #
    # @!attribute [rw] metric_data
    #   An array of objects that describe the metric data returned.
    #   @return [Array<Types::MetricDatapoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancerMetricDataResult AWS API Documentation
    #
    class GetLoadBalancerMetricDataResult < Struct.new(
      :metric_name,
      :metric_data)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLoadBalancerRequest
    #   data as a hash:
    #
    #       {
    #         load_balancer_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] load_balancer_name
    #   The name of the load balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancerRequest AWS API Documentation
    #
    class GetLoadBalancerRequest < Struct.new(
      :load_balancer_name)
      include Aws::Structure
    end

    # @!attribute [rw] load_balancer
    #   An object containing information about your load balancer.
    #   @return [Types::LoadBalancer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancerResult AWS API Documentation
    #
    class GetLoadBalancerResult < Struct.new(
      :load_balancer)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLoadBalancerTlsCertificatesRequest
    #   data as a hash:
    #
    #       {
    #         load_balancer_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] load_balancer_name
    #   The name of the load balancer you associated with your SSL/TLS
    #   certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancerTlsCertificatesRequest AWS API Documentation
    #
    class GetLoadBalancerTlsCertificatesRequest < Struct.new(
      :load_balancer_name)
      include Aws::Structure
    end

    # @!attribute [rw] tls_certificates
    #   An array of LoadBalancerTlsCertificate objects describing your
    #   SSL/TLS certificates.
    #   @return [Array<Types::LoadBalancerTlsCertificate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancerTlsCertificatesResult AWS API Documentation
    #
    class GetLoadBalancerTlsCertificatesResult < Struct.new(
      :tls_certificates)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLoadBalancersRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetLoadBalancers` request.
    #   If your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancersRequest AWS API Documentation
    #
    class GetLoadBalancersRequest < Struct.new(
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] load_balancers
    #   An array of LoadBalancer objects describing your load balancers.
    #   @return [Array<Types::LoadBalancer>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetLoadBalancers`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetLoadBalancersResult AWS API Documentation
    #
    class GetLoadBalancersResult < Struct.new(
      :load_balancers,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetOperationRequest
    #   data as a hash:
    #
    #       {
    #         operation_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] operation_id
    #   A GUID used to identify the operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperationRequest AWS API Documentation
    #
    class GetOperationRequest < Struct.new(
      :operation_id)
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperationResult AWS API Documentation
    #
    class GetOperationResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetOperationsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_name: "ResourceName", # required
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] resource_name
    #   The name of the resource for which you are requesting information.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetOperationsForResource`
    #   request. If your results are paginated, the response will return a
    #   next page token that you can specify as the page token in a
    #   subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperationsForResourceRequest AWS API Documentation
    #
    class GetOperationsForResourceRequest < Struct.new(
      :resource_name,
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @!attribute [rw] next_page_count
    #   (Deprecated) Returns the number of pages of results that remain.
    #
    #   <note markdown="1"> In releases prior to June 12, 2017, this parameter returned `null`
    #   by the API. It is now deprecated, and the API returns the `next page
    #   token` parameter instead.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another
    #   `GetOperationsForResource` request and specify the next page token
    #   using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperationsForResourceResult AWS API Documentation
    #
    class GetOperationsForResourceResult < Struct.new(
      :operations,
      :next_page_count,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetOperationsRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetOperations` request. If
    #   your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperationsRequest AWS API Documentation
    #
    class GetOperationsRequest < Struct.new(
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetOperations`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetOperationsResult AWS API Documentation
    #
    class GetOperationsResult < Struct.new(
      :operations,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRegionsRequest
    #   data as a hash:
    #
    #       {
    #         include_availability_zones: false,
    #         include_relational_database_availability_zones: false,
    #       }
    #
    # @!attribute [rw] include_availability_zones
    #   A Boolean value indicating whether to also include Availability
    #   Zones in your get regions request. Availability Zones are indicated
    #   with a letter: e.g., `us-east-2a`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_relational_database_availability_zones
    #   &gt;A Boolean value indicating whether to also include Availability
    #   Zones for databases in your get regions request. Availability Zones
    #   are indicated with a letter (e.g., `us-east-2a`).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRegionsRequest AWS API Documentation
    #
    class GetRegionsRequest < Struct.new(
      :include_availability_zones,
      :include_relational_database_availability_zones)
      include Aws::Structure
    end

    # @!attribute [rw] regions
    #   An array of key-value pairs containing information about your get
    #   regions request.
    #   @return [Array<Types::Region>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRegionsResult AWS API Documentation
    #
    class GetRegionsResult < Struct.new(
      :regions)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRelationalDatabaseBlueprintsRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial
    #   `GetRelationalDatabaseBlueprints` request. If your results are
    #   paginated, the response will return a next page token that you can
    #   specify as the page token in a subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseBlueprintsRequest AWS API Documentation
    #
    class GetRelationalDatabaseBlueprintsRequest < Struct.new(
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] blueprints
    #   An object describing the result of your get relational database
    #   blueprints request.
    #   @return [Array<Types::RelationalDatabaseBlueprint>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another
    #   `GetRelationalDatabaseBlueprints` request and specify the next page
    #   token using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseBlueprintsResult AWS API Documentation
    #
    class GetRelationalDatabaseBlueprintsResult < Struct.new(
      :blueprints,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRelationalDatabaseBundlesRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial
    #   `GetRelationalDatabaseBundles` request. If your results are
    #   paginated, the response will return a next page token that you can
    #   specify as the page token in a subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseBundlesRequest AWS API Documentation
    #
    class GetRelationalDatabaseBundlesRequest < Struct.new(
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] bundles
    #   An object describing the result of your get relational database
    #   bundles request.
    #   @return [Array<Types::RelationalDatabaseBundle>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another
    #   `GetRelationalDatabaseBundles` request and specify the next page
    #   token using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseBundlesResult AWS API Documentation
    #
    class GetRelationalDatabaseBundlesResult < Struct.new(
      :bundles,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRelationalDatabaseEventsRequest
    #   data as a hash:
    #
    #       {
    #         relational_database_name: "ResourceName", # required
    #         duration_in_minutes: 1,
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] relational_database_name
    #   The name of the database from which to get events.
    #   @return [String]
    #
    # @!attribute [rw] duration_in_minutes
    #   The number of minutes in the past from which to retrieve events. For
    #   example, to get all events from the past 2 hours, enter 120.
    #
    #   Default: `60`
    #
    #   The minimum is 1 and the maximum is 14 days (20160 minutes).
    #   @return [Integer]
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial
    #   `GetRelationalDatabaseEvents` request. If your results are
    #   paginated, the response will return a next page token that you can
    #   specify as the page token in a subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseEventsRequest AWS API Documentation
    #
    class GetRelationalDatabaseEventsRequest < Struct.new(
      :relational_database_name,
      :duration_in_minutes,
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_events
    #   An object describing the result of your get relational database
    #   events request.
    #   @return [Array<Types::RelationalDatabaseEvent>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another
    #   `GetRelationalDatabaseEvents` request and specify the next page
    #   token using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseEventsResult AWS API Documentation
    #
    class GetRelationalDatabaseEventsResult < Struct.new(
      :relational_database_events,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRelationalDatabaseLogEventsRequest
    #   data as a hash:
    #
    #       {
    #         relational_database_name: "ResourceName", # required
    #         log_stream_name: "string", # required
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         start_from_head: false,
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] relational_database_name
    #   The name of your database for which to get log events.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name
    #   The name of the log stream.
    #
    #   Use the `get relational database log streams` operation to get a
    #   list of available log streams.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start of the time interval from which to get log events.
    #
    #   Constraints:
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Specified in the Unix time format.
    #
    #     For example, if you wish to use a start time of October 1, 2018,
    #     at 8 PM UTC, then you input `1538424000` as the start time.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time interval from which to get log events.
    #
    #   Constraints:
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Specified in the Unix time format.
    #
    #     For example, if you wish to use an end time of October 1, 2018, at
    #     8 PM UTC, then you input `1538424000` as the end time.
    #   @return [Time]
    #
    # @!attribute [rw] start_from_head
    #   Parameter to specify if the log should start from head or tail. If
    #   `true` is specified, the log event starts from the head of the log.
    #   If `false` is specified, the log event starts from the tail of the
    #   log.
    #
    #   <note markdown="1"> For PostgreSQL, the default value of `false` is the only option
    #   available.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next or previous page of results from
    #   your request.
    #
    #   To get a page token, perform an initial
    #   `GetRelationalDatabaseLogEvents` request. If your results are
    #   paginated, the response will return a next forward token and/or next
    #   backward token that you can specify as the page token in a
    #   subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseLogEventsRequest AWS API Documentation
    #
    class GetRelationalDatabaseLogEventsRequest < Struct.new(
      :relational_database_name,
      :log_stream_name,
      :start_time,
      :end_time,
      :start_from_head,
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] resource_log_events
    #   An object describing the result of your get relational database log
    #   events request.
    #   @return [Array<Types::LogEvent>]
    #
    # @!attribute [rw] next_backward_token
    #   A token used for advancing to the previous page of results from your
    #   get relational database log events request.
    #   @return [String]
    #
    # @!attribute [rw] next_forward_token
    #   A token used for advancing to the next page of results from your get
    #   relational database log events request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseLogEventsResult AWS API Documentation
    #
    class GetRelationalDatabaseLogEventsResult < Struct.new(
      :resource_log_events,
      :next_backward_token,
      :next_forward_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRelationalDatabaseLogStreamsRequest
    #   data as a hash:
    #
    #       {
    #         relational_database_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] relational_database_name
    #   The name of your database for which to get log streams.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseLogStreamsRequest AWS API Documentation
    #
    class GetRelationalDatabaseLogStreamsRequest < Struct.new(
      :relational_database_name)
      include Aws::Structure
    end

    # @!attribute [rw] log_streams
    #   An object describing the result of your get relational database log
    #   streams request.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseLogStreamsResult AWS API Documentation
    #
    class GetRelationalDatabaseLogStreamsResult < Struct.new(
      :log_streams)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRelationalDatabaseMasterUserPasswordRequest
    #   data as a hash:
    #
    #       {
    #         relational_database_name: "ResourceName", # required
    #         password_version: "CURRENT", # accepts CURRENT, PREVIOUS, PENDING
    #       }
    #
    # @!attribute [rw] relational_database_name
    #   The name of your database for which to get the master user password.
    #   @return [String]
    #
    # @!attribute [rw] password_version
    #   The password version to return.
    #
    #   Specifying `CURRENT` or `PREVIOUS` returns the current or previous
    #   passwords respectively. Specifying `PENDING` returns the newest
    #   version of the password that will rotate to `CURRENT`. After the
    #   `PENDING` password rotates to `CURRENT`, the `PENDING` password is
    #   no longer available.
    #
    #   Default: `CURRENT`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseMasterUserPasswordRequest AWS API Documentation
    #
    class GetRelationalDatabaseMasterUserPasswordRequest < Struct.new(
      :relational_database_name,
      :password_version)
      include Aws::Structure
    end

    # @!attribute [rw] master_user_password
    #   The master user password for the `password version` specified.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the specified version of the master user password
    #   was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseMasterUserPasswordResult AWS API Documentation
    #
    class GetRelationalDatabaseMasterUserPasswordResult < Struct.new(
      :master_user_password,
      :created_at)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRelationalDatabaseMetricDataRequest
    #   data as a hash:
    #
    #       {
    #         relational_database_name: "ResourceName", # required
    #         metric_name: "CPUUtilization", # required, accepts CPUUtilization, DatabaseConnections, DiskQueueDepth, FreeStorageSpace, NetworkReceiveThroughput, NetworkTransmitThroughput
    #         period: 1, # required
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         unit: "Seconds", # required, accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #         statistics: ["Minimum"], # required, accepts Minimum, Maximum, Sum, Average, SampleCount
    #       }
    #
    # @!attribute [rw] relational_database_name
    #   The name of your database from which to get metric data.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The metric for which you want to return information.
    #
    #   Valid relational database metric names are listed below, along with
    #   the most useful `statistics` to include in your request, and the
    #   published `unit` value. All relational database metric data is
    #   available in 1-minute (60 seconds) granularity.
    #
    #   * <b> <code>CPUUtilization</code> </b> - The percentage of CPU
    #     utilization currently in use on the database.
    #
    #     `Statistics`\: The most useful statistics are `Maximum` and
    #     `Average`.
    #
    #     `Unit`\: The published unit is `Percent`.
    #
    #   * <b> <code>DatabaseConnections</code> </b> - The number of database
    #     connections in use.
    #
    #     `Statistics`\: The most useful statistics are `Maximum` and `Sum`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>DiskQueueDepth</code> </b> - The number of outstanding
    #     IOs (read/write requests) that are waiting to access the disk.
    #
    #     `Statistics`\: The most useful statistic is `Sum`.
    #
    #     `Unit`\: The published unit is `Count`.
    #
    #   * <b> <code>FreeStorageSpace</code> </b> - The amount of available
    #     storage space.
    #
    #     `Statistics`\: The most useful statistic is `Sum`.
    #
    #     `Unit`\: The published unit is `Bytes`.
    #
    #   * <b> <code>NetworkReceiveThroughput</code> </b> - The incoming
    #     (Receive) network traffic on the database, including both customer
    #     database traffic and AWS traffic used for monitoring and
    #     replication.
    #
    #     `Statistics`\: The most useful statistic is `Average`.
    #
    #     `Unit`\: The published unit is `Bytes/Second`.
    #
    #   * <b> <code>NetworkTransmitThroughput</code> </b> - The outgoing
    #     (Transmit) network traffic on the database, including both
    #     customer database traffic and AWS traffic used for monitoring and
    #     replication.
    #
    #     `Statistics`\: The most useful statistic is `Average`.
    #
    #     `Unit`\: The published unit is `Bytes/Second`.
    #   @return [String]
    #
    # @!attribute [rw] period
    #   The granularity, in seconds, of the returned data points.
    #
    #   All relational database metric data is available in 1-minute (60
    #   seconds) granularity.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The start of the time interval from which to get metric data.
    #
    #   Constraints:
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Specified in the Unix time format.
    #
    #     For example, if you wish to use a start time of October 1, 2018,
    #     at 8 PM UTC, then you input `1538424000` as the start time.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time interval from which to get metric data.
    #
    #   Constraints:
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Specified in the Unix time format.
    #
    #     For example, if you wish to use an end time of October 1, 2018, at
    #     8 PM UTC, then you input `1538424000` as the end time.
    #   @return [Time]
    #
    # @!attribute [rw] unit
    #   The unit for the metric data request. Valid units depend on the
    #   metric data being requested. For the valid units with each available
    #   metric, see the `metricName` parameter.
    #   @return [String]
    #
    # @!attribute [rw] statistics
    #   The statistic for the metric.
    #
    #   The following statistics are available:
    #
    #   * `Minimum` - The lowest value observed during the specified period.
    #     Use this value to determine low volumes of activity for your
    #     application.
    #
    #   * `Maximum` - The highest value observed during the specified
    #     period. Use this value to determine high volumes of activity for
    #     your application.
    #
    #   * `Sum` - All values submitted for the matching metric added
    #     together. You can use this statistic to determine the total volume
    #     of a metric.
    #
    #   * `Average` - The value of Sum / SampleCount during the specified
    #     period. By comparing this statistic with the Minimum and Maximum
    #     values, you can determine the full scope of a metric and how close
    #     the average use is to the Minimum and Maximum values. This
    #     comparison helps you to know when to increase or decrease your
    #     resources.
    #
    #   * `SampleCount` - The count, or number, of data points used for the
    #     statistical calculation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseMetricDataRequest AWS API Documentation
    #
    class GetRelationalDatabaseMetricDataRequest < Struct.new(
      :relational_database_name,
      :metric_name,
      :period,
      :start_time,
      :end_time,
      :unit,
      :statistics)
      include Aws::Structure
    end

    # @!attribute [rw] metric_name
    #   The name of the metric returned.
    #   @return [String]
    #
    # @!attribute [rw] metric_data
    #   An array of objects that describe the metric data returned.
    #   @return [Array<Types::MetricDatapoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseMetricDataResult AWS API Documentation
    #
    class GetRelationalDatabaseMetricDataResult < Struct.new(
      :metric_name,
      :metric_data)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRelationalDatabaseParametersRequest
    #   data as a hash:
    #
    #       {
    #         relational_database_name: "ResourceName", # required
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] relational_database_name
    #   The name of your database for which to get parameters.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial
    #   `GetRelationalDatabaseParameters` request. If your results are
    #   paginated, the response will return a next page token that you can
    #   specify as the page token in a subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseParametersRequest AWS API Documentation
    #
    class GetRelationalDatabaseParametersRequest < Struct.new(
      :relational_database_name,
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] parameters
    #   An object describing the result of your get relational database
    #   parameters request.
    #   @return [Array<Types::RelationalDatabaseParameter>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another
    #   `GetRelationalDatabaseParameters` request and specify the next page
    #   token using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseParametersResult AWS API Documentation
    #
    class GetRelationalDatabaseParametersResult < Struct.new(
      :parameters,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRelationalDatabaseRequest
    #   data as a hash:
    #
    #       {
    #         relational_database_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] relational_database_name
    #   The name of the database that you are looking up.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseRequest AWS API Documentation
    #
    class GetRelationalDatabaseRequest < Struct.new(
      :relational_database_name)
      include Aws::Structure
    end

    # @!attribute [rw] relational_database
    #   An object describing the specified database.
    #   @return [Types::RelationalDatabase]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseResult AWS API Documentation
    #
    class GetRelationalDatabaseResult < Struct.new(
      :relational_database)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRelationalDatabaseSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         relational_database_snapshot_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] relational_database_snapshot_name
    #   The name of the database snapshot for which to get information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseSnapshotRequest AWS API Documentation
    #
    class GetRelationalDatabaseSnapshotRequest < Struct.new(
      :relational_database_snapshot_name)
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_snapshot
    #   An object describing the specified database snapshot.
    #   @return [Types::RelationalDatabaseSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseSnapshotResult AWS API Documentation
    #
    class GetRelationalDatabaseSnapshotResult < Struct.new(
      :relational_database_snapshot)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRelationalDatabaseSnapshotsRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial
    #   `GetRelationalDatabaseSnapshots` request. If your results are
    #   paginated, the response will return a next page token that you can
    #   specify as the page token in a subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseSnapshotsRequest AWS API Documentation
    #
    class GetRelationalDatabaseSnapshotsRequest < Struct.new(
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] relational_database_snapshots
    #   An object describing the result of your get relational database
    #   snapshots request.
    #   @return [Array<Types::RelationalDatabaseSnapshot>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another
    #   `GetRelationalDatabaseSnapshots` request and specify the next page
    #   token using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabaseSnapshotsResult AWS API Documentation
    #
    class GetRelationalDatabaseSnapshotsResult < Struct.new(
      :relational_database_snapshots,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRelationalDatabasesRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetRelationalDatabases`
    #   request. If your results are paginated, the response will return a
    #   next page token that you can specify as the page token in a
    #   subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabasesRequest AWS API Documentation
    #
    class GetRelationalDatabasesRequest < Struct.new(
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] relational_databases
    #   An object describing the result of your get relational databases
    #   request.
    #   @return [Array<Types::RelationalDatabase>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another
    #   `GetRelationalDatabases` request and specify the next page token
    #   using the `pageToken` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetRelationalDatabasesResult AWS API Documentation
    #
    class GetRelationalDatabasesResult < Struct.new(
      :relational_databases,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetStaticIpRequest
    #   data as a hash:
    #
    #       {
    #         static_ip_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] static_ip_name
    #   The name of the static IP in Lightsail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetStaticIpRequest AWS API Documentation
    #
    class GetStaticIpRequest < Struct.new(
      :static_ip_name)
      include Aws::Structure
    end

    # @!attribute [rw] static_ip
    #   An array of key-value pairs containing information about the
    #   requested static IP.
    #   @return [Types::StaticIp]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetStaticIpResult AWS API Documentation
    #
    class GetStaticIpResult < Struct.new(
      :static_ip)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetStaticIpsRequest
    #   data as a hash:
    #
    #       {
    #         page_token: "string",
    #       }
    #
    # @!attribute [rw] page_token
    #   The token to advance to the next page of results from your request.
    #
    #   To get a page token, perform an initial `GetStaticIps` request. If
    #   your results are paginated, the response will return a next page
    #   token that you can specify as the page token in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetStaticIpsRequest AWS API Documentation
    #
    class GetStaticIpsRequest < Struct.new(
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] static_ips
    #   An array of key-value pairs containing information about your get
    #   static IPs request.
    #   @return [Array<Types::StaticIp>]
    #
    # @!attribute [rw] next_page_token
    #   The token to advance to the next page of resutls from your request.
    #
    #   A next page token is not returned if there are no more results to
    #   display.
    #
    #   To get the next page of results, perform another `GetStaticIps`
    #   request and specify the next page token using the `pageToken`
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/GetStaticIpsResult AWS API Documentation
    #
    class GetStaticIpsResult < Struct.new(
      :static_ips,
      :next_page_token)
      include Aws::Structure
    end

    # Describes the public SSH host keys or the RDP certificate.
    #
    # @!attribute [rw] algorithm
    #   The SSH host key algorithm or the RDP certificate format.
    #
    #   For SSH host keys, the algorithm may be `ssh-rsa`,
    #   `ecdsa-sha2-nistp256`, `ssh-ed25519`, etc. For RDP certificates, the
    #   algorithm is always `x509-cert`.
    #   @return [String]
    #
    # @!attribute [rw] public_key
    #   The public SSH host key or the RDP certificate.
    #   @return [String]
    #
    # @!attribute [rw] witnessed_at
    #   The time that the SSH host key or RDP certificate was recorded by
    #   Lightsail.
    #   @return [Time]
    #
    # @!attribute [rw] fingerprint_sha1
    #   The SHA-1 fingerprint of the returned SSH host key or RDP
    #   certificate.
    #
    #   * Example of an SHA-1 SSH fingerprint:
    #
    #     `SHA1:1CHH6FaAaXjtFOsR/t83vf91SR0`
    #
    #   * Example of an SHA-1 RDP fingerprint:
    #
    #     `af:34:51:fe:09:f0:e0:da:b8:4e:56:ca:60:c2:10:ff:38:06:db:45`
    #   @return [String]
    #
    # @!attribute [rw] fingerprint_sha256
    #   The SHA-256 fingerprint of the returned SSH host key or RDP
    #   certificate.
    #
    #   * Example of an SHA-256 SSH fingerprint:
    #
    #     `SHA256:KTsMnRBh1IhD17HpdfsbzeGA4jOijm5tyXsMjKVbB8o`
    #
    #   * Example of an SHA-256 RDP fingerprint:
    #
    #     `03:9b:36:9f:4b:de:4e:61:70:fc:7c:c9:78:e7:d2:1a:1c:25:a8:0c:91:f6:7c:e4:d6:a0:85:c8:b4:53:99:68`
    #   @return [String]
    #
    # @!attribute [rw] not_valid_before
    #   The returned RDP certificate is valid after this point in time.
    #
    #   This value is listed only for RDP certificates.
    #   @return [Time]
    #
    # @!attribute [rw] not_valid_after
    #   The returned RDP certificate is not valid after this point in time.
    #
    #   This value is listed only for RDP certificates.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/HostKeyAttributes AWS API Documentation
    #
    class HostKeyAttributes < Struct.new(
      :algorithm,
      :public_key,
      :witnessed_at,
      :fingerprint_sha1,
      :fingerprint_sha256,
      :not_valid_before,
      :not_valid_after)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportKeyPairRequest
    #   data as a hash:
    #
    #       {
    #         key_pair_name: "ResourceName", # required
    #         public_key_base_64: "Base64", # required
    #       }
    #
    # @!attribute [rw] key_pair_name
    #   The name of the key pair for which you want to import the public
    #   key.
    #   @return [String]
    #
    # @!attribute [rw] public_key_base_64
    #   A base64-encoded public key of the `ssh-rsa` type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ImportKeyPairRequest AWS API Documentation
    #
    class ImportKeyPairRequest < Struct.new(
      :key_pair_name,
      :public_key_base_64)
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ImportKeyPairResult AWS API Documentation
    #
    class ImportKeyPairResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # Describes an instance (a virtual private server).
    #
    # @!attribute [rw] name
    #   The name the user gave the instance (e.g.,
    #   `Amazon_Linux-1GB-Ohio-1`).
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the instance (e.g.,
    #   `arn:aws:lightsail:us-east-2:123456789101:Instance/244ad76f-8aad-4741-809f-12345EXAMPLE`).
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about an instance or another resource in
    #   Lightsail. This code enables our support team to look up your
    #   Lightsail information more easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the instance was created (e.g., `1479734909.17`).
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The region name and Availability Zone where the instance is located.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The type of resource (usually `Instance`).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Lightsail Dev
    #   Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] blueprint_id
    #   The blueprint ID (e.g., `os_amlinux_2016_03`).
    #   @return [String]
    #
    # @!attribute [rw] blueprint_name
    #   The friendly name of the blueprint (e.g., `Amazon Linux`).
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The bundle for the instance (e.g., `micro_1_0`).
    #   @return [String]
    #
    # @!attribute [rw] add_ons
    #   An array of objects representing the add-ons enabled on the
    #   instance.
    #   @return [Array<Types::AddOn>]
    #
    # @!attribute [rw] is_static_ip
    #   A Boolean value indicating whether this instance has a static IP
    #   assigned to it.
    #   @return [Boolean]
    #
    # @!attribute [rw] private_ip_address
    #   The private IP address of the instance.
    #   @return [String]
    #
    # @!attribute [rw] public_ip_address
    #   The public IP address of the instance.
    #   @return [String]
    #
    # @!attribute [rw] ipv6_address
    #   The IPv6 address of the instance.
    #   @return [String]
    #
    # @!attribute [rw] hardware
    #   The size of the vCPU and the amount of RAM for the instance.
    #   @return [Types::InstanceHardware]
    #
    # @!attribute [rw] networking
    #   Information about the public ports and monthly data transfer rates
    #   for the instance.
    #   @return [Types::InstanceNetworking]
    #
    # @!attribute [rw] state
    #   The status code and the state (e.g., `running`) for the instance.
    #   @return [Types::InstanceState]
    #
    # @!attribute [rw] username
    #   The user name for connecting to the instance (e.g., `ec2-user`).
    #   @return [String]
    #
    # @!attribute [rw] ssh_key_name
    #   The name of the SSH key being used to connect to the instance (e.g.,
    #   `LightsailDefaultKeyPair`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Instance AWS API Documentation
    #
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
      :ipv6_address,
      :hardware,
      :networking,
      :state,
      :username,
      :ssh_key_name)
      include Aws::Structure
    end

    # The parameters for gaining temporary access to one of your Amazon
    # Lightsail instances.
    #
    # @!attribute [rw] cert_key
    #   For SSH access, the public key to use when accessing your instance
    #   For OpenSSH clients (e.g., command line SSH), you should save this
    #   value to `tempkey-cert.pub`.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   For SSH access, the date on which the temporary keys expire.
    #   @return [Time]
    #
    # @!attribute [rw] ip_address
    #   The public IP address of the Amazon Lightsail instance.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   For RDP access, the password for your Amazon Lightsail instance.
    #   Password will be an empty string if the password for your new
    #   instance is not ready yet. When you create an instance, it can take
    #   up to 15 minutes for the instance to be ready.
    #
    #   <note markdown="1"> If you create an instance using any key pair other than the default
    #   (`LightsailDefaultKeyPair`), `password` will always be an empty
    #   string.
    #
    #    If you change the Administrator password on the instance, Lightsail
    #   will continue to return the original password value. When accessing
    #   the instance using RDP, you need to manually enter the Administrator
    #   password after changing it from the default.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] password_data
    #   For a Windows Server-based instance, an object with the data you can
    #   use to retrieve your password. This is only needed if `password` is
    #   empty and the instance is not new (and therefore the password is not
    #   ready yet). When you create an instance, it can take up to 15
    #   minutes for the instance to be ready.
    #   @return [Types::PasswordData]
    #
    # @!attribute [rw] private_key
    #   For SSH access, the temporary private key. For OpenSSH clients
    #   (e.g., command line SSH), you should save this value to `tempkey`).
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol for these Amazon Lightsail instance access details.
    #   @return [String]
    #
    # @!attribute [rw] instance_name
    #   The name of this Amazon Lightsail instance.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name to use when logging in to the Amazon Lightsail
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] host_keys
    #   Describes the public SSH host keys or the RDP certificate.
    #   @return [Array<Types::HostKeyAttributes>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceAccessDetails AWS API Documentation
    #
    class InstanceAccessDetails < Struct.new(
      :cert_key,
      :expires_at,
      :ip_address,
      :password,
      :password_data,
      :private_key,
      :protocol,
      :instance_name,
      :username,
      :host_keys)
      include Aws::Structure
    end

    # Describes the Amazon Elastic Compute Cloud instance and related
    # resources to be created using the `create cloud formation stack`
    # operation.
    #
    # @note When making an API call, you may pass InstanceEntry
    #   data as a hash:
    #
    #       {
    #         source_name: "ResourceName", # required
    #         instance_type: "NonEmptyString", # required
    #         port_info_source: "DEFAULT", # required, accepts DEFAULT, INSTANCE, NONE, CLOSED
    #         user_data: "string",
    #         availability_zone: "string", # required
    #       }
    #
    # @!attribute [rw] source_name
    #   The name of the export snapshot record, which contains the exported
    #   Lightsail instance snapshot that will be used as the source of the
    #   new Amazon EC2 instance.
    #
    #   Use the `get export snapshot records` operation to get a list of
    #   export snapshot records that you can use to create a CloudFormation
    #   stack.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type (e.g., `t2.micro`) to use for the new Amazon EC2
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] port_info_source
    #   The port configuration to use for the new Amazon EC2 instance.
    #
    #   The following configuration options are available:
    #
    #   * `DEFAULT` - Use the default firewall settings from the Lightsail
    #     instance blueprint.
    #
    #   * `INSTANCE` - Use the configured firewall settings from the source
    #     Lightsail instance.
    #
    #   * `NONE` - Use the default Amazon EC2 security group.
    #
    #   * `CLOSED` - All ports closed.
    #
    #   <note markdown="1"> If you configured `lightsail-connect` as a `cidrListAliases` on your
    #   instance, or if you chose to allow the Lightsail browser-based SSH
    #   or RDP clients to connect to your instance, that configuration is
    #   not carried over to your new Amazon EC2 instance.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] user_data
    #   A launch script you can create that configures a server with
    #   additional user data. For example, you might want to run `apt-get -y
    #   update`.
    #
    #   <note markdown="1"> Depending on the machine image you choose, the command to get
    #   software on your instance varies. Amazon Linux and CentOS use `yum`,
    #   Debian and Ubuntu use `apt-get`, and FreeBSD uses `pkg`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone for the new Amazon EC2 instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceEntry AWS API Documentation
    #
    class InstanceEntry < Struct.new(
      :source_name,
      :instance_type,
      :port_info_source,
      :user_data,
      :availability_zone)
      include Aws::Structure
    end

    # Describes the hardware for the instance.
    #
    # @!attribute [rw] cpu_count
    #   The number of vCPUs the instance has.
    #   @return [Integer]
    #
    # @!attribute [rw] disks
    #   The disks attached to the instance.
    #   @return [Array<Types::Disk>]
    #
    # @!attribute [rw] ram_size_in_gb
    #   The amount of RAM in GB on the instance (e.g., `1.0`).
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceHardware AWS API Documentation
    #
    class InstanceHardware < Struct.new(
      :cpu_count,
      :disks,
      :ram_size_in_gb)
      include Aws::Structure
    end

    # Describes information about the health of the instance.
    #
    # @!attribute [rw] instance_name
    #   The name of the Lightsail instance for which you are requesting
    #   health check data.
    #   @return [String]
    #
    # @!attribute [rw] instance_health
    #   Describes the overall instance health. Valid values are below.
    #   @return [String]
    #
    # @!attribute [rw] instance_health_reason
    #   More information about the instance health. If the `instanceHealth`
    #   is `healthy`, then an `instanceHealthReason` value is not provided.
    #
    #   If <b> <code>instanceHealth</code> </b> is `initial`, the <b>
    #   <code>instanceHealthReason</code> </b> value can be one of the
    #   following:
    #
    #   * <b> <code>Lb.RegistrationInProgress</code> </b> - The target
    #     instance is in the process of being registered with the load
    #     balancer.
    #
    #   * <b> <code>Lb.InitialHealthChecking</code> </b> - The Lightsail
    #     load balancer is still sending the target instance the minimum
    #     number of health checks required to determine its health status.
    #
    #   If <b> <code>instanceHealth</code> </b> is `unhealthy`, the <b>
    #   <code>instanceHealthReason</code> </b> value can be one of the
    #   following:
    #
    #   * <b> <code>Instance.ResponseCodeMismatch</code> </b> - The health
    #     checks did not return an expected HTTP code.
    #
    #   * <b> <code>Instance.Timeout</code> </b> - The health check requests
    #     timed out.
    #
    #   * <b> <code>Instance.FailedHealthChecks</code> </b> - The health
    #     checks failed because the connection to the target instance timed
    #     out, the target instance response was malformed, or the target
    #     instance failed the health check for an unknown reason.
    #
    #   * <b> <code>Lb.InternalError</code> </b> - The health checks failed
    #     due to an internal error.
    #
    #   If <b> <code>instanceHealth</code> </b> is `unused`, the <b>
    #   <code>instanceHealthReason</code> </b> value can be one of the
    #   following:
    #
    #   * <b> <code>Instance.NotRegistered</code> </b> - The target instance
    #     is not registered with the target group.
    #
    #   * <b> <code>Instance.NotInUse</code> </b> - The target group is not
    #     used by any load balancer, or the target instance is in an
    #     Availability Zone that is not enabled for its load balancer.
    #
    #   * <b> <code>Instance.IpUnusable</code> </b> - The target IP address
    #     is reserved for use by a Lightsail load balancer.
    #
    #   * <b> <code>Instance.InvalidState</code> </b> - The target is in the
    #     stopped or terminated state.
    #
    #   If <b> <code>instanceHealth</code> </b> is `draining`, the <b>
    #   <code>instanceHealthReason</code> </b> value can be one of the
    #   following:
    #
    #   * <b> <code>Instance.DeregistrationInProgress</code> </b> - The
    #     target instance is in the process of being deregistered and the
    #     deregistration delay period has not expired.
    #
    #   ^
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceHealthSummary AWS API Documentation
    #
    class InstanceHealthSummary < Struct.new(
      :instance_name,
      :instance_health,
      :instance_health_reason)
      include Aws::Structure
    end

    # Describes monthly data transfer rates and port information for an
    # instance.
    #
    # @!attribute [rw] monthly_transfer
    #   The amount of data in GB allocated for monthly data transfers.
    #   @return [Types::MonthlyTransfer]
    #
    # @!attribute [rw] ports
    #   An array of key-value pairs containing information about the ports
    #   on the instance.
    #   @return [Array<Types::InstancePortInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceNetworking AWS API Documentation
    #
    class InstanceNetworking < Struct.new(
      :monthly_transfer,
      :ports)
      include Aws::Structure
    end

    # Describes information about ports for an Amazon Lightsail instance.
    #
    # @!attribute [rw] from_port
    #   The first port in a range of open ports on an instance.
    #
    #   Allowed ports:
    #
    #   * TCP and UDP - `0` to `65535`
    #
    #   * ICMP - `8` (to configure Ping)
    #
    #     <note markdown="1"> Ping is the only communication supported through the ICMP protocol
    #     in Lightsail. To configure ping, specify the `fromPort` parameter
    #     as `8`, and the `toPort` parameter as `-1`.
    #
    #      </note>
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   The last port in a range of open ports on an instance.
    #
    #   Allowed ports:
    #
    #   * TCP and UDP - `0` to `65535`
    #
    #   * ICMP - `-1` (to configure Ping)
    #
    #     <note markdown="1"> Ping is the only communication supported through the ICMP protocol
    #     in Lightsail. To configure ping, specify the `fromPort` parameter
    #     as `8`, and the `toPort` parameter as `-1`.
    #
    #      </note>
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The IP protocol name.
    #
    #   The name can be one of the following:
    #
    #   * `tcp` - Transmission Control Protocol (TCP) provides reliable,
    #     ordered, and error-checked delivery of streamed data between
    #     applications running on hosts communicating by an IP network. If
    #     you have an application that doesn't require reliable data stream
    #     service, use UDP instead.
    #
    #   * `all` - All transport layer protocol types. For more general
    #     information, see [Transport layer][1] on *Wikipedia*.
    #
    #   * `udp` - With User Datagram Protocol (UDP), computer applications
    #     can send messages (or datagrams) to other hosts on an Internet
    #     Protocol (IP) network. Prior communications are not required to
    #     set up transmission channels or data paths. Applications that
    #     don't require reliable data stream service can use UDP, which
    #     provides a connectionless datagram service that emphasizes reduced
    #     latency over reliability. If you do require reliable data stream
    #     service, use TCP instead.
    #
    #   * `icmp` - Internet Control Message Protocol (ICMP) is used to send
    #     error messages and operational information indicating success or
    #     failure when communicating with an instance. For example, an error
    #     is indicated when an instance could not be reached.
    #
    #     <note markdown="1"> Ping is the only communication supported through the ICMP protocol
    #     in Lightsail. To configure ping, specify the `fromPort` parameter
    #     as `8`, and the `toPort` parameter as `-1`.
    #
    #      </note>
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Transport_layer
    #   @return [String]
    #
    # @!attribute [rw] access_from
    #   The location from which access is allowed. For example, `Anywhere
    #   (0.0.0.0/0)`, or `Custom` if a specific IP address or range of IP
    #   addresses is allowed.
    #   @return [String]
    #
    # @!attribute [rw] access_type
    #   The type of access (`Public` or `Private`).
    #   @return [String]
    #
    # @!attribute [rw] common_name
    #   The common name of the port information.
    #   @return [String]
    #
    # @!attribute [rw] access_direction
    #   The access direction (`inbound` or `outbound`).
    #
    #   <note markdown="1"> Lightsail currently supports only `inbound` access direction.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] cidrs
    #   The IP address, or range of IP addresses in CIDR notation, that are
    #   allowed to connect to an instance through the ports, and the
    #   protocol. Lightsail supports IPv4 addresses.
    #
    #   For more information about CIDR block notation, see [Classless
    #   Inter-Domain Routing][1] on *Wikipedia*.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation
    #   @return [Array<String>]
    #
    # @!attribute [rw] cidr_list_aliases
    #   An alias that defines access for a preconfigured range of IP
    #   addresses.
    #
    #   The only alias currently supported is `lightsail-connect`, which
    #   allows IP addresses of the browser-based RDP/SSH client in the
    #   Lightsail console to connect to your instance.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstancePortInfo AWS API Documentation
    #
    class InstancePortInfo < Struct.new(
      :from_port,
      :to_port,
      :protocol,
      :access_from,
      :access_type,
      :common_name,
      :access_direction,
      :cidrs,
      :cidr_list_aliases)
      include Aws::Structure
    end

    # Describes open ports on an instance, the IP addresses allowed to
    # connect to the instance through the ports, and the protocol.
    #
    # @!attribute [rw] from_port
    #   The first port in a range of open ports on an instance.
    #
    #   Allowed ports:
    #
    #   * TCP and UDP - `0` to `65535`
    #
    #   * ICMP - `8` (to configure Ping)
    #
    #     <note markdown="1"> Ping is the only communication supported through the ICMP protocol
    #     in Lightsail. To configure ping, specify the `fromPort` parameter
    #     as `8`, and the `toPort` parameter as `-1`.
    #
    #      </note>
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   The last port in a range of open ports on an instance.
    #
    #   Allowed ports:
    #
    #   * TCP and UDP - `0` to `65535`
    #
    #   * ICMP - `-1` (to configure Ping)
    #
    #     <note markdown="1"> Ping is the only communication supported through the ICMP protocol
    #     in Lightsail. To configure ping, specify the `fromPort` parameter
    #     as `8`, and the `toPort` parameter as `-1`.
    #
    #      </note>
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The IP protocol name.
    #
    #   The name can be one of the following:
    #
    #   * `tcp` - Transmission Control Protocol (TCP) provides reliable,
    #     ordered, and error-checked delivery of streamed data between
    #     applications running on hosts communicating by an IP network. If
    #     you have an application that doesn't require reliable data stream
    #     service, use UDP instead.
    #
    #   * `all` - All transport layer protocol types. For more general
    #     information, see [Transport layer][1] on *Wikipedia*.
    #
    #   * `udp` - With User Datagram Protocol (UDP), computer applications
    #     can send messages (or datagrams) to other hosts on an Internet
    #     Protocol (IP) network. Prior communications are not required to
    #     set up transmission channels or data paths. Applications that
    #     don't require reliable data stream service can use UDP, which
    #     provides a connectionless datagram service that emphasizes reduced
    #     latency over reliability. If you do require reliable data stream
    #     service, use TCP instead.
    #
    #   * `icmp` - Internet Control Message Protocol (ICMP) is used to send
    #     error messages and operational information indicating success or
    #     failure when communicating with an instance. For example, an error
    #     is indicated when an instance could not be reached.
    #
    #     <note markdown="1"> Ping is the only communication supported through the ICMP protocol
    #     in Lightsail. To configure ping, specify the `fromPort` parameter
    #     as `8`, and the `toPort` parameter as `-1`.
    #
    #      </note>
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Transport_layer
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Specifies whether the instance port is `open` or `closed`.
    #
    #   <note markdown="1"> The port state for Lightsail instances is always `open`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] cidrs
    #   The IP address, or range of IP addresses in CIDR notation, that are
    #   allowed to connect to an instance through the ports, and the
    #   protocol. Lightsail supports IPv4 addresses.
    #
    #   For more information about CIDR block notation, see [Classless
    #   Inter-Domain Routing][1] on *Wikipedia*.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation
    #   @return [Array<String>]
    #
    # @!attribute [rw] cidr_list_aliases
    #   An alias that defines access for a preconfigured range of IP
    #   addresses.
    #
    #   The only alias currently supported is `lightsail-connect`, which
    #   allows IP addresses of the browser-based RDP/SSH client in the
    #   Lightsail console to connect to your instance.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstancePortState AWS API Documentation
    #
    class InstancePortState < Struct.new(
      :from_port,
      :to_port,
      :protocol,
      :state,
      :cidrs,
      :cidr_list_aliases)
      include Aws::Structure
    end

    # Describes an instance snapshot.
    #
    # @!attribute [rw] name
    #   The name of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the snapshot (e.g.,
    #   `arn:aws:lightsail:us-east-2:123456789101:InstanceSnapshot/d23b5706-3322-4d83-81e5-12345EXAMPLE`).
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about an instance or another resource in
    #   Lightsail. This code enables our support team to look up your
    #   Lightsail information more easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the snapshot was created (e.g.,
    #   `1479907467.024`).
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The region name and Availability Zone where you created the
    #   snapshot.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The type of resource (usually `InstanceSnapshot`).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Lightsail Dev
    #   Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] state
    #   The state the snapshot is in.
    #   @return [String]
    #
    # @!attribute [rw] progress
    #   The progress of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] from_attached_disks
    #   An array of disk objects containing information about all block
    #   storage disks.
    #   @return [Array<Types::Disk>]
    #
    # @!attribute [rw] from_instance_name
    #   The instance from which the snapshot was created.
    #   @return [String]
    #
    # @!attribute [rw] from_instance_arn
    #   The Amazon Resource Name (ARN) of the instance from which the
    #   snapshot was created (e.g.,
    #   `arn:aws:lightsail:us-east-2:123456789101:Instance/64b8404c-ccb1-430b-8daf-12345EXAMPLE`).
    #   @return [String]
    #
    # @!attribute [rw] from_blueprint_id
    #   The blueprint ID from which you created the snapshot (e.g.,
    #   `os_debian_8_3`). A blueprint is a virtual private server (or
    #   *instance*) image used to create instances quickly.
    #   @return [String]
    #
    # @!attribute [rw] from_bundle_id
    #   The bundle ID from which you created the snapshot (e.g.,
    #   `micro_1_0`).
    #   @return [String]
    #
    # @!attribute [rw] is_from_auto_snapshot
    #   A Boolean value indicating whether the snapshot was created from an
    #   automatic snapshot.
    #   @return [Boolean]
    #
    # @!attribute [rw] size_in_gb
    #   The size in GB of the SSD.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceSnapshot AWS API Documentation
    #
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
      :size_in_gb)
      include Aws::Structure
    end

    # Describes an instance snapshot.
    #
    # @!attribute [rw] from_bundle_id
    #   The bundle ID from which the source instance was created (e.g.,
    #   `micro_1_0`).
    #   @return [String]
    #
    # @!attribute [rw] from_blueprint_id
    #   The blueprint ID from which the source instance (e.g.,
    #   `os_debian_8_3`).
    #   @return [String]
    #
    # @!attribute [rw] from_disk_info
    #   A list of objects describing the disks that were attached to the
    #   source instance.
    #   @return [Array<Types::DiskInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceSnapshotInfo AWS API Documentation
    #
    class InstanceSnapshotInfo < Struct.new(
      :from_bundle_id,
      :from_blueprint_id,
      :from_disk_info)
      include Aws::Structure
    end

    # Describes the virtual private server (or *instance*) status.
    #
    # @!attribute [rw] code
    #   The status code for the instance.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The state of the instance (e.g., `running` or `pending`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InstanceState AWS API Documentation
    #
    class InstanceState < Struct.new(
      :code,
      :name)
      include Aws::Structure
    end

    # Lightsail throws this exception when user input does not conform to
    # the validation rules of an input field.
    #
    # <note markdown="1"> Domain-related APIs are only available in the N. Virginia (us-east-1)
    # Region. Please set your AWS Region configuration to us-east-1 to
    # create, view, or edit these resources.
    #
    #  </note>
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] docs
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] tip
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :code,
      :docs,
      :message,
      :tip)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/IsVpcPeeredRequest AWS API Documentation
    #
    class IsVpcPeeredRequest < Aws::EmptyStructure; end

    # @!attribute [rw] is_peered
    #   Returns `true` if the Lightsail VPC is peered; otherwise, `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/IsVpcPeeredResult AWS API Documentation
    #
    class IsVpcPeeredResult < Struct.new(
      :is_peered)
      include Aws::Structure
    end

    # Describes the SSH key pair.
    #
    # @!attribute [rw] name
    #   The friendly name of the SSH key pair.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the key pair (e.g.,
    #   `arn:aws:lightsail:us-east-2:123456789101:KeyPair/05859e3d-331d-48ba-9034-12345EXAMPLE`).
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about an instance or another resource in
    #   Lightsail. This code enables our support team to look up your
    #   Lightsail information more easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the key pair was created (e.g.,
    #   `1479816991.349`).
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The region name and Availability Zone where the key pair was
    #   created.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The resource type (usually `KeyPair`).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Lightsail Dev
    #   Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] fingerprint
    #   The RSA fingerprint of the key pair.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/KeyPair AWS API Documentation
    #
    class KeyPair < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :tags,
      :fingerprint)
      include Aws::Structure
    end

    # Describes the Lightsail load balancer.
    #
    # @!attribute [rw] name
    #   The name of the load balancer (e.g., `my-load-balancer`).
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about your Lightsail load balancer. This code
    #   enables our support team to look up your Lightsail information more
    #   easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date when your load balancer was created.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The AWS Region where your load balancer was created (e.g.,
    #   `us-east-2a`). Lightsail automatically creates your load balancer
    #   across Availability Zones.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The resource type (e.g., `LoadBalancer`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Lightsail Dev
    #   Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] dns_name
    #   The DNS name of your Lightsail load balancer.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The status of your load balancer. Valid values are below.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol you have enabled for your load balancer. Valid values
    #   are below.
    #
    #   You can't just have `HTTP_HTTPS`, but you can have just `HTTP`.
    #   @return [String]
    #
    # @!attribute [rw] public_ports
    #   An array of public port settings for your load balancer. For HTTP,
    #   use port 80. For HTTPS, use port 443.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] health_check_path
    #   The path you specified to perform your health checks. If no path is
    #   specified, the load balancer tries to make a request to the default
    #   (root) page.
    #   @return [String]
    #
    # @!attribute [rw] instance_port
    #   The port where the load balancer will direct traffic to your
    #   Lightsail instances. For HTTP traffic, it's port 80. For HTTPS
    #   traffic, it's port 443.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_health_summary
    #   An array of InstanceHealthSummary objects describing the health of
    #   the load balancer.
    #   @return [Array<Types::InstanceHealthSummary>]
    #
    # @!attribute [rw] tls_certificate_summaries
    #   An array of LoadBalancerTlsCertificateSummary objects that provide
    #   additional information about the SSL/TLS certificates. For example,
    #   if `true`, the certificate is attached to the load balancer.
    #   @return [Array<Types::LoadBalancerTlsCertificateSummary>]
    #
    # @!attribute [rw] configuration_options
    #   A string to string map of the configuration options for your load
    #   balancer. Valid values are listed below.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/LoadBalancer AWS API Documentation
    #
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
      :configuration_options)
      include Aws::Structure
    end

    # Describes a load balancer SSL/TLS certificate.
    #
    # TLS is just an updated, more secure version of Secure Socket Layer
    # (SSL).
    #
    # @!attribute [rw] name
    #   The name of the SSL/TLS certificate (e.g., `my-certificate`).
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the SSL/TLS certificate.
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about your Lightsail load balancer or SSL/TLS
    #   certificate. This code enables our support team to look up your
    #   Lightsail information more easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when you created your SSL/TLS certificate.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The AWS Region and Availability Zone where you created your
    #   certificate.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The resource type (e.g., `LoadBalancerTlsCertificate`).
    #
    #   * <b> <code>Instance</code> </b> - A Lightsail instance (a virtual
    #     private server)
    #
    #   * <b> <code>StaticIp</code> </b> - A static IP address
    #
    #   * <b> <code>KeyPair</code> </b> - The key pair used to connect to a
    #     Lightsail instance
    #
    #   * <b> <code>InstanceSnapshot</code> </b> - A Lightsail instance
    #     snapshot
    #
    #   * <b> <code>Domain</code> </b> - A DNS zone
    #
    #   * <b> <code>PeeredVpc</code> </b> - A peered VPC
    #
    #   * <b> <code>LoadBalancer</code> </b> - A Lightsail load balancer
    #
    #   * <b> <code>LoadBalancerTlsCertificate</code> </b> - An SSL/TLS
    #     certificate associated with a Lightsail load balancer
    #
    #   * <b> <code>Disk</code> </b> - A Lightsail block storage disk
    #
    #   * <b> <code>DiskSnapshot</code> </b> - A block storage disk snapshot
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Lightsail Dev
    #   Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] load_balancer_name
    #   The load balancer name where your SSL/TLS certificate is attached.
    #   @return [String]
    #
    # @!attribute [rw] is_attached
    #   When `true`, the SSL/TLS certificate is attached to the Lightsail
    #   load balancer.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The validation status of the SSL/TLS certificate. Valid values are
    #   below.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name for your SSL/TLS certificate.
    #   @return [String]
    #
    # @!attribute [rw] domain_validation_records
    #   An array of LoadBalancerTlsCertificateDomainValidationRecord objects
    #   describing the records.
    #   @return [Array<Types::LoadBalancerTlsCertificateDomainValidationRecord>]
    #
    # @!attribute [rw] failure_reason
    #   The reason for the SSL/TLS certificate validation failure.
    #   @return [String]
    #
    # @!attribute [rw] issued_at
    #   The time when the SSL/TLS certificate was issued.
    #   @return [Time]
    #
    # @!attribute [rw] issuer
    #   The issuer of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] key_algorithm
    #   The algorithm that was used to generate the key pair (the public and
    #   private key).
    #   @return [String]
    #
    # @!attribute [rw] not_after
    #   The timestamp when the SSL/TLS certificate expires.
    #   @return [Time]
    #
    # @!attribute [rw] not_before
    #   The timestamp when the SSL/TLS certificate is first valid.
    #   @return [Time]
    #
    # @!attribute [rw] renewal_summary
    #   An object containing information about the status of Lightsail's
    #   managed renewal for the certificate.
    #   @return [Types::LoadBalancerTlsCertificateRenewalSummary]
    #
    # @!attribute [rw] revocation_reason
    #   The reason the certificate was revoked. Valid values are below.
    #   @return [String]
    #
    # @!attribute [rw] revoked_at
    #   The timestamp when the SSL/TLS certificate was revoked.
    #   @return [Time]
    #
    # @!attribute [rw] serial
    #   The serial number of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] signature_algorithm
    #   The algorithm that was used to sign the certificate.
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   The name of the entity that is associated with the public key
    #   contained in the certificate.
    #   @return [String]
    #
    # @!attribute [rw] subject_alternative_names
    #   One or more domains or subdomains included in the certificate. This
    #   list contains the domain names that are bound to the public key that
    #   is contained in the certificate. The subject alternative names
    #   include the canonical domain name (CNAME) of the certificate and
    #   additional domain names that can be used to connect to the website,
    #   such as `example.com`, `www.example.com`, or `m.example.com`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/LoadBalancerTlsCertificate AWS API Documentation
    #
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
      :subject_alternative_names)
      include Aws::Structure
    end

    # Contains information about the domain names on an SSL/TLS certificate
    # that you will use to validate domain ownership.
    #
    # @!attribute [rw] domain_name
    #   The fully qualified domain name in the certificate request.
    #   @return [String]
    #
    # @!attribute [rw] validation_status
    #   The status of the domain validation. Valid values are listed below.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/LoadBalancerTlsCertificateDomainValidationOption AWS API Documentation
    #
    class LoadBalancerTlsCertificateDomainValidationOption < Struct.new(
      :domain_name,
      :validation_status)
      include Aws::Structure
    end

    # Describes the validation record of each domain name in the SSL/TLS
    # certificate.
    #
    # @!attribute [rw] name
    #   A fully qualified domain name in the certificate. For example,
    #   `example.com`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of validation record. For example, `CNAME` for domain
    #   validation.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for that type.
    #   @return [String]
    #
    # @!attribute [rw] validation_status
    #   The validation status. Valid values are listed below.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name against which your SSL/TLS certificate was
    #   validated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/LoadBalancerTlsCertificateDomainValidationRecord AWS API Documentation
    #
    class LoadBalancerTlsCertificateDomainValidationRecord < Struct.new(
      :name,
      :type,
      :value,
      :validation_status,
      :domain_name)
      include Aws::Structure
    end

    # Contains information about the status of Lightsail's managed renewal
    # for the certificate.
    #
    # @!attribute [rw] renewal_status
    #   The status of Lightsail's managed renewal of the certificate. Valid
    #   values are listed below.
    #   @return [String]
    #
    # @!attribute [rw] domain_validation_options
    #   Contains information about the validation of each domain name in the
    #   certificate, as it pertains to Lightsail's managed renewal. This is
    #   different from the initial validation that occurs as a result of the
    #   RequestCertificate request.
    #   @return [Array<Types::LoadBalancerTlsCertificateDomainValidationOption>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/LoadBalancerTlsCertificateRenewalSummary AWS API Documentation
    #
    class LoadBalancerTlsCertificateRenewalSummary < Struct.new(
      :renewal_status,
      :domain_validation_options)
      include Aws::Structure
    end

    # Provides a summary of SSL/TLS certificate metadata.
    #
    # @!attribute [rw] name
    #   The name of the SSL/TLS certificate.
    #   @return [String]
    #
    # @!attribute [rw] is_attached
    #   When `true`, the SSL/TLS certificate is attached to the Lightsail
    #   load balancer.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/LoadBalancerTlsCertificateSummary AWS API Documentation
    #
    class LoadBalancerTlsCertificateSummary < Struct.new(
      :name,
      :is_attached)
      include Aws::Structure
    end

    # Describes a database log event.
    #
    # @!attribute [rw] created_at
    #   The timestamp when the database log event was created.
    #   @return [Time]
    #
    # @!attribute [rw] message
    #   The message of the database log event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/LogEvent AWS API Documentation
    #
    class LogEvent < Struct.new(
      :created_at,
      :message)
      include Aws::Structure
    end

    # Describes the metric data point.
    #
    # @!attribute [rw] average
    #   The average.
    #   @return [Float]
    #
    # @!attribute [rw] maximum
    #   The maximum.
    #   @return [Float]
    #
    # @!attribute [rw] minimum
    #   The minimum.
    #   @return [Float]
    #
    # @!attribute [rw] sample_count
    #   The sample count.
    #   @return [Float]
    #
    # @!attribute [rw] sum
    #   The sum.
    #   @return [Float]
    #
    # @!attribute [rw] timestamp
    #   The timestamp (e.g., `1479816991.349`).
    #   @return [Time]
    #
    # @!attribute [rw] unit
    #   The unit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/MetricDatapoint AWS API Documentation
    #
    class MetricDatapoint < Struct.new(
      :average,
      :maximum,
      :minimum,
      :sample_count,
      :sum,
      :timestamp,
      :unit)
      include Aws::Structure
    end

    # Describes resource being monitored by an alarm.
    #
    # An alarm is a way to monitor your Amazon Lightsail resource metrics.
    # For more information, see [Alarms in Amazon Lightsail][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-alarms
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource being monitored.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Lightsail resource being monitored.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type of the resource being monitored.
    #
    #   Instances, load balancers, and relational databases are the only
    #   Lightsail resources that can currently be monitored by alarms.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/MonitoredResourceInfo AWS API Documentation
    #
    class MonitoredResourceInfo < Struct.new(
      :arn,
      :name,
      :resource_type)
      include Aws::Structure
    end

    # Describes the monthly data transfer in and out of your virtual private
    # server (or *instance*).
    #
    # @!attribute [rw] gb_per_month_allocated
    #   The amount allocated per month (in GB).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/MonthlyTransfer AWS API Documentation
    #
    class MonthlyTransfer < Struct.new(
      :gb_per_month_allocated)
      include Aws::Structure
    end

    # Lightsail throws this exception when it cannot find a resource.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] docs
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] tip
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :code,
      :docs,
      :message,
      :tip)
      include Aws::Structure
    end

    # @note When making an API call, you may pass OpenInstancePublicPortsRequest
    #   data as a hash:
    #
    #       {
    #         port_info: { # required
    #           from_port: 1,
    #           to_port: 1,
    #           protocol: "tcp", # accepts tcp, all, udp, icmp
    #           cidrs: ["string"],
    #           cidr_list_aliases: ["string"],
    #         },
    #         instance_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] port_info
    #   An object to describe the ports to open for the specified instance.
    #   @return [Types::PortInfo]
    #
    # @!attribute [rw] instance_name
    #   The name of the instance for which to open ports.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/OpenInstancePublicPortsRequest AWS API Documentation
    #
    class OpenInstancePublicPortsRequest < Struct.new(
      :port_info,
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/OpenInstancePublicPortsResult AWS API Documentation
    #
    class OpenInstancePublicPortsResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # Describes the API operation.
    #
    # @!attribute [rw] id
    #   The ID of the operation.
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The resource name.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the operation was initialized (e.g.,
    #   `1479816991.349`).
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The AWS Region and Availability Zone.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] is_terminal
    #   A Boolean value indicating whether the operation is terminal.
    #   @return [Boolean]
    #
    # @!attribute [rw] operation_details
    #   Details about the operation (e.g., `Debian-1GB-Ohio-1`).
    #   @return [String]
    #
    # @!attribute [rw] operation_type
    #   The type of operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the operation.
    #   @return [String]
    #
    # @!attribute [rw] status_changed_at
    #   The timestamp when the status was changed (e.g., `1479816991.349`).
    #   @return [Time]
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_details
    #   The error details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Operation AWS API Documentation
    #
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
      :error_details)
      include Aws::Structure
    end

    # Lightsail throws this exception when an operation fails to execute.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] docs
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] tip
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/OperationFailureException AWS API Documentation
    #
    class OperationFailureException < Struct.new(
      :code,
      :docs,
      :message,
      :tip)
      include Aws::Structure
    end

    # The password data for the Windows Server-based instance, including the
    # ciphertext and the key pair name.
    #
    # @!attribute [rw] ciphertext
    #   The encrypted password. Ciphertext will be an empty string if access
    #   to your new instance is not ready yet. When you create an instance,
    #   it can take up to 15 minutes for the instance to be ready.
    #
    #   <note markdown="1"> If you use the default key pair (`LightsailDefaultKeyPair`), the
    #   decrypted password will be available in the password field.
    #
    #    If you are using a custom key pair, you need to use your own means
    #   of decryption.
    #
    #    If you change the Administrator password on the instance, Lightsail
    #   will continue to return the original ciphertext value. When
    #   accessing the instance using RDP, you need to manually enter the
    #   Administrator password after changing it from the default.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] key_pair_name
    #   The name of the key pair that you used when creating your instance.
    #   If no key pair name was specified when creating the instance,
    #   Lightsail uses the default key pair (`LightsailDefaultKeyPair`).
    #
    #   If you are using a custom key pair, you need to use your own means
    #   of decrypting your password using the `ciphertext`. Lightsail
    #   creates the ciphertext by encrypting your password with the public
    #   key part of this key pair.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PasswordData AWS API Documentation
    #
    class PasswordData < Struct.new(
      :ciphertext,
      :key_pair_name)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PeerVpcRequest AWS API Documentation
    #
    class PeerVpcRequest < Aws::EmptyStructure; end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PeerVpcResult AWS API Documentation
    #
    class PeerVpcResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # Describes a pending database maintenance action.
    #
    # @!attribute [rw] action
    #   The type of pending database maintenance action.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Additional detail about the pending database maintenance action.
    #   @return [String]
    #
    # @!attribute [rw] current_apply_date
    #   The effective date of the pending database maintenance action.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PendingMaintenanceAction AWS API Documentation
    #
    class PendingMaintenanceAction < Struct.new(
      :action,
      :description,
      :current_apply_date)
      include Aws::Structure
    end

    # Describes a pending database value modification.
    #
    # @!attribute [rw] master_user_password
    #   The password for the master user of the database.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The database engine version.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_enabled
    #   A Boolean value indicating whether automated backup retention is
    #   enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PendingModifiedRelationalDatabaseValues AWS API Documentation
    #
    class PendingModifiedRelationalDatabaseValues < Struct.new(
      :master_user_password,
      :engine_version,
      :backup_retention_enabled)
      include Aws::Structure
    end

    # Describes ports to open on an instance, the IP addresses allowed to
    # connect to the instance through the ports, and the protocol.
    #
    # @note When making an API call, you may pass PortInfo
    #   data as a hash:
    #
    #       {
    #         from_port: 1,
    #         to_port: 1,
    #         protocol: "tcp", # accepts tcp, all, udp, icmp
    #         cidrs: ["string"],
    #         cidr_list_aliases: ["string"],
    #       }
    #
    # @!attribute [rw] from_port
    #   The first port in a range of open ports on an instance.
    #
    #   Allowed ports:
    #
    #   * TCP and UDP - `0` to `65535`
    #
    #   * ICMP - `8` (to configure Ping)
    #
    #     <note markdown="1"> Ping is the only communication supported through the ICMP protocol
    #     in Lightsail. To configure ping, specify the `fromPort` parameter
    #     as `8`, and the `toPort` parameter as `-1`.
    #
    #      </note>
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   The last port in a range of open ports on an instance.
    #
    #   Allowed ports:
    #
    #   * TCP and UDP - `0` to `65535`
    #
    #   * ICMP - `-1` (to configure Ping)
    #
    #     <note markdown="1"> Ping is the only communication supported through the ICMP protocol
    #     in Lightsail. To configure ping, specify the `fromPort` parameter
    #     as `8`, and the `toPort` parameter as `-1`.
    #
    #      </note>
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The IP protocol name.
    #
    #   The name can be one of the following:
    #
    #   * `tcp` - Transmission Control Protocol (TCP) provides reliable,
    #     ordered, and error-checked delivery of streamed data between
    #     applications running on hosts communicating by an IP network. If
    #     you have an application that doesn't require reliable data stream
    #     service, use UDP instead.
    #
    #   * `all` - All transport layer protocol types. For more general
    #     information, see [Transport layer][1] on *Wikipedia*.
    #
    #   * `udp` - With User Datagram Protocol (UDP), computer applications
    #     can send messages (or datagrams) to other hosts on an Internet
    #     Protocol (IP) network. Prior communications are not required to
    #     set up transmission channels or data paths. Applications that
    #     don't require reliable data stream service can use UDP, which
    #     provides a connectionless datagram service that emphasizes reduced
    #     latency over reliability. If you do require reliable data stream
    #     service, use TCP instead.
    #
    #   * `icmp` - Internet Control Message Protocol (ICMP) is used to send
    #     error messages and operational information indicating success or
    #     failure when communicating with an instance. For example, an error
    #     is indicated when an instance could not be reached.
    #
    #     <note markdown="1"> Ping is the only communication supported through the ICMP protocol
    #     in Lightsail. To configure ping, specify the `fromPort` parameter
    #     as `8`, and the `toPort` parameter as `-1`.
    #
    #      </note>
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Transport_layer
    #   @return [String]
    #
    # @!attribute [rw] cidrs
    #   The IP address, or range of IP addresses in CIDR notation, that are
    #   allowed to connect to an instance through the ports, and the
    #   protocol. Lightsail supports IPv4 addresses.
    #
    #   Examples:
    #
    #   * To allow the IP address `192.0.2.44`, specify `192.0.2.44` or
    #     `192.0.2.44/32`.
    #
    #   * To allow the IP addresses `192.0.2.0` to `192.0.2.255`, specify
    #     `192.0.2.0/24`.
    #
    #   For more information about CIDR block notation, see [Classless
    #   Inter-Domain Routing][1] on *Wikipedia*.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation
    #   @return [Array<String>]
    #
    # @!attribute [rw] cidr_list_aliases
    #   An alias that defines access for a preconfigured range of IP
    #   addresses.
    #
    #   The only alias currently supported is `lightsail-connect`, which
    #   allows IP addresses of the browser-based RDP/SSH client in the
    #   Lightsail console to connect to your instance.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PortInfo AWS API Documentation
    #
    class PortInfo < Struct.new(
      :from_port,
      :to_port,
      :protocol,
      :cidrs,
      :cidr_list_aliases)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutAlarmRequest
    #   data as a hash:
    #
    #       {
    #         alarm_name: "ResourceName", # required
    #         metric_name: "CPUUtilization", # required, accepts CPUUtilization, NetworkIn, NetworkOut, StatusCheckFailed, StatusCheckFailed_Instance, StatusCheckFailed_System, ClientTLSNegotiationErrorCount, HealthyHostCount, UnhealthyHostCount, HTTPCode_LB_4XX_Count, HTTPCode_LB_5XX_Count, HTTPCode_Instance_2XX_Count, HTTPCode_Instance_3XX_Count, HTTPCode_Instance_4XX_Count, HTTPCode_Instance_5XX_Count, InstanceResponseTime, RejectedConnectionCount, RequestCount, DatabaseConnections, DiskQueueDepth, FreeStorageSpace, NetworkReceiveThroughput, NetworkTransmitThroughput, BurstCapacityTime, BurstCapacityPercentage
    #         monitored_resource_name: "ResourceName", # required
    #         comparison_operator: "GreaterThanOrEqualToThreshold", # required, accepts GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold
    #         threshold: 1.0, # required
    #         evaluation_periods: 1, # required
    #         datapoints_to_alarm: 1,
    #         treat_missing_data: "breaching", # accepts breaching, notBreaching, ignore, missing
    #         contact_protocols: ["Email"], # accepts Email, SMS
    #         notification_triggers: ["OK"], # accepts OK, ALARM, INSUFFICIENT_DATA
    #         notification_enabled: false,
    #       }
    #
    # @!attribute [rw] alarm_name
    #   The name for the alarm. Specify the name of an existing alarm to
    #   update, and overwrite the previous configuration of the alarm.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   The name of the metric to associate with the alarm.
    #
    #   You can configure up to two alarms per metric.
    #
    #   The following metrics are available for each resource type:
    #
    #   * **Instances**\: `BurstCapacityPercentage`, `BurstCapacityTime`,
    #     `CPUUtilization`, `NetworkIn`, `NetworkOut`, `StatusCheckFailed`,
    #     `StatusCheckFailed_Instance`, and `StatusCheckFailed_System`.
    #
    #   * **Load balancers**\: `ClientTLSNegotiationErrorCount`,
    #     `HealthyHostCount`, `UnhealthyHostCount`, `HTTPCode_LB_4XX_Count`,
    #     `HTTPCode_LB_5XX_Count`, `HTTPCode_Instance_2XX_Count`,
    #     `HTTPCode_Instance_3XX_Count`, `HTTPCode_Instance_4XX_Count`,
    #     `HTTPCode_Instance_5XX_Count`, `InstanceResponseTime`,
    #     `RejectedConnectionCount`, and `RequestCount`.
    #
    #   * **Relational databases**\: `CPUUtilization`,
    #     `DatabaseConnections`, `DiskQueueDepth`, `FreeStorageSpace`,
    #     `NetworkReceiveThroughput`, and `NetworkTransmitThroughput`.
    #
    #   For more information about these metrics, see [Metrics available in
    #   Lightsail][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-resource-health-metrics#available-metrics
    #   @return [String]
    #
    # @!attribute [rw] monitored_resource_name
    #   The name of the Lightsail resource that will be monitored.
    #
    #   Instances, load balancers, and relational databases are the only
    #   Lightsail resources that can currently be monitored by alarms.
    #   @return [String]
    #
    # @!attribute [rw] comparison_operator
    #   The arithmetic operation to use when comparing the specified
    #   statistic to the threshold. The specified statistic value is used as
    #   the first operand.
    #   @return [String]
    #
    # @!attribute [rw] threshold
    #   The value against which the specified statistic is compared.
    #   @return [Float]
    #
    # @!attribute [rw] evaluation_periods
    #   The number of most recent periods over which data is compared to the
    #   specified threshold. If you are setting an "M out of N" alarm,
    #   this value (`evaluationPeriods`) is the N.
    #
    #   If you are setting an alarm that requires that a number of
    #   consecutive data points be breaching to trigger the alarm, this
    #   value specifies the rolling period of time in which data points are
    #   evaluated.
    #
    #   Each evaluation period is five minutes long. For example, specify an
    #   evaluation period of 24 to evaluate a metric over a rolling period
    #   of two hours.
    #
    #   You can specify a minimum valuation period of 1 (5 minutes), and a
    #   maximum evaluation period of 288 (24 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] datapoints_to_alarm
    #   The number of data points that must be not within the specified
    #   threshold to trigger the alarm. If you are setting an "M out of N"
    #   alarm, this value (`datapointsToAlarm`) is the M.
    #   @return [Integer]
    #
    # @!attribute [rw] treat_missing_data
    #   Sets how this alarm will handle missing data points.
    #
    #   An alarm can treat missing data in the following ways:
    #
    #   * `breaching` - Assume the missing data is not within the threshold.
    #     Missing data counts towards the number of times the metric is not
    #     within the threshold.
    #
    #   * `notBreaching` - Assume the missing data is within the threshold.
    #     Missing data does not count towards the number of times the metric
    #     is not within the threshold.
    #
    #   * `ignore` - Ignore the missing data. Maintains the current alarm
    #     state.
    #
    #   * `missing` - Missing data is treated as missing.
    #
    #   If `treatMissingData` is not specified, the default behavior of
    #   `missing` is used.
    #   @return [String]
    #
    # @!attribute [rw] contact_protocols
    #   The contact protocols to use for the alarm, such as `Email`, `SMS`
    #   (text messaging), or both.
    #
    #   A notification is sent via the specified contact protocol if
    #   notifications are enabled for the alarm, and when the alarm is
    #   triggered.
    #
    #   A notification is not sent if a contact protocol is not specified,
    #   if the specified contact protocol is not configured in the AWS
    #   Region, or if notifications are not enabled for the alarm using the
    #   `notificationEnabled` paramater.
    #
    #   Use the `CreateContactMethod` action to configure a contact protocol
    #   in an AWS Region.
    #   @return [Array<String>]
    #
    # @!attribute [rw] notification_triggers
    #   The alarm states that trigger a notification.
    #
    #   An alarm has the following possible states:
    #
    #   * `ALARM` - The metric is outside of the defined threshold.
    #
    #   * `INSUFFICIENT_DATA` - The alarm has just started, the metric is
    #     not available, or not enough data is available for the metric to
    #     determine the alarm state.
    #
    #   * `OK` - The metric is within the defined threshold.
    #
    #   When you specify a notification trigger, the `ALARM` state must be
    #   specified. The `INSUFFICIENT_DATA` and `OK` states can be specified
    #   in addition to the `ALARM` state.
    #
    #   * If you specify `OK` as an alarm trigger, a notification is sent
    #     when the alarm switches from an `ALARM` or `INSUFFICIENT_DATA`
    #     alarm state to an `OK` state. This can be thought of as an *all
    #     clear* alarm notification.
    #
    #   * If you specify `INSUFFICIENT_DATA` as the alarm trigger, a
    #     notification is sent when the alarm switches from an `OK` or
    #     `ALARM` alarm state to an `INSUFFICIENT_DATA` state.
    #
    #   The notification trigger defaults to `ALARM` if you don't specify
    #   this parameter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] notification_enabled
    #   Indicates whether the alarm is enabled.
    #
    #   Notifications are enabled by default if you don't specify this
    #   parameter.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PutAlarmRequest AWS API Documentation
    #
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
      :notification_enabled)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PutAlarmResult AWS API Documentation
    #
    class PutAlarmResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutInstancePublicPortsRequest
    #   data as a hash:
    #
    #       {
    #         port_infos: [ # required
    #           {
    #             from_port: 1,
    #             to_port: 1,
    #             protocol: "tcp", # accepts tcp, all, udp, icmp
    #             cidrs: ["string"],
    #             cidr_list_aliases: ["string"],
    #           },
    #         ],
    #         instance_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] port_infos
    #   An array of objects to describe the ports to open for the specified
    #   instance.
    #   @return [Array<Types::PortInfo>]
    #
    # @!attribute [rw] instance_name
    #   The name of the instance for which to open ports.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PutInstancePublicPortsRequest AWS API Documentation
    #
    class PutInstancePublicPortsRequest < Struct.new(
      :port_infos,
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/PutInstancePublicPortsResult AWS API Documentation
    #
    class PutInstancePublicPortsResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RebootInstanceRequest
    #   data as a hash:
    #
    #       {
    #         instance_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] instance_name
    #   The name of the instance to reboot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RebootInstanceRequest AWS API Documentation
    #
    class RebootInstanceRequest < Struct.new(
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RebootInstanceResult AWS API Documentation
    #
    class RebootInstanceResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RebootRelationalDatabaseRequest
    #   data as a hash:
    #
    #       {
    #         relational_database_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] relational_database_name
    #   The name of your database to reboot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RebootRelationalDatabaseRequest AWS API Documentation
    #
    class RebootRelationalDatabaseRequest < Struct.new(
      :relational_database_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RebootRelationalDatabaseResult AWS API Documentation
    #
    class RebootRelationalDatabaseResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # Describes the AWS Region.
    #
    # @!attribute [rw] continent_code
    #   The continent code (e.g., `NA`, meaning North America).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the AWS Region (e.g., `This region is recommended
    #   to serve users in the eastern United States and eastern Canada`).
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name (e.g., `Ohio`).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The region name (e.g., `us-east-2`).
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   The Availability Zones. Follows the format `us-east-2a`
    #   (case-sensitive).
    #   @return [Array<Types::AvailabilityZone>]
    #
    # @!attribute [rw] relational_database_availability_zones
    #   The Availability Zones for databases. Follows the format
    #   `us-east-2a` (case-sensitive).
    #   @return [Array<Types::AvailabilityZone>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Region AWS API Documentation
    #
    class Region < Struct.new(
      :continent_code,
      :description,
      :display_name,
      :name,
      :availability_zones,
      :relational_database_availability_zones)
      include Aws::Structure
    end

    # Describes a database.
    #
    # @!attribute [rw] name
    #   The unique name of the database resource in Lightsail.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the database.
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code for the database. Include this code in your email
    #   to support when you have questions about a database in Lightsail.
    #   This code enables our support team to look up your Lightsail
    #   information more easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the database was created. Formatted in Unix time.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The Region name and Availability Zone where the database is located.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type for the database (for example,
    #   `RelationalDatabase`).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Lightsail Dev
    #   Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] relational_database_blueprint_id
    #   The blueprint ID for the database. A blueprint describes the major
    #   engine version of a database.
    #   @return [String]
    #
    # @!attribute [rw] relational_database_bundle_id
    #   The bundle ID for the database. A bundle describes the performance
    #   specifications for your database.
    #   @return [String]
    #
    # @!attribute [rw] master_database_name
    #   The name of the master database created when the Lightsail database
    #   resource is created.
    #   @return [String]
    #
    # @!attribute [rw] hardware
    #   Describes the hardware of the database.
    #   @return [Types::RelationalDatabaseHardware]
    #
    # @!attribute [rw] state
    #   Describes the current state of the database.
    #   @return [String]
    #
    # @!attribute [rw] secondary_availability_zone
    #   Describes the secondary Availability Zone of a high availability
    #   database.
    #
    #   The secondary database is used for failover support of a high
    #   availability database.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_enabled
    #   A Boolean value indicating whether automated backup retention is
    #   enabled for the database.
    #   @return [Boolean]
    #
    # @!attribute [rw] pending_modified_values
    #   Describes pending database value modifications.
    #   @return [Types::PendingModifiedRelationalDatabaseValues]
    #
    # @!attribute [rw] engine
    #   The database software (for example, `MySQL`).
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The database engine version (for example, `5.7.23`).
    #   @return [String]
    #
    # @!attribute [rw] latest_restorable_time
    #   The latest point in time to which the database can be restored.
    #   Formatted in Unix time.
    #   @return [Time]
    #
    # @!attribute [rw] master_username
    #   The master user name of the database.
    #   @return [String]
    #
    # @!attribute [rw] parameter_apply_status
    #   The status of parameter updates for the database.
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created for
    #   the database (for example, `16:00-16:30`).
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur on
    #   the database.
    #
    #   In the format `ddd:hh24:mi-ddd:hh24:mi`. For example,
    #   `Tue:17:00-Tue:17:30`.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   A Boolean value indicating whether the database is publicly
    #   accessible.
    #   @return [Boolean]
    #
    # @!attribute [rw] master_endpoint
    #   The master endpoint for the database.
    #   @return [Types::RelationalDatabaseEndpoint]
    #
    # @!attribute [rw] pending_maintenance_actions
    #   Describes the pending maintenance actions for the database.
    #   @return [Array<Types::PendingMaintenanceAction>]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   The certificate associated with the database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RelationalDatabase AWS API Documentation
    #
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
      :ca_certificate_identifier)
      include Aws::Structure
    end

    # Describes a database image, or blueprint. A blueprint describes the
    # major engine version of a database.
    #
    # @!attribute [rw] blueprint_id
    #   The ID for the database blueprint.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The database software of the database blueprint (for example,
    #   `MySQL`).
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The database engine version for the database blueprint (for example,
    #   `5.7.23`).
    #   @return [String]
    #
    # @!attribute [rw] engine_description
    #   The description of the database engine for the database blueprint.
    #   @return [String]
    #
    # @!attribute [rw] engine_version_description
    #   The description of the database engine version for the database
    #   blueprint.
    #   @return [String]
    #
    # @!attribute [rw] is_engine_default
    #   A Boolean value indicating whether the engine version is the default
    #   for the database blueprint.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RelationalDatabaseBlueprint AWS API Documentation
    #
    class RelationalDatabaseBlueprint < Struct.new(
      :blueprint_id,
      :engine,
      :engine_version,
      :engine_description,
      :engine_version_description,
      :is_engine_default)
      include Aws::Structure
    end

    # Describes a database bundle. A bundle describes the performance
    # specifications of the database.
    #
    # @!attribute [rw] bundle_id
    #   The ID for the database bundle.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the database bundle.
    #   @return [String]
    #
    # @!attribute [rw] price
    #   The cost of the database bundle in US currency.
    #   @return [Float]
    #
    # @!attribute [rw] ram_size_in_gb
    #   The amount of RAM in GB (for example, `2.0`) for the database
    #   bundle.
    #   @return [Float]
    #
    # @!attribute [rw] disk_size_in_gb
    #   The size of the disk for the database bundle.
    #   @return [Integer]
    #
    # @!attribute [rw] transfer_per_month_in_gb
    #   The data transfer rate per month in GB for the database bundle.
    #   @return [Integer]
    #
    # @!attribute [rw] cpu_count
    #   The number of virtual CPUs (vCPUs) for the database bundle.
    #   @return [Integer]
    #
    # @!attribute [rw] is_encrypted
    #   A Boolean value indicating whether the database bundle is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_active
    #   A Boolean value indicating whether the database bundle is active.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RelationalDatabaseBundle AWS API Documentation
    #
    class RelationalDatabaseBundle < Struct.new(
      :bundle_id,
      :name,
      :price,
      :ram_size_in_gb,
      :disk_size_in_gb,
      :transfer_per_month_in_gb,
      :cpu_count,
      :is_encrypted,
      :is_active)
      include Aws::Structure
    end

    # Describes an endpoint for a database.
    #
    # @!attribute [rw] port
    #   Specifies the port that the database is listening on.
    #   @return [Integer]
    #
    # @!attribute [rw] address
    #   Specifies the DNS address of the database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RelationalDatabaseEndpoint AWS API Documentation
    #
    class RelationalDatabaseEndpoint < Struct.new(
      :port,
      :address)
      include Aws::Structure
    end

    # Describes an event for a database.
    #
    # @!attribute [rw] resource
    #   The database that the database event relates to.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the database event was created.
    #   @return [Time]
    #
    # @!attribute [rw] message
    #   The message of the database event.
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   The category that the database event belongs to.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RelationalDatabaseEvent AWS API Documentation
    #
    class RelationalDatabaseEvent < Struct.new(
      :resource,
      :created_at,
      :message,
      :event_categories)
      include Aws::Structure
    end

    # Describes the hardware of a database.
    #
    # @!attribute [rw] cpu_count
    #   The number of vCPUs for the database.
    #   @return [Integer]
    #
    # @!attribute [rw] disk_size_in_gb
    #   The size of the disk for the database.
    #   @return [Integer]
    #
    # @!attribute [rw] ram_size_in_gb
    #   The amount of RAM in GB for the database.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RelationalDatabaseHardware AWS API Documentation
    #
    class RelationalDatabaseHardware < Struct.new(
      :cpu_count,
      :disk_size_in_gb,
      :ram_size_in_gb)
      include Aws::Structure
    end

    # Describes the parameters of a database.
    #
    # @note When making an API call, you may pass RelationalDatabaseParameter
    #   data as a hash:
    #
    #       {
    #         allowed_values: "string",
    #         apply_method: "string",
    #         apply_type: "string",
    #         data_type: "string",
    #         description: "string",
    #         is_modifiable: false,
    #         parameter_name: "string",
    #         parameter_value: "string",
    #       }
    #
    # @!attribute [rw] allowed_values
    #   Specifies the valid range of values for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] apply_method
    #   Indicates when parameter updates are applied.
    #
    #   Can be `immediate` or `pending-reboot`.
    #   @return [String]
    #
    # @!attribute [rw] apply_type
    #   Specifies the engine-specific parameter type.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   Specifies the valid data type for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Provides a description of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] is_modifiable
    #   A Boolean value indicating whether the parameter can be modified.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameter_name
    #   Specifies the name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] parameter_value
    #   Specifies the value of the parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RelationalDatabaseParameter AWS API Documentation
    #
    class RelationalDatabaseParameter < Struct.new(
      :allowed_values,
      :apply_method,
      :apply_type,
      :data_type,
      :description,
      :is_modifiable,
      :parameter_name,
      :parameter_value)
      include Aws::Structure
    end

    # Describes a database snapshot.
    #
    # @!attribute [rw] name
    #   The name of the database snapshot.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the database snapshot.
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code for the database snapshot. Include this code in
    #   your email to support when you have questions about a database
    #   snapshot in Lightsail. This code enables our support team to look up
    #   your Lightsail information more easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the database snapshot was created.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The Region name and Availability Zone where the database snapshot is
    #   located.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The Lightsail resource type.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag keys and optional values for the resource. For more
    #   information about tags in Lightsail, see the [Lightsail Dev
    #   Guide][1].
    #
    #
    #
    #   [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] engine
    #   The software of the database snapshot (for example, `MySQL`)
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The database engine version for the database snapshot (for example,
    #   `5.7.23`).
    #   @return [String]
    #
    # @!attribute [rw] size_in_gb
    #   The size of the disk in GB (for example, `32`) for the database
    #   snapshot.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The state of the database snapshot.
    #   @return [String]
    #
    # @!attribute [rw] from_relational_database_name
    #   The name of the source database from which the database snapshot was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] from_relational_database_arn
    #   The Amazon Resource Name (ARN) of the database from which the
    #   database snapshot was created.
    #   @return [String]
    #
    # @!attribute [rw] from_relational_database_bundle_id
    #   The bundle ID of the database from which the database snapshot was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] from_relational_database_blueprint_id
    #   The blueprint ID of the database from which the database snapshot
    #   was created. A blueprint describes the major engine version of a
    #   database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/RelationalDatabaseSnapshot AWS API Documentation
    #
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
      :from_relational_database_blueprint_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ReleaseStaticIpRequest
    #   data as a hash:
    #
    #       {
    #         static_ip_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] static_ip_name
    #   The name of the static IP to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ReleaseStaticIpRequest AWS API Documentation
    #
    class ReleaseStaticIpRequest < Struct.new(
      :static_ip_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ReleaseStaticIpResult AWS API Documentation
    #
    class ReleaseStaticIpResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # Describes the resource location.
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone. Follows the format `us-east-2a`
    #   (case-sensitive).
    #   @return [String]
    #
    # @!attribute [rw] region_name
    #   The AWS Region name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ResourceLocation AWS API Documentation
    #
    class ResourceLocation < Struct.new(
      :availability_zone,
      :region_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SendContactMethodVerificationRequest
    #   data as a hash:
    #
    #       {
    #         protocol: "Email", # required, accepts Email
    #       }
    #
    # @!attribute [rw] protocol
    #   The protocol to verify, such as `Email` or `SMS` (text messaging).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/SendContactMethodVerificationRequest AWS API Documentation
    #
    class SendContactMethodVerificationRequest < Struct.new(
      :protocol)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/SendContactMethodVerificationResult AWS API Documentation
    #
    class SendContactMethodVerificationResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # A general service exception.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] docs
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] tip
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/ServiceException AWS API Documentation
    #
    class ServiceException < Struct.new(
      :code,
      :docs,
      :message,
      :tip)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartInstanceRequest
    #   data as a hash:
    #
    #       {
    #         instance_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] instance_name
    #   The name of the instance (a virtual private server) to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StartInstanceRequest AWS API Documentation
    #
    class StartInstanceRequest < Struct.new(
      :instance_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StartInstanceResult AWS API Documentation
    #
    class StartInstanceResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartRelationalDatabaseRequest
    #   data as a hash:
    #
    #       {
    #         relational_database_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] relational_database_name
    #   The name of your database to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StartRelationalDatabaseRequest AWS API Documentation
    #
    class StartRelationalDatabaseRequest < Struct.new(
      :relational_database_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StartRelationalDatabaseResult AWS API Documentation
    #
    class StartRelationalDatabaseResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # Describes the static IP.
    #
    # @!attribute [rw] name
    #   The name of the static IP (e.g., `StaticIP-Ohio-EXAMPLE`).
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the static IP (e.g.,
    #   `arn:aws:lightsail:us-east-2:123456789101:StaticIp/9cbb4a9e-f8e3-4dfe-b57e-12345EXAMPLE`).
    #   @return [String]
    #
    # @!attribute [rw] support_code
    #   The support code. Include this code in your email to support when
    #   you have questions about an instance or another resource in
    #   Lightsail. This code enables our support team to look up your
    #   Lightsail information more easily.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the static IP was created (e.g.,
    #   `1479735304.222`).
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The region and Availability Zone where the static IP was created.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] resource_type
    #   The resource type (usually `StaticIp`).
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The static IP address.
    #   @return [String]
    #
    # @!attribute [rw] attached_to
    #   The instance where the static IP is attached (e.g.,
    #   `Amazon_Linux-1GB-Ohio-1`).
    #   @return [String]
    #
    # @!attribute [rw] is_attached
    #   A Boolean value indicating whether the static IP is attached.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StaticIp AWS API Documentation
    #
    class StaticIp < Struct.new(
      :name,
      :arn,
      :support_code,
      :created_at,
      :location,
      :resource_type,
      :ip_address,
      :attached_to,
      :is_attached)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopInstanceRequest
    #   data as a hash:
    #
    #       {
    #         instance_name: "ResourceName", # required
    #         force: false,
    #       }
    #
    # @!attribute [rw] instance_name
    #   The name of the instance (a virtual private server) to stop.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   When set to `True`, forces a Lightsail instance that is stuck in a
    #   `stopping` state to stop.
    #
    #   Only use the `force` parameter if your instance is stuck in the
    #   `stopping` state. In any other state, your instance should stop
    #   normally without adding this parameter to your API request.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StopInstanceRequest AWS API Documentation
    #
    class StopInstanceRequest < Struct.new(
      :instance_name,
      :force)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StopInstanceResult AWS API Documentation
    #
    class StopInstanceResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopRelationalDatabaseRequest
    #   data as a hash:
    #
    #       {
    #         relational_database_name: "ResourceName", # required
    #         relational_database_snapshot_name: "ResourceName",
    #       }
    #
    # @!attribute [rw] relational_database_name
    #   The name of your database to stop.
    #   @return [String]
    #
    # @!attribute [rw] relational_database_snapshot_name
    #   The name of your new database snapshot to be created before stopping
    #   your database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StopRelationalDatabaseRequest AWS API Documentation
    #
    class StopRelationalDatabaseRequest < Struct.new(
      :relational_database_name,
      :relational_database_snapshot_name)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/StopRelationalDatabaseResult AWS API Documentation
    #
    class StopRelationalDatabaseResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # Describes a tag key and optional value assigned to an Amazon Lightsail
    # resource.
    #
    # For more information about tags in Lightsail, see the [Lightsail Dev
    # Guide][1].
    #
    #
    #
    # [1]: https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   The key of the tag.
    #
    #   Constraints: Tag keys accept a maximum of 128 letters, numbers,
    #   spaces in UTF-8, or the following characters: + - = . \_ : / @
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #
    #   Constraints: Tag values accept a maximum of 256 letters, numbers,
    #   spaces in UTF-8, or the following characters: + - = . \_ : / @
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_name: "ResourceName", # required
    #         resource_arn: "ResourceArn",
    #         tags: [ # required
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_name
    #   The name of the resource to which you are adding tags.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which you want to
    #   add a tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag key and optional value.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_name,
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/TagResourceResult AWS API Documentation
    #
    class TagResourceResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TestAlarmRequest
    #   data as a hash:
    #
    #       {
    #         alarm_name: "ResourceName", # required
    #         state: "OK", # required, accepts OK, ALARM, INSUFFICIENT_DATA
    #       }
    #
    # @!attribute [rw] alarm_name
    #   The name of the alarm to test.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The alarm state to test.
    #
    #   An alarm has the following possible states that can be tested:
    #
    #   * `ALARM` - The metric is outside of the defined threshold.
    #
    #   * `INSUFFICIENT_DATA` - The alarm has just started, the metric is
    #     not available, or not enough data is available for the metric to
    #     determine the alarm state.
    #
    #   * `OK` - The metric is within the defined threshold.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/TestAlarmRequest AWS API Documentation
    #
    class TestAlarmRequest < Struct.new(
      :alarm_name,
      :state)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/TestAlarmResult AWS API Documentation
    #
    class TestAlarmResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # Lightsail throws this exception when the user has not been
    # authenticated.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] docs
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] tip
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UnauthenticatedException AWS API Documentation
    #
    class UnauthenticatedException < Struct.new(
      :code,
      :docs,
      :message,
      :tip)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UnpeerVpcRequest AWS API Documentation
    #
    class UnpeerVpcRequest < Aws::EmptyStructure; end

    # @!attribute [rw] operation
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Types::Operation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UnpeerVpcResult AWS API Documentation
    #
    class UnpeerVpcResult < Struct.new(
      :operation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_name: "ResourceName", # required
    #         resource_arn: "ResourceArn",
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_name
    #   The name of the resource from which you are removing a tag.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which you want
    #   to remove a tag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to delete from the specified resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_name,
      :resource_arn,
      :tag_keys)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UntagResourceResult AWS API Documentation
    #
    class UntagResourceResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDomainEntryRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName", # required
    #         domain_entry: { # required
    #           id: "NonEmptyString",
    #           name: "DomainName",
    #           target: "string",
    #           is_alias: false,
    #           type: "DomainEntryType",
    #           options: {
    #             "DomainEntryOptionsKeys" => "string",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   The name of the domain recordset to update.
    #   @return [String]
    #
    # @!attribute [rw] domain_entry
    #   An array of key-value pairs containing information about the domain
    #   entry.
    #   @return [Types::DomainEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateDomainEntryRequest AWS API Documentation
    #
    class UpdateDomainEntryRequest < Struct.new(
      :domain_name,
      :domain_entry)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateDomainEntryResult AWS API Documentation
    #
    class UpdateDomainEntryResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateLoadBalancerAttributeRequest
    #   data as a hash:
    #
    #       {
    #         load_balancer_name: "ResourceName", # required
    #         attribute_name: "HealthCheckPath", # required, accepts HealthCheckPath, SessionStickinessEnabled, SessionStickiness_LB_CookieDurationSeconds
    #         attribute_value: "StringMax256", # required
    #       }
    #
    # @!attribute [rw] load_balancer_name
    #   The name of the load balancer that you want to modify (e.g.,
    #   `my-load-balancer`.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the attribute you want to update. Valid values are
    #   below.
    #   @return [String]
    #
    # @!attribute [rw] attribute_value
    #   The value that you want to specify for the attribute name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateLoadBalancerAttributeRequest AWS API Documentation
    #
    class UpdateLoadBalancerAttributeRequest < Struct.new(
      :load_balancer_name,
      :attribute_name,
      :attribute_value)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateLoadBalancerAttributeResult AWS API Documentation
    #
    class UpdateLoadBalancerAttributeResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRelationalDatabaseParametersRequest
    #   data as a hash:
    #
    #       {
    #         relational_database_name: "ResourceName", # required
    #         parameters: [ # required
    #           {
    #             allowed_values: "string",
    #             apply_method: "string",
    #             apply_type: "string",
    #             data_type: "string",
    #             description: "string",
    #             is_modifiable: false,
    #             parameter_name: "string",
    #             parameter_value: "string",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] relational_database_name
    #   The name of your database for which to update parameters.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The database parameters to update.
    #   @return [Array<Types::RelationalDatabaseParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateRelationalDatabaseParametersRequest AWS API Documentation
    #
    class UpdateRelationalDatabaseParametersRequest < Struct.new(
      :relational_database_name,
      :parameters)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateRelationalDatabaseParametersResult AWS API Documentation
    #
    class UpdateRelationalDatabaseParametersResult < Struct.new(
      :operations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRelationalDatabaseRequest
    #   data as a hash:
    #
    #       {
    #         relational_database_name: "ResourceName", # required
    #         master_user_password: "SensitiveString",
    #         rotate_master_user_password: false,
    #         preferred_backup_window: "string",
    #         preferred_maintenance_window: "string",
    #         enable_backup_retention: false,
    #         disable_backup_retention: false,
    #         publicly_accessible: false,
    #         apply_immediately: false,
    #         ca_certificate_identifier: "string",
    #       }
    #
    # @!attribute [rw] relational_database_name
    #   The name of your database to update.
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   The password for the master user of your database. The password can
    #   include any printable ASCII character except "/", """, or
    #   "@".
    #
    #   Constraints: Must contain 8 to 41 characters.
    #   @return [String]
    #
    # @!attribute [rw] rotate_master_user_password
    #   When `true`, the master user password is changed to a new strong
    #   password generated by Lightsail.
    #
    #   Use the `get relational database master user password` operation to
    #   get the new password.
    #   @return [Boolean]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created for
    #   your database if automated backups are enabled.
    #
    #   Constraints:
    #
    #   * Must be in the `hh24:mi-hh24:mi` format.
    #
    #     Example: `16:00-16:30`
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur on
    #   your database.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region, occurring on a random day of the
    #   week.
    #
    #   Constraints:
    #
    #   * Must be in the `ddd:hh24:mi-ddd:hh24:mi` format.
    #
    #   * Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   * Must be at least 30 minutes.
    #
    #   * Specified in Coordinated Universal Time (UTC).
    #
    #   * Example: `Tue:17:00-Tue:17:30`
    #   @return [String]
    #
    # @!attribute [rw] enable_backup_retention
    #   When `true`, enables automated backup retention for your database.
    #
    #   Updates are applied during the next maintenance window because this
    #   can result in an outage.
    #   @return [Boolean]
    #
    # @!attribute [rw] disable_backup_retention
    #   When `true`, disables automated backup retention for your database.
    #
    #   Disabling backup retention deletes all automated database backups.
    #   Before disabling this, you may want to create a snapshot of your
    #   database using the `create relational database snapshot` operation.
    #
    #   Updates are applied during the next maintenance window because this
    #   can result in an outage.
    #   @return [Boolean]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies the accessibility options for your database. A value of
    #   `true` specifies a database that is available to resources outside
    #   of your Lightsail account. A value of `false` specifies a database
    #   that is available only to your Lightsail resources in the same
    #   region as your database.
    #   @return [Boolean]
    #
    # @!attribute [rw] apply_immediately
    #   When `true`, applies changes immediately. When `false`, applies
    #   changes during the preferred maintenance window. Some changes may
    #   cause an outage.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   Indicates the certificate that needs to be associated with the
    #   database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateRelationalDatabaseRequest AWS API Documentation
    #
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
      :ca_certificate_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] operations
    #   An array of objects that describe the result of the action, such as
    #   the status of the request, the timestamp of the request, and the
    #   resources affected by the request.
    #   @return [Array<Types::Operation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lightsail-2016-11-28/UpdateRelationalDatabaseResult AWS API Documentation
    #
    class UpdateRelationalDatabaseResult < Struct.new(
      :operations)
      include Aws::Structure
    end

  end
end
