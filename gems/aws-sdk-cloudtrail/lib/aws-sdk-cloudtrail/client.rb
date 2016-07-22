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
  module CloudTrail
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :cloudtrail

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @!group API Operations

      # Adds one or more tags to a trail, up to a limit of 10. Tags must be
      # unique per trail. Overwrites an existing tag\'s value when a new value
      # is specified for an existing tag key. If you specify a key without a
      # value, the tag will be created with the specified key and a value of
      # null. You can tag a trail that applies to all regions only from the
      # region in which the trail was created (that is, from its home region).
      # @option params [required, String] :resource_id
      #   Specifies the ARN of the trail to which one or more tags will be
      #   added. The format of a trail ARN is:
      #
      #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
      # @option params [Array<Types::Tag>] :tags_list
      #   Contains a list of CloudTrail tags, up to a limit of 10.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.add_tags({
      #     resource_id: "String", # required
      #     tags_list: [
      #       {
      #         key: "String", # required
      #         value: "String",
      #       },
      #     ],
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def add_tags(params = {}, options = {})
        req = build_request(:add_tags, params)
        req.send_request(options)
      end

      # Creates a trail that specifies the settings for delivery of log data
      # to an Amazon S3 bucket. A maximum of five trails can exist in a
      # region, irrespective of the region in which they were created.
      # @option params [required, String] :name
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
      # @option params [required, String] :s3_bucket_name
      #   Specifies the name of the Amazon S3 bucket designated for publishing
      #   log files. See [Amazon S3 Bucket Naming Requirements][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html
      # @option params [String] :s3_key_prefix
      #   Specifies the Amazon S3 key prefix that comes after the name of the
      #   bucket you have designated for log file delivery. For more
      #   information, see [Finding Your CloudTrail Log Files][1]. The maximum
      #   length is 200 characters.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html
      # @option params [String] :sns_topic_name
      #   Specifies the name of the Amazon SNS topic defined for notification of
      #   log file delivery. The maximum length is 256 characters.
      # @option params [Boolean] :include_global_service_events
      #   Specifies whether the trail is publishing events from global services
      #   such as IAM to the log files.
      # @option params [Boolean] :is_multi_region_trail
      #   Specifies whether the trail is created in the current region or in all
      #   regions. The default is false.
      # @option params [Boolean] :enable_log_file_validation
      #   Specifies whether log file integrity validation is enabled. The
      #   default is false.
      #
      #   <note markdown="1"> When you disable log file integrity validation, the chain of digest
      #   files is broken after one hour. CloudTrail will not create digest
      #   files for log files that were delivered during a period in which log
      #   file integrity validation was disabled. For example, if you enable log
      #   file integrity validation at noon on January 1, disable it at noon on
      #   January 2, and re-enable it at noon on January 10, digest files will
      #   not be created for the log files delivered from noon on January 2 to
      #   noon on January 10. The same applies whenever you stop CloudTrail
      #   logging or delete a trail.
      #
      #    </note>
      # @option params [String] :cloud_watch_logs_log_group_arn
      #   Specifies a log group name using an Amazon Resource Name (ARN), a
      #   unique identifier that represents the log group to which CloudTrail
      #   logs will be delivered. Not required unless you specify
      #   CloudWatchLogsRoleArn.
      # @option params [String] :cloud_watch_logs_role_arn
      #   Specifies the role for the CloudWatch Logs endpoint to assume to write
      #   to a user\'s log group.
      # @option params [String] :kms_key_id
      #   Specifies the KMS key ID to use to encrypt the logs delivered by
      #   CloudTrail. The value can be a an alias name prefixed by \"alias/\", a
      #   fully specified ARN to an alias, a fully specified ARN to a key, or a
      #   globally unique identifier.
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
      # @return [Types::CreateTrailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateTrailResponse#name #Name} => String
      #   * {Types::CreateTrailResponse#s3_bucket_name #S3BucketName} => String
      #   * {Types::CreateTrailResponse#s3_key_prefix #S3KeyPrefix} => String
      #   * {Types::CreateTrailResponse#sns_topic_name #SnsTopicName} => String
      #   * {Types::CreateTrailResponse#sns_topic_arn #SnsTopicARN} => String
      #   * {Types::CreateTrailResponse#include_global_service_events #IncludeGlobalServiceEvents} => Boolean
      #   * {Types::CreateTrailResponse#is_multi_region_trail #IsMultiRegionTrail} => Boolean
      #   * {Types::CreateTrailResponse#trail_arn #TrailARN} => String
      #   * {Types::CreateTrailResponse#log_file_validation_enabled #LogFileValidationEnabled} => Boolean
      #   * {Types::CreateTrailResponse#cloud_watch_logs_log_group_arn #CloudWatchLogsLogGroupArn} => String
      #   * {Types::CreateTrailResponse#cloud_watch_logs_role_arn #CloudWatchLogsRoleArn} => String
      #   * {Types::CreateTrailResponse#kms_key_id #KmsKeyId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_trail({
      #     name: "String", # required
      #     s3_bucket_name: "String", # required
      #     s3_key_prefix: "String",
      #     sns_topic_name: "String",
      #     include_global_service_events: false,
      #     is_multi_region_trail: false,
      #     enable_log_file_validation: false,
      #     cloud_watch_logs_log_group_arn: "String",
      #     cloud_watch_logs_role_arn: "String",
      #     kms_key_id: "String",
      #   })
      #
      # @example Response structure
      #   resp.name #=> String
      #   resp.s3_bucket_name #=> String
      #   resp.s3_key_prefix #=> String
      #   resp.sns_topic_name #=> String
      #   resp.sns_topic_arn #=> String
      #   resp.include_global_service_events #=> Boolean
      #   resp.is_multi_region_trail #=> Boolean
      #   resp.trail_arn #=> String
      #   resp.log_file_validation_enabled #=> Boolean
      #   resp.cloud_watch_logs_log_group_arn #=> String
      #   resp.cloud_watch_logs_role_arn #=> String
      #   resp.kms_key_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_trail(params = {}, options = {})
        req = build_request(:create_trail, params)
        req.send_request(options)
      end

      # Deletes a trail. This operation must be called from the region in
      # which the trail was created. `DeleteTrail` cannot be called on the
      # shadow trails (replicated trails in other regions) of a trail that is
      # enabled in all regions.
      # @option params [required, String] :name
      #   Specifies the name or the CloudTrail ARN of the trail to be deleted.
      #   The format of a trail ARN is:
      #
      #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_trail({
      #     name: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_trail(params = {}, options = {})
        req = build_request(:delete_trail, params)
        req.send_request(options)
      end

      # Retrieves settings for the trail associated with the current region
      # for your account.
      # @option params [Array<String>] :trail_name_list
      #   Specifies a list of trail names, trail ARNs, or both, of the trails to
      #   describe. The format of a trail ARN is:
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
      #     true, then information for all trails in the current region and any
      #     associated shadow trails in other regions is returned.
      #
      #   <note markdown="1"> If one or more trail names are specified, information is returned only
      #   if the names match the names of trails belonging only to the current
      #   region. To return information about a trail in another region, you
      #   must specify its trail ARN.
      #
      #    </note>
      # @option params [Boolean] :include_shadow_trails
      #   Specifies whether to include shadow trails in the response. A shadow
      #   trail is the replication in a region of a trail that was created in a
      #   different region. The default is true.
      # @return [Types::DescribeTrailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeTrailsResponse#trail_list #trailList} => Array&lt;Types::Trail&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_trails({
      #     trail_name_list: ["String"],
      #     include_shadow_trails: false,
      #   })
      #
      # @example Response structure
      #   resp.trail_list #=> Array
      #   resp.trail_list[0].name #=> String
      #   resp.trail_list[0].s3_bucket_name #=> String
      #   resp.trail_list[0].s3_key_prefix #=> String
      #   resp.trail_list[0].sns_topic_name #=> String
      #   resp.trail_list[0].sns_topic_arn #=> String
      #   resp.trail_list[0].include_global_service_events #=> Boolean
      #   resp.trail_list[0].is_multi_region_trail #=> Boolean
      #   resp.trail_list[0].home_region #=> String
      #   resp.trail_list[0].trail_arn #=> String
      #   resp.trail_list[0].log_file_validation_enabled #=> Boolean
      #   resp.trail_list[0].cloud_watch_logs_log_group_arn #=> String
      #   resp.trail_list[0].cloud_watch_logs_role_arn #=> String
      #   resp.trail_list[0].kms_key_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_trails(params = {}, options = {})
        req = build_request(:describe_trails, params)
        req.send_request(options)
      end

      # Returns a JSON-formatted list of information about the specified
      # trail. Fields include information on delivery errors, Amazon SNS and
      # Amazon S3 errors, and start and stop logging times for each trail.
      # This operation returns trail status from a single region. To return
      # trail status from all regions, you must call the operation on each
      # region.
      # @option params [required, String] :name
      #   Specifies the name or the CloudTrail ARN of the trail for which you
      #   are requesting status. To get the status of a shadow trail (a
      #   replication of the trail in another region), you must specify its ARN.
      #   The format of a trail ARN is:
      #
      #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
      # @return [Types::GetTrailStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetTrailStatusResponse#is_logging #IsLogging} => Boolean
      #   * {Types::GetTrailStatusResponse#latest_delivery_error #LatestDeliveryError} => String
      #   * {Types::GetTrailStatusResponse#latest_notification_error #LatestNotificationError} => String
      #   * {Types::GetTrailStatusResponse#latest_delivery_time #LatestDeliveryTime} => Time
      #   * {Types::GetTrailStatusResponse#latest_notification_time #LatestNotificationTime} => Time
      #   * {Types::GetTrailStatusResponse#start_logging_time #StartLoggingTime} => Time
      #   * {Types::GetTrailStatusResponse#stop_logging_time #StopLoggingTime} => Time
      #   * {Types::GetTrailStatusResponse#latest_cloud_watch_logs_delivery_error #LatestCloudWatchLogsDeliveryError} => String
      #   * {Types::GetTrailStatusResponse#latest_cloud_watch_logs_delivery_time #LatestCloudWatchLogsDeliveryTime} => Time
      #   * {Types::GetTrailStatusResponse#latest_digest_delivery_time #LatestDigestDeliveryTime} => Time
      #   * {Types::GetTrailStatusResponse#latest_digest_delivery_error #LatestDigestDeliveryError} => String
      #   * {Types::GetTrailStatusResponse#latest_delivery_attempt_time #LatestDeliveryAttemptTime} => String
      #   * {Types::GetTrailStatusResponse#latest_notification_attempt_time #LatestNotificationAttemptTime} => String
      #   * {Types::GetTrailStatusResponse#latest_notification_attempt_succeeded #LatestNotificationAttemptSucceeded} => String
      #   * {Types::GetTrailStatusResponse#latest_delivery_attempt_succeeded #LatestDeliveryAttemptSucceeded} => String
      #   * {Types::GetTrailStatusResponse#time_logging_started #TimeLoggingStarted} => String
      #   * {Types::GetTrailStatusResponse#time_logging_stopped #TimeLoggingStopped} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_trail_status({
      #     name: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.is_logging #=> Boolean
      #   resp.latest_delivery_error #=> String
      #   resp.latest_notification_error #=> String
      #   resp.latest_delivery_time #=> Time
      #   resp.latest_notification_time #=> Time
      #   resp.start_logging_time #=> Time
      #   resp.stop_logging_time #=> Time
      #   resp.latest_cloud_watch_logs_delivery_error #=> String
      #   resp.latest_cloud_watch_logs_delivery_time #=> Time
      #   resp.latest_digest_delivery_time #=> Time
      #   resp.latest_digest_delivery_error #=> String
      #   resp.latest_delivery_attempt_time #=> String
      #   resp.latest_notification_attempt_time #=> String
      #   resp.latest_notification_attempt_succeeded #=> String
      #   resp.latest_delivery_attempt_succeeded #=> String
      #   resp.time_logging_started #=> String
      #   resp.time_logging_stopped #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_trail_status(params = {}, options = {})
        req = build_request(:get_trail_status, params)
        req.send_request(options)
      end

      # Returns all public keys whose private keys were used to sign the
      # digest files within the specified time range. The public key is needed
      # to validate digest files that were signed with its corresponding
      # private key.
      #
      # <note markdown="1"> CloudTrail uses different private/public key pairs per region. Each
      # digest file is signed with a private key unique to its region.
      # Therefore, when you validate a digest file from a particular region,
      # you must look in the same region for its corresponding public key.
      #
      #  </note>
      # @option params [Time,DateTime,Date,Integer,String] :start_time
      #   Optionally specifies, in UTC, the start of the time range to look up
      #   public keys for CloudTrail digest files. If not specified, the current
      #   time is used, and the current public key is returned.
      # @option params [Time,DateTime,Date,Integer,String] :end_time
      #   Optionally specifies, in UTC, the end of the time range to look up
      #   public keys for CloudTrail digest files. If not specified, the current
      #   time is used.
      # @option params [String] :next_token
      #   Reserved for future use.
      # @return [Types::ListPublicKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListPublicKeysResponse#public_key_list #PublicKeyList} => Array&lt;Types::PublicKey&gt;
      #   * {Types::ListPublicKeysResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_public_keys({
      #     start_time: Time.now,
      #     end_time: Time.now,
      #     next_token: "String",
      #   })
      #
      # @example Response structure
      #   resp.public_key_list #=> Array
      #   resp.public_key_list[0].value #=> String
      #   resp.public_key_list[0].validity_start_time #=> Time
      #   resp.public_key_list[0].validity_end_time #=> Time
      #   resp.public_key_list[0].fingerprint #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_public_keys(params = {}, options = {})
        req = build_request(:list_public_keys, params)
        req.send_request(options)
      end

      # Lists the tags for the trail in the current region.
      # @option params [required, Array<String>] :resource_id_list
      #   Specifies a list of trail ARNs whose tags will be listed. The list has
      #   a limit of 20 ARNs. The format of a trail ARN is:
      #
      #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
      # @option params [String] :next_token
      #   Reserved for future use.
      # @return [Types::ListTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListTagsResponse#resource_tag_list #ResourceTagList} => Array&lt;Types::ResourceTag&gt;
      #   * {Types::ListTagsResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_tags({
      #     resource_id_list: ["String"], # required
      #     next_token: "String",
      #   })
      #
      # @example Response structure
      #   resp.resource_tag_list #=> Array
      #   resp.resource_tag_list[0].resource_id #=> String
      #   resp.resource_tag_list[0].tags_list #=> Array
      #   resp.resource_tag_list[0].tags_list[0].key #=> String
      #   resp.resource_tag_list[0].tags_list[0].value #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_tags(params = {}, options = {})
        req = build_request(:list_tags, params)
        req.send_request(options)
      end

      # Looks up API activity events captured by CloudTrail that create,
      # update, or delete resources in your account. Events for a region can
      # be looked up for the times in which you had CloudTrail turned on in
      # that region during the last seven days. Lookup supports five different
      # attributes: time range (defined by a start time and end time), user
      # name, event name, resource type, and resource name. All attributes are
      # optional. The maximum number of attributes that can be specified in
      # any one lookup request are time range and one other attribute. The
      # default number of results returned is 10, with a maximum of 50
      # possible. The response includes a token that you can use to get the
      # next page of results.
      #
      # <important markdown="1"> The rate of lookup requests is limited to one per second per account.
      # If this limit is exceeded, a throttling error occurs.
      #
      #  </important>
      #
      # <important markdown="1"> Events that occurred during the selected time range will not be
      # available for lookup if CloudTrail logging was not enabled when the
      # events occurred.
      #
      #  </important>
      # @option params [Array<Types::LookupAttribute>] :lookup_attributes
      #   Contains a list of lookup attributes. Currently the list can contain
      #   only one item.
      # @option params [Time,DateTime,Date,Integer,String] :start_time
      #   Specifies that only events that occur after or at the specified time
      #   are returned. If the specified start time is after the specified end
      #   time, an error is returned.
      # @option params [Time,DateTime,Date,Integer,String] :end_time
      #   Specifies that only events that occur before or at the specified time
      #   are returned. If the specified end time is before the specified start
      #   time, an error is returned.
      # @option params [Integer] :max_results
      #   The number of events to return. Possible values are 1 through 50. The
      #   default is 10.
      # @option params [String] :next_token
      #   The token to use to get the next page of results after a previous API
      #   call. This token must be passed in with the same parameters that were
      #   specified in the the original call. For example, if the original call
      #   specified an AttributeKey of \'Username\' with a value of \'root\',
      #   the call with NextToken should include those same parameters.
      # @return [Types::LookupEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::LookupEventsResponse#events #Events} => Array&lt;Types::Event&gt;
      #   * {Types::LookupEventsResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.lookup_events({
      #     lookup_attributes: [
      #       {
      #         attribute_key: "EventId", # required, accepts EventId, EventName, Username, ResourceType, ResourceName
      #         attribute_value: "String", # required
      #       },
      #     ],
      #     start_time: Time.now,
      #     end_time: Time.now,
      #     max_results: 1,
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.events #=> Array
      #   resp.events[0].event_id #=> String
      #   resp.events[0].event_name #=> String
      #   resp.events[0].event_time #=> Time
      #   resp.events[0].username #=> String
      #   resp.events[0].resources #=> Array
      #   resp.events[0].resources[0].resource_type #=> String
      #   resp.events[0].resources[0].resource_name #=> String
      #   resp.events[0].cloud_trail_event #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def lookup_events(params = {}, options = {})
        req = build_request(:lookup_events, params)
        req.send_request(options)
      end

      # Removes the specified tags from a trail.
      # @option params [required, String] :resource_id
      #   Specifies the ARN of the trail from which tags should be removed. The
      #   format of a trail ARN is:
      #
      #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
      # @option params [Array<Types::Tag>] :tags_list
      #   Specifies a list of tags to be removed.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.remove_tags({
      #     resource_id: "String", # required
      #     tags_list: [
      #       {
      #         key: "String", # required
      #         value: "String",
      #       },
      #     ],
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def remove_tags(params = {}, options = {})
        req = build_request(:remove_tags, params)
        req.send_request(options)
      end

      # Starts the recording of AWS API calls and log file delivery for a
      # trail. For a trail that is enabled in all regions, this operation must
      # be called from the region in which the trail was created. This
      # operation cannot be called on the shadow trails (replicated trails in
      # other regions) of a trail that is enabled in all regions.
      # @option params [required, String] :name
      #   Specifies the name or the CloudTrail ARN of the trail for which
      #   CloudTrail logs AWS API calls. The format of a trail ARN is:
      #
      #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.start_logging({
      #     name: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def start_logging(params = {}, options = {})
        req = build_request(:start_logging, params)
        req.send_request(options)
      end

      # Suspends the recording of AWS API calls and log file delivery for the
      # specified trail. Under most circumstances, there is no need to use
      # this action. You can update a trail without stopping it first. This
      # action is the only way to stop recording. For a trail enabled in all
      # regions, this operation must be called from the region in which the
      # trail was created, or an `InvalidHomeRegionException` will occur. This
      # operation cannot be called on the shadow trails (replicated trails in
      # other regions) of a trail enabled in all regions.
      # @option params [required, String] :name
      #   Specifies the name or the CloudTrail ARN of the trail for which
      #   CloudTrail will stop logging AWS API calls. The format of a trail ARN
      #   is:
      #
      #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.stop_logging({
      #     name: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def stop_logging(params = {}, options = {})
        req = build_request(:stop_logging, params)
        req.send_request(options)
      end

      # Updates the settings that specify delivery of log files. Changes to a
      # trail do not require stopping the CloudTrail service. Use this action
      # to designate an existing bucket for log delivery. If the existing
      # bucket has previously been a target for CloudTrail log files, an IAM
      # policy exists for the bucket. `UpdateTrail` must be called from the
      # region in which the trail was created; otherwise, an
      # `InvalidHomeRegionException` is thrown.
      # @option params [required, String] :name
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
      # @option params [String] :s3_bucket_name
      #   Specifies the name of the Amazon S3 bucket designated for publishing
      #   log files. See [Amazon S3 Bucket Naming Requirements][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html
      # @option params [String] :s3_key_prefix
      #   Specifies the Amazon S3 key prefix that comes after the name of the
      #   bucket you have designated for log file delivery. For more
      #   information, see [Finding Your CloudTrail Log Files][1]. The maximum
      #   length is 200 characters.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html
      # @option params [String] :sns_topic_name
      #   Specifies the name of the Amazon SNS topic defined for notification of
      #   log file delivery. The maximum length is 256 characters.
      # @option params [Boolean] :include_global_service_events
      #   Specifies whether the trail is publishing events from global services
      #   such as IAM to the log files.
      # @option params [Boolean] :is_multi_region_trail
      #   Specifies whether the trail applies only to the current region or to
      #   all regions. The default is false. If the trail exists only in the
      #   current region and this value is set to true, shadow trails
      #   (replications of the trail) will be created in the other regions. If
      #   the trail exists in all regions and this value is set to false, the
      #   trail will remain in the region where it was created, and its shadow
      #   trails in other regions will be deleted.
      # @option params [Boolean] :enable_log_file_validation
      #   Specifies whether log file validation is enabled. The default is
      #   false.
      #
      #   <note markdown="1"> When you disable log file integrity validation, the chain of digest
      #   files is broken after one hour. CloudTrail will not create digest
      #   files for log files that were delivered during a period in which log
      #   file integrity validation was disabled. For example, if you enable log
      #   file integrity validation at noon on January 1, disable it at noon on
      #   January 2, and re-enable it at noon on January 10, digest files will
      #   not be created for the log files delivered from noon on January 2 to
      #   noon on January 10. The same applies whenever you stop CloudTrail
      #   logging or delete a trail.
      #
      #    </note>
      # @option params [String] :cloud_watch_logs_log_group_arn
      #   Specifies a log group name using an Amazon Resource Name (ARN), a
      #   unique identifier that represents the log group to which CloudTrail
      #   logs will be delivered. Not required unless you specify
      #   CloudWatchLogsRoleArn.
      # @option params [String] :cloud_watch_logs_role_arn
      #   Specifies the role for the CloudWatch Logs endpoint to assume to write
      #   to a user\'s log group.
      # @option params [String] :kms_key_id
      #   Specifies the KMS key ID to use to encrypt the logs delivered by
      #   CloudTrail. The value can be a an alias name prefixed by \"alias/\", a
      #   fully specified ARN to an alias, a fully specified ARN to a key, or a
      #   globally unique identifier.
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
      # @return [Types::UpdateTrailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateTrailResponse#name #Name} => String
      #   * {Types::UpdateTrailResponse#s3_bucket_name #S3BucketName} => String
      #   * {Types::UpdateTrailResponse#s3_key_prefix #S3KeyPrefix} => String
      #   * {Types::UpdateTrailResponse#sns_topic_name #SnsTopicName} => String
      #   * {Types::UpdateTrailResponse#sns_topic_arn #SnsTopicARN} => String
      #   * {Types::UpdateTrailResponse#include_global_service_events #IncludeGlobalServiceEvents} => Boolean
      #   * {Types::UpdateTrailResponse#is_multi_region_trail #IsMultiRegionTrail} => Boolean
      #   * {Types::UpdateTrailResponse#trail_arn #TrailARN} => String
      #   * {Types::UpdateTrailResponse#log_file_validation_enabled #LogFileValidationEnabled} => Boolean
      #   * {Types::UpdateTrailResponse#cloud_watch_logs_log_group_arn #CloudWatchLogsLogGroupArn} => String
      #   * {Types::UpdateTrailResponse#cloud_watch_logs_role_arn #CloudWatchLogsRoleArn} => String
      #   * {Types::UpdateTrailResponse#kms_key_id #KmsKeyId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_trail({
      #     name: "String", # required
      #     s3_bucket_name: "String",
      #     s3_key_prefix: "String",
      #     sns_topic_name: "String",
      #     include_global_service_events: false,
      #     is_multi_region_trail: false,
      #     enable_log_file_validation: false,
      #     cloud_watch_logs_log_group_arn: "String",
      #     cloud_watch_logs_role_arn: "String",
      #     kms_key_id: "String",
      #   })
      #
      # @example Response structure
      #   resp.name #=> String
      #   resp.s3_bucket_name #=> String
      #   resp.s3_key_prefix #=> String
      #   resp.sns_topic_name #=> String
      #   resp.sns_topic_arn #=> String
      #   resp.include_global_service_events #=> Boolean
      #   resp.is_multi_region_trail #=> Boolean
      #   resp.trail_arn #=> String
      #   resp.log_file_validation_enabled #=> Boolean
      #   resp.cloud_watch_logs_log_group_arn #=> String
      #   resp.cloud_watch_logs_role_arn #=> String
      #   resp.kms_key_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_trail(params = {}, options = {})
        req = build_request(:update_trail, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
