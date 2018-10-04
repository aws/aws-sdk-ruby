# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudtrail)

module Aws::CloudTrail
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :cloudtrail

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Adds one or more tags to a trail, up to a limit of 50. Tags must be
    # unique per trail. Overwrites an existing tag's value when a new value
    # is specified for an existing tag key. If you specify a key without a
    # value, the tag will be created with the specified key and a value of
    # null. You can tag a trail that applies to all regions only from the
    # region in which the trail was created (that is, from its home region).
    #
    # @option params [required, String] :resource_id
    #   Specifies the ARN of the trail to which one or more tags will be
    #   added. The format of a trail ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
    #
    # @option params [Array<Types::Tag>] :tags_list
    #   Contains a list of CloudTrail tags, up to a limit of 50
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags({
    #     resource_id: "String", # required
    #     tags_list: [
    #       {
    #         key: "String", # required
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/AddTags AWS API Documentation
    #
    # @overload add_tags(params = {})
    # @param [Hash] params ({})
    def add_tags(params = {}, options = {})
      req = build_request(:add_tags, params)
      req.send_request(options)
    end

    # Creates a trail that specifies the settings for delivery of log data
    # to an Amazon S3 bucket. A maximum of five trails can exist in a
    # region, irrespective of the region in which they were created.
    #
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
    #
    # @option params [required, String] :s3_bucket_name
    #   Specifies the name of the Amazon S3 bucket designated for publishing
    #   log files. See [Amazon S3 Bucket Naming Requirements][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html
    #
    # @option params [String] :s3_key_prefix
    #   Specifies the Amazon S3 key prefix that comes after the name of the
    #   bucket you have designated for log file delivery. For more
    #   information, see [Finding Your CloudTrail Log Files][1]. The maximum
    #   length is 200 characters.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html
    #
    # @option params [String] :sns_topic_name
    #   Specifies the name of the Amazon SNS topic defined for notification of
    #   log file delivery. The maximum length is 256 characters.
    #
    # @option params [Boolean] :include_global_service_events
    #   Specifies whether the trail is publishing events from global services
    #   such as IAM to the log files.
    #
    # @option params [Boolean] :is_multi_region_trail
    #   Specifies whether the trail is created in the current region or in all
    #   regions. The default is false.
    #
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
    #
    # @option params [String] :cloud_watch_logs_log_group_arn
    #   Specifies a log group name using an Amazon Resource Name (ARN), a
    #   unique identifier that represents the log group to which CloudTrail
    #   logs will be delivered. Not required unless you specify
    #   CloudWatchLogsRoleArn.
    #
    # @option params [String] :cloud_watch_logs_role_arn
    #   Specifies the role for the CloudWatch Logs endpoint to assume to write
    #   to a user's log group.
    #
    # @option params [String] :kms_key_id
    #   Specifies the KMS key ID to use to encrypt the logs delivered by
    #   CloudTrail. The value can be an alias name prefixed by "alias/", a
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
    #
    # @return [Types::CreateTrailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTrailResponse#name #name} => String
    #   * {Types::CreateTrailResponse#s3_bucket_name #s3_bucket_name} => String
    #   * {Types::CreateTrailResponse#s3_key_prefix #s3_key_prefix} => String
    #   * {Types::CreateTrailResponse#sns_topic_name #sns_topic_name} => String
    #   * {Types::CreateTrailResponse#sns_topic_arn #sns_topic_arn} => String
    #   * {Types::CreateTrailResponse#include_global_service_events #include_global_service_events} => Boolean
    #   * {Types::CreateTrailResponse#is_multi_region_trail #is_multi_region_trail} => Boolean
    #   * {Types::CreateTrailResponse#trail_arn #trail_arn} => String
    #   * {Types::CreateTrailResponse#log_file_validation_enabled #log_file_validation_enabled} => Boolean
    #   * {Types::CreateTrailResponse#cloud_watch_logs_log_group_arn #cloud_watch_logs_log_group_arn} => String
    #   * {Types::CreateTrailResponse#cloud_watch_logs_role_arn #cloud_watch_logs_role_arn} => String
    #   * {Types::CreateTrailResponse#kms_key_id #kms_key_id} => String
    #
    # @example Request syntax with placeholder values
    #
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
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/CreateTrail AWS API Documentation
    #
    # @overload create_trail(params = {})
    # @param [Hash] params ({})
    def create_trail(params = {}, options = {})
      req = build_request(:create_trail, params)
      req.send_request(options)
    end

    # Deletes a trail. This operation must be called from the region in
    # which the trail was created. `DeleteTrail` cannot be called on the
    # shadow trails (replicated trails in other regions) of a trail that is
    # enabled in all regions.
    #
    # @option params [required, String] :name
    #   Specifies the name or the CloudTrail ARN of the trail to be deleted.
    #   The format of a trail ARN is:
    #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_trail({
    #     name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DeleteTrail AWS API Documentation
    #
    # @overload delete_trail(params = {})
    # @param [Hash] params ({})
    def delete_trail(params = {}, options = {})
      req = build_request(:delete_trail, params)
      req.send_request(options)
    end

    # Retrieves settings for the trail associated with the current region
    # for your account.
    #
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
    #
    # @option params [Boolean] :include_shadow_trails
    #   Specifies whether to include shadow trails in the response. A shadow
    #   trail is the replication in a region of a trail that was created in a
    #   different region. The default is true.
    #
    # @return [Types::DescribeTrailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTrailsResponse#trail_list #trail_list} => Array&lt;Types::Trail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_trails({
    #     trail_name_list: ["String"],
    #     include_shadow_trails: false,
    #   })
    #
    # @example Response structure
    #
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
    #   resp.trail_list[0].has_custom_event_selectors #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/DescribeTrails AWS API Documentation
    #
    # @overload describe_trails(params = {})
    # @param [Hash] params ({})
    def describe_trails(params = {}, options = {})
      req = build_request(:describe_trails, params)
      req.send_request(options)
    end

    # Describes the settings for the event selectors that you configured for
    # your trail. The information returned for your event selectors includes
    # the following:
    #
    # * The S3 objects that you are logging for data events.
    #
    # * If your event selector includes management events.
    #
    # * If your event selector includes read-only events, write-only events,
    #   or all.
    #
    # For more information, see [Logging Data and Management Events for
    # Trails ][1] in the *AWS CloudTrail User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html
    #
    # @option params [required, String] :trail_name
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
    #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
    #
    # @return [Types::GetEventSelectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventSelectorsResponse#trail_arn #trail_arn} => String
    #   * {Types::GetEventSelectorsResponse#event_selectors #event_selectors} => Array&lt;Types::EventSelector&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_selectors({
    #     trail_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.trail_arn #=> String
    #   resp.event_selectors #=> Array
    #   resp.event_selectors[0].read_write_type #=> String, one of "ReadOnly", "WriteOnly", "All"
    #   resp.event_selectors[0].include_management_events #=> Boolean
    #   resp.event_selectors[0].data_resources #=> Array
    #   resp.event_selectors[0].data_resources[0].type #=> String
    #   resp.event_selectors[0].data_resources[0].values #=> Array
    #   resp.event_selectors[0].data_resources[0].values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetEventSelectors AWS API Documentation
    #
    # @overload get_event_selectors(params = {})
    # @param [Hash] params ({})
    def get_event_selectors(params = {}, options = {})
      req = build_request(:get_event_selectors, params)
      req.send_request(options)
    end

    # Returns a JSON-formatted list of information about the specified
    # trail. Fields include information on delivery errors, Amazon SNS and
    # Amazon S3 errors, and start and stop logging times for each trail.
    # This operation returns trail status from a single region. To return
    # trail status from all regions, you must call the operation on each
    # region.
    #
    # @option params [required, String] :name
    #   Specifies the name or the CloudTrail ARN of the trail for which you
    #   are requesting status. To get the status of a shadow trail (a
    #   replication of the trail in another region), you must specify its ARN.
    #   The format of a trail ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
    #
    # @return [Types::GetTrailStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTrailStatusResponse#is_logging #is_logging} => Boolean
    #   * {Types::GetTrailStatusResponse#latest_delivery_error #latest_delivery_error} => String
    #   * {Types::GetTrailStatusResponse#latest_notification_error #latest_notification_error} => String
    #   * {Types::GetTrailStatusResponse#latest_delivery_time #latest_delivery_time} => Time
    #   * {Types::GetTrailStatusResponse#latest_notification_time #latest_notification_time} => Time
    #   * {Types::GetTrailStatusResponse#start_logging_time #start_logging_time} => Time
    #   * {Types::GetTrailStatusResponse#stop_logging_time #stop_logging_time} => Time
    #   * {Types::GetTrailStatusResponse#latest_cloud_watch_logs_delivery_error #latest_cloud_watch_logs_delivery_error} => String
    #   * {Types::GetTrailStatusResponse#latest_cloud_watch_logs_delivery_time #latest_cloud_watch_logs_delivery_time} => Time
    #   * {Types::GetTrailStatusResponse#latest_digest_delivery_time #latest_digest_delivery_time} => Time
    #   * {Types::GetTrailStatusResponse#latest_digest_delivery_error #latest_digest_delivery_error} => String
    #   * {Types::GetTrailStatusResponse#latest_delivery_attempt_time #latest_delivery_attempt_time} => String
    #   * {Types::GetTrailStatusResponse#latest_notification_attempt_time #latest_notification_attempt_time} => String
    #   * {Types::GetTrailStatusResponse#latest_notification_attempt_succeeded #latest_notification_attempt_succeeded} => String
    #   * {Types::GetTrailStatusResponse#latest_delivery_attempt_succeeded #latest_delivery_attempt_succeeded} => String
    #   * {Types::GetTrailStatusResponse#time_logging_started #time_logging_started} => String
    #   * {Types::GetTrailStatusResponse#time_logging_stopped #time_logging_stopped} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trail_status({
    #     name: "String", # required
    #   })
    #
    # @example Response structure
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/GetTrailStatus AWS API Documentation
    #
    # @overload get_trail_status(params = {})
    # @param [Hash] params ({})
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
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   Optionally specifies, in UTC, the start of the time range to look up
    #   public keys for CloudTrail digest files. If not specified, the current
    #   time is used, and the current public key is returned.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   Optionally specifies, in UTC, the end of the time range to look up
    #   public keys for CloudTrail digest files. If not specified, the current
    #   time is used.
    #
    # @option params [String] :next_token
    #   Reserved for future use.
    #
    # @return [Types::ListPublicKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPublicKeysResponse#public_key_list #public_key_list} => Array&lt;Types::PublicKey&gt;
    #   * {Types::ListPublicKeysResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_public_keys({
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.public_key_list #=> Array
    #   resp.public_key_list[0].value #=> String
    #   resp.public_key_list[0].validity_start_time #=> Time
    #   resp.public_key_list[0].validity_end_time #=> Time
    #   resp.public_key_list[0].fingerprint #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListPublicKeys AWS API Documentation
    #
    # @overload list_public_keys(params = {})
    # @param [Hash] params ({})
    def list_public_keys(params = {}, options = {})
      req = build_request(:list_public_keys, params)
      req.send_request(options)
    end

    # Lists the tags for the trail in the current region.
    #
    # @option params [required, Array<String>] :resource_id_list
    #   Specifies a list of trail ARNs whose tags will be listed. The list has
    #   a limit of 20 ARNs. The format of a trail ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
    #
    # @option params [String] :next_token
    #   Reserved for future use.
    #
    # @return [Types::ListTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsResponse#resource_tag_list #resource_tag_list} => Array&lt;Types::ResourceTag&gt;
    #   * {Types::ListTagsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     resource_id_list: ["String"], # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_tag_list #=> Array
    #   resp.resource_tag_list[0].resource_id #=> String
    #   resp.resource_tag_list[0].tags_list #=> Array
    #   resp.resource_tag_list[0].tags_list[0].key #=> String
    #   resp.resource_tag_list[0].tags_list[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Looks up API activity events captured by CloudTrail that create,
    # update, or delete resources in your account. Events for a region can
    # be looked up for the times in which you had CloudTrail turned on in
    # that region during the last seven days. Lookup supports the following
    # attributes:
    #
    # * Event ID
    #
    # * Event name
    #
    # * Event source
    #
    # * Resource name
    #
    # * Resource type
    #
    # * User name
    #
    # All attributes are optional. The default number of results returned is
    # 10, with a maximum of 50 possible. The response includes a token that
    # you can use to get the next page of results.
    #
    # The rate of lookup requests is limited to one per second per account.
    # If this limit is exceeded, a throttling error occurs.
    #
    # Events that occurred during the selected time range will not be
    # available for lookup if CloudTrail logging was not enabled when the
    # events occurred.
    #
    # @option params [Array<Types::LookupAttribute>] :lookup_attributes
    #   Contains a list of lookup attributes. Currently the list can contain
    #   only one item.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   Specifies that only events that occur after or at the specified time
    #   are returned. If the specified start time is after the specified end
    #   time, an error is returned.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   Specifies that only events that occur before or at the specified time
    #   are returned. If the specified end time is before the specified start
    #   time, an error is returned.
    #
    # @option params [Integer] :max_results
    #   The number of events to return. Possible values are 1 through 50. The
    #   default is 10.
    #
    # @option params [String] :next_token
    #   The token to use to get the next page of results after a previous API
    #   call. This token must be passed in with the same parameters that were
    #   specified in the the original call. For example, if the original call
    #   specified an AttributeKey of 'Username' with a value of 'root',
    #   the call with NextToken should include those same parameters.
    #
    # @return [Types::LookupEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::LookupEventsResponse#events #events} => Array&lt;Types::Event&gt;
    #   * {Types::LookupEventsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.lookup_events({
    #     lookup_attributes: [
    #       {
    #         attribute_key: "EventId", # required, accepts EventId, EventName, Username, ResourceType, ResourceName, EventSource
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
    #
    #   resp.events #=> Array
    #   resp.events[0].event_id #=> String
    #   resp.events[0].event_name #=> String
    #   resp.events[0].event_time #=> Time
    #   resp.events[0].event_source #=> String
    #   resp.events[0].username #=> String
    #   resp.events[0].resources #=> Array
    #   resp.events[0].resources[0].resource_type #=> String
    #   resp.events[0].resources[0].resource_name #=> String
    #   resp.events[0].cloud_trail_event #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/LookupEvents AWS API Documentation
    #
    # @overload lookup_events(params = {})
    # @param [Hash] params ({})
    def lookup_events(params = {}, options = {})
      req = build_request(:lookup_events, params)
      req.send_request(options)
    end

    # Configures an event selector for your trail. Use event selectors to
    # specify whether you want your trail to log management and/or data
    # events. When an event occurs in your account, CloudTrail evaluates the
    # event selectors in all trails. For each trail, if the event matches
    # any event selector, the trail processes and logs the event. If the
    # event doesn't match any event selector, the trail doesn't log the
    # event.
    #
    # Example
    #
    # 1.  You create an event selector for a trail and specify that you want
    #     write-only events.
    #
    # 2.  The EC2 `GetConsoleOutput` and `RunInstances` API operations occur
    #     in your account.
    #
    # 3.  CloudTrail evaluates whether the events match your event
    #     selectors.
    #
    # 4.  The `RunInstances` is a write-only event and it matches your event
    #     selector. The trail logs the event.
    #
    # 5.  The `GetConsoleOutput` is a read-only event but it doesn't match
    #     your event selector. The trail doesn't log the event.
    #
    # The `PutEventSelectors` operation must be called from the region in
    # which the trail was created; otherwise, an
    # `InvalidHomeRegionException` is thrown.
    #
    # You can configure up to five event selectors for each trail. For more
    # information, see [Logging Data and Management Events for Trails ][1]
    # in the *AWS CloudTrail User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html
    #
    # @option params [required, String] :trail_name
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
    #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
    #
    # @option params [required, Array<Types::EventSelector>] :event_selectors
    #   Specifies the settings for your event selectors. You can configure up
    #   to five event selectors for a trail.
    #
    # @return [Types::PutEventSelectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutEventSelectorsResponse#trail_arn #trail_arn} => String
    #   * {Types::PutEventSelectorsResponse#event_selectors #event_selectors} => Array&lt;Types::EventSelector&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_event_selectors({
    #     trail_name: "String", # required
    #     event_selectors: [ # required
    #       {
    #         read_write_type: "ReadOnly", # accepts ReadOnly, WriteOnly, All
    #         include_management_events: false,
    #         data_resources: [
    #           {
    #             type: "String",
    #             values: ["String"],
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.trail_arn #=> String
    #   resp.event_selectors #=> Array
    #   resp.event_selectors[0].read_write_type #=> String, one of "ReadOnly", "WriteOnly", "All"
    #   resp.event_selectors[0].include_management_events #=> Boolean
    #   resp.event_selectors[0].data_resources #=> Array
    #   resp.event_selectors[0].data_resources[0].type #=> String
    #   resp.event_selectors[0].data_resources[0].values #=> Array
    #   resp.event_selectors[0].data_resources[0].values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/PutEventSelectors AWS API Documentation
    #
    # @overload put_event_selectors(params = {})
    # @param [Hash] params ({})
    def put_event_selectors(params = {}, options = {})
      req = build_request(:put_event_selectors, params)
      req.send_request(options)
    end

    # Removes the specified tags from a trail.
    #
    # @option params [required, String] :resource_id
    #   Specifies the ARN of the trail from which tags should be removed. The
    #   format of a trail ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
    #
    # @option params [Array<Types::Tag>] :tags_list
    #   Specifies a list of tags to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags({
    #     resource_id: "String", # required
    #     tags_list: [
    #       {
    #         key: "String", # required
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/RemoveTags AWS API Documentation
    #
    # @overload remove_tags(params = {})
    # @param [Hash] params ({})
    def remove_tags(params = {}, options = {})
      req = build_request(:remove_tags, params)
      req.send_request(options)
    end

    # Starts the recording of AWS API calls and log file delivery for a
    # trail. For a trail that is enabled in all regions, this operation must
    # be called from the region in which the trail was created. This
    # operation cannot be called on the shadow trails (replicated trails in
    # other regions) of a trail that is enabled in all regions.
    #
    # @option params [required, String] :name
    #   Specifies the name or the CloudTrail ARN of the trail for which
    #   CloudTrail logs AWS API calls. The format of a trail ARN is:
    #
    #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_logging({
    #     name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StartLogging AWS API Documentation
    #
    # @overload start_logging(params = {})
    # @param [Hash] params ({})
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
    #
    # @option params [required, String] :name
    #   Specifies the name or the CloudTrail ARN of the trail for which
    #   CloudTrail will stop logging AWS API calls. The format of a trail ARN
    #   is:
    #
    #   `arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_logging({
    #     name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/StopLogging AWS API Documentation
    #
    # @overload stop_logging(params = {})
    # @param [Hash] params ({})
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
    #
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
    #
    # @option params [String] :s3_bucket_name
    #   Specifies the name of the Amazon S3 bucket designated for publishing
    #   log files. See [Amazon S3 Bucket Naming Requirements][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html
    #
    # @option params [String] :s3_key_prefix
    #   Specifies the Amazon S3 key prefix that comes after the name of the
    #   bucket you have designated for log file delivery. For more
    #   information, see [Finding Your CloudTrail Log Files][1]. The maximum
    #   length is 200 characters.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html
    #
    # @option params [String] :sns_topic_name
    #   Specifies the name of the Amazon SNS topic defined for notification of
    #   log file delivery. The maximum length is 256 characters.
    #
    # @option params [Boolean] :include_global_service_events
    #   Specifies whether the trail is publishing events from global services
    #   such as IAM to the log files.
    #
    # @option params [Boolean] :is_multi_region_trail
    #   Specifies whether the trail applies only to the current region or to
    #   all regions. The default is false. If the trail exists only in the
    #   current region and this value is set to true, shadow trails
    #   (replications of the trail) will be created in the other regions. If
    #   the trail exists in all regions and this value is set to false, the
    #   trail will remain in the region where it was created, and its shadow
    #   trails in other regions will be deleted.
    #
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
    #
    # @option params [String] :cloud_watch_logs_log_group_arn
    #   Specifies a log group name using an Amazon Resource Name (ARN), a
    #   unique identifier that represents the log group to which CloudTrail
    #   logs will be delivered. Not required unless you specify
    #   CloudWatchLogsRoleArn.
    #
    # @option params [String] :cloud_watch_logs_role_arn
    #   Specifies the role for the CloudWatch Logs endpoint to assume to write
    #   to a user's log group.
    #
    # @option params [String] :kms_key_id
    #   Specifies the KMS key ID to use to encrypt the logs delivered by
    #   CloudTrail. The value can be an alias name prefixed by "alias/", a
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
    #
    # @return [Types::UpdateTrailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTrailResponse#name #name} => String
    #   * {Types::UpdateTrailResponse#s3_bucket_name #s3_bucket_name} => String
    #   * {Types::UpdateTrailResponse#s3_key_prefix #s3_key_prefix} => String
    #   * {Types::UpdateTrailResponse#sns_topic_name #sns_topic_name} => String
    #   * {Types::UpdateTrailResponse#sns_topic_arn #sns_topic_arn} => String
    #   * {Types::UpdateTrailResponse#include_global_service_events #include_global_service_events} => Boolean
    #   * {Types::UpdateTrailResponse#is_multi_region_trail #is_multi_region_trail} => Boolean
    #   * {Types::UpdateTrailResponse#trail_arn #trail_arn} => String
    #   * {Types::UpdateTrailResponse#log_file_validation_enabled #log_file_validation_enabled} => Boolean
    #   * {Types::UpdateTrailResponse#cloud_watch_logs_log_group_arn #cloud_watch_logs_log_group_arn} => String
    #   * {Types::UpdateTrailResponse#cloud_watch_logs_role_arn #cloud_watch_logs_role_arn} => String
    #   * {Types::UpdateTrailResponse#kms_key_id #kms_key_id} => String
    #
    # @example Request syntax with placeholder values
    #
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
    #
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudtrail-2013-11-01/UpdateTrail AWS API Documentation
    #
    # @overload update_trail(params = {})
    # @param [Hash] params ({})
    def update_trail(params = {}, options = {})
      req = build_request(:update_trail, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-cloudtrail'
      context[:gem_version] = '1.3.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
