# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module CloudTrail
    module Types

      # Specifies the tags to add to a trail.
      # @note When making an API call, pass AddTagsRequest
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
      class AddTagsRequest < Aws::Structure.new(
        :resource_id,
        :tags_list)

        # @!attribute [rw] resource_id
        #   Specifies the ARN of the trail to which one or more tags will be
        #   added. The format of a trail ARN is:
        #
        #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
        #   @return [String]

        # @!attribute [rw] tags_list
        #   Contains a list of CloudTrail tags, up to a limit of 10.
        #   @return [Array<Types::Tag>]

      end

      # Returns the objects or data listed below if successful. Otherwise,
      # returns an error.
      class AddTagsResponse < Aws::EmptyStructure; end

      # Specifies the settings for each trail.
      # @note When making an API call, pass CreateTrailRequest
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
      #       }
      class CreateTrailRequest < Aws::Structure.new(
        :name,
        :s3_bucket_name,
        :s3_key_prefix,
        :sns_topic_name,
        :include_global_service_events,
        :is_multi_region_trail,
        :enable_log_file_validation,
        :cloud_watch_logs_log_group_arn,
        :cloud_watch_logs_role_arn,
        :kms_key_id)

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

        # @!attribute [rw] s3_bucket_name
        #   Specifies the name of the Amazon S3 bucket designated for publishing
        #   log files. See [Amazon S3 Bucket Naming Requirements][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html
        #   @return [String]

        # @!attribute [rw] s3_key_prefix
        #   Specifies the Amazon S3 key prefix that comes after the name of the
        #   bucket you have designated for log file delivery. For more
        #   information, see [Finding Your CloudTrail Log Files][1]. The maximum
        #   length is 200 characters.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html
        #   @return [String]

        # @!attribute [rw] sns_topic_name
        #   Specifies the name of the Amazon SNS topic defined for notification
        #   of log file delivery. The maximum length is 256 characters.
        #   @return [String]

        # @!attribute [rw] include_global_service_events
        #   Specifies whether the trail is publishing events from global
        #   services such as IAM to the log files.
        #   @return [Boolean]

        # @!attribute [rw] is_multi_region_trail
        #   Specifies whether the trail is created in the current region or in
        #   all regions. The default is false.
        #   @return [Boolean]

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

        # @!attribute [rw] cloud_watch_logs_log_group_arn
        #   Specifies a log group name using an Amazon Resource Name (ARN), a
        #   unique identifier that represents the log group to which CloudTrail
        #   logs will be delivered. Not required unless you specify
        #   CloudWatchLogsRoleArn.
        #   @return [String]

        # @!attribute [rw] cloud_watch_logs_role_arn
        #   Specifies the role for the CloudWatch Logs endpoint to assume to
        #   write to a user\'s log group.
        #   @return [String]

        # @!attribute [rw] kms_key_id
        #   Specifies the KMS key ID to use to encrypt the logs delivered by
        #   CloudTrail. The value can be a an alias name prefixed by \"alias/\",
        #   a fully specified ARN to an alias, a fully specified ARN to a key,
        #   or a globally unique identifier.
        #
        #   Examples:
        #
        #   * alias/MyAliasName
        #
        #   * arn:aws:kms:us-east-1:123456789012:alias/MyAliasName
        #
        #   * arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
        #
        #   * 12345678-1234-1234-1234-123456789012
        #   @return [String]

      end

      # Returns the objects or data listed below if successful. Otherwise,
      # returns an error.
      class CreateTrailResponse < Aws::Structure.new(
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
        :kms_key_id)

        # @!attribute [rw] name
        #   Specifies the name of the trail.
        #   @return [String]

        # @!attribute [rw] s3_bucket_name
        #   Specifies the name of the Amazon S3 bucket designated for publishing
        #   log files.
        #   @return [String]

        # @!attribute [rw] s3_key_prefix
        #   Specifies the Amazon S3 key prefix that comes after the name of the
        #   bucket you have designated for log file delivery. For more
        #   information, see [Finding Your CloudTrail Log Files][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html
        #   @return [String]

        # @!attribute [rw] sns_topic_name
        #   This field is deprecated. Use SnsTopicARN.
        #   @return [String]

        # @!attribute [rw] sns_topic_arn
        #   Specifies the ARN of the Amazon SNS topic that CloudTrail uses to
        #   send notifications when log files are delivered. The format of a
        #   topic ARN is:
        #
        #   `arn:aws:sns:us-east-1:123456789012:MyTopic`
        #   @return [String]

        # @!attribute [rw] include_global_service_events
        #   Specifies whether the trail is publishing events from global
        #   services such as IAM to the log files.
        #   @return [Boolean]

        # @!attribute [rw] is_multi_region_trail
        #   Specifies whether the trail exists in one region or in all regions.
        #   @return [Boolean]

        # @!attribute [rw] trail_arn
        #   Specifies the ARN of the trail that was created. The format of a
        #   trail ARN is:
        #
        #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
        #   @return [String]

        # @!attribute [rw] log_file_validation_enabled
        #   Specifies whether log file integrity validation is enabled.
        #   @return [Boolean]

        # @!attribute [rw] cloud_watch_logs_log_group_arn
        #   Specifies the Amazon Resource Name (ARN) of the log group to which
        #   CloudTrail logs will be delivered.
        #   @return [String]

        # @!attribute [rw] cloud_watch_logs_role_arn
        #   Specifies the role for the CloudWatch Logs endpoint to assume to
        #   write to a user\'s log group.
        #   @return [String]

        # @!attribute [rw] kms_key_id
        #   Specifies the KMS key ID that encrypts the logs delivered by
        #   CloudTrail. The value is a fully specified ARN to a KMS key in the
        #   format:
        #
        #   `arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012`
        #   @return [String]

      end

      # The request that specifies the name of a trail to delete.
      # @note When making an API call, pass DeleteTrailRequest
      #   data as a hash:
      #
      #       {
      #         name: "String", # required
      #       }
      class DeleteTrailRequest < Aws::Structure.new(
        :name)

        # @!attribute [rw] name
        #   Specifies the name or the CloudTrail ARN of the trail to be deleted.
        #   The format of a trail ARN is:
        #
        #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
        #   @return [String]

      end

      # Returns the objects or data listed below if successful. Otherwise,
      # returns an error.
      class DeleteTrailResponse < Aws::EmptyStructure; end

      # Returns information about the trail.
      # @note When making an API call, pass DescribeTrailsRequest
      #   data as a hash:
      #
      #       {
      #         trail_name_list: ["String"],
      #         include_shadow_trails: false,
      #       }
      class DescribeTrailsRequest < Aws::Structure.new(
        :trail_name_list,
        :include_shadow_trails)

        # @!attribute [rw] trail_name_list
        #   Specifies a list of trail names, trail ARNs, or both, of the trails
        #   to describe. The format of a trail ARN is:
        #
        #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
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

        # @!attribute [rw] include_shadow_trails
        #   Specifies whether to include shadow trails in the response. A shadow
        #   trail is the replication in a region of a trail that was created in
        #   a different region. The default is true.
        #   @return [Boolean]

      end

      # Returns the objects or data listed below if successful. Otherwise,
      # returns an error.
      class DescribeTrailsResponse < Aws::Structure.new(
        :trail_list)

        # @!attribute [rw] trail_list
        #   The list of trail objects.
        #   @return [Array<Types::Trail>]

      end

      # Contains information about an event that was returned by a lookup
      # request. The result includes a representation of a CloudTrail event.
      class Event < Aws::Structure.new(
        :event_id,
        :event_name,
        :event_time,
        :username,
        :resources,
        :cloud_trail_event)

        # @!attribute [rw] event_id
        #   The CloudTrail ID of the event returned.
        #   @return [String]

        # @!attribute [rw] event_name
        #   The name of the event returned.
        #   @return [String]

        # @!attribute [rw] event_time
        #   The date and time of the event returned.
        #   @return [Time]

        # @!attribute [rw] username
        #   A user name or role name of the requester that called the API in the
        #   event returned.
        #   @return [String]

        # @!attribute [rw] resources
        #   A list of resources referenced by the event returned.
        #   @return [Array<Types::Resource>]

        # @!attribute [rw] cloud_trail_event
        #   A JSON string that contains a representation of the event returned.
        #   @return [String]

      end

      # The name of a trail about which you want the current status.
      # @note When making an API call, pass GetTrailStatusRequest
      #   data as a hash:
      #
      #       {
      #         name: "String", # required
      #       }
      class GetTrailStatusRequest < Aws::Structure.new(
        :name)

        # @!attribute [rw] name
        #   Specifies the name or the CloudTrail ARN of the trail for which you
        #   are requesting status. To get the status of a shadow trail (a
        #   replication of the trail in another region), you must specify its
        #   ARN. The format of a trail ARN is:
        #
        #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
        #   @return [String]

      end

      # Returns the objects or data listed below if successful. Otherwise,
      # returns an error.
      class GetTrailStatusResponse < Aws::Structure.new(
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

        # @!attribute [rw] is_logging
        #   Whether the CloudTrail is currently logging AWS API calls.
        #   @return [Boolean]

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
        #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html
        #   @return [String]

        # @!attribute [rw] latest_notification_error
        #   Displays any Amazon SNS error that CloudTrail encountered when
        #   attempting to send a notification. For more information about Amazon
        #   SNS errors, see the [Amazon SNS Developer Guide][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/sns/latest/dg/welcome.html
        #   @return [String]

        # @!attribute [rw] latest_delivery_time
        #   Specifies the date and time that CloudTrail last delivered log files
        #   to an account\'s Amazon S3 bucket.
        #   @return [Time]

        # @!attribute [rw] latest_notification_time
        #   Specifies the date and time of the most recent Amazon SNS
        #   notification that CloudTrail has written a new log file to an
        #   account\'s Amazon S3 bucket.
        #   @return [Time]

        # @!attribute [rw] start_logging_time
        #   Specifies the most recent date and time when CloudTrail started
        #   recording API calls for an AWS account.
        #   @return [Time]

        # @!attribute [rw] stop_logging_time
        #   Specifies the most recent date and time when CloudTrail stopped
        #   recording API calls for an AWS account.
        #   @return [Time]

        # @!attribute [rw] latest_cloud_watch_logs_delivery_error
        #   Displays any CloudWatch Logs error that CloudTrail encountered when
        #   attempting to deliver logs to CloudWatch Logs.
        #   @return [String]

        # @!attribute [rw] latest_cloud_watch_logs_delivery_time
        #   Displays the most recent date and time when CloudTrail delivered
        #   logs to CloudWatch Logs.
        #   @return [Time]

        # @!attribute [rw] latest_digest_delivery_time
        #   Specifies the date and time that CloudTrail last delivered a digest
        #   file to an account\'s Amazon S3 bucket.
        #   @return [Time]

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
        #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html
        #   @return [String]

        # @!attribute [rw] latest_delivery_attempt_time
        #   This field is deprecated.
        #   @return [String]

        # @!attribute [rw] latest_notification_attempt_time
        #   This field is deprecated.
        #   @return [String]

        # @!attribute [rw] latest_notification_attempt_succeeded
        #   This field is deprecated.
        #   @return [String]

        # @!attribute [rw] latest_delivery_attempt_succeeded
        #   This field is deprecated.
        #   @return [String]

        # @!attribute [rw] time_logging_started
        #   This field is deprecated.
        #   @return [String]

        # @!attribute [rw] time_logging_stopped
        #   This field is deprecated.
        #   @return [String]

      end

      # Requests the public keys for a specified time range.
      # @note When making an API call, pass ListPublicKeysRequest
      #   data as a hash:
      #
      #       {
      #         start_time: Time.now,
      #         end_time: Time.now,
      #         next_token: "String",
      #       }
      class ListPublicKeysRequest < Aws::Structure.new(
        :start_time,
        :end_time,
        :next_token)

        # @!attribute [rw] start_time
        #   Optionally specifies, in UTC, the start of the time range to look up
        #   public keys for CloudTrail digest files. If not specified, the
        #   current time is used, and the current public key is returned.
        #   @return [Time]

        # @!attribute [rw] end_time
        #   Optionally specifies, in UTC, the end of the time range to look up
        #   public keys for CloudTrail digest files. If not specified, the
        #   current time is used.
        #   @return [Time]

        # @!attribute [rw] next_token
        #   Reserved for future use.
        #   @return [String]

      end

      # Returns the objects or data listed below if successful. Otherwise,
      # returns an error.
      class ListPublicKeysResponse < Aws::Structure.new(
        :public_key_list,
        :next_token)

        # @!attribute [rw] public_key_list
        #   Contains an array of PublicKey objects.
        #
        #   <note markdown="1"> The returned public keys may have validity time ranges that overlap.
        #
        #    </note>
        #   @return [Array<Types::PublicKey>]

        # @!attribute [rw] next_token
        #   Reserved for future use.
        #   @return [String]

      end

      # Specifies a list of trail tags to return.
      # @note When making an API call, pass ListTagsRequest
      #   data as a hash:
      #
      #       {
      #         resource_id_list: ["String"], # required
      #         next_token: "String",
      #       }
      class ListTagsRequest < Aws::Structure.new(
        :resource_id_list,
        :next_token)

        # @!attribute [rw] resource_id_list
        #   Specifies a list of trail ARNs whose tags will be listed. The list
        #   has a limit of 20 ARNs. The format of a trail ARN is:
        #
        #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
        #   @return [Array<String>]

        # @!attribute [rw] next_token
        #   Reserved for future use.
        #   @return [String]

      end

      # Returns the objects or data listed below if successful. Otherwise,
      # returns an error.
      class ListTagsResponse < Aws::Structure.new(
        :resource_tag_list,
        :next_token)

        # @!attribute [rw] resource_tag_list
        #   A list of resource tags.
        #   @return [Array<Types::ResourceTag>]

        # @!attribute [rw] next_token
        #   Reserved for future use.
        #   @return [String]

      end

      # Specifies an attribute and value that filter the events returned.
      # @note When making an API call, pass LookupAttribute
      #   data as a hash:
      #
      #       {
      #         attribute_key: "EventId", # required, accepts EventId, EventName, Username, ResourceType, ResourceName
      #         attribute_value: "String", # required
      #       }
      class LookupAttribute < Aws::Structure.new(
        :attribute_key,
        :attribute_value)

        # @!attribute [rw] attribute_key
        #   Specifies an attribute on which to filter the events returned.
        #   @return [String]

        # @!attribute [rw] attribute_value
        #   Specifies a value for the specified AttributeKey.
        #   @return [String]

      end

      # Contains a request for LookupEvents.
      # @note When making an API call, pass LookupEventsRequest
      #   data as a hash:
      #
      #       {
      #         lookup_attributes: [
      #           {
      #             attribute_key: "EventId", # required, accepts EventId, EventName, Username, ResourceType, ResourceName
      #             attribute_value: "String", # required
      #           },
      #         ],
      #         start_time: Time.now,
      #         end_time: Time.now,
      #         max_results: 1,
      #         next_token: "NextToken",
      #       }
      class LookupEventsRequest < Aws::Structure.new(
        :lookup_attributes,
        :start_time,
        :end_time,
        :max_results,
        :next_token)

        # @!attribute [rw] lookup_attributes
        #   Contains a list of lookup attributes. Currently the list can contain
        #   only one item.
        #   @return [Array<Types::LookupAttribute>]

        # @!attribute [rw] start_time
        #   Specifies that only events that occur after or at the specified time
        #   are returned. If the specified start time is after the specified end
        #   time, an error is returned.
        #   @return [Time]

        # @!attribute [rw] end_time
        #   Specifies that only events that occur before or at the specified
        #   time are returned. If the specified end time is before the specified
        #   start time, an error is returned.
        #   @return [Time]

        # @!attribute [rw] max_results
        #   The number of events to return. Possible values are 1 through 50.
        #   The default is 10.
        #   @return [Integer]

        # @!attribute [rw] next_token
        #   The token to use to get the next page of results after a previous
        #   API call. This token must be passed in with the same parameters that
        #   were specified in the the original call. For example, if the
        #   original call specified an AttributeKey of \'Username\' with a value
        #   of \'root\', the call with NextToken should include those same
        #   parameters.
        #   @return [String]

      end

      # Contains a response to a LookupEvents action.
      class LookupEventsResponse < Aws::Structure.new(
        :events,
        :next_token)

        # @!attribute [rw] events
        #   A list of events returned based on the lookup attributes specified
        #   and the CloudTrail event. The events list is sorted by time. The
        #   most recent event is listed first.
        #   @return [Array<Types::Event>]

        # @!attribute [rw] next_token
        #   The token to use to get the next page of results after a previous
        #   API call. If the token does not appear, there are no more results to
        #   return. The token must be passed in with the same parameters as the
        #   previous call. For example, if the original call specified an
        #   AttributeKey of \'Username\' with a value of \'root\', the call with
        #   NextToken should include those same parameters.
        #   @return [String]

      end

      # Contains information about a returned public key.
      class PublicKey < Aws::Structure.new(
        :value,
        :validity_start_time,
        :validity_end_time,
        :fingerprint)

        # @!attribute [rw] value
        #   The DER encoded public key value in PKCS#1 format.
        #   @return [String]

        # @!attribute [rw] validity_start_time
        #   The starting time of validity of the public key.
        #   @return [Time]

        # @!attribute [rw] validity_end_time
        #   The ending time of validity of the public key.
        #   @return [Time]

        # @!attribute [rw] fingerprint
        #   The fingerprint of the public key.
        #   @return [String]

      end

      # Specifies the tags to remove from a trail.
      # @note When making an API call, pass RemoveTagsRequest
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
      class RemoveTagsRequest < Aws::Structure.new(
        :resource_id,
        :tags_list)

        # @!attribute [rw] resource_id
        #   Specifies the ARN of the trail from which tags should be removed.
        #   The format of a trail ARN is:
        #
        #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
        #   @return [String]

        # @!attribute [rw] tags_list
        #   Specifies a list of tags to be removed.
        #   @return [Array<Types::Tag>]

      end

      # Returns the objects or data listed below if successful. Otherwise,
      # returns an error.
      class RemoveTagsResponse < Aws::EmptyStructure; end

      # Specifies the type and name of a resource referenced by an event.
      class Resource < Aws::Structure.new(
        :resource_type,
        :resource_name)

        # @!attribute [rw] resource_type
        #   The type of a resource referenced by the event returned. When the
        #   resource type cannot be determined, null is returned. Some examples
        #   of resource types are: **Instance** for EC2, **Trail** for
        #   CloudTrail, **DBInstance** for RDS, and **AccessKey** for IAM. For a
        #   list of resource types supported for event lookup, see [Resource
        #   Types Supported for Event Lookup][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/lookup_supported_resourcetypes.html
        #   @return [String]

        # @!attribute [rw] resource_name
        #   The name of the resource referenced by the event returned. These are
        #   user-created names whose values will depend on the environment. For
        #   example, the resource name might be \"auto-scaling-test-group\" for
        #   an Auto Scaling Group or \"i-1234567\" for an EC2 Instance.
        #   @return [String]

      end

      # A resource tag.
      class ResourceTag < Aws::Structure.new(
        :resource_id,
        :tags_list)

        # @!attribute [rw] resource_id
        #   Specifies the ARN of the resource.
        #   @return [String]

        # @!attribute [rw] tags_list
        #   A list of tags.
        #   @return [Array<Types::Tag>]

      end

      # The request to CloudTrail to start logging AWS API calls for an
      # account.
      # @note When making an API call, pass StartLoggingRequest
      #   data as a hash:
      #
      #       {
      #         name: "String", # required
      #       }
      class StartLoggingRequest < Aws::Structure.new(
        :name)

        # @!attribute [rw] name
        #   Specifies the name or the CloudTrail ARN of the trail for which
        #   CloudTrail logs AWS API calls. The format of a trail ARN is:
        #
        #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
        #   @return [String]

      end

      # Returns the objects or data listed below if successful. Otherwise,
      # returns an error.
      class StartLoggingResponse < Aws::EmptyStructure; end

      # Passes the request to CloudTrail to stop logging AWS API calls for the
      # specified account.
      # @note When making an API call, pass StopLoggingRequest
      #   data as a hash:
      #
      #       {
      #         name: "String", # required
      #       }
      class StopLoggingRequest < Aws::Structure.new(
        :name)

        # @!attribute [rw] name
        #   Specifies the name or the CloudTrail ARN of the trail for which
        #   CloudTrail will stop logging AWS API calls. The format of a trail
        #   ARN is:
        #
        #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
        #   @return [String]

      end

      # Returns the objects or data listed below if successful. Otherwise,
      # returns an error.
      class StopLoggingResponse < Aws::EmptyStructure; end

      # A custom key-value pair associated with a resource such as a
      # CloudTrail trail.
      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "String", # required
      #         value: "String",
      #       }
      class Tag < Aws::Structure.new(
        :key,
        :value)

        # @!attribute [rw] key
        #   The key in a key-value pair. The key must be must be no longer than
        #   128 Unicode characters. The key must be unique for the resource to
        #   which it applies.
        #   @return [String]

        # @!attribute [rw] value
        #   The value in a key-value pair of a tag. The value must be no longer
        #   than 256 Unicode characters.
        #   @return [String]

      end

      # The settings for a trail.
      class Trail < Aws::Structure.new(
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
        :kms_key_id)

        # @!attribute [rw] name
        #   Name of the trail set by calling CreateTrail. The maximum length is
        #   128 characters.
        #   @return [String]

        # @!attribute [rw] s3_bucket_name
        #   Name of the Amazon S3 bucket into which CloudTrail delivers your
        #   trail files. See [Amazon S3 Bucket Naming Requirements][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html
        #   @return [String]

        # @!attribute [rw] s3_key_prefix
        #   Specifies the Amazon S3 key prefix that comes after the name of the
        #   bucket you have designated for log file delivery. For more
        #   information, see [Finding Your CloudTrail Log Files][1].The maximum
        #   length is 200 characters.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html
        #   @return [String]

        # @!attribute [rw] sns_topic_name
        #   This field is deprecated. Use SnsTopicARN.
        #   @return [String]

        # @!attribute [rw] sns_topic_arn
        #   Specifies the ARN of the Amazon SNS topic that CloudTrail uses to
        #   send notifications when log files are delivered. The format of a
        #   topic ARN is:
        #
        #   `arn:aws:sns:us-east-1:123456789012:MyTopic`
        #   @return [String]

        # @!attribute [rw] include_global_service_events
        #   Set to **True** to include AWS API calls from AWS global services
        #   such as IAM. Otherwise, **False**.
        #   @return [Boolean]

        # @!attribute [rw] is_multi_region_trail
        #   Specifies whether the trail belongs only to one region or exists in
        #   all regions.
        #   @return [Boolean]

        # @!attribute [rw] home_region
        #   The region in which the trail was created.
        #   @return [String]

        # @!attribute [rw] trail_arn
        #   Specifies the ARN of the trail. The format of a trail ARN is:
        #
        #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
        #   @return [String]

        # @!attribute [rw] log_file_validation_enabled
        #   Specifies whether log file validation is enabled.
        #   @return [Boolean]

        # @!attribute [rw] cloud_watch_logs_log_group_arn
        #   Specifies an Amazon Resource Name (ARN), a unique identifier that
        #   represents the log group to which CloudTrail logs will be delivered.
        #   @return [String]

        # @!attribute [rw] cloud_watch_logs_role_arn
        #   Specifies the role for the CloudWatch Logs endpoint to assume to
        #   write to a user\'s log group.
        #   @return [String]

        # @!attribute [rw] kms_key_id
        #   Specifies the KMS key ID that encrypts the logs delivered by
        #   CloudTrail. The value is a fully specified ARN to a KMS key in the
        #   format:
        #
        #   `arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012`
        #   @return [String]

      end

      # Specifies settings to update for the trail.
      # @note When making an API call, pass UpdateTrailRequest
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
      #       }
      class UpdateTrailRequest < Aws::Structure.new(
        :name,
        :s3_bucket_name,
        :s3_key_prefix,
        :sns_topic_name,
        :include_global_service_events,
        :is_multi_region_trail,
        :enable_log_file_validation,
        :cloud_watch_logs_log_group_arn,
        :cloud_watch_logs_role_arn,
        :kms_key_id)

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
        #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
        #   @return [String]

        # @!attribute [rw] s3_bucket_name
        #   Specifies the name of the Amazon S3 bucket designated for publishing
        #   log files. See [Amazon S3 Bucket Naming Requirements][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html
        #   @return [String]

        # @!attribute [rw] s3_key_prefix
        #   Specifies the Amazon S3 key prefix that comes after the name of the
        #   bucket you have designated for log file delivery. For more
        #   information, see [Finding Your CloudTrail Log Files][1]. The maximum
        #   length is 200 characters.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html
        #   @return [String]

        # @!attribute [rw] sns_topic_name
        #   Specifies the name of the Amazon SNS topic defined for notification
        #   of log file delivery. The maximum length is 256 characters.
        #   @return [String]

        # @!attribute [rw] include_global_service_events
        #   Specifies whether the trail is publishing events from global
        #   services such as IAM to the log files.
        #   @return [Boolean]

        # @!attribute [rw] is_multi_region_trail
        #   Specifies whether the trail applies only to the current region or to
        #   all regions. The default is false. If the trail exists only in the
        #   current region and this value is set to true, shadow trails
        #   (replications of the trail) will be created in the other regions. If
        #   the trail exists in all regions and this value is set to false, the
        #   trail will remain in the region where it was created, and its shadow
        #   trails in other regions will be deleted.
        #   @return [Boolean]

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

        # @!attribute [rw] cloud_watch_logs_log_group_arn
        #   Specifies a log group name using an Amazon Resource Name (ARN), a
        #   unique identifier that represents the log group to which CloudTrail
        #   logs will be delivered. Not required unless you specify
        #   CloudWatchLogsRoleArn.
        #   @return [String]

        # @!attribute [rw] cloud_watch_logs_role_arn
        #   Specifies the role for the CloudWatch Logs endpoint to assume to
        #   write to a user\'s log group.
        #   @return [String]

        # @!attribute [rw] kms_key_id
        #   Specifies the KMS key ID to use to encrypt the logs delivered by
        #   CloudTrail. The value can be a an alias name prefixed by \"alias/\",
        #   a fully specified ARN to an alias, a fully specified ARN to a key,
        #   or a globally unique identifier.
        #
        #   Examples:
        #
        #   * alias/MyAliasName
        #
        #   * arn:aws:kms:us-east-1:123456789012:alias/MyAliasName
        #
        #   * arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
        #
        #   * 12345678-1234-1234-1234-123456789012
        #   @return [String]

      end

      # Returns the objects or data listed below if successful. Otherwise,
      # returns an error.
      class UpdateTrailResponse < Aws::Structure.new(
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
        :kms_key_id)

        # @!attribute [rw] name
        #   Specifies the name of the trail.
        #   @return [String]

        # @!attribute [rw] s3_bucket_name
        #   Specifies the name of the Amazon S3 bucket designated for publishing
        #   log files.
        #   @return [String]

        # @!attribute [rw] s3_key_prefix
        #   Specifies the Amazon S3 key prefix that comes after the name of the
        #   bucket you have designated for log file delivery. For more
        #   information, see [Finding Your CloudTrail Log Files][1].
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html
        #   @return [String]

        # @!attribute [rw] sns_topic_name
        #   This field is deprecated. Use SnsTopicARN.
        #   @return [String]

        # @!attribute [rw] sns_topic_arn
        #   Specifies the ARN of the Amazon SNS topic that CloudTrail uses to
        #   send notifications when log files are delivered. The format of a
        #   topic ARN is:
        #
        #   `arn:aws:sns:us-east-1:123456789012:MyTopic`
        #   @return [String]

        # @!attribute [rw] include_global_service_events
        #   Specifies whether the trail is publishing events from global
        #   services such as IAM to the log files.
        #   @return [Boolean]

        # @!attribute [rw] is_multi_region_trail
        #   Specifies whether the trail exists in one region or in all regions.
        #   @return [Boolean]

        # @!attribute [rw] trail_arn
        #   Specifies the ARN of the trail that was updated. The format of a
        #   trail ARN is:
        #
        #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
        #   @return [String]

        # @!attribute [rw] log_file_validation_enabled
        #   Specifies whether log file integrity validation is enabled.
        #   @return [Boolean]

        # @!attribute [rw] cloud_watch_logs_log_group_arn
        #   Specifies the Amazon Resource Name (ARN) of the log group to which
        #   CloudTrail logs will be delivered.
        #   @return [String]

        # @!attribute [rw] cloud_watch_logs_role_arn
        #   Specifies the role for the CloudWatch Logs endpoint to assume to
        #   write to a user\'s log group.
        #   @return [String]

        # @!attribute [rw] kms_key_id
        #   Specifies the KMS key ID that encrypts the logs delivered by
        #   CloudTrail. The value is a fully specified ARN to a KMS key in the
        #   format:
        #
        #   `arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012`
        #   @return [String]

      end

    end
  end
end
