# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudTrail
  module Types

    # Specifies the tags to add to a trail.
    #
    # @note When making an API call, you may pass AddTagsRequest
    #   data as a hash:
    #
    #       {
    #         resource_id: "String", # required
    #         tags_list: [
    #           {
    #             key: "String", # required
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_id
    #   Specifies the ARN of the trail to which one or more tags will be
    #   added. The format of a trail ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @!attribute [rw] tags_list
    #   Contains a list of CloudTrail tags, up to a limit of 50
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/AddTagsRequest AWS API Documentation
    #
    class AddTagsRequest < Struct.new(
      :resource_id,
      :tags_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data listed below if successful. Otherwise,
    # returns an error.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/AddTagsResponse AWS API Documentation
    #
    class AddTagsResponse < Aws::EmptyStructure; end

    # This exception is thrown when an operation is called with an invalid
    # trail ARN. The format of a trail ARN is:
    #
    # `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CloudTrailARNInvalidException AWS API Documentation
    #
    class CloudTrailARNInvalidException < Aws::EmptyStructure; end

    # This exception is thrown when trusted access has not been enabled
    # between AWS CloudTrail and AWS Organizations. For more information,
    # see [Enabling Trusted Access with Other AWS Services][1] and [Prepare
    # For Creating a Trail For Your Organization][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html
    # [2]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/creating-an-organizational-trail-prepare.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CloudTrailAccessNotEnabledException AWS API Documentation
    #
    class CloudTrailAccessNotEnabledException < Aws::EmptyStructure; end

    # Cannot set a CloudWatch Logs delivery for this region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CloudWatchLogsDeliveryUnavailableException AWS API Documentation
    #
    class CloudWatchLogsDeliveryUnavailableException < Aws::EmptyStructure; end

    # Specifies the settings for each trail.
    #
    # @note When making an API call, you may pass CreateTrailRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         s3_bucket_name: "String", # required
    #         s3_key_prefix: "String",
    #         sns_topic_name: "String",
    #         include_global_service_events: false,
    #         is_multi_region_trail: false,
    #         enable_log_file_validation: false,
    #         cloud_watch_logs_log_group_arn: "String",
    #         cloud_watch_logs_role_arn: "String",
    #         kms_key_id: "String",
    #         is_organization_trail: false,
    #         tags_list: [
    #           {
    #             key: "String", # required
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   Specifies the name of the trail. The name must meet the following
    #   requirements:
    #
    #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #     underscores (\_), or dashes (-)
    #
    #   * Start with a letter or number, and end with a letter or number
    #
    #   * Be between 3 and 128 characters
    #
    #   * Have no adjacent periods, underscores or dashes. Names like
    #     `my-_namespace` and `my--namespace` are invalid.
    #
    #   * Not be in IP address format (for example, 192.168.5.4)
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   Specifies the name of the Amazon S3 bucket designated for publishing
    #   log files. See [Amazon S3 Bucket Naming Requirements][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   Specifies the Amazon S3 key prefix that comes after the name of the
    #   bucket you have designated for log file delivery. For more
    #   information, see [Finding Your CloudTrail Log Files][1]. The maximum
    #   length is 200 characters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_name
    #   Specifies the name of the Amazon SNS topic defined for notification
    #   of log file delivery. The maximum length is 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] include_global_service_events
    #   Specifies whether the trail is publishing events from global
    #   services such as IAM to the log files.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_multi_region_trail
    #   Specifies whether the trail is created in the current region or in
    #   all regions. The default is false, which creates a trail only in the
    #   region where you are signed in. As a best practice, consider
    #   creating trails that log events in all regions.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_log_file_validation
    #   Specifies whether log file integrity validation is enabled. The
    #   default is false.
    #
    #   <note markdown="1"> When you disable log file integrity validation, the chain of digest
    #   files is broken after one hour. CloudTrail will not create digest
    #   files for log files that were delivered during a period in which log
    #   file integrity validation was disabled. For example, if you enable
    #   log file integrity validation at noon on January 1, disable it at
    #   noon on January 2, and re-enable it at noon on January 10, digest
    #   files will not be created for the log files delivered from noon on
    #   January 2 to noon on January 10. The same applies whenever you stop
    #   CloudTrail logging or delete a trail.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] cloud_watch_logs_log_group_arn
    #   Specifies a log group name using an Amazon Resource Name (ARN), a
    #   unique identifier that represents the log group to which CloudTrail
    #   logs will be delivered. Not required unless you specify
    #   CloudWatchLogsRoleArn.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs_role_arn
    #   Specifies the role for the CloudWatch Logs endpoint to assume to
    #   write to a user's log group.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   Specifies the KMS key ID to use to encrypt the logs delivered by
    #   CloudTrail. The value can be an alias name prefixed by "alias/", a
    #   fully specified ARN to an alias, a fully specified ARN to a key, or
    #   a globally unique identifier.
    #
    #   Examples:
    #
    #   * alias/MyAliasName
    #
    #   * arn:aws:kms:us-east-2:123456789012:alias/MyAliasName
    #
    #   * arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012
    #
    #   * 12345678-1234-1234-1234-123456789012
    #   @return [String]
    #
    # @!attribute [rw] is_organization_trail
    #   Specifies whether the trail is created for all accounts in an
    #   organization in AWS Organizations, or only for the current AWS
    #   account. The default is false, and cannot be true unless the call is
    #   made on behalf of an AWS account that is the master account for an
    #   organization in AWS Organizations.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags_list
    #   A list of tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CreateTrailRequest AWS API Documentation
    #
    class CreateTrailRequest < Struct.new(
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :sns_topic_name,
      :include_global_service_events,
      :is_multi_region_trail,
      :enable_log_file_validation,
      :cloud_watch_logs_log_group_arn,
      :cloud_watch_logs_role_arn,
      :kms_key_id,
      :is_organization_trail,
      :tags_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data listed below if successful. Otherwise,
    # returns an error.
    #
    # @!attribute [rw] name
    #   Specifies the name of the trail.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   Specifies the name of the Amazon S3 bucket designated for publishing
    #   log files.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   Specifies the Amazon S3 key prefix that comes after the name of the
    #   bucket you have designated for log file delivery. For more
    #   information, see [Finding Your CloudTrail Log Files][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_name
    #   This field is no longer in use. Use SnsTopicARN.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   Specifies the ARN of the Amazon SNS topic that CloudTrail uses to
    #   send notifications when log files are delivered. The format of a
    #   topic ARN is:
    #
    #   `arn:aws:sns:us-east-2:123456789012:MyTopic`
    #   @return [String]
    #
    # @!attribute [rw] include_global_service_events
    #   Specifies whether the trail is publishing events from global
    #   services such as IAM to the log files.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_multi_region_trail
    #   Specifies whether the trail exists in one region or in all regions.
    #   @return [Boolean]
    #
    # @!attribute [rw] trail_arn
    #   Specifies the ARN of the trail that was created. The format of a
    #   trail ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @!attribute [rw] log_file_validation_enabled
    #   Specifies whether log file integrity validation is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] cloud_watch_logs_log_group_arn
    #   Specifies the Amazon Resource Name (ARN) of the log group to which
    #   CloudTrail logs will be delivered.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs_role_arn
    #   Specifies the role for the CloudWatch Logs endpoint to assume to
    #   write to a user's log group.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   Specifies the KMS key ID that encrypts the logs delivered by
    #   CloudTrail. The value is a fully specified ARN to a KMS key in the
    #   format:
    #
    #   `arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012`
    #   @return [String]
    #
    # @!attribute [rw] is_organization_trail
    #   Specifies whether the trail is an organization trail.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CreateTrailResponse AWS API Documentation
    #
    class CreateTrailResponse < Struct.new(
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :sns_topic_name,
      :sns_topic_arn,
      :include_global_service_events,
      :is_multi_region_trail,
      :trail_arn,
      :log_file_validation_enabled,
      :cloud_watch_logs_log_group_arn,
      :cloud_watch_logs_role_arn,
      :kms_key_id,
      :is_organization_trail)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 buckets or AWS Lambda functions that you specify in your
    # event selectors for your trail to log data events. Data events provide
    # information about the resource operations performed on or within a
    # resource itself. These are also known as data plane operations. You
    # can specify up to 250 data resources for a trail.
    #
    # <note markdown="1"> The total number of allowed data resources is 250. This number can be
    # distributed between 1 and 5 event selectors, but the total cannot
    # exceed 250 across all selectors.
    #
    #  </note>
    #
    # The following example demonstrates how logging works when you
    # configure logging of all data events for an S3 bucket named
    # `bucket-1`. In this example, the CloudTrail user specified an empty
    # prefix, and the option to log both `Read` and `Write` data events.
    #
    # 1.  A user uploads an image file to `bucket-1`.
    #
    # 2.  The `PutObject` API operation is an Amazon S3 object-level API. It
    #     is recorded as a data event in CloudTrail. Because the CloudTrail
    #     user specified an S3 bucket with an empty prefix, events that
    #     occur on any object in that bucket are logged. The trail processes
    #     and logs the event.
    #
    # 3.  A user uploads an object to an Amazon S3 bucket named
    #     `arn:aws:s3:::bucket-2`.
    #
    # 4.  The `PutObject` API operation occurred for an object in an S3
    #     bucket that the CloudTrail user didn't specify for the trail. The
    #     trail doesn’t log the event.
    #
    # The following example demonstrates how logging works when you
    # configure logging of AWS Lambda data events for a Lambda function
    # named *MyLambdaFunction*, but not for all AWS Lambda functions.
    #
    # 1.  A user runs a script that includes a call to the
    #     *MyLambdaFunction* function and the *MyOtherLambdaFunction*
    #     function.
    #
    # 2.  The `Invoke` API operation on *MyLambdaFunction* is an AWS Lambda
    #     API. It is recorded as a data event in CloudTrail. Because the
    #     CloudTrail user specified logging data events for
    #     *MyLambdaFunction*, any invocations of that function are logged.
    #     The trail processes and logs the event.
    #
    # 3.  The `Invoke` API operation on *MyOtherLambdaFunction* is an AWS
    #     Lambda API. Because the CloudTrail user did not specify logging
    #     data events for all Lambda functions, the `Invoke` operation for
    #     *MyOtherLambdaFunction* does not match the function specified for
    #     the trail. The trail doesn’t log the event.
    #
    # @note When making an API call, you may pass DataResource
    #   data as a hash:
    #
    #       {
    #         type: "String",
    #         values: ["String"],
    #       }
    #
    # @!attribute [rw] type
    #   The resource type in which you want to log data events. You can
    #   specify `AWS::S3::Object` or `AWS::Lambda::Function` resources.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   An array of Amazon Resource Name (ARN) strings or partial ARN
    #   strings for the specified objects.
    #
    #   * To log data events for all objects in all S3 buckets in your AWS
    #     account, specify the prefix as `arn:aws:s3:::`.
    #
    #     <note markdown="1"> This will also enable logging of data event activity performed by
    #     any user or role in your AWS account, even if that activity is
    #     performed on a bucket that belongs to another AWS account.
    #
    #      </note>
    #
    #   * To log data events for all objects in an S3 bucket, specify the
    #     bucket and an empty object prefix such as
    #     `arn:aws:s3:::bucket-1/`. The trail logs data events for all
    #     objects in this S3 bucket.
    #
    #   * To log data events for specific objects, specify the S3 bucket and
    #     object prefix such as `arn:aws:s3:::bucket-1/example-images`. The
    #     trail logs data events for objects in this S3 bucket that match
    #     the prefix.
    #
    #   * To log data events for all functions in your AWS account, specify
    #     the prefix as `arn:aws:lambda`.
    #
    #     <note markdown="1"> This will also enable logging of `Invoke` activity performed by
    #     any user or role in your AWS account, even if that activity is
    #     performed on a function that belongs to another AWS account.
    #
    #      </note>
    #
    #   * To log data events for a specific Lambda function, specify the
    #     function ARN.
    #
    #     <note markdown="1"> Lambda function ARNs are exact. For example, if you specify a
    #     function ARN
    #     *arn:aws:lambda:us-west-2:111111111111:function:helloworld*, data
    #     events will only be logged for
    #     *arn:aws:lambda:us-west-2:111111111111:function:helloworld*. They
    #     will not be logged for
    #     *arn:aws:lambda:us-west-2:111111111111:function:helloworld2*.
    #
    #      </note>
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DataResource AWS API Documentation
    #
    class DataResource < Struct.new(
      :type,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request that specifies the name of a trail to delete.
    #
    # @note When making an API call, you may pass DeleteTrailRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   Specifies the name or the CloudTrail ARN of the trail to be deleted.
    #   The format of a trail ARN is:
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeleteTrailRequest AWS API Documentation
    #
    class DeleteTrailRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data listed below if successful. Otherwise,
    # returns an error.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeleteTrailResponse AWS API Documentation
    #
    class DeleteTrailResponse < Aws::EmptyStructure; end

    # Returns information about the trail.
    #
    # @note When making an API call, you may pass DescribeTrailsRequest
    #   data as a hash:
    #
    #       {
    #         trail_name_list: ["String"],
    #         include_shadow_trails: false,
    #       }
    #
    # @!attribute [rw] trail_name_list
    #   Specifies a list of trail names, trail ARNs, or both, of the trails
    #   to describe. The format of a trail ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #
    #   If an empty list is specified, information for the trail in the
    #   current region is returned.
    #
    #   * If an empty list is specified and `IncludeShadowTrails` is false,
    #     then information for all trails in the current region is returned.
    #
    #   * If an empty list is specified and IncludeShadowTrails is null or
    #     true, then information for all trails in the current region and
    #     any associated shadow trails in other regions is returned.
    #
    #   <note markdown="1"> If one or more trail names are specified, information is returned
    #   only if the names match the names of trails belonging only to the
    #   current region. To return information about a trail in another
    #   region, you must specify its trail ARN.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] include_shadow_trails
    #   Specifies whether to include shadow trails in the response. A shadow
    #   trail is the replication in a region of a trail that was created in
    #   a different region, or in the case of an organization trail, the
    #   replication of an organization trail in member accounts. If you do
    #   not include shadow trails, organization trails in a member account
    #   and region replication trails will not be returned. The default is
    #   true.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DescribeTrailsRequest AWS API Documentation
    #
    class DescribeTrailsRequest < Struct.new(
      :trail_name_list,
      :include_shadow_trails)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data listed below if successful. Otherwise,
    # returns an error.
    #
    # @!attribute [rw] trail_list
    #   The list of trail objects. Trail objects with string values are only
    #   returned if values for the objects exist in a trail's
    #   configuration. For example, `SNSTopicName` and `SNSTopicARN` are
    #   only returned in results if a trail is configured to send SNS
    #   notifications. Similarly, `KMSKeyId` only appears in results if a
    #   trail's log files are encrypted with AWS KMS-managed keys.
    #   @return [Array<Types::Trail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DescribeTrailsResponse AWS API Documentation
    #
    class DescribeTrailsResponse < Struct.new(
      :trail_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an event that was returned by a lookup
    # request. The result includes a representation of a CloudTrail event.
    #
    # @!attribute [rw] event_id
    #   The CloudTrail ID of the event returned.
    #   @return [String]
    #
    # @!attribute [rw] event_name
    #   The name of the event returned.
    #   @return [String]
    #
    # @!attribute [rw] read_only
    #   Information about whether the event is a write event or a read
    #   event.
    #   @return [String]
    #
    # @!attribute [rw] access_key_id
    #   The AWS access key ID that was used to sign the request. If the
    #   request was made with temporary security credentials, this is the
    #   access key ID of the temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] event_time
    #   The date and time of the event returned.
    #   @return [Time]
    #
    # @!attribute [rw] event_source
    #   The AWS service that the request was made to.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   A user name or role name of the requester that called the API in the
    #   event returned.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   A list of resources referenced by the event returned.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] cloud_trail_event
    #   A JSON string that contains a representation of the event returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/Event AWS API Documentation
    #
    class Event < Struct.new(
      :event_id,
      :event_name,
      :read_only,
      :access_key_id,
      :event_time,
      :event_source,
      :username,
      :resources,
      :cloud_trail_event)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use event selectors to further specify the management and data event
    # settings for your trail. By default, trails created without specific
    # event selectors will be configured to log all read and write
    # management events, and no data events. When an event occurs in your
    # account, CloudTrail evaluates the event selector for all trails. For
    # each trail, if the event matches any event selector, the trail
    # processes and logs the event. If the event doesn't match any event
    # selector, the trail doesn't log the event.
    #
    # You can configure up to five event selectors for a trail.
    #
    # @note When making an API call, you may pass EventSelector
    #   data as a hash:
    #
    #       {
    #         read_write_type: "ReadOnly", # accepts ReadOnly, WriteOnly, All
    #         include_management_events: false,
    #         data_resources: [
    #           {
    #             type: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         exclude_management_event_sources: ["String"],
    #       }
    #
    # @!attribute [rw] read_write_type
    #   Specify if you want your trail to log read-only events, write-only
    #   events, or all. For example, the EC2 `GetConsoleOutput` is a
    #   read-only API operation and `RunInstances` is a write-only API
    #   operation.
    #
    #   By default, the value is `All`.
    #   @return [String]
    #
    # @!attribute [rw] include_management_events
    #   Specify if you want your event selector to include management events
    #   for your trail.
    #
    #   For more information, see [Management Events][1] in the *AWS
    #   CloudTrail User Guide*.
    #
    #   By default, the value is `true`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html#logging-management-events
    #   @return [Boolean]
    #
    # @!attribute [rw] data_resources
    #   CloudTrail supports data event logging for Amazon S3 objects and AWS
    #   Lambda functions. You can specify up to 250 resources for an
    #   individual event selector, but the total number of data resources
    #   cannot exceed 250 across all event selectors in a trail. This limit
    #   does not apply if you configure resource logging for all data
    #   events.
    #
    #   For more information, see [Data Events][1] and [Limits in AWS
    #   CloudTrail][2] in the *AWS CloudTrail User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html#logging-data-events
    #   [2]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html
    #   @return [Array<Types::DataResource>]
    #
    # @!attribute [rw] exclude_management_event_sources
    #   An optional list of service event sources from which you do not want
    #   management events to be logged on your trail. In this release, the
    #   list can be empty (disables the filter), or it can filter out AWS
    #   Key Management Service events by containing `"kms.amazonaws.com"`.
    #   By default, `ExcludeManagementEventSources` is empty, and AWS KMS
    #   events are included in events that are logged to your trail.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/EventSelector AWS API Documentation
    #
    class EventSelector < Struct.new(
      :read_write_type,
      :include_management_events,
      :data_resources,
      :exclude_management_event_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEventSelectorsRequest
    #   data as a hash:
    #
    #       {
    #         trail_name: "String", # required
    #       }
    #
    # @!attribute [rw] trail_name
    #   Specifies the name of the trail or trail ARN. If you specify a trail
    #   name, the string must meet the following requirements:
    #
    #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #     underscores (\_), or dashes (-)
    #
    #   * Start with a letter or number, and end with a letter or number
    #
    #   * Be between 3 and 128 characters
    #
    #   * Have no adjacent periods, underscores or dashes. Names like
    #     `my-_namespace` and `my--namespace` are not valid.
    #
    #   * Not be in IP address format (for example, 192.168.5.4)
    #
    #   If you specify a trail ARN, it must be in the format:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetEventSelectorsRequest AWS API Documentation
    #
    class GetEventSelectorsRequest < Struct.new(
      :trail_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trail_arn
    #   The specified trail ARN that has the event selectors.
    #   @return [String]
    #
    # @!attribute [rw] event_selectors
    #   The event selectors that are configured for the trail.
    #   @return [Array<Types::EventSelector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetEventSelectorsResponse AWS API Documentation
    #
    class GetEventSelectorsResponse < Struct.new(
      :trail_arn,
      :event_selectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInsightSelectorsRequest
    #   data as a hash:
    #
    #       {
    #         trail_name: "String", # required
    #       }
    #
    # @!attribute [rw] trail_name
    #   Specifies the name of the trail or trail ARN. If you specify a trail
    #   name, the string must meet the following requirements:
    #
    #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #     underscores (\_), or dashes (-)
    #
    #   * Start with a letter or number, and end with a letter or number
    #
    #   * Be between 3 and 128 characters
    #
    #   * Have no adjacent periods, underscores or dashes. Names like
    #     `my-_namespace` and `my--namespace` are not valid.
    #
    #   * Not be in IP address format (for example, 192.168.5.4)
    #
    #   If you specify a trail ARN, it must be in the format:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetInsightSelectorsRequest AWS API Documentation
    #
    class GetInsightSelectorsRequest < Struct.new(
      :trail_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trail_arn
    #   The Amazon Resource Name (ARN) of a trail for which you want to get
    #   Insights selectors.
    #   @return [String]
    #
    # @!attribute [rw] insight_selectors
    #   A JSON string that contains the insight types you want to log on a
    #   trail. In this release, only `ApiCallRateInsight` is supported as an
    #   insight type.
    #   @return [Array<Types::InsightSelector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetInsightSelectorsResponse AWS API Documentation
    #
    class GetInsightSelectorsResponse < Struct.new(
      :trail_arn,
      :insight_selectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTrailRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name or the Amazon Resource Name (ARN) of the trail for which
    #   you want to retrieve settings information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetTrailRequest AWS API Documentation
    #
    class GetTrailRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trail
    #   The settings for a trail.
    #   @return [Types::Trail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetTrailResponse AWS API Documentation
    #
    class GetTrailResponse < Struct.new(
      :trail)
      SENSITIVE = []
      include Aws::Structure
    end

    # The name of a trail about which you want the current status.
    #
    # @note When making an API call, you may pass GetTrailStatusRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   Specifies the name or the CloudTrail ARN of the trail for which you
    #   are requesting status. To get the status of a shadow trail (a
    #   replication of the trail in another region), you must specify its
    #   ARN. The format of a trail ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetTrailStatusRequest AWS API Documentation
    #
    class GetTrailStatusRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data listed below if successful. Otherwise,
    # returns an error.
    #
    # @!attribute [rw] is_logging
    #   Whether the CloudTrail is currently logging AWS API calls.
    #   @return [Boolean]
    #
    # @!attribute [rw] latest_delivery_error
    #   Displays any Amazon S3 error that CloudTrail encountered when
    #   attempting to deliver log files to the designated bucket. For more
    #   information see the topic [Error Responses][1] in the Amazon S3 API
    #   Reference.
    #
    #   <note markdown="1"> This error occurs only when there is a problem with the destination
    #   S3 bucket and will not occur for timeouts. To resolve the issue,
    #   create a new bucket and call `UpdateTrail` to specify the new
    #   bucket, or fix the existing objects so that CloudTrail can again
    #   write to the bucket.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html
    #   @return [String]
    #
    # @!attribute [rw] latest_notification_error
    #   Displays any Amazon SNS error that CloudTrail encountered when
    #   attempting to send a notification. For more information about Amazon
    #   SNS errors, see the [Amazon SNS Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sns/latest/dg/welcome.html
    #   @return [String]
    #
    # @!attribute [rw] latest_delivery_time
    #   Specifies the date and time that CloudTrail last delivered log files
    #   to an account's Amazon S3 bucket.
    #   @return [Time]
    #
    # @!attribute [rw] latest_notification_time
    #   Specifies the date and time of the most recent Amazon SNS
    #   notification that CloudTrail has written a new log file to an
    #   account's Amazon S3 bucket.
    #   @return [Time]
    #
    # @!attribute [rw] start_logging_time
    #   Specifies the most recent date and time when CloudTrail started
    #   recording API calls for an AWS account.
    #   @return [Time]
    #
    # @!attribute [rw] stop_logging_time
    #   Specifies the most recent date and time when CloudTrail stopped
    #   recording API calls for an AWS account.
    #   @return [Time]
    #
    # @!attribute [rw] latest_cloud_watch_logs_delivery_error
    #   Displays any CloudWatch Logs error that CloudTrail encountered when
    #   attempting to deliver logs to CloudWatch Logs.
    #   @return [String]
    #
    # @!attribute [rw] latest_cloud_watch_logs_delivery_time
    #   Displays the most recent date and time when CloudTrail delivered
    #   logs to CloudWatch Logs.
    #   @return [Time]
    #
    # @!attribute [rw] latest_digest_delivery_time
    #   Specifies the date and time that CloudTrail last delivered a digest
    #   file to an account's Amazon S3 bucket.
    #   @return [Time]
    #
    # @!attribute [rw] latest_digest_delivery_error
    #   Displays any Amazon S3 error that CloudTrail encountered when
    #   attempting to deliver a digest file to the designated bucket. For
    #   more information see the topic [Error Responses][1] in the Amazon S3
    #   API Reference.
    #
    #   <note markdown="1"> This error occurs only when there is a problem with the destination
    #   S3 bucket and will not occur for timeouts. To resolve the issue,
    #   create a new bucket and call `UpdateTrail` to specify the new
    #   bucket, or fix the existing objects so that CloudTrail can again
    #   write to the bucket.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html
    #   @return [String]
    #
    # @!attribute [rw] latest_delivery_attempt_time
    #   This field is no longer in use.
    #   @return [String]
    #
    # @!attribute [rw] latest_notification_attempt_time
    #   This field is no longer in use.
    #   @return [String]
    #
    # @!attribute [rw] latest_notification_attempt_succeeded
    #   This field is no longer in use.
    #   @return [String]
    #
    # @!attribute [rw] latest_delivery_attempt_succeeded
    #   This field is no longer in use.
    #   @return [String]
    #
    # @!attribute [rw] time_logging_started
    #   This field is no longer in use.
    #   @return [String]
    #
    # @!attribute [rw] time_logging_stopped
    #   This field is no longer in use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetTrailStatusResponse AWS API Documentation
    #
    class GetTrailStatusResponse < Struct.new(
      :is_logging,
      :latest_delivery_error,
      :latest_notification_error,
      :latest_delivery_time,
      :latest_notification_time,
      :start_logging_time,
      :stop_logging_time,
      :latest_cloud_watch_logs_delivery_error,
      :latest_cloud_watch_logs_delivery_time,
      :latest_digest_delivery_time,
      :latest_digest_delivery_error,
      :latest_delivery_attempt_time,
      :latest_notification_attempt_time,
      :latest_notification_attempt_succeeded,
      :latest_delivery_attempt_succeeded,
      :time_logging_started,
      :time_logging_stopped)
      SENSITIVE = []
      include Aws::Structure
    end

    # If you run `GetInsightSelectors` on a trail that does not have
    # Insights events enabled, the operation throws the exception
    # `InsightNotEnabledException`.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InsightNotEnabledException AWS API Documentation
    #
    class InsightNotEnabledException < Aws::EmptyStructure; end

    # A JSON string that contains a list of insight types that are logged on
    # a trail.
    #
    # @note When making an API call, you may pass InsightSelector
    #   data as a hash:
    #
    #       {
    #         insight_type: "ApiCallRateInsight", # accepts ApiCallRateInsight
    #       }
    #
    # @!attribute [rw] insight_type
    #   The type of insights to log on a trail. In this release, only
    #   `ApiCallRateInsight` is supported as an insight type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InsightSelector AWS API Documentation
    #
    class InsightSelector < Struct.new(
      :insight_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the IAM user or role that is used to
    # create the organization trail is lacking one or more required
    # permissions for creating an organization trail in a required service.
    # For more information, see [Prepare For Creating a Trail For Your
    # Organization][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/creating-an-organizational-trail-prepare.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InsufficientDependencyServiceAccessPermissionException AWS API Documentation
    #
    class InsufficientDependencyServiceAccessPermissionException < Aws::EmptyStructure; end

    # This exception is thrown when the policy on the S3 bucket or KMS key
    # is not sufficient.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InsufficientEncryptionPolicyException AWS API Documentation
    #
    class InsufficientEncryptionPolicyException < Aws::EmptyStructure; end

    # This exception is thrown when the policy on the S3 bucket is not
    # sufficient.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InsufficientS3BucketPolicyException AWS API Documentation
    #
    class InsufficientS3BucketPolicyException < Aws::EmptyStructure; end

    # This exception is thrown when the policy on the SNS topic is not
    # sufficient.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InsufficientSnsTopicPolicyException AWS API Documentation
    #
    class InsufficientSnsTopicPolicyException < Aws::EmptyStructure; end

    # This exception is thrown when the provided CloudWatch log group is not
    # valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidCloudWatchLogsLogGroupArnException AWS API Documentation
    #
    class InvalidCloudWatchLogsLogGroupArnException < Aws::EmptyStructure; end

    # This exception is thrown when the provided role is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidCloudWatchLogsRoleArnException AWS API Documentation
    #
    class InvalidCloudWatchLogsRoleArnException < Aws::EmptyStructure; end

    # Occurs if an event category that is not valid is specified as a value
    # of `EventCategory`.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidEventCategoryException AWS API Documentation
    #
    class InvalidEventCategoryException < Aws::EmptyStructure; end

    # This exception is thrown when the `PutEventSelectors` operation is
    # called with a number of event selectors or data resources that is not
    # valid. The combination of event selectors and data resources is not
    # valid. A trail can have up to 5 event selectors. A trail is limited to
    # 250 data resources. These data resources can be distributed across
    # event selectors, but the overall total cannot exceed 250.
    #
    # You can:
    #
    # * Specify a valid number of event selectors (1 to 5) for a trail.
    #
    # * Specify a valid number of data resources (1 to 250) for an event
    #   selector. The limit of number of resources on an individual event
    #   selector is configurable up to 250. However, this upper limit is
    #   allowed only if the total number of data resources does not exceed
    #   250 across all event selectors for a trail.
    #
    # * Specify a valid value for a parameter. For example, specifying the
    #   `ReadWriteType` parameter with a value of `read-only` is invalid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidEventSelectorsException AWS API Documentation
    #
    class InvalidEventSelectorsException < Aws::EmptyStructure; end

    # This exception is thrown when an operation is called on a trail from a
    # region other than the region in which the trail was created.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidHomeRegionException AWS API Documentation
    #
    class InvalidHomeRegionException < Aws::EmptyStructure; end

    # The formatting or syntax of the `InsightSelectors` JSON statement in
    # your `PutInsightSelectors` or `GetInsightSelectors` request is not
    # valid, or the specified insight type in the `InsightSelectors`
    # statement is not a valid insight type.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidInsightSelectorsException AWS API Documentation
    #
    class InvalidInsightSelectorsException < Aws::EmptyStructure; end

    # This exception is thrown when the KMS key ARN is invalid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidKmsKeyIdException AWS API Documentation
    #
    class InvalidKmsKeyIdException < Aws::EmptyStructure; end

    # Occurs when an invalid lookup attribute is specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidLookupAttributesException AWS API Documentation
    #
    class InvalidLookupAttributesException < Aws::EmptyStructure; end

    # This exception is thrown if the limit specified is invalid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidMaxResultsException AWS API Documentation
    #
    class InvalidMaxResultsException < Aws::EmptyStructure; end

    # Invalid token or token that was previously used in a request with
    # different parameters. This exception is thrown if the token is
    # invalid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Aws::EmptyStructure; end

    # This exception is thrown when the combination of parameters provided
    # is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidParameterCombinationException AWS API Documentation
    #
    class InvalidParameterCombinationException < Aws::EmptyStructure; end

    # This exception is thrown when the provided S3 bucket name is not
    # valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidS3BucketNameException AWS API Documentation
    #
    class InvalidS3BucketNameException < Aws::EmptyStructure; end

    # This exception is thrown when the provided S3 prefix is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidS3PrefixException AWS API Documentation
    #
    class InvalidS3PrefixException < Aws::EmptyStructure; end

    # This exception is thrown when the provided SNS topic name is not
    # valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidSnsTopicNameException AWS API Documentation
    #
    class InvalidSnsTopicNameException < Aws::EmptyStructure; end

    # This exception is thrown when the specified tag key or values are not
    # valid. It can also occur if there are duplicate tags or too many tags
    # on the resource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidTagParameterException AWS API Documentation
    #
    class InvalidTagParameterException < Aws::EmptyStructure; end

    # Occurs if the timestamp values are invalid. Either the start time
    # occurs after the end time or the time range is outside the range of
    # possible values.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidTimeRangeException AWS API Documentation
    #
    class InvalidTimeRangeException < Aws::EmptyStructure; end

    # Reserved for future use.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidTokenException AWS API Documentation
    #
    class InvalidTokenException < Aws::EmptyStructure; end

    # This exception is thrown when the provided trail name is not valid.
    # Trail names must meet the following requirements:
    #
    # * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #   underscores (\_), or dashes (-)
    #
    # * Start with a letter or number, and end with a letter or number
    #
    # * Be between 3 and 128 characters
    #
    # * Have no adjacent periods, underscores or dashes. Names like
    #   `my-_namespace` and `my--namespace` are invalid.
    #
    # * Not be in IP address format (for example, 192.168.5.4)
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/InvalidTrailNameException AWS API Documentation
    #
    class InvalidTrailNameException < Aws::EmptyStructure; end

    # This exception is thrown when there is an issue with the specified KMS
    # key and the trail can’t be updated.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/KmsException AWS API Documentation
    #
    class KmsException < Aws::EmptyStructure; end

    # This exception is no longer in use.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/KmsKeyDisabledException AWS API Documentation
    #
    class KmsKeyDisabledException < Aws::EmptyStructure; end

    # This exception is thrown when the KMS key does not exist, or when the
    # S3 bucket and the KMS key are not in the same region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/KmsKeyNotFoundException AWS API Documentation
    #
    class KmsKeyNotFoundException < Aws::EmptyStructure; end

    # Requests the public keys for a specified time range.
    #
    # @note When making an API call, you may pass ListPublicKeysRequest
    #   data as a hash:
    #
    #       {
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] start_time
    #   Optionally specifies, in UTC, the start of the time range to look up
    #   public keys for CloudTrail digest files. If not specified, the
    #   current time is used, and the current public key is returned.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Optionally specifies, in UTC, the end of the time range to look up
    #   public keys for CloudTrail digest files. If not specified, the
    #   current time is used.
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   Reserved for future use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListPublicKeysRequest AWS API Documentation
    #
    class ListPublicKeysRequest < Struct.new(
      :start_time,
      :end_time,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data listed below if successful. Otherwise,
    # returns an error.
    #
    # @!attribute [rw] public_key_list
    #   Contains an array of PublicKey objects.
    #
    #   <note markdown="1"> The returned public keys may have validity time ranges that overlap.
    #
    #    </note>
    #   @return [Array<Types::PublicKey>]
    #
    # @!attribute [rw] next_token
    #   Reserved for future use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListPublicKeysResponse AWS API Documentation
    #
    class ListPublicKeysResponse < Struct.new(
      :public_key_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a list of trail tags to return.
    #
    # @note When making an API call, you may pass ListTagsRequest
    #   data as a hash:
    #
    #       {
    #         resource_id_list: ["String"], # required
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] resource_id_list
    #   Specifies a list of trail ARNs whose tags will be listed. The list
    #   has a limit of 20 ARNs. The format of a trail ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Reserved for future use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListTagsRequest AWS API Documentation
    #
    class ListTagsRequest < Struct.new(
      :resource_id_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data listed below if successful. Otherwise,
    # returns an error.
    #
    # @!attribute [rw] resource_tag_list
    #   A list of resource tags.
    #   @return [Array<Types::ResourceTag>]
    #
    # @!attribute [rw] next_token
    #   Reserved for future use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListTagsResponse AWS API Documentation
    #
    class ListTagsResponse < Struct.new(
      :resource_tag_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTrailsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] next_token
    #   The token to use to get the next page of results after a previous
    #   API call. This token must be passed in with the same parameters that
    #   were specified in the the original call. For example, if the
    #   original call specified an AttributeKey of 'Username' with a value
    #   of 'root', the call with NextToken should include those same
    #   parameters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListTrailsRequest AWS API Documentation
    #
    class ListTrailsRequest < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trails
    #   Returns the name, ARN, and home region of trails in the current
    #   account.
    #   @return [Array<Types::TrailInfo>]
    #
    # @!attribute [rw] next_token
    #   The token to use to get the next page of results after a previous
    #   API call. If the token does not appear, there are no more results to
    #   return. The token must be passed in with the same parameters as the
    #   previous call. For example, if the original call specified an
    #   AttributeKey of 'Username' with a value of 'root', the call with
    #   NextToken should include those same parameters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListTrailsResponse AWS API Documentation
    #
    class ListTrailsResponse < Struct.new(
      :trails,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an attribute and value that filter the events returned.
    #
    # @note When making an API call, you may pass LookupAttribute
    #   data as a hash:
    #
    #       {
    #         attribute_key: "EventId", # required, accepts EventId, EventName, ReadOnly, Username, ResourceType, ResourceName, EventSource, AccessKeyId
    #         attribute_value: "String", # required
    #       }
    #
    # @!attribute [rw] attribute_key
    #   Specifies an attribute on which to filter the events returned.
    #   @return [String]
    #
    # @!attribute [rw] attribute_value
    #   Specifies a value for the specified AttributeKey.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/LookupAttribute AWS API Documentation
    #
    class LookupAttribute < Struct.new(
      :attribute_key,
      :attribute_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a request for LookupEvents.
    #
    # @note When making an API call, you may pass LookupEventsRequest
    #   data as a hash:
    #
    #       {
    #         lookup_attributes: [
    #           {
    #             attribute_key: "EventId", # required, accepts EventId, EventName, ReadOnly, Username, ResourceType, ResourceName, EventSource, AccessKeyId
    #             attribute_value: "String", # required
    #           },
    #         ],
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         event_category: "insight", # accepts insight
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] lookup_attributes
    #   Contains a list of lookup attributes. Currently the list can contain
    #   only one item.
    #   @return [Array<Types::LookupAttribute>]
    #
    # @!attribute [rw] start_time
    #   Specifies that only events that occur after or at the specified time
    #   are returned. If the specified start time is after the specified end
    #   time, an error is returned.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Specifies that only events that occur before or at the specified
    #   time are returned. If the specified end time is before the specified
    #   start time, an error is returned.
    #   @return [Time]
    #
    # @!attribute [rw] event_category
    #   Specifies the event category. If you do not specify an event
    #   category, events of the category are not returned in the response.
    #   For example, if you do not specify `insight` as the value of
    #   `EventCategory`, no Insights events are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of events to return. Possible values are 1 through 50.
    #   The default is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to get the next page of results after a previous
    #   API call. This token must be passed in with the same parameters that
    #   were specified in the the original call. For example, if the
    #   original call specified an AttributeKey of 'Username' with a value
    #   of 'root', the call with NextToken should include those same
    #   parameters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/LookupEventsRequest AWS API Documentation
    #
    class LookupEventsRequest < Struct.new(
      :lookup_attributes,
      :start_time,
      :end_time,
      :event_category,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a response to a LookupEvents action.
    #
    # @!attribute [rw] events
    #   A list of events returned based on the lookup attributes specified
    #   and the CloudTrail event. The events list is sorted by time. The
    #   most recent event is listed first.
    #   @return [Array<Types::Event>]
    #
    # @!attribute [rw] next_token
    #   The token to use to get the next page of results after a previous
    #   API call. If the token does not appear, there are no more results to
    #   return. The token must be passed in with the same parameters as the
    #   previous call. For example, if the original call specified an
    #   AttributeKey of 'Username' with a value of 'root', the call with
    #   NextToken should include those same parameters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/LookupEventsResponse AWS API Documentation
    #
    class LookupEventsResponse < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the maximum number of trails is reached.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/MaximumNumberOfTrailsExceededException AWS API Documentation
    #
    class MaximumNumberOfTrailsExceededException < Aws::EmptyStructure; end

    # This exception is thrown when the AWS account making the request to
    # create or update an organization trail is not the master account for
    # an organization in AWS Organizations. For more information, see
    # [Prepare For Creating a Trail For Your Organization][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/creating-an-organizational-trail-prepare.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/NotOrganizationMasterAccountException AWS API Documentation
    #
    class NotOrganizationMasterAccountException < Aws::EmptyStructure; end

    # This exception is thrown when the requested operation is not
    # permitted.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/OperationNotPermittedException AWS API Documentation
    #
    class OperationNotPermittedException < Aws::EmptyStructure; end

    # This exception is thrown when AWS Organizations is not configured to
    # support all features. All features must be enabled in AWS Organization
    # to support creating an organization trail. For more information, see
    # [Prepare For Creating a Trail For Your Organization][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/creating-an-organizational-trail-prepare.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/OrganizationNotInAllFeaturesModeException AWS API Documentation
    #
    class OrganizationNotInAllFeaturesModeException < Aws::EmptyStructure; end

    # This exception is thrown when the request is made from an AWS account
    # that is not a member of an organization. To make this request, sign in
    # using the credentials of an account that belongs to an organization.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/OrganizationsNotInUseException AWS API Documentation
    #
    class OrganizationsNotInUseException < Aws::EmptyStructure; end

    # Contains information about a returned public key.
    #
    # @!attribute [rw] value
    #   The DER encoded public key value in PKCS#1 format.
    #   @return [String]
    #
    # @!attribute [rw] validity_start_time
    #   The starting time of validity of the public key.
    #   @return [Time]
    #
    # @!attribute [rw] validity_end_time
    #   The ending time of validity of the public key.
    #   @return [Time]
    #
    # @!attribute [rw] fingerprint
    #   The fingerprint of the public key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/PublicKey AWS API Documentation
    #
    class PublicKey < Struct.new(
      :value,
      :validity_start_time,
      :validity_end_time,
      :fingerprint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutEventSelectorsRequest
    #   data as a hash:
    #
    #       {
    #         trail_name: "String", # required
    #         event_selectors: [ # required
    #           {
    #             read_write_type: "ReadOnly", # accepts ReadOnly, WriteOnly, All
    #             include_management_events: false,
    #             data_resources: [
    #               {
    #                 type: "String",
    #                 values: ["String"],
    #               },
    #             ],
    #             exclude_management_event_sources: ["String"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] trail_name
    #   Specifies the name of the trail or trail ARN. If you specify a trail
    #   name, the string must meet the following requirements:
    #
    #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #     underscores (\_), or dashes (-)
    #
    #   * Start with a letter or number, and end with a letter or number
    #
    #   * Be between 3 and 128 characters
    #
    #   * Have no adjacent periods, underscores or dashes. Names like
    #     `my-_namespace` and `my--namespace` are invalid.
    #
    #   * Not be in IP address format (for example, 192.168.5.4)
    #
    #   If you specify a trail ARN, it must be in the format:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @!attribute [rw] event_selectors
    #   Specifies the settings for your event selectors. You can configure
    #   up to five event selectors for a trail.
    #   @return [Array<Types::EventSelector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/PutEventSelectorsRequest AWS API Documentation
    #
    class PutEventSelectorsRequest < Struct.new(
      :trail_name,
      :event_selectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trail_arn
    #   Specifies the ARN of the trail that was updated with event
    #   selectors. The format of a trail ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @!attribute [rw] event_selectors
    #   Specifies the event selectors configured for your trail.
    #   @return [Array<Types::EventSelector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/PutEventSelectorsResponse AWS API Documentation
    #
    class PutEventSelectorsResponse < Struct.new(
      :trail_arn,
      :event_selectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutInsightSelectorsRequest
    #   data as a hash:
    #
    #       {
    #         trail_name: "String", # required
    #         insight_selectors: [ # required
    #           {
    #             insight_type: "ApiCallRateInsight", # accepts ApiCallRateInsight
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] trail_name
    #   The name of the CloudTrail trail for which you want to change or add
    #   Insights selectors.
    #   @return [String]
    #
    # @!attribute [rw] insight_selectors
    #   A JSON string that contains the insight types you want to log on a
    #   trail. In this release, only `ApiCallRateInsight` is supported as an
    #   insight type.
    #   @return [Array<Types::InsightSelector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/PutInsightSelectorsRequest AWS API Documentation
    #
    class PutInsightSelectorsRequest < Struct.new(
      :trail_name,
      :insight_selectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trail_arn
    #   The Amazon Resource Name (ARN) of a trail for which you want to
    #   change or add Insights selectors.
    #   @return [String]
    #
    # @!attribute [rw] insight_selectors
    #   A JSON string that contains the insight types you want to log on a
    #   trail. In this release, only `ApiCallRateInsight` is supported as an
    #   insight type.
    #   @return [Array<Types::InsightSelector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/PutInsightSelectorsResponse AWS API Documentation
    #
    class PutInsightSelectorsResponse < Struct.new(
      :trail_arn,
      :insight_selectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the tags to remove from a trail.
    #
    # @note When making an API call, you may pass RemoveTagsRequest
    #   data as a hash:
    #
    #       {
    #         resource_id: "String", # required
    #         tags_list: [
    #           {
    #             key: "String", # required
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_id
    #   Specifies the ARN of the trail from which tags should be removed.
    #   The format of a trail ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @!attribute [rw] tags_list
    #   Specifies a list of tags to be removed.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/RemoveTagsRequest AWS API Documentation
    #
    class RemoveTagsRequest < Struct.new(
      :resource_id,
      :tags_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data listed below if successful. Otherwise,
    # returns an error.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/RemoveTagsResponse AWS API Documentation
    #
    class RemoveTagsResponse < Aws::EmptyStructure; end

    # Specifies the type and name of a resource referenced by an event.
    #
    # @!attribute [rw] resource_type
    #   The type of a resource referenced by the event returned. When the
    #   resource type cannot be determined, null is returned. Some examples
    #   of resource types are: **Instance** for EC2, **Trail** for
    #   CloudTrail, **DBInstance** for RDS, and **AccessKey** for IAM. To
    #   learn more about how to look up and filter events by the resource
    #   types supported for a service, see [Filtering CloudTrail Events][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/view-cloudtrail-events-console.html#filtering-cloudtrail-events
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource referenced by the event returned. These are
    #   user-created names whose values will depend on the environment. For
    #   example, the resource name might be "auto-scaling-test-group" for
    #   an Auto Scaling Group or "i-1234567" for an EC2 Instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :resource_type,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the specified resource is not found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Aws::EmptyStructure; end

    # A resource tag.
    #
    # @!attribute [rw] resource_id
    #   Specifies the ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags_list
    #   A list of tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ResourceTag AWS API Documentation
    #
    class ResourceTag < Struct.new(
      :resource_id,
      :tags_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the specified resource type is not
    # supported by CloudTrail.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ResourceTypeNotSupportedException AWS API Documentation
    #
    class ResourceTypeNotSupportedException < Aws::EmptyStructure; end

    # This exception is thrown when the specified S3 bucket does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/S3BucketDoesNotExistException AWS API Documentation
    #
    class S3BucketDoesNotExistException < Aws::EmptyStructure; end

    # The request to CloudTrail to start logging AWS API calls for an
    # account.
    #
    # @note When making an API call, you may pass StartLoggingRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   Specifies the name or the CloudTrail ARN of the trail for which
    #   CloudTrail logs AWS API calls. The format of a trail ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StartLoggingRequest AWS API Documentation
    #
    class StartLoggingRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data listed below if successful. Otherwise,
    # returns an error.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StartLoggingResponse AWS API Documentation
    #
    class StartLoggingResponse < Aws::EmptyStructure; end

    # Passes the request to CloudTrail to stop logging AWS API calls for the
    # specified account.
    #
    # @note When making an API call, you may pass StopLoggingRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   Specifies the name or the CloudTrail ARN of the trail for which
    #   CloudTrail will stop logging AWS API calls. The format of a trail
    #   ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StopLoggingRequest AWS API Documentation
    #
    class StopLoggingRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data listed below if successful. Otherwise,
    # returns an error.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StopLoggingResponse AWS API Documentation
    #
    class StopLoggingResponse < Aws::EmptyStructure; end

    # A custom key-value pair associated with a resource such as a
    # CloudTrail trail.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "String", # required
    #         value: "String",
    #       }
    #
    # @!attribute [rw] key
    #   The key in a key-value pair. The key must be must be no longer than
    #   128 Unicode characters. The key must be unique for the resource to
    #   which it applies.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value in a key-value pair of a tag. The value must be no longer
    #   than 256 Unicode characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of tags per trail has exceeded the permitted amount.
    # Currently, the limit is 50.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/TagsLimitExceededException AWS API Documentation
    #
    class TagsLimitExceededException < Aws::EmptyStructure; end

    # The settings for a trail.
    #
    # @!attribute [rw] name
    #   Name of the trail set by calling CreateTrail. The maximum length is
    #   128 characters.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   Name of the Amazon S3 bucket into which CloudTrail delivers your
    #   trail files. See [Amazon S3 Bucket Naming Requirements][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   Specifies the Amazon S3 key prefix that comes after the name of the
    #   bucket you have designated for log file delivery. For more
    #   information, see [Finding Your CloudTrail Log Files][1].The maximum
    #   length is 200 characters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_name
    #   This field is no longer in use. Use SnsTopicARN.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   Specifies the ARN of the Amazon SNS topic that CloudTrail uses to
    #   send notifications when log files are delivered. The format of a
    #   topic ARN is:
    #
    #   `arn:aws:sns:us-east-2:123456789012:MyTopic`
    #   @return [String]
    #
    # @!attribute [rw] include_global_service_events
    #   Set to **True** to include AWS API calls from AWS global services
    #   such as IAM. Otherwise, **False**.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_multi_region_trail
    #   Specifies whether the trail exists only in one region or exists in
    #   all regions.
    #   @return [Boolean]
    #
    # @!attribute [rw] home_region
    #   The region in which the trail was created.
    #   @return [String]
    #
    # @!attribute [rw] trail_arn
    #   Specifies the ARN of the trail. The format of a trail ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @!attribute [rw] log_file_validation_enabled
    #   Specifies whether log file validation is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] cloud_watch_logs_log_group_arn
    #   Specifies an Amazon Resource Name (ARN), a unique identifier that
    #   represents the log group to which CloudTrail logs will be delivered.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs_role_arn
    #   Specifies the role for the CloudWatch Logs endpoint to assume to
    #   write to a user's log group.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   Specifies the KMS key ID that encrypts the logs delivered by
    #   CloudTrail. The value is a fully specified ARN to a KMS key in the
    #   format:
    #
    #   `arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012`
    #   @return [String]
    #
    # @!attribute [rw] has_custom_event_selectors
    #   Specifies if the trail has custom event selectors.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_insight_selectors
    #   Specifies whether a trail has insight types specified in an
    #   `InsightSelector` list.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_organization_trail
    #   Specifies whether the trail is an organization trail.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/Trail AWS API Documentation
    #
    class Trail < Struct.new(
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :sns_topic_name,
      :sns_topic_arn,
      :include_global_service_events,
      :is_multi_region_trail,
      :home_region,
      :trail_arn,
      :log_file_validation_enabled,
      :cloud_watch_logs_log_group_arn,
      :cloud_watch_logs_role_arn,
      :kms_key_id,
      :has_custom_event_selectors,
      :has_insight_selectors,
      :is_organization_trail)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the specified trail already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/TrailAlreadyExistsException AWS API Documentation
    #
    class TrailAlreadyExistsException < Aws::EmptyStructure; end

    # Information about a CloudTrail trail, including the trail's name,
    # home region, and Amazon Resource Name (ARN).
    #
    # @!attribute [rw] trail_arn
    #   The ARN of a trail.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a trail.
    #   @return [String]
    #
    # @!attribute [rw] home_region
    #   The AWS region in which a trail was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/TrailInfo AWS API Documentation
    #
    class TrailInfo < Struct.new(
      :trail_arn,
      :name,
      :home_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the trail with the given name is not
    # found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/TrailNotFoundException AWS API Documentation
    #
    class TrailNotFoundException < Aws::EmptyStructure; end

    # This exception is no longer in use.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/TrailNotProvidedException AWS API Documentation
    #
    class TrailNotProvidedException < Aws::EmptyStructure; end

    # This exception is thrown when the requested operation is not
    # supported.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/UnsupportedOperationException AWS API Documentation
    #
    class UnsupportedOperationException < Aws::EmptyStructure; end

    # Specifies settings to update for the trail.
    #
    # @note When making an API call, you may pass UpdateTrailRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         s3_bucket_name: "String",
    #         s3_key_prefix: "String",
    #         sns_topic_name: "String",
    #         include_global_service_events: false,
    #         is_multi_region_trail: false,
    #         enable_log_file_validation: false,
    #         cloud_watch_logs_log_group_arn: "String",
    #         cloud_watch_logs_role_arn: "String",
    #         kms_key_id: "String",
    #         is_organization_trail: false,
    #       }
    #
    # @!attribute [rw] name
    #   Specifies the name of the trail or trail ARN. If `Name` is a trail
    #   name, the string must meet the following requirements:
    #
    #   * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    #     underscores (\_), or dashes (-)
    #
    #   * Start with a letter or number, and end with a letter or number
    #
    #   * Be between 3 and 128 characters
    #
    #   * Have no adjacent periods, underscores or dashes. Names like
    #     `my-_namespace` and `my--namespace` are invalid.
    #
    #   * Not be in IP address format (for example, 192.168.5.4)
    #
    #   If `Name` is a trail ARN, it must be in the format:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   Specifies the name of the Amazon S3 bucket designated for publishing
    #   log files. See [Amazon S3 Bucket Naming Requirements][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   Specifies the Amazon S3 key prefix that comes after the name of the
    #   bucket you have designated for log file delivery. For more
    #   information, see [Finding Your CloudTrail Log Files][1]. The maximum
    #   length is 200 characters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_name
    #   Specifies the name of the Amazon SNS topic defined for notification
    #   of log file delivery. The maximum length is 256 characters.
    #   @return [String]
    #
    # @!attribute [rw] include_global_service_events
    #   Specifies whether the trail is publishing events from global
    #   services such as IAM to the log files.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_multi_region_trail
    #   Specifies whether the trail applies only to the current region or to
    #   all regions. The default is false. If the trail exists only in the
    #   current region and this value is set to true, shadow trails
    #   (replications of the trail) will be created in the other regions. If
    #   the trail exists in all regions and this value is set to false, the
    #   trail will remain in the region where it was created, and its shadow
    #   trails in other regions will be deleted. As a best practice,
    #   consider using trails that log events in all regions.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_log_file_validation
    #   Specifies whether log file validation is enabled. The default is
    #   false.
    #
    #   <note markdown="1"> When you disable log file integrity validation, the chain of digest
    #   files is broken after one hour. CloudTrail will not create digest
    #   files for log files that were delivered during a period in which log
    #   file integrity validation was disabled. For example, if you enable
    #   log file integrity validation at noon on January 1, disable it at
    #   noon on January 2, and re-enable it at noon on January 10, digest
    #   files will not be created for the log files delivered from noon on
    #   January 2 to noon on January 10. The same applies whenever you stop
    #   CloudTrail logging or delete a trail.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] cloud_watch_logs_log_group_arn
    #   Specifies a log group name using an Amazon Resource Name (ARN), a
    #   unique identifier that represents the log group to which CloudTrail
    #   logs will be delivered. Not required unless you specify
    #   CloudWatchLogsRoleArn.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs_role_arn
    #   Specifies the role for the CloudWatch Logs endpoint to assume to
    #   write to a user's log group.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   Specifies the KMS key ID to use to encrypt the logs delivered by
    #   CloudTrail. The value can be an alias name prefixed by "alias/", a
    #   fully specified ARN to an alias, a fully specified ARN to a key, or
    #   a globally unique identifier.
    #
    #   Examples:
    #
    #   * alias/MyAliasName
    #
    #   * arn:aws:kms:us-east-2:123456789012:alias/MyAliasName
    #
    #   * arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012
    #
    #   * 12345678-1234-1234-1234-123456789012
    #   @return [String]
    #
    # @!attribute [rw] is_organization_trail
    #   Specifies whether the trail is applied to all accounts in an
    #   organization in AWS Organizations, or only for the current AWS
    #   account. The default is false, and cannot be true unless the call is
    #   made on behalf of an AWS account that is the master account for an
    #   organization in AWS Organizations. If the trail is not an
    #   organization trail and this is set to true, the trail will be
    #   created in all AWS accounts that belong to the organization. If the
    #   trail is an organization trail and this is set to false, the trail
    #   will remain in the current AWS account but be deleted from all
    #   member accounts in the organization.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/UpdateTrailRequest AWS API Documentation
    #
    class UpdateTrailRequest < Struct.new(
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :sns_topic_name,
      :include_global_service_events,
      :is_multi_region_trail,
      :enable_log_file_validation,
      :cloud_watch_logs_log_group_arn,
      :cloud_watch_logs_role_arn,
      :kms_key_id,
      :is_organization_trail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the objects or data listed below if successful. Otherwise,
    # returns an error.
    #
    # @!attribute [rw] name
    #   Specifies the name of the trail.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   Specifies the name of the Amazon S3 bucket designated for publishing
    #   log files.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   Specifies the Amazon S3 key prefix that comes after the name of the
    #   bucket you have designated for log file delivery. For more
    #   information, see [Finding Your CloudTrail Log Files][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_name
    #   This field is no longer in use. Use SnsTopicARN.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   Specifies the ARN of the Amazon SNS topic that CloudTrail uses to
    #   send notifications when log files are delivered. The format of a
    #   topic ARN is:
    #
    #   `arn:aws:sns:us-east-2:123456789012:MyTopic`
    #   @return [String]
    #
    # @!attribute [rw] include_global_service_events
    #   Specifies whether the trail is publishing events from global
    #   services such as IAM to the log files.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_multi_region_trail
    #   Specifies whether the trail exists in one region or in all regions.
    #   @return [Boolean]
    #
    # @!attribute [rw] trail_arn
    #   Specifies the ARN of the trail that was updated. The format of a
    #   trail ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail`
    #   @return [String]
    #
    # @!attribute [rw] log_file_validation_enabled
    #   Specifies whether log file integrity validation is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] cloud_watch_logs_log_group_arn
    #   Specifies the Amazon Resource Name (ARN) of the log group to which
    #   CloudTrail logs will be delivered.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs_role_arn
    #   Specifies the role for the CloudWatch Logs endpoint to assume to
    #   write to a user's log group.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   Specifies the KMS key ID that encrypts the logs delivered by
    #   CloudTrail. The value is a fully specified ARN to a KMS key in the
    #   format:
    #
    #   `arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012`
    #   @return [String]
    #
    # @!attribute [rw] is_organization_trail
    #   Specifies whether the trail is an organization trail.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/UpdateTrailResponse AWS API Documentation
    #
    class UpdateTrailResponse < Struct.new(
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :sns_topic_name,
      :sns_topic_arn,
      :include_global_service_events,
      :is_multi_region_trail,
      :trail_arn,
      :log_file_validation_enabled,
      :cloud_watch_logs_log_group_arn,
      :cloud_watch_logs_role_arn,
      :kms_key_id,
      :is_organization_trail)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
