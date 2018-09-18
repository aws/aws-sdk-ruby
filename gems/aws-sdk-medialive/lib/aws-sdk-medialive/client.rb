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
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:medialive)

module Aws::MediaLive
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :medialive

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
    add_plugin(Aws::Plugins::Protocols::RestJson)

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

    # Update a channel schedule
    #
    # @option params [required, String] :channel_id
    #
    # @option params [Types::BatchScheduleActionCreateRequest] :creates
    #   Schedule actions to create in the schedule.
    #
    # @option params [Types::BatchScheduleActionDeleteRequest] :deletes
    #   Schedule actions to delete from the schedule.
    #
    # @return [Types::BatchUpdateScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateScheduleResponse#creates #creates} => Types::BatchScheduleActionCreateResult
    #   * {Types::BatchUpdateScheduleResponse#deletes #deletes} => Types::BatchScheduleActionDeleteResult
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_schedule({
    #     channel_id: "__string", # required
    #     creates: {
    #       schedule_actions: [ # required
    #         {
    #           action_name: "__string", # required
    #           schedule_action_settings: { # required
    #             scte_35_return_to_network_settings: {
    #               splice_event_id: 1, # required
    #             },
    #             scte_35_splice_insert_settings: {
    #               duration: 1,
    #               splice_event_id: 1, # required
    #             },
    #             scte_35_time_signal_settings: {
    #               scte_35_descriptors: [ # required
    #                 {
    #                   scte_35_descriptor_settings: { # required
    #                     segmentation_descriptor_scte_35_descriptor_settings: { # required
    #                       delivery_restrictions: {
    #                         archive_allowed_flag: "ARCHIVE_NOT_ALLOWED", # required, accepts ARCHIVE_NOT_ALLOWED, ARCHIVE_ALLOWED
    #                         device_restrictions: "NONE", # required, accepts NONE, RESTRICT_GROUP0, RESTRICT_GROUP1, RESTRICT_GROUP2
    #                         no_regional_blackout_flag: "REGIONAL_BLACKOUT", # required, accepts REGIONAL_BLACKOUT, NO_REGIONAL_BLACKOUT
    #                         web_delivery_allowed_flag: "WEB_DELIVERY_NOT_ALLOWED", # required, accepts WEB_DELIVERY_NOT_ALLOWED, WEB_DELIVERY_ALLOWED
    #                       },
    #                       segment_num: 1,
    #                       segmentation_cancel_indicator: "SEGMENTATION_EVENT_NOT_CANCELED", # required, accepts SEGMENTATION_EVENT_NOT_CANCELED, SEGMENTATION_EVENT_CANCELED
    #                       segmentation_duration: 1,
    #                       segmentation_event_id: 1, # required
    #                       segmentation_type_id: 1,
    #                       segmentation_upid: "__string",
    #                       segmentation_upid_type: 1,
    #                       segments_expected: 1,
    #                       sub_segment_num: 1,
    #                       sub_segments_expected: 1,
    #                     },
    #                   },
    #                 },
    #               ],
    #             },
    #             static_image_activate_settings: {
    #               duration: 1,
    #               fade_in: 1,
    #               fade_out: 1,
    #               height: 1,
    #               image: { # required
    #                 password_param: "__string",
    #                 uri: "__string", # required
    #                 username: "__string",
    #               },
    #               image_x: 1,
    #               image_y: 1,
    #               layer: 1,
    #               opacity: 1,
    #               width: 1,
    #             },
    #             static_image_deactivate_settings: {
    #               fade_out: 1,
    #               layer: 1,
    #             },
    #           },
    #           schedule_action_start_settings: { # required
    #             fixed_mode_schedule_action_start_settings: {
    #               time: "__string",
    #             },
    #           },
    #         },
    #       ],
    #     },
    #     deletes: {
    #       action_names: ["__string"], # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.creates.schedule_actions #=> Array
    #   resp.creates.schedule_actions[0].action_name #=> String
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_return_to_network_settings.splice_event_id #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_splice_insert_settings.duration #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_splice_insert_settings.splice_event_id #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors #=> Array
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.archive_allowed_flag #=> String, one of "ARCHIVE_NOT_ALLOWED", "ARCHIVE_ALLOWED"
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.device_restrictions #=> String, one of "NONE", "RESTRICT_GROUP0", "RESTRICT_GROUP1", "RESTRICT_GROUP2"
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.no_regional_blackout_flag #=> String, one of "REGIONAL_BLACKOUT", "NO_REGIONAL_BLACKOUT"
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.web_delivery_allowed_flag #=> String, one of "WEB_DELIVERY_NOT_ALLOWED", "WEB_DELIVERY_ALLOWED"
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segment_num #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_cancel_indicator #=> String, one of "SEGMENTATION_EVENT_NOT_CANCELED", "SEGMENTATION_EVENT_CANCELED"
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_duration #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_event_id #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_type_id #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_upid #=> String
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_upid_type #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segments_expected #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.sub_segment_num #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.sub_segments_expected #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.duration #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.fade_in #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.fade_out #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.height #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image.password_param #=> String
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image.uri #=> String
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image.username #=> String
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image_x #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image_y #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.layer #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.opacity #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_activate_settings.width #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_deactivate_settings.fade_out #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_settings.static_image_deactivate_settings.layer #=> Integer
    #   resp.creates.schedule_actions[0].schedule_action_start_settings.fixed_mode_schedule_action_start_settings.time #=> String
    #   resp.deletes.schedule_actions #=> Array
    #   resp.deletes.schedule_actions[0].action_name #=> String
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_return_to_network_settings.splice_event_id #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_splice_insert_settings.duration #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_splice_insert_settings.splice_event_id #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors #=> Array
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.archive_allowed_flag #=> String, one of "ARCHIVE_NOT_ALLOWED", "ARCHIVE_ALLOWED"
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.device_restrictions #=> String, one of "NONE", "RESTRICT_GROUP0", "RESTRICT_GROUP1", "RESTRICT_GROUP2"
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.no_regional_blackout_flag #=> String, one of "REGIONAL_BLACKOUT", "NO_REGIONAL_BLACKOUT"
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.web_delivery_allowed_flag #=> String, one of "WEB_DELIVERY_NOT_ALLOWED", "WEB_DELIVERY_ALLOWED"
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segment_num #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_cancel_indicator #=> String, one of "SEGMENTATION_EVENT_NOT_CANCELED", "SEGMENTATION_EVENT_CANCELED"
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_duration #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_event_id #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_type_id #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_upid #=> String
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_upid_type #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segments_expected #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.sub_segment_num #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.sub_segments_expected #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.duration #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.fade_in #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.fade_out #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.height #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image.password_param #=> String
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image.uri #=> String
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image.username #=> String
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image_x #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image_y #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.layer #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.opacity #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_activate_settings.width #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_deactivate_settings.fade_out #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_settings.static_image_deactivate_settings.layer #=> Integer
    #   resp.deletes.schedule_actions[0].schedule_action_start_settings.fixed_mode_schedule_action_start_settings.time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/BatchUpdateSchedule AWS API Documentation
    #
    # @overload batch_update_schedule(params = {})
    # @param [Hash] params ({})
    def batch_update_schedule(params = {}, options = {})
      req = build_request(:batch_update_schedule, params)
      req.send_request(options)
    end

    # Creates a new channel
    #
    # @option params [Array<Types::OutputDestination>] :destinations
    #
    # @option params [Types::EncoderSettings] :encoder_settings
    #
    # @option params [Array<Types::InputAttachment>] :input_attachments
    #
    # @option params [Types::InputSpecification] :input_specification
    #
    # @option params [String] :log_level
    #
    # @option params [String] :name
    #
    # @option params [String] :request_id
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :reserved
    #
    # @option params [String] :role_arn
    #
    # @return [Types::CreateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelResponse#channel #channel} => Types::Channel
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel({
    #     destinations: [
    #       {
    #         id: "__string",
    #         settings: [
    #           {
    #             password_param: "__string",
    #             stream_name: "__string",
    #             url: "__string",
    #             username: "__string",
    #           },
    #         ],
    #       },
    #     ],
    #     encoder_settings: {
    #       audio_descriptions: [ # required
    #         {
    #           audio_normalization_settings: {
    #             algorithm: "ITU_1770_1", # accepts ITU_1770_1, ITU_1770_2
    #             algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO
    #             target_lkfs: 1.0,
    #           },
    #           audio_selector_name: "__string", # required
    #           audio_type: "CLEAN_EFFECTS", # accepts CLEAN_EFFECTS, HEARING_IMPAIRED, UNDEFINED, VISUAL_IMPAIRED_COMMENTARY
    #           audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #           codec_settings: {
    #             aac_settings: {
    #               bitrate: 1.0,
    #               coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #               input_type: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #               profile: "HEV1", # accepts HEV1, HEV2, LC
    #               rate_control_mode: "CBR", # accepts CBR, VBR
    #               raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #               sample_rate: 1.0,
    #               spec: "MPEG2", # accepts MPEG2, MPEG4
    #               vbr_quality: "HIGH", # accepts HIGH, LOW, MEDIUM_HIGH, MEDIUM_LOW
    #             },
    #             ac_3_settings: {
    #               bitrate: 1.0,
    #               bitstream_mode: "COMMENTARY", # accepts COMMENTARY, COMPLETE_MAIN, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #               dialnorm: 1,
    #               drc_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #               lfe_filter: "DISABLED", # accepts DISABLED, ENABLED
    #               metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #             },
    #             eac_3_settings: {
    #               attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #               bitrate: 1.0,
    #               bitstream_mode: "COMMENTARY", # accepts COMMENTARY, COMPLETE_MAIN, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #               dc_filter: "DISABLED", # accepts DISABLED, ENABLED
    #               dialnorm: 1,
    #               drc_line: "FILM_LIGHT", # accepts FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH
    #               drc_rf: "FILM_LIGHT", # accepts FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH
    #               lfe_control: "LFE", # accepts LFE, NO_LFE
    #               lfe_filter: "DISABLED", # accepts DISABLED, ENABLED
    #               lo_ro_center_mix_level: 1.0,
    #               lo_ro_surround_mix_level: 1.0,
    #               lt_rt_center_mix_level: 1.0,
    #               lt_rt_surround_mix_level: 1.0,
    #               metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #               passthrough_control: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, WHEN_POSSIBLE
    #               phase_control: "NO_SHIFT", # accepts NO_SHIFT, SHIFT_90_DEGREES
    #               stereo_downmix: "DPL2", # accepts DPL2, LO_RO, LT_RT, NOT_INDICATED
    #               surround_ex_mode: "DISABLED", # accepts DISABLED, ENABLED, NOT_INDICATED
    #               surround_mode: "DISABLED", # accepts DISABLED, ENABLED, NOT_INDICATED
    #             },
    #             mp_2_settings: {
    #               bitrate: 1.0,
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0
    #               sample_rate: 1.0,
    #             },
    #             pass_through_settings: {
    #             },
    #           },
    #           language_code: "__stringMin3Max3",
    #           language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #           name: "__string", # required
    #           remix_settings: {
    #             channel_mappings: [ # required
    #               {
    #                 input_channel_levels: [ # required
    #                   {
    #                     gain: 1, # required
    #                     input_channel: 1, # required
    #                   },
    #                 ],
    #                 output_channel: 1, # required
    #               },
    #             ],
    #             channels_in: 1,
    #             channels_out: 1,
    #           },
    #           stream_name: "__string",
    #         },
    #       ],
    #       avail_blanking: {
    #         avail_blanking_image: {
    #           password_param: "__string",
    #           uri: "__string", # required
    #           username: "__string",
    #         },
    #         state: "DISABLED", # accepts DISABLED, ENABLED
    #       },
    #       avail_configuration: {
    #         avail_settings: {
    #           scte_35_splice_insert: {
    #             ad_avail_offset: 1,
    #             no_regional_blackout_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #             web_delivery_allowed_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #           },
    #           scte_35_time_signal_apos: {
    #             ad_avail_offset: 1,
    #             no_regional_blackout_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #             web_delivery_allowed_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #           },
    #         },
    #       },
    #       blackout_slate: {
    #         blackout_slate_image: {
    #           password_param: "__string",
    #           uri: "__string", # required
    #           username: "__string",
    #         },
    #         network_end_blackout: "DISABLED", # accepts DISABLED, ENABLED
    #         network_end_blackout_image: {
    #           password_param: "__string",
    #           uri: "__string", # required
    #           username: "__string",
    #         },
    #         network_id: "__stringMin34Max34",
    #         state: "DISABLED", # accepts DISABLED, ENABLED
    #       },
    #       caption_descriptions: [
    #         {
    #           caption_selector_name: "__string", # required
    #           destination_settings: {
    #             arib_destination_settings: {
    #             },
    #             burn_in_destination_settings: {
    #               alignment: "CENTERED", # accepts CENTERED, LEFT, SMART
    #               background_color: "BLACK", # accepts BLACK, NONE, WHITE
    #               background_opacity: 1,
    #               font: {
    #                 password_param: "__string",
    #                 uri: "__string", # required
    #                 username: "__string",
    #               },
    #               font_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #               font_opacity: 1,
    #               font_resolution: 1,
    #               font_size: "__string",
    #               outline_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #               outline_size: 1,
    #               shadow_color: "BLACK", # accepts BLACK, NONE, WHITE
    #               shadow_opacity: 1,
    #               shadow_x_offset: 1,
    #               shadow_y_offset: 1,
    #               teletext_grid_control: "FIXED", # accepts FIXED, SCALED
    #               x_position: 1,
    #               y_position: 1,
    #             },
    #             dvb_sub_destination_settings: {
    #               alignment: "CENTERED", # accepts CENTERED, LEFT, SMART
    #               background_color: "BLACK", # accepts BLACK, NONE, WHITE
    #               background_opacity: 1,
    #               font: {
    #                 password_param: "__string",
    #                 uri: "__string", # required
    #                 username: "__string",
    #               },
    #               font_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #               font_opacity: 1,
    #               font_resolution: 1,
    #               font_size: "__string",
    #               outline_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #               outline_size: 1,
    #               shadow_color: "BLACK", # accepts BLACK, NONE, WHITE
    #               shadow_opacity: 1,
    #               shadow_x_offset: 1,
    #               shadow_y_offset: 1,
    #               teletext_grid_control: "FIXED", # accepts FIXED, SCALED
    #               x_position: 1,
    #               y_position: 1,
    #             },
    #             embedded_destination_settings: {
    #             },
    #             embedded_plus_scte_20_destination_settings: {
    #             },
    #             rtmp_caption_info_destination_settings: {
    #             },
    #             scte_20_plus_embedded_destination_settings: {
    #             },
    #             scte_27_destination_settings: {
    #             },
    #             smpte_tt_destination_settings: {
    #             },
    #             teletext_destination_settings: {
    #             },
    #             ttml_destination_settings: {
    #               style_control: "PASSTHROUGH", # accepts PASSTHROUGH, USE_CONFIGURED
    #             },
    #             webvtt_destination_settings: {
    #             },
    #           },
    #           language_code: "__string",
    #           language_description: "__string",
    #           name: "__string", # required
    #         },
    #       ],
    #       global_configuration: {
    #         initial_audio_gain: 1,
    #         input_end_action: "NONE", # accepts NONE, SWITCH_AND_LOOP_INPUTS
    #         input_loss_behavior: {
    #           black_frame_msec: 1,
    #           input_loss_image_color: "__stringMin6Max6",
    #           input_loss_image_slate: {
    #             password_param: "__string",
    #             uri: "__string", # required
    #             username: "__string",
    #           },
    #           input_loss_image_type: "COLOR", # accepts COLOR, SLATE
    #           repeat_frame_msec: 1,
    #         },
    #         output_timing_source: "INPUT_CLOCK", # accepts INPUT_CLOCK, SYSTEM_CLOCK
    #         support_low_framerate_inputs: "DISABLED", # accepts DISABLED, ENABLED
    #       },
    #       output_groups: [ # required
    #         {
    #           name: "__stringMax32",
    #           output_group_settings: { # required
    #             archive_group_settings: {
    #               destination: { # required
    #                 destination_ref_id: "__string",
    #               },
    #               rollover_interval: 1,
    #             },
    #             hls_group_settings: {
    #               ad_markers: ["ADOBE"], # accepts ADOBE, ELEMENTAL, ELEMENTAL_SCTE35
    #               base_url_content: "__string",
    #               base_url_manifest: "__string",
    #               caption_language_mappings: [
    #                 {
    #                   caption_channel: 1, # required
    #                   language_code: "__stringMin3Max3", # required
    #                   language_description: "__stringMin1", # required
    #                 },
    #               ],
    #               caption_language_setting: "INSERT", # accepts INSERT, NONE, OMIT
    #               client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #               codec_specification: "RFC_4281", # accepts RFC_4281, RFC_6381
    #               constant_iv: "__stringMin32Max32",
    #               destination: { # required
    #                 destination_ref_id: "__string",
    #               },
    #               directory_structure: "SINGLE_DIRECTORY", # accepts SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM
    #               encryption_type: "AES128", # accepts AES128, SAMPLE_AES
    #               hls_cdn_settings: {
    #                 hls_akamai_settings: {
    #                   connection_retry_interval: 1,
    #                   filecache_duration: 1,
    #                   http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #                   num_retries: 1,
    #                   restart_delay: 1,
    #                   salt: "__string",
    #                   token: "__string",
    #                 },
    #                 hls_basic_put_settings: {
    #                   connection_retry_interval: 1,
    #                   filecache_duration: 1,
    #                   num_retries: 1,
    #                   restart_delay: 1,
    #                 },
    #                 hls_media_store_settings: {
    #                   connection_retry_interval: 1,
    #                   filecache_duration: 1,
    #                   media_store_storage_class: "TEMPORAL", # accepts TEMPORAL
    #                   num_retries: 1,
    #                   restart_delay: 1,
    #                 },
    #                 hls_webdav_settings: {
    #                   connection_retry_interval: 1,
    #                   filecache_duration: 1,
    #                   http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #                   num_retries: 1,
    #                   restart_delay: 1,
    #                 },
    #               },
    #               index_n_segments: 1,
    #               input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #               iv_in_manifest: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #               iv_source: "EXPLICIT", # accepts EXPLICIT, FOLLOWS_SEGMENT_NUMBER
    #               keep_segments: 1,
    #               key_format: "__string",
    #               key_format_versions: "__string",
    #               key_provider_settings: {
    #                 static_key_settings: {
    #                   key_provider_server: { # required
    #                     password_param: "__string",
    #                     uri: "__string", # required
    #                     username: "__string",
    #                   },
    #                   static_key_value: "__stringMin32Max32", # required
    #                 },
    #               },
    #               manifest_compression: "GZIP", # accepts GZIP, NONE
    #               manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #               min_segment_length: 1,
    #               mode: "LIVE", # accepts LIVE, VOD
    #               output_selection: "MANIFESTS_AND_SEGMENTS", # accepts MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY
    #               program_date_time: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #               program_date_time_period: 1,
    #               segment_length: 1,
    #               segmentation_mode: "USE_INPUT_SEGMENTATION", # accepts USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION
    #               segments_per_subdirectory: 1,
    #               stream_inf_resolution: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #               timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #               timed_metadata_id_3_period: 1,
    #               timestamp_delta_milliseconds: 1,
    #               ts_file_mode: "SEGMENTED_FILES", # accepts SEGMENTED_FILES, SINGLE_FILE
    #             },
    #             ms_smooth_group_settings: {
    #               acquisition_point_id: "__string",
    #               audio_only_timecode_control: "PASSTHROUGH", # accepts PASSTHROUGH, USE_CONFIGURED_CLOCK
    #               certificate_mode: "SELF_SIGNED", # accepts SELF_SIGNED, VERIFY_AUTHENTICITY
    #               connection_retry_interval: 1,
    #               destination: { # required
    #                 destination_ref_id: "__string",
    #               },
    #               event_id: "__string",
    #               event_id_mode: "NO_EVENT_ID", # accepts NO_EVENT_ID, USE_CONFIGURED, USE_TIMESTAMP
    #               event_stop_behavior: "NONE", # accepts NONE, SEND_EOS
    #               filecache_duration: 1,
    #               fragment_length: 1,
    #               input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #               num_retries: 1,
    #               restart_delay: 1,
    #               segmentation_mode: "USE_INPUT_SEGMENTATION", # accepts USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION
    #               send_delay_ms: 1,
    #               sparse_track_type: "NONE", # accepts NONE, SCTE_35
    #               stream_manifest_behavior: "DO_NOT_SEND", # accepts DO_NOT_SEND, SEND
    #               timestamp_offset: "__string",
    #               timestamp_offset_mode: "USE_CONFIGURED_OFFSET", # accepts USE_CONFIGURED_OFFSET, USE_EVENT_START_DATE
    #             },
    #             rtmp_group_settings: {
    #               authentication_scheme: "AKAMAI", # accepts AKAMAI, COMMON
    #               cache_full_behavior: "DISCONNECT_IMMEDIATELY", # accepts DISCONNECT_IMMEDIATELY, WAIT_FOR_SERVER
    #               cache_length: 1,
    #               caption_data: "ALL", # accepts ALL, FIELD1_608, FIELD1_AND_FIELD2_608
    #               restart_delay: 1,
    #             },
    #             udp_group_settings: {
    #               input_loss_action: "DROP_PROGRAM", # accepts DROP_PROGRAM, DROP_TS, EMIT_PROGRAM
    #               timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #               timed_metadata_id_3_period: 1,
    #             },
    #           },
    #           outputs: [ # required
    #             {
    #               audio_description_names: ["__string"],
    #               caption_description_names: ["__string"],
    #               output_name: "__stringMin1Max255",
    #               output_settings: { # required
    #                 archive_output_settings: {
    #                   container_settings: { # required
    #                     m2ts_settings: {
    #                       absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #                       arib: "DISABLED", # accepts DISABLED, ENABLED
    #                       arib_captions_pid: "__string",
    #                       arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #                       audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #                       audio_frames_per_pes: 1,
    #                       audio_pids: "__string",
    #                       audio_stream_type: "ATSC", # accepts ATSC, DVB
    #                       bitrate: 1,
    #                       buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                       cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #                       dvb_nit_settings: {
    #                         network_id: 1, # required
    #                         network_name: "__stringMin1Max256", # required
    #                         rep_interval: 1,
    #                       },
    #                       dvb_sdt_settings: {
    #                         output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                         rep_interval: 1,
    #                         service_name: "__stringMin1Max256",
    #                         service_provider_name: "__stringMin1Max256",
    #                       },
    #                       dvb_sub_pids: "__string",
    #                       dvb_tdt_settings: {
    #                         rep_interval: 1,
    #                       },
    #                       dvb_teletext_pid: "__string",
    #                       ebif: "NONE", # accepts NONE, PASSTHROUGH
    #                       ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                       ebp_lookahead_ms: 1,
    #                       ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                       ecm_pid: "__string",
    #                       es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                       etv_platform_pid: "__string",
    #                       etv_signal_pid: "__string",
    #                       fragment_time: 1.0,
    #                       klv: "NONE", # accepts NONE, PASSTHROUGH
    #                       klv_data_pids: "__string",
    #                       null_packet_bitrate: 1.0,
    #                       pat_interval: 1,
    #                       pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                       pcr_period: 1,
    #                       pcr_pid: "__string",
    #                       pmt_interval: 1,
    #                       pmt_pid: "__string",
    #                       program_num: 1,
    #                       rate_mode: "CBR", # accepts CBR, VBR
    #                       scte_27_pids: "__string",
    #                       scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #                       scte_35_pid: "__string",
    #                       segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #                       segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                       segmentation_time: 1.0,
    #                       timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                       timed_metadata_pid: "__string",
    #                       transport_stream_id: 1,
    #                       video_pid: "__string",
    #                     },
    #                   },
    #                   extension: "__string",
    #                   name_modifier: "__string",
    #                 },
    #                 hls_output_settings: {
    #                   hls_settings: { # required
    #                     audio_only_hls_settings: {
    #                       audio_group_id: "__string",
    #                       audio_only_image: {
    #                         password_param: "__string",
    #                         uri: "__string", # required
    #                         username: "__string",
    #                       },
    #                       audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT", # accepts ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #                     },
    #                     standard_hls_settings: {
    #                       audio_rendition_sets: "__string",
    #                       m3u_8_settings: { # required
    #                         audio_frames_per_pes: 1,
    #                         audio_pids: "__string",
    #                         ecm_pid: "__string",
    #                         pat_interval: 1,
    #                         pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                         pcr_period: 1,
    #                         pcr_pid: "__string",
    #                         pmt_interval: 1,
    #                         pmt_pid: "__string",
    #                         program_num: 1,
    #                         scte_35_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                         scte_35_pid: "__string",
    #                         timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                         timed_metadata_pid: "__string",
    #                         transport_stream_id: 1,
    #                         video_pid: "__string",
    #                       },
    #                     },
    #                   },
    #                   name_modifier: "__stringMin1",
    #                   segment_modifier: "__string",
    #                 },
    #                 ms_smooth_output_settings: {
    #                   name_modifier: "__string",
    #                 },
    #                 rtmp_output_settings: {
    #                   certificate_mode: "SELF_SIGNED", # accepts SELF_SIGNED, VERIFY_AUTHENTICITY
    #                   connection_retry_interval: 1,
    #                   destination: { # required
    #                     destination_ref_id: "__string",
    #                   },
    #                   num_retries: 1,
    #                 },
    #                 udp_output_settings: {
    #                   buffer_msec: 1,
    #                   container_settings: { # required
    #                     m2ts_settings: {
    #                       absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #                       arib: "DISABLED", # accepts DISABLED, ENABLED
    #                       arib_captions_pid: "__string",
    #                       arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #                       audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #                       audio_frames_per_pes: 1,
    #                       audio_pids: "__string",
    #                       audio_stream_type: "ATSC", # accepts ATSC, DVB
    #                       bitrate: 1,
    #                       buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                       cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #                       dvb_nit_settings: {
    #                         network_id: 1, # required
    #                         network_name: "__stringMin1Max256", # required
    #                         rep_interval: 1,
    #                       },
    #                       dvb_sdt_settings: {
    #                         output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                         rep_interval: 1,
    #                         service_name: "__stringMin1Max256",
    #                         service_provider_name: "__stringMin1Max256",
    #                       },
    #                       dvb_sub_pids: "__string",
    #                       dvb_tdt_settings: {
    #                         rep_interval: 1,
    #                       },
    #                       dvb_teletext_pid: "__string",
    #                       ebif: "NONE", # accepts NONE, PASSTHROUGH
    #                       ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                       ebp_lookahead_ms: 1,
    #                       ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                       ecm_pid: "__string",
    #                       es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                       etv_platform_pid: "__string",
    #                       etv_signal_pid: "__string",
    #                       fragment_time: 1.0,
    #                       klv: "NONE", # accepts NONE, PASSTHROUGH
    #                       klv_data_pids: "__string",
    #                       null_packet_bitrate: 1.0,
    #                       pat_interval: 1,
    #                       pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                       pcr_period: 1,
    #                       pcr_pid: "__string",
    #                       pmt_interval: 1,
    #                       pmt_pid: "__string",
    #                       program_num: 1,
    #                       rate_mode: "CBR", # accepts CBR, VBR
    #                       scte_27_pids: "__string",
    #                       scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #                       scte_35_pid: "__string",
    #                       segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #                       segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                       segmentation_time: 1.0,
    #                       timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                       timed_metadata_pid: "__string",
    #                       transport_stream_id: 1,
    #                       video_pid: "__string",
    #                     },
    #                   },
    #                   destination: { # required
    #                     destination_ref_id: "__string",
    #                   },
    #                   fec_output_settings: {
    #                     column_depth: 1,
    #                     include_fec: "COLUMN", # accepts COLUMN, COLUMN_AND_ROW
    #                     row_length: 1,
    #                   },
    #                 },
    #               },
    #               video_description_name: "__string",
    #             },
    #           ],
    #         },
    #       ],
    #       timecode_config: { # required
    #         source: "EMBEDDED", # required, accepts EMBEDDED, SYSTEMCLOCK, ZEROBASED
    #         sync_threshold: 1,
    #       },
    #       video_descriptions: [ # required
    #         {
    #           codec_settings: {
    #             h264_settings: {
    #               adaptive_quantization: "HIGH", # accepts HIGH, HIGHER, LOW, MAX, MEDIUM, OFF
    #               afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #               bitrate: 1,
    #               buf_fill_pct: 1,
    #               buf_size: 1,
    #               color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #               entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #               fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #               flicker_aq: "DISABLED", # accepts DISABLED, ENABLED
    #               framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               framerate_denominator: 1,
    #               framerate_numerator: 1,
    #               gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #               gop_closed_cadence: 1,
    #               gop_num_b_frames: 1,
    #               gop_size: 1.0,
    #               gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #               level: "H264_LEVEL_1", # accepts H264_LEVEL_1, H264_LEVEL_1_1, H264_LEVEL_1_2, H264_LEVEL_1_3, H264_LEVEL_2, H264_LEVEL_2_1, H264_LEVEL_2_2, H264_LEVEL_3, H264_LEVEL_3_1, H264_LEVEL_3_2, H264_LEVEL_4, H264_LEVEL_4_1, H264_LEVEL_4_2, H264_LEVEL_5, H264_LEVEL_5_1, H264_LEVEL_5_2, H264_LEVEL_AUTO
    #               look_ahead_rate_control: "HIGH", # accepts HIGH, LOW, MEDIUM
    #               max_bitrate: 1,
    #               min_i_interval: 1,
    #               num_ref_frames: 1,
    #               par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               par_denominator: 1,
    #               par_numerator: 1,
    #               profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #               rate_control_mode: "CBR", # accepts CBR, VBR
    #               scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #               scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #               slices: 1,
    #               softness: 1,
    #               spatial_aq: "DISABLED", # accepts DISABLED, ENABLED
    #               syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #               temporal_aq: "DISABLED", # accepts DISABLED, ENABLED
    #               timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #             },
    #           },
    #           height: 1,
    #           name: "__string", # required
    #           respond_to_afd: "NONE", # accepts NONE, PASSTHROUGH, RESPOND
    #           scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #           sharpness: 1,
    #           width: 1,
    #         },
    #       ],
    #     },
    #     input_attachments: [
    #       {
    #         input_id: "__string",
    #         input_settings: {
    #           audio_selectors: [
    #             {
    #               name: "__string", # required
    #               selector_settings: {
    #                 audio_language_selection: {
    #                   language_code: "__string", # required
    #                   language_selection_policy: "LOOSE", # accepts LOOSE, STRICT
    #                 },
    #                 audio_pid_selection: {
    #                   pid: 1, # required
    #                 },
    #               },
    #             },
    #           ],
    #           caption_selectors: [
    #             {
    #               language_code: "__string",
    #               name: "__string", # required
    #               selector_settings: {
    #                 arib_source_settings: {
    #                 },
    #                 dvb_sub_source_settings: {
    #                   pid: 1,
    #                 },
    #                 embedded_source_settings: {
    #                   convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #                   scte_20_detection: "AUTO", # accepts AUTO, OFF
    #                   source_608_channel_number: 1,
    #                   source_608_track_number: 1,
    #                 },
    #                 scte_20_source_settings: {
    #                   convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #                   source_608_channel_number: 1,
    #                 },
    #                 scte_27_source_settings: {
    #                   pid: 1,
    #                 },
    #                 teletext_source_settings: {
    #                   page_number: "__string",
    #                 },
    #               },
    #             },
    #           ],
    #           deblock_filter: "DISABLED", # accepts DISABLED, ENABLED
    #           denoise_filter: "DISABLED", # accepts DISABLED, ENABLED
    #           filter_strength: 1,
    #           input_filter: "AUTO", # accepts AUTO, DISABLED, FORCED
    #           network_input_settings: {
    #             hls_input_settings: {
    #               bandwidth: 1,
    #               buffer_segments: 1,
    #               retries: 1,
    #               retry_interval: 1,
    #             },
    #             server_validation: "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", # accepts CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME, CHECK_CRYPTOGRAPHY_ONLY
    #           },
    #           source_end_behavior: "CONTINUE", # accepts CONTINUE, LOOP
    #           video_selector: {
    #             color_space: "FOLLOW", # accepts FOLLOW, REC_601, REC_709
    #             color_space_usage: "FALLBACK", # accepts FALLBACK, FORCE
    #             selector_settings: {
    #               video_selector_pid: {
    #                 pid: 1,
    #               },
    #               video_selector_program_id: {
    #                 program_id: 1,
    #               },
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     input_specification: {
    #       codec: "MPEG2", # accepts MPEG2, AVC, HEVC
    #       maximum_bitrate: "MAX_10_MBPS", # accepts MAX_10_MBPS, MAX_20_MBPS, MAX_50_MBPS
    #       resolution: "SD", # accepts SD, HD, UHD
    #     },
    #     log_level: "ERROR", # accepts ERROR, WARNING, INFO, DEBUG, DISABLED
    #     name: "__string",
    #     request_id: "__string",
    #     reserved: "__string",
    #     role_arn: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel.arn #=> String
    #   resp.channel.destinations #=> Array
    #   resp.channel.destinations[0].id #=> String
    #   resp.channel.destinations[0].settings #=> Array
    #   resp.channel.destinations[0].settings[0].password_param #=> String
    #   resp.channel.destinations[0].settings[0].stream_name #=> String
    #   resp.channel.destinations[0].settings[0].url #=> String
    #   resp.channel.destinations[0].settings[0].username #=> String
    #   resp.channel.egress_endpoints #=> Array
    #   resp.channel.egress_endpoints[0].source_ip #=> String
    #   resp.channel.encoder_settings.audio_descriptions #=> Array
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_1770_1", "ITU_1770_2"
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO"
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_selector_name #=> String
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_type #=> String, one of "CLEAN_EFFECTS", "HEARING_IMPAIRED", "UNDEFINED", "VISUAL_IMPAIRED_COMMENTARY"
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.input_type #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.profile #=> String, one of "HEV1", "HEV2", "LC"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.spec #=> String, one of "MPEG2", "MPEG4"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "HIGH", "LOW", "MEDIUM_HIGH", "MEDIUM_LOW"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.drc_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_line #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_rf #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "NO_PASSTHROUGH", "WHEN_POSSIBLE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "NO_SHIFT", "SHIFT_90_DEGREES"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "DPL2", "LO_RO", "LT_RT", "NOT_INDICATED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].language_code #=> String
    #   resp.channel.encoder_settings.audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.audio_descriptions[0].name #=> String
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings #=> Array
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels #=> Array
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].gain #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].input_channel #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].output_channel #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].stream_name #=> String
    #   resp.channel.encoder_settings.avail_blanking.avail_blanking_image.password_param #=> String
    #   resp.channel.encoder_settings.avail_blanking.avail_blanking_image.uri #=> String
    #   resp.channel.encoder_settings.avail_blanking.avail_blanking_image.username #=> String
    #   resp.channel.encoder_settings.avail_blanking.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.ad_avail_offset #=> Integer
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.ad_avail_offset #=> Integer
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.channel.encoder_settings.blackout_slate.blackout_slate_image.password_param #=> String
    #   resp.channel.encoder_settings.blackout_slate.blackout_slate_image.uri #=> String
    #   resp.channel.encoder_settings.blackout_slate.blackout_slate_image.username #=> String
    #   resp.channel.encoder_settings.blackout_slate.network_end_blackout #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.blackout_slate.network_end_blackout_image.password_param #=> String
    #   resp.channel.encoder_settings.blackout_slate.network_end_blackout_image.uri #=> String
    #   resp.channel.encoder_settings.blackout_slate.network_end_blackout_image.username #=> String
    #   resp.channel.encoder_settings.blackout_slate.network_id #=> String
    #   resp.channel.encoder_settings.blackout_slate.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.caption_descriptions #=> Array
    #   resp.channel.encoder_settings.caption_descriptions[0].caption_selector_name #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.password_param #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.uri #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.username #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_resolution #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_size #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_size #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_x_offset #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_y_offset #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.x_position #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.y_position #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.password_param #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.uri #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.username #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.ttml_destination_settings.style_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.caption_descriptions[0].language_code #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].language_description #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].name #=> String
    #   resp.channel.encoder_settings.global_configuration.initial_audio_gain #=> Integer
    #   resp.channel.encoder_settings.global_configuration.input_end_action #=> String, one of "NONE", "SWITCH_AND_LOOP_INPUTS"
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.black_frame_msec #=> Integer
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_color #=> String
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.password_param #=> String
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.uri #=> String
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.username #=> String
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_type #=> String, one of "COLOR", "SLATE"
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.repeat_frame_msec #=> Integer
    #   resp.channel.encoder_settings.global_configuration.output_timing_source #=> String, one of "INPUT_CLOCK", "SYSTEM_CLOCK"
    #   resp.channel.encoder_settings.global_configuration.support_low_framerate_inputs #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups #=> Array
    #   resp.channel.encoder_settings.output_groups[0].name #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.rollover_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers #=> Array
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers[0] #=> String, one of "ADOBE", "ELEMENTAL", "ELEMENTAL_SCTE35"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_content #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_manifest #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings #=> Array
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].caption_channel #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_code #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_description #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_setting #=> String, one of "INSERT", "NONE", "OMIT"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.client_cache #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.codec_specification #=> String, one of "RFC_4281", "RFC_6381"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.constant_iv #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.directory_structure #=> String, one of "SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.encryption_type #=> String, one of "AES128", "SAMPLE_AES"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.salt #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.token #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.media_store_storage_class #=> String, one of "TEMPORAL"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.index_n_segments #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_in_manifest #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_source #=> String, one of "EXPLICIT", "FOLLOWS_SEGMENT_NUMBER"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.keep_segments #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format_versions #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.password_param #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.uri #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.username #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.static_key_value #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_compression #=> String, one of "GZIP", "NONE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_duration_format #=> String, one of "FLOATING_POINT", "INTEGER"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.min_segment_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.mode #=> String, one of "LIVE", "VOD"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.output_selection #=> String, one of "MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segment_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segments_per_subdirectory #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.stream_inf_resolution #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timestamp_delta_milliseconds #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ts_file_mode #=> String, one of "SEGMENTED_FILES", "SINGLE_FILE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.acquisition_point_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.audio_only_timecode_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED_CLOCK"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id_mode #=> String, one of "NO_EVENT_ID", "USE_CONFIGURED", "USE_TIMESTAMP"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_stop_behavior #=> String, one of "NONE", "SEND_EOS"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.fragment_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.send_delay_ms #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.sparse_track_type #=> String, one of "NONE", "SCTE_35"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.stream_manifest_behavior #=> String, one of "DO_NOT_SEND", "SEND"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset_mode #=> String, one of "USE_CONFIGURED_OFFSET", "USE_EVENT_START_DATE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.authentication_scheme #=> String, one of "AKAMAI", "COMMON"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_full_behavior #=> String, one of "DISCONNECT_IMMEDIATELY", "WAIT_FOR_SERVER"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.caption_data #=> String, one of "ALL", "FIELD1_608", "FIELD1_AND_FIELD2_608"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.input_loss_action #=> String, one of "DROP_PROGRAM", "DROP_TS", "EMIT_PROGRAM"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs #=> Array
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].audio_description_names #=> Array
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].audio_description_names[0] #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].caption_description_names #=> Array
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].caption_description_names[0] #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.extension #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.name_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_group_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.password_param #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.uri #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.username #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.audio_rendition_sets #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.ecm_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.program_num #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.video_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.name_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.segment_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.ms_smooth_output_settings.name_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.buffer_msec #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.column_depth #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.include_fec #=> String, one of "COLUMN", "COLUMN_AND_ROW"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.row_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].video_description_name #=> String
    #   resp.channel.encoder_settings.timecode_config.source #=> String, one of "EMBEDDED", "SYSTEMCLOCK", "ZEROBASED"
    #   resp.channel.encoder_settings.timecode_config.sync_threshold #=> Integer
    #   resp.channel.encoder_settings.video_descriptions #=> Array
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.adaptive_quantization #=> String, one of "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.bitrate #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_fill_pct #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_size #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.flicker_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_num_b_frames #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size #=> Float
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.level #=> String, one of "H264_LEVEL_1", "H264_LEVEL_1_1", "H264_LEVEL_1_2", "H264_LEVEL_1_3", "H264_LEVEL_2", "H264_LEVEL_2_1", "H264_LEVEL_2_2", "H264_LEVEL_3", "H264_LEVEL_3_1", "H264_LEVEL_3_2", "H264_LEVEL_4", "H264_LEVEL_4_1", "H264_LEVEL_4_2", "H264_LEVEL_5", "H264_LEVEL_5_1", "H264_LEVEL_5_2", "H264_LEVEL_AUTO"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.look_ahead_rate_control #=> String, one of "HIGH", "LOW", "MEDIUM"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.num_ref_frames #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.slices #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.softness #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.spatial_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.temporal_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.channel.encoder_settings.video_descriptions[0].height #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].name #=> String
    #   resp.channel.encoder_settings.video_descriptions[0].respond_to_afd #=> String, one of "NONE", "PASSTHROUGH", "RESPOND"
    #   resp.channel.encoder_settings.video_descriptions[0].scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.channel.encoder_settings.video_descriptions[0].sharpness #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].width #=> Integer
    #   resp.channel.id #=> String
    #   resp.channel.input_attachments #=> Array
    #   resp.channel.input_attachments[0].input_id #=> String
    #   resp.channel.input_attachments[0].input_settings.audio_selectors #=> Array
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].name #=> String
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_code #=> String
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_selection_policy #=> String, one of "LOOSE", "STRICT"
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_pid_selection.pid #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors #=> Array
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].language_code #=> String
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].name #=> String
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.scte_20_detection #=> String, one of "AUTO", "OFF"
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.source_608_channel_number #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_27_source_settings.pid #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.teletext_source_settings.page_number #=> String
    #   resp.channel.input_attachments[0].input_settings.deblock_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.input_attachments[0].input_settings.denoise_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.input_attachments[0].input_settings.filter_strength #=> Integer
    #   resp.channel.input_attachments[0].input_settings.input_filter #=> String, one of "AUTO", "DISABLED", "FORCED"
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.hls_input_settings.bandwidth #=> Integer
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.hls_input_settings.buffer_segments #=> Integer
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retries #=> Integer
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retry_interval #=> Integer
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.server_validation #=> String, one of "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", "CHECK_CRYPTOGRAPHY_ONLY"
    #   resp.channel.input_attachments[0].input_settings.source_end_behavior #=> String, one of "CONTINUE", "LOOP"
    #   resp.channel.input_attachments[0].input_settings.video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709"
    #   resp.channel.input_attachments[0].input_settings.video_selector.color_space_usage #=> String, one of "FALLBACK", "FORCE"
    #   resp.channel.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_pid.pid #=> Integer
    #   resp.channel.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_program_id.program_id #=> Integer
    #   resp.channel.input_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC"
    #   resp.channel.input_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.channel.input_specification.resolution #=> String, one of "SD", "HD", "UHD"
    #   resp.channel.log_level #=> String, one of "ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"
    #   resp.channel.name #=> String
    #   resp.channel.pipelines_running_count #=> Integer
    #   resp.channel.role_arn #=> String
    #   resp.channel.state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateChannel AWS API Documentation
    #
    # @overload create_channel(params = {})
    # @param [Hash] params ({})
    def create_channel(params = {}, options = {})
      req = build_request(:create_channel, params)
      req.send_request(options)
    end

    # Create an input
    #
    # @option params [Array<Types::InputDestinationRequest>] :destinations
    #
    # @option params [Array<String>] :input_security_groups
    #
    # @option params [String] :name
    #
    # @option params [String] :request_id
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::InputSourceRequest>] :sources
    #
    # @option params [String] :type
    #
    # @return [Types::CreateInputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInputResponse#input #input} => Types::Input
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_input({
    #     destinations: [
    #       {
    #         stream_name: "__string",
    #       },
    #     ],
    #     input_security_groups: ["__string"],
    #     name: "__string",
    #     request_id: "__string",
    #     sources: [
    #       {
    #         password_param: "__string",
    #         url: "__string",
    #         username: "__string",
    #       },
    #     ],
    #     type: "UDP_PUSH", # accepts UDP_PUSH, RTP_PUSH, RTMP_PUSH, RTMP_PULL, URL_PULL
    #   })
    #
    # @example Response structure
    #
    #   resp.input.arn #=> String
    #   resp.input.attached_channels #=> Array
    #   resp.input.attached_channels[0] #=> String
    #   resp.input.destinations #=> Array
    #   resp.input.destinations[0].ip #=> String
    #   resp.input.destinations[0].port #=> String
    #   resp.input.destinations[0].url #=> String
    #   resp.input.id #=> String
    #   resp.input.name #=> String
    #   resp.input.security_groups #=> Array
    #   resp.input.security_groups[0] #=> String
    #   resp.input.sources #=> Array
    #   resp.input.sources[0].password_param #=> String
    #   resp.input.sources[0].url #=> String
    #   resp.input.sources[0].username #=> String
    #   resp.input.state #=> String, one of "CREATING", "DETACHED", "ATTACHED", "DELETING", "DELETED"
    #   resp.input.type #=> String, one of "UDP_PUSH", "RTP_PUSH", "RTMP_PUSH", "RTMP_PULL", "URL_PULL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateInput AWS API Documentation
    #
    # @overload create_input(params = {})
    # @param [Hash] params ({})
    def create_input(params = {}, options = {})
      req = build_request(:create_input, params)
      req.send_request(options)
    end

    # Creates a Input Security Group
    #
    # @option params [Array<Types::InputWhitelistRuleCidr>] :whitelist_rules
    #
    # @return [Types::CreateInputSecurityGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInputSecurityGroupResponse#security_group #security_group} => Types::InputSecurityGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_input_security_group({
    #     whitelist_rules: [
    #       {
    #         cidr: "__string",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.security_group.arn #=> String
    #   resp.security_group.id #=> String
    #   resp.security_group.inputs #=> Array
    #   resp.security_group.inputs[0] #=> String
    #   resp.security_group.state #=> String, one of "IDLE", "IN_USE", "UPDATING", "DELETED"
    #   resp.security_group.whitelist_rules #=> Array
    #   resp.security_group.whitelist_rules[0].cidr #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/CreateInputSecurityGroup AWS API Documentation
    #
    # @overload create_input_security_group(params = {})
    # @param [Hash] params ({})
    def create_input_security_group(params = {}, options = {})
      req = build_request(:create_input_security_group, params)
      req.send_request(options)
    end

    # Starts deletion of channel. The associated outputs are also deleted.
    #
    # @option params [required, String] :channel_id
    #
    # @return [Types::DeleteChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteChannelResponse#arn #arn} => String
    #   * {Types::DeleteChannelResponse#destinations #destinations} => Array&lt;Types::OutputDestination&gt;
    #   * {Types::DeleteChannelResponse#egress_endpoints #egress_endpoints} => Array&lt;Types::ChannelEgressEndpoint&gt;
    #   * {Types::DeleteChannelResponse#encoder_settings #encoder_settings} => Types::EncoderSettings
    #   * {Types::DeleteChannelResponse#id #id} => String
    #   * {Types::DeleteChannelResponse#input_attachments #input_attachments} => Array&lt;Types::InputAttachment&gt;
    #   * {Types::DeleteChannelResponse#input_specification #input_specification} => Types::InputSpecification
    #   * {Types::DeleteChannelResponse#log_level #log_level} => String
    #   * {Types::DeleteChannelResponse#name #name} => String
    #   * {Types::DeleteChannelResponse#pipelines_running_count #pipelines_running_count} => Integer
    #   * {Types::DeleteChannelResponse#role_arn #role_arn} => String
    #   * {Types::DeleteChannelResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel({
    #     channel_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.destinations #=> Array
    #   resp.destinations[0].id #=> String
    #   resp.destinations[0].settings #=> Array
    #   resp.destinations[0].settings[0].password_param #=> String
    #   resp.destinations[0].settings[0].stream_name #=> String
    #   resp.destinations[0].settings[0].url #=> String
    #   resp.destinations[0].settings[0].username #=> String
    #   resp.egress_endpoints #=> Array
    #   resp.egress_endpoints[0].source_ip #=> String
    #   resp.encoder_settings.audio_descriptions #=> Array
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_1770_1", "ITU_1770_2"
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO"
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.encoder_settings.audio_descriptions[0].audio_selector_name #=> String
    #   resp.encoder_settings.audio_descriptions[0].audio_type #=> String, one of "CLEAN_EFFECTS", "HEARING_IMPAIRED", "UNDEFINED", "VISUAL_IMPAIRED_COMMENTARY"
    #   resp.encoder_settings.audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.input_type #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.profile #=> String, one of "HEV1", "HEV2", "LC"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.spec #=> String, one of "MPEG2", "MPEG4"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "HIGH", "LOW", "MEDIUM_HIGH", "MEDIUM_LOW"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.drc_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_line #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_rf #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "NO_PASSTHROUGH", "WHEN_POSSIBLE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "NO_SHIFT", "SHIFT_90_DEGREES"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "DPL2", "LO_RO", "LT_RT", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].language_code #=> String
    #   resp.encoder_settings.audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].name #=> String
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings #=> Array
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels #=> Array
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].gain #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].input_channel #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].output_channel #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].stream_name #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.password_param #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.uri #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.username #=> String
    #   resp.encoder_settings.avail_blanking.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.ad_avail_offset #=> Integer
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.ad_avail_offset #=> Integer
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.password_param #=> String
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.uri #=> String
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.username #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.password_param #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.uri #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.username #=> String
    #   resp.encoder_settings.blackout_slate.network_id #=> String
    #   resp.encoder_settings.blackout_slate.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.caption_descriptions #=> Array
    #   resp.encoder_settings.caption_descriptions[0].caption_selector_name #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.password_param #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.uri #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.username #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_resolution #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_size #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_size #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_x_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_y_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.x_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.y_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.password_param #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.uri #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.username #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.ttml_destination_settings.style_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED"
    #   resp.encoder_settings.caption_descriptions[0].language_code #=> String
    #   resp.encoder_settings.caption_descriptions[0].language_description #=> String
    #   resp.encoder_settings.caption_descriptions[0].name #=> String
    #   resp.encoder_settings.global_configuration.initial_audio_gain #=> Integer
    #   resp.encoder_settings.global_configuration.input_end_action #=> String, one of "NONE", "SWITCH_AND_LOOP_INPUTS"
    #   resp.encoder_settings.global_configuration.input_loss_behavior.black_frame_msec #=> Integer
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_color #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.password_param #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.uri #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.username #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_type #=> String, one of "COLOR", "SLATE"
    #   resp.encoder_settings.global_configuration.input_loss_behavior.repeat_frame_msec #=> Integer
    #   resp.encoder_settings.global_configuration.output_timing_source #=> String, one of "INPUT_CLOCK", "SYSTEM_CLOCK"
    #   resp.encoder_settings.global_configuration.support_low_framerate_inputs #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups #=> Array
    #   resp.encoder_settings.output_groups[0].name #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.rollover_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers #=> Array
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers[0] #=> String, one of "ADOBE", "ELEMENTAL", "ELEMENTAL_SCTE35"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_content #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_manifest #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings #=> Array
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].caption_channel #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_code #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_description #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_setting #=> String, one of "INSERT", "NONE", "OMIT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.client_cache #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.codec_specification #=> String, one of "RFC_4281", "RFC_6381"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.constant_iv #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.directory_structure #=> String, one of "SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.encryption_type #=> String, one of "AES128", "SAMPLE_AES"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.salt #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.token #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.media_store_storage_class #=> String, one of "TEMPORAL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.index_n_segments #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_in_manifest #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_source #=> String, one of "EXPLICIT", "FOLLOWS_SEGMENT_NUMBER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.keep_segments #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format_versions #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.password_param #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.uri #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.username #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.static_key_value #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_compression #=> String, one of "GZIP", "NONE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_duration_format #=> String, one of "FLOATING_POINT", "INTEGER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.min_segment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.mode #=> String, one of "LIVE", "VOD"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.output_selection #=> String, one of "MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time_period #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segments_per_subdirectory #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.stream_inf_resolution #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timestamp_delta_milliseconds #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ts_file_mode #=> String, one of "SEGMENTED_FILES", "SINGLE_FILE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.acquisition_point_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.audio_only_timecode_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED_CLOCK"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id_mode #=> String, one of "NO_EVENT_ID", "USE_CONFIGURED", "USE_TIMESTAMP"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_stop_behavior #=> String, one of "NONE", "SEND_EOS"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.fragment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.send_delay_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.sparse_track_type #=> String, one of "NONE", "SCTE_35"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.stream_manifest_behavior #=> String, one of "DO_NOT_SEND", "SEND"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset_mode #=> String, one of "USE_CONFIGURED_OFFSET", "USE_EVENT_START_DATE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.authentication_scheme #=> String, one of "AKAMAI", "COMMON"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_full_behavior #=> String, one of "DISCONNECT_IMMEDIATELY", "WAIT_FOR_SERVER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.caption_data #=> String, one of "ALL", "FIELD1_608", "FIELD1_AND_FIELD2_608"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.input_loss_action #=> String, one of "DROP_PROGRAM", "DROP_TS", "EMIT_PROGRAM"
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].audio_description_names #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].audio_description_names[0] #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].caption_description_names #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].caption_description_names[0] #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.extension #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_group_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.password_param #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.uri #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.username #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.audio_rendition_sets #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.segment_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.ms_smooth_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.buffer_msec #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.column_depth #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.include_fec #=> String, one of "COLUMN", "COLUMN_AND_ROW"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.row_length #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].video_description_name #=> String
    #   resp.encoder_settings.timecode_config.source #=> String, one of "EMBEDDED", "SYSTEMCLOCK", "ZEROBASED"
    #   resp.encoder_settings.timecode_config.sync_threshold #=> Integer
    #   resp.encoder_settings.video_descriptions #=> Array
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.adaptive_quantization #=> String, one of "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_fill_pct #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_size #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.flicker_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_num_b_frames #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size #=> Float
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.level #=> String, one of "H264_LEVEL_1", "H264_LEVEL_1_1", "H264_LEVEL_1_2", "H264_LEVEL_1_3", "H264_LEVEL_2", "H264_LEVEL_2_1", "H264_LEVEL_2_2", "H264_LEVEL_3", "H264_LEVEL_3_1", "H264_LEVEL_3_2", "H264_LEVEL_4", "H264_LEVEL_4_1", "H264_LEVEL_4_2", "H264_LEVEL_5", "H264_LEVEL_5_1", "H264_LEVEL_5_2", "H264_LEVEL_AUTO"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.look_ahead_rate_control #=> String, one of "HIGH", "LOW", "MEDIUM"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.num_ref_frames #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.slices #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.softness #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.spatial_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.temporal_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.encoder_settings.video_descriptions[0].height #=> Integer
    #   resp.encoder_settings.video_descriptions[0].name #=> String
    #   resp.encoder_settings.video_descriptions[0].respond_to_afd #=> String, one of "NONE", "PASSTHROUGH", "RESPOND"
    #   resp.encoder_settings.video_descriptions[0].scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.encoder_settings.video_descriptions[0].sharpness #=> Integer
    #   resp.encoder_settings.video_descriptions[0].width #=> Integer
    #   resp.id #=> String
    #   resp.input_attachments #=> Array
    #   resp.input_attachments[0].input_id #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors #=> Array
    #   resp.input_attachments[0].input_settings.audio_selectors[0].name #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_code #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_selection_policy #=> String, one of "LOOSE", "STRICT"
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_pid_selection.pid #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors #=> Array
    #   resp.input_attachments[0].input_settings.caption_selectors[0].language_code #=> String
    #   resp.input_attachments[0].input_settings.caption_selectors[0].name #=> String
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.scte_20_detection #=> String, one of "AUTO", "OFF"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.source_608_channel_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_27_source_settings.pid #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.teletext_source_settings.page_number #=> String
    #   resp.input_attachments[0].input_settings.deblock_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.input_attachments[0].input_settings.denoise_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.input_attachments[0].input_settings.filter_strength #=> Integer
    #   resp.input_attachments[0].input_settings.input_filter #=> String, one of "AUTO", "DISABLED", "FORCED"
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.bandwidth #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.buffer_segments #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retries #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retry_interval #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.server_validation #=> String, one of "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", "CHECK_CRYPTOGRAPHY_ONLY"
    #   resp.input_attachments[0].input_settings.source_end_behavior #=> String, one of "CONTINUE", "LOOP"
    #   resp.input_attachments[0].input_settings.video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709"
    #   resp.input_attachments[0].input_settings.video_selector.color_space_usage #=> String, one of "FALLBACK", "FORCE"
    #   resp.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_pid.pid #=> Integer
    #   resp.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_program_id.program_id #=> Integer
    #   resp.input_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC"
    #   resp.input_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.input_specification.resolution #=> String, one of "SD", "HD", "UHD"
    #   resp.log_level #=> String, one of "ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"
    #   resp.name #=> String
    #   resp.pipelines_running_count #=> Integer
    #   resp.role_arn #=> String
    #   resp.state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteChannel AWS API Documentation
    #
    # @overload delete_channel(params = {})
    # @param [Hash] params ({})
    def delete_channel(params = {}, options = {})
      req = build_request(:delete_channel, params)
      req.send_request(options)
    end

    # Deletes the input end point
    #
    # @option params [required, String] :input_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_input({
    #     input_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteInput AWS API Documentation
    #
    # @overload delete_input(params = {})
    # @param [Hash] params ({})
    def delete_input(params = {}, options = {})
      req = build_request(:delete_input, params)
      req.send_request(options)
    end

    # Deletes an Input Security Group
    #
    # @option params [required, String] :input_security_group_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_input_security_group({
    #     input_security_group_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteInputSecurityGroup AWS API Documentation
    #
    # @overload delete_input_security_group(params = {})
    # @param [Hash] params ({})
    def delete_input_security_group(params = {}, options = {})
      req = build_request(:delete_input_security_group, params)
      req.send_request(options)
    end

    # Delete an expired reservation.
    #
    # @option params [required, String] :reservation_id
    #
    # @return [Types::DeleteReservationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteReservationResponse#arn #arn} => String
    #   * {Types::DeleteReservationResponse#count #count} => Integer
    #   * {Types::DeleteReservationResponse#currency_code #currency_code} => String
    #   * {Types::DeleteReservationResponse#duration #duration} => Integer
    #   * {Types::DeleteReservationResponse#duration_units #duration_units} => String
    #   * {Types::DeleteReservationResponse#end #end} => String
    #   * {Types::DeleteReservationResponse#fixed_price #fixed_price} => Float
    #   * {Types::DeleteReservationResponse#name #name} => String
    #   * {Types::DeleteReservationResponse#offering_description #offering_description} => String
    #   * {Types::DeleteReservationResponse#offering_id #offering_id} => String
    #   * {Types::DeleteReservationResponse#offering_type #offering_type} => String
    #   * {Types::DeleteReservationResponse#region #region} => String
    #   * {Types::DeleteReservationResponse#reservation_id #reservation_id} => String
    #   * {Types::DeleteReservationResponse#resource_specification #resource_specification} => Types::ReservationResourceSpecification
    #   * {Types::DeleteReservationResponse#start #start} => String
    #   * {Types::DeleteReservationResponse#state #state} => String
    #   * {Types::DeleteReservationResponse#usage_price #usage_price} => Float
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_reservation({
    #     reservation_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.count #=> Integer
    #   resp.currency_code #=> String
    #   resp.duration #=> Integer
    #   resp.duration_units #=> String, one of "MONTHS"
    #   resp.end #=> String
    #   resp.fixed_price #=> Float
    #   resp.name #=> String
    #   resp.offering_description #=> String
    #   resp.offering_id #=> String
    #   resp.offering_type #=> String, one of "NO_UPFRONT"
    #   resp.region #=> String
    #   resp.reservation_id #=> String
    #   resp.resource_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC", "AUDIO"
    #   resp.resource_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.resource_specification.maximum_framerate #=> String, one of "MAX_30_FPS", "MAX_60_FPS"
    #   resp.resource_specification.resolution #=> String, one of "SD", "HD", "UHD"
    #   resp.resource_specification.resource_type #=> String, one of "INPUT", "OUTPUT", "CHANNEL"
    #   resp.resource_specification.special_feature #=> String, one of "ADVANCED_AUDIO", "AUDIO_NORMALIZATION"
    #   resp.resource_specification.video_quality #=> String, one of "STANDARD", "ENHANCED", "PREMIUM"
    #   resp.start #=> String
    #   resp.state #=> String, one of "ACTIVE", "EXPIRED", "CANCELED", "DELETED"
    #   resp.usage_price #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DeleteReservation AWS API Documentation
    #
    # @overload delete_reservation(params = {})
    # @param [Hash] params ({})
    def delete_reservation(params = {}, options = {})
      req = build_request(:delete_reservation, params)
      req.send_request(options)
    end

    # Gets details about a channel
    #
    # @option params [required, String] :channel_id
    #
    # @return [Types::DescribeChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChannelResponse#arn #arn} => String
    #   * {Types::DescribeChannelResponse#destinations #destinations} => Array&lt;Types::OutputDestination&gt;
    #   * {Types::DescribeChannelResponse#egress_endpoints #egress_endpoints} => Array&lt;Types::ChannelEgressEndpoint&gt;
    #   * {Types::DescribeChannelResponse#encoder_settings #encoder_settings} => Types::EncoderSettings
    #   * {Types::DescribeChannelResponse#id #id} => String
    #   * {Types::DescribeChannelResponse#input_attachments #input_attachments} => Array&lt;Types::InputAttachment&gt;
    #   * {Types::DescribeChannelResponse#input_specification #input_specification} => Types::InputSpecification
    #   * {Types::DescribeChannelResponse#log_level #log_level} => String
    #   * {Types::DescribeChannelResponse#name #name} => String
    #   * {Types::DescribeChannelResponse#pipelines_running_count #pipelines_running_count} => Integer
    #   * {Types::DescribeChannelResponse#role_arn #role_arn} => String
    #   * {Types::DescribeChannelResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel({
    #     channel_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.destinations #=> Array
    #   resp.destinations[0].id #=> String
    #   resp.destinations[0].settings #=> Array
    #   resp.destinations[0].settings[0].password_param #=> String
    #   resp.destinations[0].settings[0].stream_name #=> String
    #   resp.destinations[0].settings[0].url #=> String
    #   resp.destinations[0].settings[0].username #=> String
    #   resp.egress_endpoints #=> Array
    #   resp.egress_endpoints[0].source_ip #=> String
    #   resp.encoder_settings.audio_descriptions #=> Array
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_1770_1", "ITU_1770_2"
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO"
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.encoder_settings.audio_descriptions[0].audio_selector_name #=> String
    #   resp.encoder_settings.audio_descriptions[0].audio_type #=> String, one of "CLEAN_EFFECTS", "HEARING_IMPAIRED", "UNDEFINED", "VISUAL_IMPAIRED_COMMENTARY"
    #   resp.encoder_settings.audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.input_type #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.profile #=> String, one of "HEV1", "HEV2", "LC"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.spec #=> String, one of "MPEG2", "MPEG4"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "HIGH", "LOW", "MEDIUM_HIGH", "MEDIUM_LOW"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.drc_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_line #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_rf #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "NO_PASSTHROUGH", "WHEN_POSSIBLE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "NO_SHIFT", "SHIFT_90_DEGREES"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "DPL2", "LO_RO", "LT_RT", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].language_code #=> String
    #   resp.encoder_settings.audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].name #=> String
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings #=> Array
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels #=> Array
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].gain #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].input_channel #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].output_channel #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].stream_name #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.password_param #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.uri #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.username #=> String
    #   resp.encoder_settings.avail_blanking.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.ad_avail_offset #=> Integer
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.ad_avail_offset #=> Integer
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.password_param #=> String
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.uri #=> String
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.username #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.password_param #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.uri #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.username #=> String
    #   resp.encoder_settings.blackout_slate.network_id #=> String
    #   resp.encoder_settings.blackout_slate.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.caption_descriptions #=> Array
    #   resp.encoder_settings.caption_descriptions[0].caption_selector_name #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.password_param #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.uri #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.username #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_resolution #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_size #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_size #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_x_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_y_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.x_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.y_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.password_param #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.uri #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.username #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.ttml_destination_settings.style_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED"
    #   resp.encoder_settings.caption_descriptions[0].language_code #=> String
    #   resp.encoder_settings.caption_descriptions[0].language_description #=> String
    #   resp.encoder_settings.caption_descriptions[0].name #=> String
    #   resp.encoder_settings.global_configuration.initial_audio_gain #=> Integer
    #   resp.encoder_settings.global_configuration.input_end_action #=> String, one of "NONE", "SWITCH_AND_LOOP_INPUTS"
    #   resp.encoder_settings.global_configuration.input_loss_behavior.black_frame_msec #=> Integer
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_color #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.password_param #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.uri #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.username #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_type #=> String, one of "COLOR", "SLATE"
    #   resp.encoder_settings.global_configuration.input_loss_behavior.repeat_frame_msec #=> Integer
    #   resp.encoder_settings.global_configuration.output_timing_source #=> String, one of "INPUT_CLOCK", "SYSTEM_CLOCK"
    #   resp.encoder_settings.global_configuration.support_low_framerate_inputs #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups #=> Array
    #   resp.encoder_settings.output_groups[0].name #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.rollover_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers #=> Array
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers[0] #=> String, one of "ADOBE", "ELEMENTAL", "ELEMENTAL_SCTE35"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_content #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_manifest #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings #=> Array
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].caption_channel #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_code #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_description #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_setting #=> String, one of "INSERT", "NONE", "OMIT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.client_cache #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.codec_specification #=> String, one of "RFC_4281", "RFC_6381"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.constant_iv #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.directory_structure #=> String, one of "SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.encryption_type #=> String, one of "AES128", "SAMPLE_AES"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.salt #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.token #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.media_store_storage_class #=> String, one of "TEMPORAL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.index_n_segments #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_in_manifest #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_source #=> String, one of "EXPLICIT", "FOLLOWS_SEGMENT_NUMBER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.keep_segments #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format_versions #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.password_param #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.uri #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.username #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.static_key_value #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_compression #=> String, one of "GZIP", "NONE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_duration_format #=> String, one of "FLOATING_POINT", "INTEGER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.min_segment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.mode #=> String, one of "LIVE", "VOD"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.output_selection #=> String, one of "MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time_period #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segments_per_subdirectory #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.stream_inf_resolution #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timestamp_delta_milliseconds #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ts_file_mode #=> String, one of "SEGMENTED_FILES", "SINGLE_FILE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.acquisition_point_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.audio_only_timecode_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED_CLOCK"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id_mode #=> String, one of "NO_EVENT_ID", "USE_CONFIGURED", "USE_TIMESTAMP"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_stop_behavior #=> String, one of "NONE", "SEND_EOS"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.fragment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.send_delay_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.sparse_track_type #=> String, one of "NONE", "SCTE_35"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.stream_manifest_behavior #=> String, one of "DO_NOT_SEND", "SEND"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset_mode #=> String, one of "USE_CONFIGURED_OFFSET", "USE_EVENT_START_DATE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.authentication_scheme #=> String, one of "AKAMAI", "COMMON"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_full_behavior #=> String, one of "DISCONNECT_IMMEDIATELY", "WAIT_FOR_SERVER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.caption_data #=> String, one of "ALL", "FIELD1_608", "FIELD1_AND_FIELD2_608"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.input_loss_action #=> String, one of "DROP_PROGRAM", "DROP_TS", "EMIT_PROGRAM"
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].audio_description_names #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].audio_description_names[0] #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].caption_description_names #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].caption_description_names[0] #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.extension #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_group_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.password_param #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.uri #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.username #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.audio_rendition_sets #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.segment_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.ms_smooth_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.buffer_msec #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.column_depth #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.include_fec #=> String, one of "COLUMN", "COLUMN_AND_ROW"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.row_length #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].video_description_name #=> String
    #   resp.encoder_settings.timecode_config.source #=> String, one of "EMBEDDED", "SYSTEMCLOCK", "ZEROBASED"
    #   resp.encoder_settings.timecode_config.sync_threshold #=> Integer
    #   resp.encoder_settings.video_descriptions #=> Array
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.adaptive_quantization #=> String, one of "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_fill_pct #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_size #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.flicker_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_num_b_frames #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size #=> Float
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.level #=> String, one of "H264_LEVEL_1", "H264_LEVEL_1_1", "H264_LEVEL_1_2", "H264_LEVEL_1_3", "H264_LEVEL_2", "H264_LEVEL_2_1", "H264_LEVEL_2_2", "H264_LEVEL_3", "H264_LEVEL_3_1", "H264_LEVEL_3_2", "H264_LEVEL_4", "H264_LEVEL_4_1", "H264_LEVEL_4_2", "H264_LEVEL_5", "H264_LEVEL_5_1", "H264_LEVEL_5_2", "H264_LEVEL_AUTO"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.look_ahead_rate_control #=> String, one of "HIGH", "LOW", "MEDIUM"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.num_ref_frames #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.slices #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.softness #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.spatial_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.temporal_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.encoder_settings.video_descriptions[0].height #=> Integer
    #   resp.encoder_settings.video_descriptions[0].name #=> String
    #   resp.encoder_settings.video_descriptions[0].respond_to_afd #=> String, one of "NONE", "PASSTHROUGH", "RESPOND"
    #   resp.encoder_settings.video_descriptions[0].scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.encoder_settings.video_descriptions[0].sharpness #=> Integer
    #   resp.encoder_settings.video_descriptions[0].width #=> Integer
    #   resp.id #=> String
    #   resp.input_attachments #=> Array
    #   resp.input_attachments[0].input_id #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors #=> Array
    #   resp.input_attachments[0].input_settings.audio_selectors[0].name #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_code #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_selection_policy #=> String, one of "LOOSE", "STRICT"
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_pid_selection.pid #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors #=> Array
    #   resp.input_attachments[0].input_settings.caption_selectors[0].language_code #=> String
    #   resp.input_attachments[0].input_settings.caption_selectors[0].name #=> String
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.scte_20_detection #=> String, one of "AUTO", "OFF"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.source_608_channel_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_27_source_settings.pid #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.teletext_source_settings.page_number #=> String
    #   resp.input_attachments[0].input_settings.deblock_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.input_attachments[0].input_settings.denoise_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.input_attachments[0].input_settings.filter_strength #=> Integer
    #   resp.input_attachments[0].input_settings.input_filter #=> String, one of "AUTO", "DISABLED", "FORCED"
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.bandwidth #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.buffer_segments #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retries #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retry_interval #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.server_validation #=> String, one of "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", "CHECK_CRYPTOGRAPHY_ONLY"
    #   resp.input_attachments[0].input_settings.source_end_behavior #=> String, one of "CONTINUE", "LOOP"
    #   resp.input_attachments[0].input_settings.video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709"
    #   resp.input_attachments[0].input_settings.video_selector.color_space_usage #=> String, one of "FALLBACK", "FORCE"
    #   resp.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_pid.pid #=> Integer
    #   resp.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_program_id.program_id #=> Integer
    #   resp.input_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC"
    #   resp.input_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.input_specification.resolution #=> String, one of "SD", "HD", "UHD"
    #   resp.log_level #=> String, one of "ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"
    #   resp.name #=> String
    #   resp.pipelines_running_count #=> Integer
    #   resp.role_arn #=> String
    #   resp.state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeChannel AWS API Documentation
    #
    # @overload describe_channel(params = {})
    # @param [Hash] params ({})
    def describe_channel(params = {}, options = {})
      req = build_request(:describe_channel, params)
      req.send_request(options)
    end

    # Produces details about an input
    #
    # @option params [required, String] :input_id
    #
    # @return [Types::DescribeInputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInputResponse#arn #arn} => String
    #   * {Types::DescribeInputResponse#attached_channels #attached_channels} => Array&lt;String&gt;
    #   * {Types::DescribeInputResponse#destinations #destinations} => Array&lt;Types::InputDestination&gt;
    #   * {Types::DescribeInputResponse#id #id} => String
    #   * {Types::DescribeInputResponse#name #name} => String
    #   * {Types::DescribeInputResponse#security_groups #security_groups} => Array&lt;String&gt;
    #   * {Types::DescribeInputResponse#sources #sources} => Array&lt;Types::InputSource&gt;
    #   * {Types::DescribeInputResponse#state #state} => String
    #   * {Types::DescribeInputResponse#type #type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_input({
    #     input_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.attached_channels #=> Array
    #   resp.attached_channels[0] #=> String
    #   resp.destinations #=> Array
    #   resp.destinations[0].ip #=> String
    #   resp.destinations[0].port #=> String
    #   resp.destinations[0].url #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.security_groups #=> Array
    #   resp.security_groups[0] #=> String
    #   resp.sources #=> Array
    #   resp.sources[0].password_param #=> String
    #   resp.sources[0].url #=> String
    #   resp.sources[0].username #=> String
    #   resp.state #=> String, one of "CREATING", "DETACHED", "ATTACHED", "DELETING", "DELETED"
    #   resp.type #=> String, one of "UDP_PUSH", "RTP_PUSH", "RTMP_PUSH", "RTMP_PULL", "URL_PULL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeInput AWS API Documentation
    #
    # @overload describe_input(params = {})
    # @param [Hash] params ({})
    def describe_input(params = {}, options = {})
      req = build_request(:describe_input, params)
      req.send_request(options)
    end

    # Produces a summary of an Input Security Group
    #
    # @option params [required, String] :input_security_group_id
    #
    # @return [Types::DescribeInputSecurityGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInputSecurityGroupResponse#arn #arn} => String
    #   * {Types::DescribeInputSecurityGroupResponse#id #id} => String
    #   * {Types::DescribeInputSecurityGroupResponse#inputs #inputs} => Array&lt;String&gt;
    #   * {Types::DescribeInputSecurityGroupResponse#state #state} => String
    #   * {Types::DescribeInputSecurityGroupResponse#whitelist_rules #whitelist_rules} => Array&lt;Types::InputWhitelistRule&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_input_security_group({
    #     input_security_group_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.inputs #=> Array
    #   resp.inputs[0] #=> String
    #   resp.state #=> String, one of "IDLE", "IN_USE", "UPDATING", "DELETED"
    #   resp.whitelist_rules #=> Array
    #   resp.whitelist_rules[0].cidr #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeInputSecurityGroup AWS API Documentation
    #
    # @overload describe_input_security_group(params = {})
    # @param [Hash] params ({})
    def describe_input_security_group(params = {}, options = {})
      req = build_request(:describe_input_security_group, params)
      req.send_request(options)
    end

    # Get details for an offering.
    #
    # @option params [required, String] :offering_id
    #
    # @return [Types::DescribeOfferingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOfferingResponse#arn #arn} => String
    #   * {Types::DescribeOfferingResponse#currency_code #currency_code} => String
    #   * {Types::DescribeOfferingResponse#duration #duration} => Integer
    #   * {Types::DescribeOfferingResponse#duration_units #duration_units} => String
    #   * {Types::DescribeOfferingResponse#fixed_price #fixed_price} => Float
    #   * {Types::DescribeOfferingResponse#offering_description #offering_description} => String
    #   * {Types::DescribeOfferingResponse#offering_id #offering_id} => String
    #   * {Types::DescribeOfferingResponse#offering_type #offering_type} => String
    #   * {Types::DescribeOfferingResponse#region #region} => String
    #   * {Types::DescribeOfferingResponse#resource_specification #resource_specification} => Types::ReservationResourceSpecification
    #   * {Types::DescribeOfferingResponse#usage_price #usage_price} => Float
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_offering({
    #     offering_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.currency_code #=> String
    #   resp.duration #=> Integer
    #   resp.duration_units #=> String, one of "MONTHS"
    #   resp.fixed_price #=> Float
    #   resp.offering_description #=> String
    #   resp.offering_id #=> String
    #   resp.offering_type #=> String, one of "NO_UPFRONT"
    #   resp.region #=> String
    #   resp.resource_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC", "AUDIO"
    #   resp.resource_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.resource_specification.maximum_framerate #=> String, one of "MAX_30_FPS", "MAX_60_FPS"
    #   resp.resource_specification.resolution #=> String, one of "SD", "HD", "UHD"
    #   resp.resource_specification.resource_type #=> String, one of "INPUT", "OUTPUT", "CHANNEL"
    #   resp.resource_specification.special_feature #=> String, one of "ADVANCED_AUDIO", "AUDIO_NORMALIZATION"
    #   resp.resource_specification.video_quality #=> String, one of "STANDARD", "ENHANCED", "PREMIUM"
    #   resp.usage_price #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeOffering AWS API Documentation
    #
    # @overload describe_offering(params = {})
    # @param [Hash] params ({})
    def describe_offering(params = {}, options = {})
      req = build_request(:describe_offering, params)
      req.send_request(options)
    end

    # Get details for a reservation.
    #
    # @option params [required, String] :reservation_id
    #
    # @return [Types::DescribeReservationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReservationResponse#arn #arn} => String
    #   * {Types::DescribeReservationResponse#count #count} => Integer
    #   * {Types::DescribeReservationResponse#currency_code #currency_code} => String
    #   * {Types::DescribeReservationResponse#duration #duration} => Integer
    #   * {Types::DescribeReservationResponse#duration_units #duration_units} => String
    #   * {Types::DescribeReservationResponse#end #end} => String
    #   * {Types::DescribeReservationResponse#fixed_price #fixed_price} => Float
    #   * {Types::DescribeReservationResponse#name #name} => String
    #   * {Types::DescribeReservationResponse#offering_description #offering_description} => String
    #   * {Types::DescribeReservationResponse#offering_id #offering_id} => String
    #   * {Types::DescribeReservationResponse#offering_type #offering_type} => String
    #   * {Types::DescribeReservationResponse#region #region} => String
    #   * {Types::DescribeReservationResponse#reservation_id #reservation_id} => String
    #   * {Types::DescribeReservationResponse#resource_specification #resource_specification} => Types::ReservationResourceSpecification
    #   * {Types::DescribeReservationResponse#start #start} => String
    #   * {Types::DescribeReservationResponse#state #state} => String
    #   * {Types::DescribeReservationResponse#usage_price #usage_price} => Float
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reservation({
    #     reservation_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.count #=> Integer
    #   resp.currency_code #=> String
    #   resp.duration #=> Integer
    #   resp.duration_units #=> String, one of "MONTHS"
    #   resp.end #=> String
    #   resp.fixed_price #=> Float
    #   resp.name #=> String
    #   resp.offering_description #=> String
    #   resp.offering_id #=> String
    #   resp.offering_type #=> String, one of "NO_UPFRONT"
    #   resp.region #=> String
    #   resp.reservation_id #=> String
    #   resp.resource_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC", "AUDIO"
    #   resp.resource_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.resource_specification.maximum_framerate #=> String, one of "MAX_30_FPS", "MAX_60_FPS"
    #   resp.resource_specification.resolution #=> String, one of "SD", "HD", "UHD"
    #   resp.resource_specification.resource_type #=> String, one of "INPUT", "OUTPUT", "CHANNEL"
    #   resp.resource_specification.special_feature #=> String, one of "ADVANCED_AUDIO", "AUDIO_NORMALIZATION"
    #   resp.resource_specification.video_quality #=> String, one of "STANDARD", "ENHANCED", "PREMIUM"
    #   resp.start #=> String
    #   resp.state #=> String, one of "ACTIVE", "EXPIRED", "CANCELED", "DELETED"
    #   resp.usage_price #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeReservation AWS API Documentation
    #
    # @overload describe_reservation(params = {})
    # @param [Hash] params ({})
    def describe_reservation(params = {}, options = {})
      req = build_request(:describe_reservation, params)
      req.send_request(options)
    end

    # Get a channel schedule
    #
    # @option params [required, String] :channel_id
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::DescribeScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScheduleResponse#next_token #next_token} => String
    #   * {Types::DescribeScheduleResponse#schedule_actions #schedule_actions} => Array&lt;Types::ScheduleAction&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_schedule({
    #     channel_id: "__string", # required
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.schedule_actions #=> Array
    #   resp.schedule_actions[0].action_name #=> String
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_return_to_network_settings.splice_event_id #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_splice_insert_settings.duration #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_splice_insert_settings.splice_event_id #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors #=> Array
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.archive_allowed_flag #=> String, one of "ARCHIVE_NOT_ALLOWED", "ARCHIVE_ALLOWED"
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.device_restrictions #=> String, one of "NONE", "RESTRICT_GROUP0", "RESTRICT_GROUP1", "RESTRICT_GROUP2"
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.no_regional_blackout_flag #=> String, one of "REGIONAL_BLACKOUT", "NO_REGIONAL_BLACKOUT"
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.delivery_restrictions.web_delivery_allowed_flag #=> String, one of "WEB_DELIVERY_NOT_ALLOWED", "WEB_DELIVERY_ALLOWED"
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segment_num #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_cancel_indicator #=> String, one of "SEGMENTATION_EVENT_NOT_CANCELED", "SEGMENTATION_EVENT_CANCELED"
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_duration #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_event_id #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_type_id #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_upid #=> String
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segmentation_upid_type #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.segments_expected #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.sub_segment_num #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.scte_35_time_signal_settings.scte_35_descriptors[0].scte_35_descriptor_settings.segmentation_descriptor_scte_35_descriptor_settings.sub_segments_expected #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.duration #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.fade_in #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.fade_out #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.height #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image.password_param #=> String
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image.uri #=> String
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image.username #=> String
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image_x #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.image_y #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.layer #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.opacity #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_activate_settings.width #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_deactivate_settings.fade_out #=> Integer
    #   resp.schedule_actions[0].schedule_action_settings.static_image_deactivate_settings.layer #=> Integer
    #   resp.schedule_actions[0].schedule_action_start_settings.fixed_mode_schedule_action_start_settings.time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/DescribeSchedule AWS API Documentation
    #
    # @overload describe_schedule(params = {})
    # @param [Hash] params ({})
    def describe_schedule(params = {}, options = {})
      req = build_request(:describe_schedule, params)
      req.send_request(options)
    end

    # Produces list of channels that have been created
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelsResponse#channels #channels} => Array&lt;Types::ChannelSummary&gt;
    #   * {Types::ListChannelsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.channels #=> Array
    #   resp.channels[0].arn #=> String
    #   resp.channels[0].destinations #=> Array
    #   resp.channels[0].destinations[0].id #=> String
    #   resp.channels[0].destinations[0].settings #=> Array
    #   resp.channels[0].destinations[0].settings[0].password_param #=> String
    #   resp.channels[0].destinations[0].settings[0].stream_name #=> String
    #   resp.channels[0].destinations[0].settings[0].url #=> String
    #   resp.channels[0].destinations[0].settings[0].username #=> String
    #   resp.channels[0].egress_endpoints #=> Array
    #   resp.channels[0].egress_endpoints[0].source_ip #=> String
    #   resp.channels[0].id #=> String
    #   resp.channels[0].input_attachments #=> Array
    #   resp.channels[0].input_attachments[0].input_id #=> String
    #   resp.channels[0].input_attachments[0].input_settings.audio_selectors #=> Array
    #   resp.channels[0].input_attachments[0].input_settings.audio_selectors[0].name #=> String
    #   resp.channels[0].input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_code #=> String
    #   resp.channels[0].input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_selection_policy #=> String, one of "LOOSE", "STRICT"
    #   resp.channels[0].input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_pid_selection.pid #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors #=> Array
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].language_code #=> String
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].name #=> String
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].selector_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.scte_20_detection #=> String, one of "AUTO", "OFF"
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.source_608_channel_number #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_27_source_settings.pid #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.caption_selectors[0].selector_settings.teletext_source_settings.page_number #=> String
    #   resp.channels[0].input_attachments[0].input_settings.deblock_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channels[0].input_attachments[0].input_settings.denoise_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channels[0].input_attachments[0].input_settings.filter_strength #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.input_filter #=> String, one of "AUTO", "DISABLED", "FORCED"
    #   resp.channels[0].input_attachments[0].input_settings.network_input_settings.hls_input_settings.bandwidth #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.network_input_settings.hls_input_settings.buffer_segments #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.network_input_settings.hls_input_settings.retries #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.network_input_settings.hls_input_settings.retry_interval #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.network_input_settings.server_validation #=> String, one of "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", "CHECK_CRYPTOGRAPHY_ONLY"
    #   resp.channels[0].input_attachments[0].input_settings.source_end_behavior #=> String, one of "CONTINUE", "LOOP"
    #   resp.channels[0].input_attachments[0].input_settings.video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709"
    #   resp.channels[0].input_attachments[0].input_settings.video_selector.color_space_usage #=> String, one of "FALLBACK", "FORCE"
    #   resp.channels[0].input_attachments[0].input_settings.video_selector.selector_settings.video_selector_pid.pid #=> Integer
    #   resp.channels[0].input_attachments[0].input_settings.video_selector.selector_settings.video_selector_program_id.program_id #=> Integer
    #   resp.channels[0].input_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC"
    #   resp.channels[0].input_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.channels[0].input_specification.resolution #=> String, one of "SD", "HD", "UHD"
    #   resp.channels[0].log_level #=> String, one of "ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"
    #   resp.channels[0].name #=> String
    #   resp.channels[0].pipelines_running_count #=> Integer
    #   resp.channels[0].role_arn #=> String
    #   resp.channels[0].state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListChannels AWS API Documentation
    #
    # @overload list_channels(params = {})
    # @param [Hash] params ({})
    def list_channels(params = {}, options = {})
      req = build_request(:list_channels, params)
      req.send_request(options)
    end

    # Produces a list of Input Security Groups for an account
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListInputSecurityGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInputSecurityGroupsResponse#input_security_groups #input_security_groups} => Array&lt;Types::InputSecurityGroup&gt;
    #   * {Types::ListInputSecurityGroupsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_input_security_groups({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.input_security_groups #=> Array
    #   resp.input_security_groups[0].arn #=> String
    #   resp.input_security_groups[0].id #=> String
    #   resp.input_security_groups[0].inputs #=> Array
    #   resp.input_security_groups[0].inputs[0] #=> String
    #   resp.input_security_groups[0].state #=> String, one of "IDLE", "IN_USE", "UPDATING", "DELETED"
    #   resp.input_security_groups[0].whitelist_rules #=> Array
    #   resp.input_security_groups[0].whitelist_rules[0].cidr #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListInputSecurityGroups AWS API Documentation
    #
    # @overload list_input_security_groups(params = {})
    # @param [Hash] params ({})
    def list_input_security_groups(params = {}, options = {})
      req = build_request(:list_input_security_groups, params)
      req.send_request(options)
    end

    # Produces list of inputs that have been created
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListInputsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInputsResponse#inputs #inputs} => Array&lt;Types::Input&gt;
    #   * {Types::ListInputsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_inputs({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.inputs #=> Array
    #   resp.inputs[0].arn #=> String
    #   resp.inputs[0].attached_channels #=> Array
    #   resp.inputs[0].attached_channels[0] #=> String
    #   resp.inputs[0].destinations #=> Array
    #   resp.inputs[0].destinations[0].ip #=> String
    #   resp.inputs[0].destinations[0].port #=> String
    #   resp.inputs[0].destinations[0].url #=> String
    #   resp.inputs[0].id #=> String
    #   resp.inputs[0].name #=> String
    #   resp.inputs[0].security_groups #=> Array
    #   resp.inputs[0].security_groups[0] #=> String
    #   resp.inputs[0].sources #=> Array
    #   resp.inputs[0].sources[0].password_param #=> String
    #   resp.inputs[0].sources[0].url #=> String
    #   resp.inputs[0].sources[0].username #=> String
    #   resp.inputs[0].state #=> String, one of "CREATING", "DETACHED", "ATTACHED", "DELETING", "DELETED"
    #   resp.inputs[0].type #=> String, one of "UDP_PUSH", "RTP_PUSH", "RTMP_PUSH", "RTMP_PULL", "URL_PULL"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListInputs AWS API Documentation
    #
    # @overload list_inputs(params = {})
    # @param [Hash] params ({})
    def list_inputs(params = {}, options = {})
      req = build_request(:list_inputs, params)
      req.send_request(options)
    end

    # List offerings available for purchase.
    #
    # @option params [String] :channel_configuration
    #
    # @option params [String] :codec
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :maximum_bitrate
    #
    # @option params [String] :maximum_framerate
    #
    # @option params [String] :next_token
    #
    # @option params [String] :resolution
    #
    # @option params [String] :resource_type
    #
    # @option params [String] :special_feature
    #
    # @option params [String] :video_quality
    #
    # @return [Types::ListOfferingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOfferingsResponse#next_token #next_token} => String
    #   * {Types::ListOfferingsResponse#offerings #offerings} => Array&lt;Types::Offering&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_offerings({
    #     channel_configuration: "__string",
    #     codec: "__string",
    #     max_results: 1,
    #     maximum_bitrate: "__string",
    #     maximum_framerate: "__string",
    #     next_token: "__string",
    #     resolution: "__string",
    #     resource_type: "__string",
    #     special_feature: "__string",
    #     video_quality: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.offerings #=> Array
    #   resp.offerings[0].arn #=> String
    #   resp.offerings[0].currency_code #=> String
    #   resp.offerings[0].duration #=> Integer
    #   resp.offerings[0].duration_units #=> String, one of "MONTHS"
    #   resp.offerings[0].fixed_price #=> Float
    #   resp.offerings[0].offering_description #=> String
    #   resp.offerings[0].offering_id #=> String
    #   resp.offerings[0].offering_type #=> String, one of "NO_UPFRONT"
    #   resp.offerings[0].region #=> String
    #   resp.offerings[0].resource_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC", "AUDIO"
    #   resp.offerings[0].resource_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.offerings[0].resource_specification.maximum_framerate #=> String, one of "MAX_30_FPS", "MAX_60_FPS"
    #   resp.offerings[0].resource_specification.resolution #=> String, one of "SD", "HD", "UHD"
    #   resp.offerings[0].resource_specification.resource_type #=> String, one of "INPUT", "OUTPUT", "CHANNEL"
    #   resp.offerings[0].resource_specification.special_feature #=> String, one of "ADVANCED_AUDIO", "AUDIO_NORMALIZATION"
    #   resp.offerings[0].resource_specification.video_quality #=> String, one of "STANDARD", "ENHANCED", "PREMIUM"
    #   resp.offerings[0].usage_price #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListOfferings AWS API Documentation
    #
    # @overload list_offerings(params = {})
    # @param [Hash] params ({})
    def list_offerings(params = {}, options = {})
      req = build_request(:list_offerings, params)
      req.send_request(options)
    end

    # List purchased reservations.
    #
    # @option params [String] :codec
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :maximum_bitrate
    #
    # @option params [String] :maximum_framerate
    #
    # @option params [String] :next_token
    #
    # @option params [String] :resolution
    #
    # @option params [String] :resource_type
    #
    # @option params [String] :special_feature
    #
    # @option params [String] :video_quality
    #
    # @return [Types::ListReservationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReservationsResponse#next_token #next_token} => String
    #   * {Types::ListReservationsResponse#reservations #reservations} => Array&lt;Types::Reservation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_reservations({
    #     codec: "__string",
    #     max_results: 1,
    #     maximum_bitrate: "__string",
    #     maximum_framerate: "__string",
    #     next_token: "__string",
    #     resolution: "__string",
    #     resource_type: "__string",
    #     special_feature: "__string",
    #     video_quality: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.reservations #=> Array
    #   resp.reservations[0].arn #=> String
    #   resp.reservations[0].count #=> Integer
    #   resp.reservations[0].currency_code #=> String
    #   resp.reservations[0].duration #=> Integer
    #   resp.reservations[0].duration_units #=> String, one of "MONTHS"
    #   resp.reservations[0].end #=> String
    #   resp.reservations[0].fixed_price #=> Float
    #   resp.reservations[0].name #=> String
    #   resp.reservations[0].offering_description #=> String
    #   resp.reservations[0].offering_id #=> String
    #   resp.reservations[0].offering_type #=> String, one of "NO_UPFRONT"
    #   resp.reservations[0].region #=> String
    #   resp.reservations[0].reservation_id #=> String
    #   resp.reservations[0].resource_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC", "AUDIO"
    #   resp.reservations[0].resource_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.reservations[0].resource_specification.maximum_framerate #=> String, one of "MAX_30_FPS", "MAX_60_FPS"
    #   resp.reservations[0].resource_specification.resolution #=> String, one of "SD", "HD", "UHD"
    #   resp.reservations[0].resource_specification.resource_type #=> String, one of "INPUT", "OUTPUT", "CHANNEL"
    #   resp.reservations[0].resource_specification.special_feature #=> String, one of "ADVANCED_AUDIO", "AUDIO_NORMALIZATION"
    #   resp.reservations[0].resource_specification.video_quality #=> String, one of "STANDARD", "ENHANCED", "PREMIUM"
    #   resp.reservations[0].start #=> String
    #   resp.reservations[0].state #=> String, one of "ACTIVE", "EXPIRED", "CANCELED", "DELETED"
    #   resp.reservations[0].usage_price #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/ListReservations AWS API Documentation
    #
    # @overload list_reservations(params = {})
    # @param [Hash] params ({})
    def list_reservations(params = {}, options = {})
      req = build_request(:list_reservations, params)
      req.send_request(options)
    end

    # Purchase an offering and create a reservation.
    #
    # @option params [Integer] :count
    #
    # @option params [String] :name
    #
    # @option params [required, String] :offering_id
    #
    # @option params [String] :request_id
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::PurchaseOfferingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PurchaseOfferingResponse#reservation #reservation} => Types::Reservation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_offering({
    #     count: 1,
    #     name: "__string",
    #     offering_id: "__string", # required
    #     request_id: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.reservation.arn #=> String
    #   resp.reservation.count #=> Integer
    #   resp.reservation.currency_code #=> String
    #   resp.reservation.duration #=> Integer
    #   resp.reservation.duration_units #=> String, one of "MONTHS"
    #   resp.reservation.end #=> String
    #   resp.reservation.fixed_price #=> Float
    #   resp.reservation.name #=> String
    #   resp.reservation.offering_description #=> String
    #   resp.reservation.offering_id #=> String
    #   resp.reservation.offering_type #=> String, one of "NO_UPFRONT"
    #   resp.reservation.region #=> String
    #   resp.reservation.reservation_id #=> String
    #   resp.reservation.resource_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC", "AUDIO"
    #   resp.reservation.resource_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.reservation.resource_specification.maximum_framerate #=> String, one of "MAX_30_FPS", "MAX_60_FPS"
    #   resp.reservation.resource_specification.resolution #=> String, one of "SD", "HD", "UHD"
    #   resp.reservation.resource_specification.resource_type #=> String, one of "INPUT", "OUTPUT", "CHANNEL"
    #   resp.reservation.resource_specification.special_feature #=> String, one of "ADVANCED_AUDIO", "AUDIO_NORMALIZATION"
    #   resp.reservation.resource_specification.video_quality #=> String, one of "STANDARD", "ENHANCED", "PREMIUM"
    #   resp.reservation.start #=> String
    #   resp.reservation.state #=> String, one of "ACTIVE", "EXPIRED", "CANCELED", "DELETED"
    #   resp.reservation.usage_price #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/PurchaseOffering AWS API Documentation
    #
    # @overload purchase_offering(params = {})
    # @param [Hash] params ({})
    def purchase_offering(params = {}, options = {})
      req = build_request(:purchase_offering, params)
      req.send_request(options)
    end

    # Starts an existing channel
    #
    # @option params [required, String] :channel_id
    #
    # @return [Types::StartChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartChannelResponse#arn #arn} => String
    #   * {Types::StartChannelResponse#destinations #destinations} => Array&lt;Types::OutputDestination&gt;
    #   * {Types::StartChannelResponse#egress_endpoints #egress_endpoints} => Array&lt;Types::ChannelEgressEndpoint&gt;
    #   * {Types::StartChannelResponse#encoder_settings #encoder_settings} => Types::EncoderSettings
    #   * {Types::StartChannelResponse#id #id} => String
    #   * {Types::StartChannelResponse#input_attachments #input_attachments} => Array&lt;Types::InputAttachment&gt;
    #   * {Types::StartChannelResponse#input_specification #input_specification} => Types::InputSpecification
    #   * {Types::StartChannelResponse#log_level #log_level} => String
    #   * {Types::StartChannelResponse#name #name} => String
    #   * {Types::StartChannelResponse#pipelines_running_count #pipelines_running_count} => Integer
    #   * {Types::StartChannelResponse#role_arn #role_arn} => String
    #   * {Types::StartChannelResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_channel({
    #     channel_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.destinations #=> Array
    #   resp.destinations[0].id #=> String
    #   resp.destinations[0].settings #=> Array
    #   resp.destinations[0].settings[0].password_param #=> String
    #   resp.destinations[0].settings[0].stream_name #=> String
    #   resp.destinations[0].settings[0].url #=> String
    #   resp.destinations[0].settings[0].username #=> String
    #   resp.egress_endpoints #=> Array
    #   resp.egress_endpoints[0].source_ip #=> String
    #   resp.encoder_settings.audio_descriptions #=> Array
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_1770_1", "ITU_1770_2"
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO"
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.encoder_settings.audio_descriptions[0].audio_selector_name #=> String
    #   resp.encoder_settings.audio_descriptions[0].audio_type #=> String, one of "CLEAN_EFFECTS", "HEARING_IMPAIRED", "UNDEFINED", "VISUAL_IMPAIRED_COMMENTARY"
    #   resp.encoder_settings.audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.input_type #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.profile #=> String, one of "HEV1", "HEV2", "LC"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.spec #=> String, one of "MPEG2", "MPEG4"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "HIGH", "LOW", "MEDIUM_HIGH", "MEDIUM_LOW"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.drc_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_line #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_rf #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "NO_PASSTHROUGH", "WHEN_POSSIBLE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "NO_SHIFT", "SHIFT_90_DEGREES"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "DPL2", "LO_RO", "LT_RT", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].language_code #=> String
    #   resp.encoder_settings.audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].name #=> String
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings #=> Array
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels #=> Array
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].gain #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].input_channel #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].output_channel #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].stream_name #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.password_param #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.uri #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.username #=> String
    #   resp.encoder_settings.avail_blanking.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.ad_avail_offset #=> Integer
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.ad_avail_offset #=> Integer
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.password_param #=> String
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.uri #=> String
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.username #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.password_param #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.uri #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.username #=> String
    #   resp.encoder_settings.blackout_slate.network_id #=> String
    #   resp.encoder_settings.blackout_slate.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.caption_descriptions #=> Array
    #   resp.encoder_settings.caption_descriptions[0].caption_selector_name #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.password_param #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.uri #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.username #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_resolution #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_size #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_size #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_x_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_y_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.x_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.y_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.password_param #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.uri #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.username #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.ttml_destination_settings.style_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED"
    #   resp.encoder_settings.caption_descriptions[0].language_code #=> String
    #   resp.encoder_settings.caption_descriptions[0].language_description #=> String
    #   resp.encoder_settings.caption_descriptions[0].name #=> String
    #   resp.encoder_settings.global_configuration.initial_audio_gain #=> Integer
    #   resp.encoder_settings.global_configuration.input_end_action #=> String, one of "NONE", "SWITCH_AND_LOOP_INPUTS"
    #   resp.encoder_settings.global_configuration.input_loss_behavior.black_frame_msec #=> Integer
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_color #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.password_param #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.uri #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.username #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_type #=> String, one of "COLOR", "SLATE"
    #   resp.encoder_settings.global_configuration.input_loss_behavior.repeat_frame_msec #=> Integer
    #   resp.encoder_settings.global_configuration.output_timing_source #=> String, one of "INPUT_CLOCK", "SYSTEM_CLOCK"
    #   resp.encoder_settings.global_configuration.support_low_framerate_inputs #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups #=> Array
    #   resp.encoder_settings.output_groups[0].name #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.rollover_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers #=> Array
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers[0] #=> String, one of "ADOBE", "ELEMENTAL", "ELEMENTAL_SCTE35"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_content #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_manifest #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings #=> Array
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].caption_channel #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_code #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_description #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_setting #=> String, one of "INSERT", "NONE", "OMIT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.client_cache #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.codec_specification #=> String, one of "RFC_4281", "RFC_6381"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.constant_iv #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.directory_structure #=> String, one of "SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.encryption_type #=> String, one of "AES128", "SAMPLE_AES"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.salt #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.token #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.media_store_storage_class #=> String, one of "TEMPORAL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.index_n_segments #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_in_manifest #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_source #=> String, one of "EXPLICIT", "FOLLOWS_SEGMENT_NUMBER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.keep_segments #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format_versions #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.password_param #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.uri #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.username #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.static_key_value #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_compression #=> String, one of "GZIP", "NONE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_duration_format #=> String, one of "FLOATING_POINT", "INTEGER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.min_segment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.mode #=> String, one of "LIVE", "VOD"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.output_selection #=> String, one of "MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time_period #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segments_per_subdirectory #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.stream_inf_resolution #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timestamp_delta_milliseconds #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ts_file_mode #=> String, one of "SEGMENTED_FILES", "SINGLE_FILE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.acquisition_point_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.audio_only_timecode_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED_CLOCK"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id_mode #=> String, one of "NO_EVENT_ID", "USE_CONFIGURED", "USE_TIMESTAMP"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_stop_behavior #=> String, one of "NONE", "SEND_EOS"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.fragment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.send_delay_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.sparse_track_type #=> String, one of "NONE", "SCTE_35"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.stream_manifest_behavior #=> String, one of "DO_NOT_SEND", "SEND"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset_mode #=> String, one of "USE_CONFIGURED_OFFSET", "USE_EVENT_START_DATE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.authentication_scheme #=> String, one of "AKAMAI", "COMMON"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_full_behavior #=> String, one of "DISCONNECT_IMMEDIATELY", "WAIT_FOR_SERVER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.caption_data #=> String, one of "ALL", "FIELD1_608", "FIELD1_AND_FIELD2_608"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.input_loss_action #=> String, one of "DROP_PROGRAM", "DROP_TS", "EMIT_PROGRAM"
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].audio_description_names #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].audio_description_names[0] #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].caption_description_names #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].caption_description_names[0] #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.extension #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_group_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.password_param #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.uri #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.username #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.audio_rendition_sets #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.segment_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.ms_smooth_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.buffer_msec #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.column_depth #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.include_fec #=> String, one of "COLUMN", "COLUMN_AND_ROW"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.row_length #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].video_description_name #=> String
    #   resp.encoder_settings.timecode_config.source #=> String, one of "EMBEDDED", "SYSTEMCLOCK", "ZEROBASED"
    #   resp.encoder_settings.timecode_config.sync_threshold #=> Integer
    #   resp.encoder_settings.video_descriptions #=> Array
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.adaptive_quantization #=> String, one of "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_fill_pct #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_size #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.flicker_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_num_b_frames #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size #=> Float
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.level #=> String, one of "H264_LEVEL_1", "H264_LEVEL_1_1", "H264_LEVEL_1_2", "H264_LEVEL_1_3", "H264_LEVEL_2", "H264_LEVEL_2_1", "H264_LEVEL_2_2", "H264_LEVEL_3", "H264_LEVEL_3_1", "H264_LEVEL_3_2", "H264_LEVEL_4", "H264_LEVEL_4_1", "H264_LEVEL_4_2", "H264_LEVEL_5", "H264_LEVEL_5_1", "H264_LEVEL_5_2", "H264_LEVEL_AUTO"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.look_ahead_rate_control #=> String, one of "HIGH", "LOW", "MEDIUM"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.num_ref_frames #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.slices #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.softness #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.spatial_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.temporal_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.encoder_settings.video_descriptions[0].height #=> Integer
    #   resp.encoder_settings.video_descriptions[0].name #=> String
    #   resp.encoder_settings.video_descriptions[0].respond_to_afd #=> String, one of "NONE", "PASSTHROUGH", "RESPOND"
    #   resp.encoder_settings.video_descriptions[0].scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.encoder_settings.video_descriptions[0].sharpness #=> Integer
    #   resp.encoder_settings.video_descriptions[0].width #=> Integer
    #   resp.id #=> String
    #   resp.input_attachments #=> Array
    #   resp.input_attachments[0].input_id #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors #=> Array
    #   resp.input_attachments[0].input_settings.audio_selectors[0].name #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_code #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_selection_policy #=> String, one of "LOOSE", "STRICT"
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_pid_selection.pid #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors #=> Array
    #   resp.input_attachments[0].input_settings.caption_selectors[0].language_code #=> String
    #   resp.input_attachments[0].input_settings.caption_selectors[0].name #=> String
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.scte_20_detection #=> String, one of "AUTO", "OFF"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.source_608_channel_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_27_source_settings.pid #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.teletext_source_settings.page_number #=> String
    #   resp.input_attachments[0].input_settings.deblock_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.input_attachments[0].input_settings.denoise_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.input_attachments[0].input_settings.filter_strength #=> Integer
    #   resp.input_attachments[0].input_settings.input_filter #=> String, one of "AUTO", "DISABLED", "FORCED"
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.bandwidth #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.buffer_segments #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retries #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retry_interval #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.server_validation #=> String, one of "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", "CHECK_CRYPTOGRAPHY_ONLY"
    #   resp.input_attachments[0].input_settings.source_end_behavior #=> String, one of "CONTINUE", "LOOP"
    #   resp.input_attachments[0].input_settings.video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709"
    #   resp.input_attachments[0].input_settings.video_selector.color_space_usage #=> String, one of "FALLBACK", "FORCE"
    #   resp.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_pid.pid #=> Integer
    #   resp.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_program_id.program_id #=> Integer
    #   resp.input_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC"
    #   resp.input_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.input_specification.resolution #=> String, one of "SD", "HD", "UHD"
    #   resp.log_level #=> String, one of "ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"
    #   resp.name #=> String
    #   resp.pipelines_running_count #=> Integer
    #   resp.role_arn #=> String
    #   resp.state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StartChannel AWS API Documentation
    #
    # @overload start_channel(params = {})
    # @param [Hash] params ({})
    def start_channel(params = {}, options = {})
      req = build_request(:start_channel, params)
      req.send_request(options)
    end

    # Stops a running channel
    #
    # @option params [required, String] :channel_id
    #
    # @return [Types::StopChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopChannelResponse#arn #arn} => String
    #   * {Types::StopChannelResponse#destinations #destinations} => Array&lt;Types::OutputDestination&gt;
    #   * {Types::StopChannelResponse#egress_endpoints #egress_endpoints} => Array&lt;Types::ChannelEgressEndpoint&gt;
    #   * {Types::StopChannelResponse#encoder_settings #encoder_settings} => Types::EncoderSettings
    #   * {Types::StopChannelResponse#id #id} => String
    #   * {Types::StopChannelResponse#input_attachments #input_attachments} => Array&lt;Types::InputAttachment&gt;
    #   * {Types::StopChannelResponse#input_specification #input_specification} => Types::InputSpecification
    #   * {Types::StopChannelResponse#log_level #log_level} => String
    #   * {Types::StopChannelResponse#name #name} => String
    #   * {Types::StopChannelResponse#pipelines_running_count #pipelines_running_count} => Integer
    #   * {Types::StopChannelResponse#role_arn #role_arn} => String
    #   * {Types::StopChannelResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_channel({
    #     channel_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.destinations #=> Array
    #   resp.destinations[0].id #=> String
    #   resp.destinations[0].settings #=> Array
    #   resp.destinations[0].settings[0].password_param #=> String
    #   resp.destinations[0].settings[0].stream_name #=> String
    #   resp.destinations[0].settings[0].url #=> String
    #   resp.destinations[0].settings[0].username #=> String
    #   resp.egress_endpoints #=> Array
    #   resp.egress_endpoints[0].source_ip #=> String
    #   resp.encoder_settings.audio_descriptions #=> Array
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_1770_1", "ITU_1770_2"
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO"
    #   resp.encoder_settings.audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.encoder_settings.audio_descriptions[0].audio_selector_name #=> String
    #   resp.encoder_settings.audio_descriptions[0].audio_type #=> String, one of "CLEAN_EFFECTS", "HEARING_IMPAIRED", "UNDEFINED", "VISUAL_IMPAIRED_COMMENTARY"
    #   resp.encoder_settings.audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.input_type #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.profile #=> String, one of "HEV1", "HEV2", "LC"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.spec #=> String, one of "MPEG2", "MPEG4"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "HIGH", "LOW", "MEDIUM_HIGH", "MEDIUM_LOW"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.drc_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_line #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_rf #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "NO_PASSTHROUGH", "WHEN_POSSIBLE"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "NO_SHIFT", "SHIFT_90_DEGREES"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "DPL2", "LO_RO", "LT_RT", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0"
    #   resp.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Float
    #   resp.encoder_settings.audio_descriptions[0].language_code #=> String
    #   resp.encoder_settings.audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.encoder_settings.audio_descriptions[0].name #=> String
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings #=> Array
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels #=> Array
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].gain #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].input_channel #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].output_channel #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.encoder_settings.audio_descriptions[0].stream_name #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.password_param #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.uri #=> String
    #   resp.encoder_settings.avail_blanking.avail_blanking_image.username #=> String
    #   resp.encoder_settings.avail_blanking.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.ad_avail_offset #=> Integer
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.ad_avail_offset #=> Integer
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.password_param #=> String
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.uri #=> String
    #   resp.encoder_settings.blackout_slate.blackout_slate_image.username #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.password_param #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.uri #=> String
    #   resp.encoder_settings.blackout_slate.network_end_blackout_image.username #=> String
    #   resp.encoder_settings.blackout_slate.network_id #=> String
    #   resp.encoder_settings.blackout_slate.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.caption_descriptions #=> Array
    #   resp.encoder_settings.caption_descriptions[0].caption_selector_name #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.password_param #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.uri #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.username #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_resolution #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_size #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_size #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_x_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_y_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.x_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.y_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.password_param #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.uri #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.username #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> String
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.encoder_settings.caption_descriptions[0].destination_settings.ttml_destination_settings.style_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED"
    #   resp.encoder_settings.caption_descriptions[0].language_code #=> String
    #   resp.encoder_settings.caption_descriptions[0].language_description #=> String
    #   resp.encoder_settings.caption_descriptions[0].name #=> String
    #   resp.encoder_settings.global_configuration.initial_audio_gain #=> Integer
    #   resp.encoder_settings.global_configuration.input_end_action #=> String, one of "NONE", "SWITCH_AND_LOOP_INPUTS"
    #   resp.encoder_settings.global_configuration.input_loss_behavior.black_frame_msec #=> Integer
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_color #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.password_param #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.uri #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.username #=> String
    #   resp.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_type #=> String, one of "COLOR", "SLATE"
    #   resp.encoder_settings.global_configuration.input_loss_behavior.repeat_frame_msec #=> Integer
    #   resp.encoder_settings.global_configuration.output_timing_source #=> String, one of "INPUT_CLOCK", "SYSTEM_CLOCK"
    #   resp.encoder_settings.global_configuration.support_low_framerate_inputs #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups #=> Array
    #   resp.encoder_settings.output_groups[0].name #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.rollover_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers #=> Array
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers[0] #=> String, one of "ADOBE", "ELEMENTAL", "ELEMENTAL_SCTE35"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_content #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_manifest #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings #=> Array
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].caption_channel #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_code #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_description #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_setting #=> String, one of "INSERT", "NONE", "OMIT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.client_cache #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.codec_specification #=> String, one of "RFC_4281", "RFC_6381"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.constant_iv #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.directory_structure #=> String, one of "SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.encryption_type #=> String, one of "AES128", "SAMPLE_AES"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.salt #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.token #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.media_store_storage_class #=> String, one of "TEMPORAL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.index_n_segments #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_in_manifest #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_source #=> String, one of "EXPLICIT", "FOLLOWS_SEGMENT_NUMBER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.keep_segments #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format_versions #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.password_param #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.uri #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.username #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.static_key_value #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_compression #=> String, one of "GZIP", "NONE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_duration_format #=> String, one of "FLOATING_POINT", "INTEGER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.min_segment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.mode #=> String, one of "LIVE", "VOD"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.output_selection #=> String, one of "MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time_period #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segments_per_subdirectory #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.stream_inf_resolution #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timestamp_delta_milliseconds #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ts_file_mode #=> String, one of "SEGMENTED_FILES", "SINGLE_FILE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.acquisition_point_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.audio_only_timecode_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED_CLOCK"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id_mode #=> String, one of "NO_EVENT_ID", "USE_CONFIGURED", "USE_TIMESTAMP"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_stop_behavior #=> String, one of "NONE", "SEND_EOS"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.filecache_duration #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.fragment_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.send_delay_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.sparse_track_type #=> String, one of "NONE", "SCTE_35"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.stream_manifest_behavior #=> String, one of "DO_NOT_SEND", "SEND"
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset #=> String
    #   resp.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset_mode #=> String, one of "USE_CONFIGURED_OFFSET", "USE_EVENT_START_DATE"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.authentication_scheme #=> String, one of "AKAMAI", "COMMON"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_full_behavior #=> String, one of "DISCONNECT_IMMEDIATELY", "WAIT_FOR_SERVER"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_length #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.caption_data #=> String, one of "ALL", "FIELD1_608", "FIELD1_AND_FIELD2_608"
    #   resp.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.restart_delay #=> Integer
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.input_loss_action #=> String, one of "DROP_PROGRAM", "DROP_TS", "EMIT_PROGRAM"
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].audio_description_names #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].audio_description_names[0] #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].caption_description_names #=> Array
    #   resp.encoder_settings.output_groups[0].outputs[0].caption_description_names[0] #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.extension #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_group_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.password_param #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.uri #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.username #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.audio_rendition_sets #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.segment_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.ms_smooth_output_settings.name_modifier #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.connection_retry_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.num_retries #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.buffer_msec #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.destination.destination_ref_id #=> String
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.column_depth #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.include_fec #=> String, one of "COLUMN", "COLUMN_AND_ROW"
    #   resp.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.row_length #=> Integer
    #   resp.encoder_settings.output_groups[0].outputs[0].video_description_name #=> String
    #   resp.encoder_settings.timecode_config.source #=> String, one of "EMBEDDED", "SYSTEMCLOCK", "ZEROBASED"
    #   resp.encoder_settings.timecode_config.sync_threshold #=> Integer
    #   resp.encoder_settings.video_descriptions #=> Array
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.adaptive_quantization #=> String, one of "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_fill_pct #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_size #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.flicker_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_num_b_frames #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size #=> Float
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.level #=> String, one of "H264_LEVEL_1", "H264_LEVEL_1_1", "H264_LEVEL_1_2", "H264_LEVEL_1_3", "H264_LEVEL_2", "H264_LEVEL_2_1", "H264_LEVEL_2_2", "H264_LEVEL_3", "H264_LEVEL_3_1", "H264_LEVEL_3_2", "H264_LEVEL_4", "H264_LEVEL_4_1", "H264_LEVEL_4_2", "H264_LEVEL_5", "H264_LEVEL_5_1", "H264_LEVEL_5_2", "H264_LEVEL_AUTO"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.look_ahead_rate_control #=> String, one of "HIGH", "LOW", "MEDIUM"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.num_ref_frames #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.slices #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.softness #=> Integer
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.spatial_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.temporal_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.encoder_settings.video_descriptions[0].codec_settings.h264_settings.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.encoder_settings.video_descriptions[0].height #=> Integer
    #   resp.encoder_settings.video_descriptions[0].name #=> String
    #   resp.encoder_settings.video_descriptions[0].respond_to_afd #=> String, one of "NONE", "PASSTHROUGH", "RESPOND"
    #   resp.encoder_settings.video_descriptions[0].scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.encoder_settings.video_descriptions[0].sharpness #=> Integer
    #   resp.encoder_settings.video_descriptions[0].width #=> Integer
    #   resp.id #=> String
    #   resp.input_attachments #=> Array
    #   resp.input_attachments[0].input_id #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors #=> Array
    #   resp.input_attachments[0].input_settings.audio_selectors[0].name #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_code #=> String
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_selection_policy #=> String, one of "LOOSE", "STRICT"
    #   resp.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_pid_selection.pid #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors #=> Array
    #   resp.input_attachments[0].input_settings.caption_selectors[0].language_code #=> String
    #   resp.input_attachments[0].input_settings.caption_selectors[0].name #=> String
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.scte_20_detection #=> String, one of "AUTO", "OFF"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.source_608_channel_number #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_27_source_settings.pid #=> Integer
    #   resp.input_attachments[0].input_settings.caption_selectors[0].selector_settings.teletext_source_settings.page_number #=> String
    #   resp.input_attachments[0].input_settings.deblock_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.input_attachments[0].input_settings.denoise_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.input_attachments[0].input_settings.filter_strength #=> Integer
    #   resp.input_attachments[0].input_settings.input_filter #=> String, one of "AUTO", "DISABLED", "FORCED"
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.bandwidth #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.buffer_segments #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retries #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retry_interval #=> Integer
    #   resp.input_attachments[0].input_settings.network_input_settings.server_validation #=> String, one of "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", "CHECK_CRYPTOGRAPHY_ONLY"
    #   resp.input_attachments[0].input_settings.source_end_behavior #=> String, one of "CONTINUE", "LOOP"
    #   resp.input_attachments[0].input_settings.video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709"
    #   resp.input_attachments[0].input_settings.video_selector.color_space_usage #=> String, one of "FALLBACK", "FORCE"
    #   resp.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_pid.pid #=> Integer
    #   resp.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_program_id.program_id #=> Integer
    #   resp.input_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC"
    #   resp.input_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.input_specification.resolution #=> String, one of "SD", "HD", "UHD"
    #   resp.log_level #=> String, one of "ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"
    #   resp.name #=> String
    #   resp.pipelines_running_count #=> Integer
    #   resp.role_arn #=> String
    #   resp.state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/StopChannel AWS API Documentation
    #
    # @overload stop_channel(params = {})
    # @param [Hash] params ({})
    def stop_channel(params = {}, options = {})
      req = build_request(:stop_channel, params)
      req.send_request(options)
    end

    # Updates a channel.
    #
    # @option params [required, String] :channel_id
    #
    # @option params [Array<Types::OutputDestination>] :destinations
    #
    # @option params [Types::EncoderSettings] :encoder_settings
    #
    # @option params [Array<Types::InputAttachment>] :input_attachments
    #
    # @option params [Types::InputSpecification] :input_specification
    #
    # @option params [String] :log_level
    #
    # @option params [String] :name
    #
    # @option params [String] :role_arn
    #
    # @return [Types::UpdateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChannelResponse#channel #channel} => Types::Channel
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel({
    #     channel_id: "__string", # required
    #     destinations: [
    #       {
    #         id: "__string",
    #         settings: [
    #           {
    #             password_param: "__string",
    #             stream_name: "__string",
    #             url: "__string",
    #             username: "__string",
    #           },
    #         ],
    #       },
    #     ],
    #     encoder_settings: {
    #       audio_descriptions: [ # required
    #         {
    #           audio_normalization_settings: {
    #             algorithm: "ITU_1770_1", # accepts ITU_1770_1, ITU_1770_2
    #             algorithm_control: "CORRECT_AUDIO", # accepts CORRECT_AUDIO
    #             target_lkfs: 1.0,
    #           },
    #           audio_selector_name: "__string", # required
    #           audio_type: "CLEAN_EFFECTS", # accepts CLEAN_EFFECTS, HEARING_IMPAIRED, UNDEFINED, VISUAL_IMPAIRED_COMMENTARY
    #           audio_type_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #           codec_settings: {
    #             aac_settings: {
    #               bitrate: 1.0,
    #               coding_mode: "AD_RECEIVER_MIX", # accepts AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
    #               input_type: "BROADCASTER_MIXED_AD", # accepts BROADCASTER_MIXED_AD, NORMAL
    #               profile: "HEV1", # accepts HEV1, HEV2, LC
    #               rate_control_mode: "CBR", # accepts CBR, VBR
    #               raw_format: "LATM_LOAS", # accepts LATM_LOAS, NONE
    #               sample_rate: 1.0,
    #               spec: "MPEG2", # accepts MPEG2, MPEG4
    #               vbr_quality: "HIGH", # accepts HIGH, LOW, MEDIUM_HIGH, MEDIUM_LOW
    #             },
    #             ac_3_settings: {
    #               bitrate: 1.0,
    #               bitstream_mode: "COMMENTARY", # accepts COMMENTARY, COMPLETE_MAIN, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE
    #               dialnorm: 1,
    #               drc_profile: "FILM_STANDARD", # accepts FILM_STANDARD, NONE
    #               lfe_filter: "DISABLED", # accepts DISABLED, ENABLED
    #               metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #             },
    #             eac_3_settings: {
    #               attenuation_control: "ATTENUATE_3_DB", # accepts ATTENUATE_3_DB, NONE
    #               bitrate: 1.0,
    #               bitstream_mode: "COMMENTARY", # accepts COMMENTARY, COMPLETE_MAIN, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2
    #               dc_filter: "DISABLED", # accepts DISABLED, ENABLED
    #               dialnorm: 1,
    #               drc_line: "FILM_LIGHT", # accepts FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH
    #               drc_rf: "FILM_LIGHT", # accepts FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH
    #               lfe_control: "LFE", # accepts LFE, NO_LFE
    #               lfe_filter: "DISABLED", # accepts DISABLED, ENABLED
    #               lo_ro_center_mix_level: 1.0,
    #               lo_ro_surround_mix_level: 1.0,
    #               lt_rt_center_mix_level: 1.0,
    #               lt_rt_surround_mix_level: 1.0,
    #               metadata_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #               passthrough_control: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, WHEN_POSSIBLE
    #               phase_control: "NO_SHIFT", # accepts NO_SHIFT, SHIFT_90_DEGREES
    #               stereo_downmix: "DPL2", # accepts DPL2, LO_RO, LT_RT, NOT_INDICATED
    #               surround_ex_mode: "DISABLED", # accepts DISABLED, ENABLED, NOT_INDICATED
    #               surround_mode: "DISABLED", # accepts DISABLED, ENABLED, NOT_INDICATED
    #             },
    #             mp_2_settings: {
    #               bitrate: 1.0,
    #               coding_mode: "CODING_MODE_1_0", # accepts CODING_MODE_1_0, CODING_MODE_2_0
    #               sample_rate: 1.0,
    #             },
    #             pass_through_settings: {
    #             },
    #           },
    #           language_code: "__stringMin3Max3",
    #           language_code_control: "FOLLOW_INPUT", # accepts FOLLOW_INPUT, USE_CONFIGURED
    #           name: "__string", # required
    #           remix_settings: {
    #             channel_mappings: [ # required
    #               {
    #                 input_channel_levels: [ # required
    #                   {
    #                     gain: 1, # required
    #                     input_channel: 1, # required
    #                   },
    #                 ],
    #                 output_channel: 1, # required
    #               },
    #             ],
    #             channels_in: 1,
    #             channels_out: 1,
    #           },
    #           stream_name: "__string",
    #         },
    #       ],
    #       avail_blanking: {
    #         avail_blanking_image: {
    #           password_param: "__string",
    #           uri: "__string", # required
    #           username: "__string",
    #         },
    #         state: "DISABLED", # accepts DISABLED, ENABLED
    #       },
    #       avail_configuration: {
    #         avail_settings: {
    #           scte_35_splice_insert: {
    #             ad_avail_offset: 1,
    #             no_regional_blackout_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #             web_delivery_allowed_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #           },
    #           scte_35_time_signal_apos: {
    #             ad_avail_offset: 1,
    #             no_regional_blackout_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #             web_delivery_allowed_flag: "FOLLOW", # accepts FOLLOW, IGNORE
    #           },
    #         },
    #       },
    #       blackout_slate: {
    #         blackout_slate_image: {
    #           password_param: "__string",
    #           uri: "__string", # required
    #           username: "__string",
    #         },
    #         network_end_blackout: "DISABLED", # accepts DISABLED, ENABLED
    #         network_end_blackout_image: {
    #           password_param: "__string",
    #           uri: "__string", # required
    #           username: "__string",
    #         },
    #         network_id: "__stringMin34Max34",
    #         state: "DISABLED", # accepts DISABLED, ENABLED
    #       },
    #       caption_descriptions: [
    #         {
    #           caption_selector_name: "__string", # required
    #           destination_settings: {
    #             arib_destination_settings: {
    #             },
    #             burn_in_destination_settings: {
    #               alignment: "CENTERED", # accepts CENTERED, LEFT, SMART
    #               background_color: "BLACK", # accepts BLACK, NONE, WHITE
    #               background_opacity: 1,
    #               font: {
    #                 password_param: "__string",
    #                 uri: "__string", # required
    #                 username: "__string",
    #               },
    #               font_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #               font_opacity: 1,
    #               font_resolution: 1,
    #               font_size: "__string",
    #               outline_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #               outline_size: 1,
    #               shadow_color: "BLACK", # accepts BLACK, NONE, WHITE
    #               shadow_opacity: 1,
    #               shadow_x_offset: 1,
    #               shadow_y_offset: 1,
    #               teletext_grid_control: "FIXED", # accepts FIXED, SCALED
    #               x_position: 1,
    #               y_position: 1,
    #             },
    #             dvb_sub_destination_settings: {
    #               alignment: "CENTERED", # accepts CENTERED, LEFT, SMART
    #               background_color: "BLACK", # accepts BLACK, NONE, WHITE
    #               background_opacity: 1,
    #               font: {
    #                 password_param: "__string",
    #                 uri: "__string", # required
    #                 username: "__string",
    #               },
    #               font_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #               font_opacity: 1,
    #               font_resolution: 1,
    #               font_size: "__string",
    #               outline_color: "BLACK", # accepts BLACK, BLUE, GREEN, RED, WHITE, YELLOW
    #               outline_size: 1,
    #               shadow_color: "BLACK", # accepts BLACK, NONE, WHITE
    #               shadow_opacity: 1,
    #               shadow_x_offset: 1,
    #               shadow_y_offset: 1,
    #               teletext_grid_control: "FIXED", # accepts FIXED, SCALED
    #               x_position: 1,
    #               y_position: 1,
    #             },
    #             embedded_destination_settings: {
    #             },
    #             embedded_plus_scte_20_destination_settings: {
    #             },
    #             rtmp_caption_info_destination_settings: {
    #             },
    #             scte_20_plus_embedded_destination_settings: {
    #             },
    #             scte_27_destination_settings: {
    #             },
    #             smpte_tt_destination_settings: {
    #             },
    #             teletext_destination_settings: {
    #             },
    #             ttml_destination_settings: {
    #               style_control: "PASSTHROUGH", # accepts PASSTHROUGH, USE_CONFIGURED
    #             },
    #             webvtt_destination_settings: {
    #             },
    #           },
    #           language_code: "__string",
    #           language_description: "__string",
    #           name: "__string", # required
    #         },
    #       ],
    #       global_configuration: {
    #         initial_audio_gain: 1,
    #         input_end_action: "NONE", # accepts NONE, SWITCH_AND_LOOP_INPUTS
    #         input_loss_behavior: {
    #           black_frame_msec: 1,
    #           input_loss_image_color: "__stringMin6Max6",
    #           input_loss_image_slate: {
    #             password_param: "__string",
    #             uri: "__string", # required
    #             username: "__string",
    #           },
    #           input_loss_image_type: "COLOR", # accepts COLOR, SLATE
    #           repeat_frame_msec: 1,
    #         },
    #         output_timing_source: "INPUT_CLOCK", # accepts INPUT_CLOCK, SYSTEM_CLOCK
    #         support_low_framerate_inputs: "DISABLED", # accepts DISABLED, ENABLED
    #       },
    #       output_groups: [ # required
    #         {
    #           name: "__stringMax32",
    #           output_group_settings: { # required
    #             archive_group_settings: {
    #               destination: { # required
    #                 destination_ref_id: "__string",
    #               },
    #               rollover_interval: 1,
    #             },
    #             hls_group_settings: {
    #               ad_markers: ["ADOBE"], # accepts ADOBE, ELEMENTAL, ELEMENTAL_SCTE35
    #               base_url_content: "__string",
    #               base_url_manifest: "__string",
    #               caption_language_mappings: [
    #                 {
    #                   caption_channel: 1, # required
    #                   language_code: "__stringMin3Max3", # required
    #                   language_description: "__stringMin1", # required
    #                 },
    #               ],
    #               caption_language_setting: "INSERT", # accepts INSERT, NONE, OMIT
    #               client_cache: "DISABLED", # accepts DISABLED, ENABLED
    #               codec_specification: "RFC_4281", # accepts RFC_4281, RFC_6381
    #               constant_iv: "__stringMin32Max32",
    #               destination: { # required
    #                 destination_ref_id: "__string",
    #               },
    #               directory_structure: "SINGLE_DIRECTORY", # accepts SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM
    #               encryption_type: "AES128", # accepts AES128, SAMPLE_AES
    #               hls_cdn_settings: {
    #                 hls_akamai_settings: {
    #                   connection_retry_interval: 1,
    #                   filecache_duration: 1,
    #                   http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #                   num_retries: 1,
    #                   restart_delay: 1,
    #                   salt: "__string",
    #                   token: "__string",
    #                 },
    #                 hls_basic_put_settings: {
    #                   connection_retry_interval: 1,
    #                   filecache_duration: 1,
    #                   num_retries: 1,
    #                   restart_delay: 1,
    #                 },
    #                 hls_media_store_settings: {
    #                   connection_retry_interval: 1,
    #                   filecache_duration: 1,
    #                   media_store_storage_class: "TEMPORAL", # accepts TEMPORAL
    #                   num_retries: 1,
    #                   restart_delay: 1,
    #                 },
    #                 hls_webdav_settings: {
    #                   connection_retry_interval: 1,
    #                   filecache_duration: 1,
    #                   http_transfer_mode: "CHUNKED", # accepts CHUNKED, NON_CHUNKED
    #                   num_retries: 1,
    #                   restart_delay: 1,
    #                 },
    #               },
    #               index_n_segments: 1,
    #               input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #               iv_in_manifest: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #               iv_source: "EXPLICIT", # accepts EXPLICIT, FOLLOWS_SEGMENT_NUMBER
    #               keep_segments: 1,
    #               key_format: "__string",
    #               key_format_versions: "__string",
    #               key_provider_settings: {
    #                 static_key_settings: {
    #                   key_provider_server: { # required
    #                     password_param: "__string",
    #                     uri: "__string", # required
    #                     username: "__string",
    #                   },
    #                   static_key_value: "__stringMin32Max32", # required
    #                 },
    #               },
    #               manifest_compression: "GZIP", # accepts GZIP, NONE
    #               manifest_duration_format: "FLOATING_POINT", # accepts FLOATING_POINT, INTEGER
    #               min_segment_length: 1,
    #               mode: "LIVE", # accepts LIVE, VOD
    #               output_selection: "MANIFESTS_AND_SEGMENTS", # accepts MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY
    #               program_date_time: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #               program_date_time_period: 1,
    #               segment_length: 1,
    #               segmentation_mode: "USE_INPUT_SEGMENTATION", # accepts USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION
    #               segments_per_subdirectory: 1,
    #               stream_inf_resolution: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #               timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #               timed_metadata_id_3_period: 1,
    #               timestamp_delta_milliseconds: 1,
    #               ts_file_mode: "SEGMENTED_FILES", # accepts SEGMENTED_FILES, SINGLE_FILE
    #             },
    #             ms_smooth_group_settings: {
    #               acquisition_point_id: "__string",
    #               audio_only_timecode_control: "PASSTHROUGH", # accepts PASSTHROUGH, USE_CONFIGURED_CLOCK
    #               certificate_mode: "SELF_SIGNED", # accepts SELF_SIGNED, VERIFY_AUTHENTICITY
    #               connection_retry_interval: 1,
    #               destination: { # required
    #                 destination_ref_id: "__string",
    #               },
    #               event_id: "__string",
    #               event_id_mode: "NO_EVENT_ID", # accepts NO_EVENT_ID, USE_CONFIGURED, USE_TIMESTAMP
    #               event_stop_behavior: "NONE", # accepts NONE, SEND_EOS
    #               filecache_duration: 1,
    #               fragment_length: 1,
    #               input_loss_action: "EMIT_OUTPUT", # accepts EMIT_OUTPUT, PAUSE_OUTPUT
    #               num_retries: 1,
    #               restart_delay: 1,
    #               segmentation_mode: "USE_INPUT_SEGMENTATION", # accepts USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION
    #               send_delay_ms: 1,
    #               sparse_track_type: "NONE", # accepts NONE, SCTE_35
    #               stream_manifest_behavior: "DO_NOT_SEND", # accepts DO_NOT_SEND, SEND
    #               timestamp_offset: "__string",
    #               timestamp_offset_mode: "USE_CONFIGURED_OFFSET", # accepts USE_CONFIGURED_OFFSET, USE_EVENT_START_DATE
    #             },
    #             rtmp_group_settings: {
    #               authentication_scheme: "AKAMAI", # accepts AKAMAI, COMMON
    #               cache_full_behavior: "DISCONNECT_IMMEDIATELY", # accepts DISCONNECT_IMMEDIATELY, WAIT_FOR_SERVER
    #               cache_length: 1,
    #               caption_data: "ALL", # accepts ALL, FIELD1_608, FIELD1_AND_FIELD2_608
    #               restart_delay: 1,
    #             },
    #             udp_group_settings: {
    #               input_loss_action: "DROP_PROGRAM", # accepts DROP_PROGRAM, DROP_TS, EMIT_PROGRAM
    #               timed_metadata_id_3_frame: "NONE", # accepts NONE, PRIV, TDRL
    #               timed_metadata_id_3_period: 1,
    #             },
    #           },
    #           outputs: [ # required
    #             {
    #               audio_description_names: ["__string"],
    #               caption_description_names: ["__string"],
    #               output_name: "__stringMin1Max255",
    #               output_settings: { # required
    #                 archive_output_settings: {
    #                   container_settings: { # required
    #                     m2ts_settings: {
    #                       absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #                       arib: "DISABLED", # accepts DISABLED, ENABLED
    #                       arib_captions_pid: "__string",
    #                       arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #                       audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #                       audio_frames_per_pes: 1,
    #                       audio_pids: "__string",
    #                       audio_stream_type: "ATSC", # accepts ATSC, DVB
    #                       bitrate: 1,
    #                       buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                       cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #                       dvb_nit_settings: {
    #                         network_id: 1, # required
    #                         network_name: "__stringMin1Max256", # required
    #                         rep_interval: 1,
    #                       },
    #                       dvb_sdt_settings: {
    #                         output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                         rep_interval: 1,
    #                         service_name: "__stringMin1Max256",
    #                         service_provider_name: "__stringMin1Max256",
    #                       },
    #                       dvb_sub_pids: "__string",
    #                       dvb_tdt_settings: {
    #                         rep_interval: 1,
    #                       },
    #                       dvb_teletext_pid: "__string",
    #                       ebif: "NONE", # accepts NONE, PASSTHROUGH
    #                       ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                       ebp_lookahead_ms: 1,
    #                       ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                       ecm_pid: "__string",
    #                       es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                       etv_platform_pid: "__string",
    #                       etv_signal_pid: "__string",
    #                       fragment_time: 1.0,
    #                       klv: "NONE", # accepts NONE, PASSTHROUGH
    #                       klv_data_pids: "__string",
    #                       null_packet_bitrate: 1.0,
    #                       pat_interval: 1,
    #                       pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                       pcr_period: 1,
    #                       pcr_pid: "__string",
    #                       pmt_interval: 1,
    #                       pmt_pid: "__string",
    #                       program_num: 1,
    #                       rate_mode: "CBR", # accepts CBR, VBR
    #                       scte_27_pids: "__string",
    #                       scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #                       scte_35_pid: "__string",
    #                       segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #                       segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                       segmentation_time: 1.0,
    #                       timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                       timed_metadata_pid: "__string",
    #                       transport_stream_id: 1,
    #                       video_pid: "__string",
    #                     },
    #                   },
    #                   extension: "__string",
    #                   name_modifier: "__string",
    #                 },
    #                 hls_output_settings: {
    #                   hls_settings: { # required
    #                     audio_only_hls_settings: {
    #                       audio_group_id: "__string",
    #                       audio_only_image: {
    #                         password_param: "__string",
    #                         uri: "__string", # required
    #                         username: "__string",
    #                       },
    #                       audio_track_type: "ALTERNATE_AUDIO_AUTO_SELECT", # accepts ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM
    #                     },
    #                     standard_hls_settings: {
    #                       audio_rendition_sets: "__string",
    #                       m3u_8_settings: { # required
    #                         audio_frames_per_pes: 1,
    #                         audio_pids: "__string",
    #                         ecm_pid: "__string",
    #                         pat_interval: 1,
    #                         pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                         pcr_period: 1,
    #                         pcr_pid: "__string",
    #                         pmt_interval: 1,
    #                         pmt_pid: "__string",
    #                         program_num: 1,
    #                         scte_35_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                         scte_35_pid: "__string",
    #                         timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                         timed_metadata_pid: "__string",
    #                         transport_stream_id: 1,
    #                         video_pid: "__string",
    #                       },
    #                     },
    #                   },
    #                   name_modifier: "__stringMin1",
    #                   segment_modifier: "__string",
    #                 },
    #                 ms_smooth_output_settings: {
    #                   name_modifier: "__string",
    #                 },
    #                 rtmp_output_settings: {
    #                   certificate_mode: "SELF_SIGNED", # accepts SELF_SIGNED, VERIFY_AUTHENTICITY
    #                   connection_retry_interval: 1,
    #                   destination: { # required
    #                     destination_ref_id: "__string",
    #                   },
    #                   num_retries: 1,
    #                 },
    #                 udp_output_settings: {
    #                   buffer_msec: 1,
    #                   container_settings: { # required
    #                     m2ts_settings: {
    #                       absent_input_audio_behavior: "DROP", # accepts DROP, ENCODE_SILENCE
    #                       arib: "DISABLED", # accepts DISABLED, ENABLED
    #                       arib_captions_pid: "__string",
    #                       arib_captions_pid_control: "AUTO", # accepts AUTO, USE_CONFIGURED
    #                       audio_buffer_model: "ATSC", # accepts ATSC, DVB
    #                       audio_frames_per_pes: 1,
    #                       audio_pids: "__string",
    #                       audio_stream_type: "ATSC", # accepts ATSC, DVB
    #                       bitrate: 1,
    #                       buffer_model: "MULTIPLEX", # accepts MULTIPLEX, NONE
    #                       cc_descriptor: "DISABLED", # accepts DISABLED, ENABLED
    #                       dvb_nit_settings: {
    #                         network_id: 1, # required
    #                         network_name: "__stringMin1Max256", # required
    #                         rep_interval: 1,
    #                       },
    #                       dvb_sdt_settings: {
    #                         output_sdt: "SDT_FOLLOW", # accepts SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE
    #                         rep_interval: 1,
    #                         service_name: "__stringMin1Max256",
    #                         service_provider_name: "__stringMin1Max256",
    #                       },
    #                       dvb_sub_pids: "__string",
    #                       dvb_tdt_settings: {
    #                         rep_interval: 1,
    #                       },
    #                       dvb_teletext_pid: "__string",
    #                       ebif: "NONE", # accepts NONE, PASSTHROUGH
    #                       ebp_audio_interval: "VIDEO_AND_FIXED_INTERVALS", # accepts VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL
    #                       ebp_lookahead_ms: 1,
    #                       ebp_placement: "VIDEO_AND_AUDIO_PIDS", # accepts VIDEO_AND_AUDIO_PIDS, VIDEO_PID
    #                       ecm_pid: "__string",
    #                       es_rate_in_pes: "EXCLUDE", # accepts EXCLUDE, INCLUDE
    #                       etv_platform_pid: "__string",
    #                       etv_signal_pid: "__string",
    #                       fragment_time: 1.0,
    #                       klv: "NONE", # accepts NONE, PASSTHROUGH
    #                       klv_data_pids: "__string",
    #                       null_packet_bitrate: 1.0,
    #                       pat_interval: 1,
    #                       pcr_control: "CONFIGURED_PCR_PERIOD", # accepts CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET
    #                       pcr_period: 1,
    #                       pcr_pid: "__string",
    #                       pmt_interval: 1,
    #                       pmt_pid: "__string",
    #                       program_num: 1,
    #                       rate_mode: "CBR", # accepts CBR, VBR
    #                       scte_27_pids: "__string",
    #                       scte_35_control: "NONE", # accepts NONE, PASSTHROUGH
    #                       scte_35_pid: "__string",
    #                       segmentation_markers: "EBP", # accepts EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART
    #                       segmentation_style: "MAINTAIN_CADENCE", # accepts MAINTAIN_CADENCE, RESET_CADENCE
    #                       segmentation_time: 1.0,
    #                       timed_metadata_behavior: "NO_PASSTHROUGH", # accepts NO_PASSTHROUGH, PASSTHROUGH
    #                       timed_metadata_pid: "__string",
    #                       transport_stream_id: 1,
    #                       video_pid: "__string",
    #                     },
    #                   },
    #                   destination: { # required
    #                     destination_ref_id: "__string",
    #                   },
    #                   fec_output_settings: {
    #                     column_depth: 1,
    #                     include_fec: "COLUMN", # accepts COLUMN, COLUMN_AND_ROW
    #                     row_length: 1,
    #                   },
    #                 },
    #               },
    #               video_description_name: "__string",
    #             },
    #           ],
    #         },
    #       ],
    #       timecode_config: { # required
    #         source: "EMBEDDED", # required, accepts EMBEDDED, SYSTEMCLOCK, ZEROBASED
    #         sync_threshold: 1,
    #       },
    #       video_descriptions: [ # required
    #         {
    #           codec_settings: {
    #             h264_settings: {
    #               adaptive_quantization: "HIGH", # accepts HIGH, HIGHER, LOW, MAX, MEDIUM, OFF
    #               afd_signaling: "AUTO", # accepts AUTO, FIXED, NONE
    #               bitrate: 1,
    #               buf_fill_pct: 1,
    #               buf_size: 1,
    #               color_metadata: "IGNORE", # accepts IGNORE, INSERT
    #               entropy_encoding: "CABAC", # accepts CABAC, CAVLC
    #               fixed_afd: "AFD_0000", # accepts AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111
    #               flicker_aq: "DISABLED", # accepts DISABLED, ENABLED
    #               framerate_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               framerate_denominator: 1,
    #               framerate_numerator: 1,
    #               gop_b_reference: "DISABLED", # accepts DISABLED, ENABLED
    #               gop_closed_cadence: 1,
    #               gop_num_b_frames: 1,
    #               gop_size: 1.0,
    #               gop_size_units: "FRAMES", # accepts FRAMES, SECONDS
    #               level: "H264_LEVEL_1", # accepts H264_LEVEL_1, H264_LEVEL_1_1, H264_LEVEL_1_2, H264_LEVEL_1_3, H264_LEVEL_2, H264_LEVEL_2_1, H264_LEVEL_2_2, H264_LEVEL_3, H264_LEVEL_3_1, H264_LEVEL_3_2, H264_LEVEL_4, H264_LEVEL_4_1, H264_LEVEL_4_2, H264_LEVEL_5, H264_LEVEL_5_1, H264_LEVEL_5_2, H264_LEVEL_AUTO
    #               look_ahead_rate_control: "HIGH", # accepts HIGH, LOW, MEDIUM
    #               max_bitrate: 1,
    #               min_i_interval: 1,
    #               num_ref_frames: 1,
    #               par_control: "INITIALIZE_FROM_SOURCE", # accepts INITIALIZE_FROM_SOURCE, SPECIFIED
    #               par_denominator: 1,
    #               par_numerator: 1,
    #               profile: "BASELINE", # accepts BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN
    #               rate_control_mode: "CBR", # accepts CBR, VBR
    #               scan_type: "INTERLACED", # accepts INTERLACED, PROGRESSIVE
    #               scene_change_detect: "DISABLED", # accepts DISABLED, ENABLED
    #               slices: 1,
    #               softness: 1,
    #               spatial_aq: "DISABLED", # accepts DISABLED, ENABLED
    #               syntax: "DEFAULT", # accepts DEFAULT, RP2027
    #               temporal_aq: "DISABLED", # accepts DISABLED, ENABLED
    #               timecode_insertion: "DISABLED", # accepts DISABLED, PIC_TIMING_SEI
    #             },
    #           },
    #           height: 1,
    #           name: "__string", # required
    #           respond_to_afd: "NONE", # accepts NONE, PASSTHROUGH, RESPOND
    #           scaling_behavior: "DEFAULT", # accepts DEFAULT, STRETCH_TO_OUTPUT
    #           sharpness: 1,
    #           width: 1,
    #         },
    #       ],
    #     },
    #     input_attachments: [
    #       {
    #         input_id: "__string",
    #         input_settings: {
    #           audio_selectors: [
    #             {
    #               name: "__string", # required
    #               selector_settings: {
    #                 audio_language_selection: {
    #                   language_code: "__string", # required
    #                   language_selection_policy: "LOOSE", # accepts LOOSE, STRICT
    #                 },
    #                 audio_pid_selection: {
    #                   pid: 1, # required
    #                 },
    #               },
    #             },
    #           ],
    #           caption_selectors: [
    #             {
    #               language_code: "__string",
    #               name: "__string", # required
    #               selector_settings: {
    #                 arib_source_settings: {
    #                 },
    #                 dvb_sub_source_settings: {
    #                   pid: 1,
    #                 },
    #                 embedded_source_settings: {
    #                   convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #                   scte_20_detection: "AUTO", # accepts AUTO, OFF
    #                   source_608_channel_number: 1,
    #                   source_608_track_number: 1,
    #                 },
    #                 scte_20_source_settings: {
    #                   convert_608_to_708: "DISABLED", # accepts DISABLED, UPCONVERT
    #                   source_608_channel_number: 1,
    #                 },
    #                 scte_27_source_settings: {
    #                   pid: 1,
    #                 },
    #                 teletext_source_settings: {
    #                   page_number: "__string",
    #                 },
    #               },
    #             },
    #           ],
    #           deblock_filter: "DISABLED", # accepts DISABLED, ENABLED
    #           denoise_filter: "DISABLED", # accepts DISABLED, ENABLED
    #           filter_strength: 1,
    #           input_filter: "AUTO", # accepts AUTO, DISABLED, FORCED
    #           network_input_settings: {
    #             hls_input_settings: {
    #               bandwidth: 1,
    #               buffer_segments: 1,
    #               retries: 1,
    #               retry_interval: 1,
    #             },
    #             server_validation: "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", # accepts CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME, CHECK_CRYPTOGRAPHY_ONLY
    #           },
    #           source_end_behavior: "CONTINUE", # accepts CONTINUE, LOOP
    #           video_selector: {
    #             color_space: "FOLLOW", # accepts FOLLOW, REC_601, REC_709
    #             color_space_usage: "FALLBACK", # accepts FALLBACK, FORCE
    #             selector_settings: {
    #               video_selector_pid: {
    #                 pid: 1,
    #               },
    #               video_selector_program_id: {
    #                 program_id: 1,
    #               },
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     input_specification: {
    #       codec: "MPEG2", # accepts MPEG2, AVC, HEVC
    #       maximum_bitrate: "MAX_10_MBPS", # accepts MAX_10_MBPS, MAX_20_MBPS, MAX_50_MBPS
    #       resolution: "SD", # accepts SD, HD, UHD
    #     },
    #     log_level: "ERROR", # accepts ERROR, WARNING, INFO, DEBUG, DISABLED
    #     name: "__string",
    #     role_arn: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel.arn #=> String
    #   resp.channel.destinations #=> Array
    #   resp.channel.destinations[0].id #=> String
    #   resp.channel.destinations[0].settings #=> Array
    #   resp.channel.destinations[0].settings[0].password_param #=> String
    #   resp.channel.destinations[0].settings[0].stream_name #=> String
    #   resp.channel.destinations[0].settings[0].url #=> String
    #   resp.channel.destinations[0].settings[0].username #=> String
    #   resp.channel.egress_endpoints #=> Array
    #   resp.channel.egress_endpoints[0].source_ip #=> String
    #   resp.channel.encoder_settings.audio_descriptions #=> Array
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm #=> String, one of "ITU_1770_1", "ITU_1770_2"
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_normalization_settings.algorithm_control #=> String, one of "CORRECT_AUDIO"
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_normalization_settings.target_lkfs #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_selector_name #=> String
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_type #=> String, one of "CLEAN_EFFECTS", "HEARING_IMPAIRED", "UNDEFINED", "VISUAL_IMPAIRED_COMMENTARY"
    #   resp.channel.encoder_settings.audio_descriptions[0].audio_type_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.bitrate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.coding_mode #=> String, one of "AD_RECEIVER_MIX", "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_5_1"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.input_type #=> String, one of "BROADCASTER_MIXED_AD", "NORMAL"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.profile #=> String, one of "HEV1", "HEV2", "LC"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.raw_format #=> String, one of "LATM_LOAS", "NONE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.sample_rate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.spec #=> String, one of "MPEG2", "MPEG4"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.aac_settings.vbr_quality #=> String, one of "HIGH", "LOW", "MEDIUM_HIGH", "MEDIUM_LOW"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitrate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "DIALOGUE", "EMERGENCY", "HEARING_IMPAIRED", "MUSIC_AND_EFFECTS", "VISUALLY_IMPAIRED", "VOICE_OVER"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_1_1", "CODING_MODE_2_0", "CODING_MODE_3_2_LFE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.dialnorm #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.drc_profile #=> String, one of "FILM_STANDARD", "NONE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.ac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.attenuation_control #=> String, one of "ATTENUATE_3_DB", "NONE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitrate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.bitstream_mode #=> String, one of "COMMENTARY", "COMPLETE_MAIN", "EMERGENCY", "HEARING_IMPAIRED", "VISUALLY_IMPAIRED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0", "CODING_MODE_3_2"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dc_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.dialnorm #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_line #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.drc_rf #=> String, one of "FILM_LIGHT", "FILM_STANDARD", "MUSIC_LIGHT", "MUSIC_STANDARD", "NONE", "SPEECH"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_control #=> String, one of "LFE", "NO_LFE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lfe_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_center_mix_level #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lo_ro_surround_mix_level #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_center_mix_level #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.lt_rt_surround_mix_level #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.metadata_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.passthrough_control #=> String, one of "NO_PASSTHROUGH", "WHEN_POSSIBLE"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.phase_control #=> String, one of "NO_SHIFT", "SHIFT_90_DEGREES"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.stereo_downmix #=> String, one of "DPL2", "LO_RO", "LT_RT", "NOT_INDICATED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_ex_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.eac_3_settings.surround_mode #=> String, one of "DISABLED", "ENABLED", "NOT_INDICATED"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.bitrate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.coding_mode #=> String, one of "CODING_MODE_1_0", "CODING_MODE_2_0"
    #   resp.channel.encoder_settings.audio_descriptions[0].codec_settings.mp_2_settings.sample_rate #=> Float
    #   resp.channel.encoder_settings.audio_descriptions[0].language_code #=> String
    #   resp.channel.encoder_settings.audio_descriptions[0].language_code_control #=> String, one of "FOLLOW_INPUT", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.audio_descriptions[0].name #=> String
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings #=> Array
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels #=> Array
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].gain #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].input_channel_levels[0].input_channel #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channel_mappings[0].output_channel #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channels_in #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].remix_settings.channels_out #=> Integer
    #   resp.channel.encoder_settings.audio_descriptions[0].stream_name #=> String
    #   resp.channel.encoder_settings.avail_blanking.avail_blanking_image.password_param #=> String
    #   resp.channel.encoder_settings.avail_blanking.avail_blanking_image.uri #=> String
    #   resp.channel.encoder_settings.avail_blanking.avail_blanking_image.username #=> String
    #   resp.channel.encoder_settings.avail_blanking.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.ad_avail_offset #=> Integer
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_splice_insert.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.ad_avail_offset #=> Integer
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.no_regional_blackout_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.channel.encoder_settings.avail_configuration.avail_settings.scte_35_time_signal_apos.web_delivery_allowed_flag #=> String, one of "FOLLOW", "IGNORE"
    #   resp.channel.encoder_settings.blackout_slate.blackout_slate_image.password_param #=> String
    #   resp.channel.encoder_settings.blackout_slate.blackout_slate_image.uri #=> String
    #   resp.channel.encoder_settings.blackout_slate.blackout_slate_image.username #=> String
    #   resp.channel.encoder_settings.blackout_slate.network_end_blackout #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.blackout_slate.network_end_blackout_image.password_param #=> String
    #   resp.channel.encoder_settings.blackout_slate.network_end_blackout_image.uri #=> String
    #   resp.channel.encoder_settings.blackout_slate.network_end_blackout_image.username #=> String
    #   resp.channel.encoder_settings.blackout_slate.network_id #=> String
    #   resp.channel.encoder_settings.blackout_slate.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.caption_descriptions #=> Array
    #   resp.channel.encoder_settings.caption_descriptions[0].caption_selector_name #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.background_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.password_param #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.uri #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font.username #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_resolution #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.font_size #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.outline_size #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_x_offset #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.shadow_y_offset #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.x_position #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.burn_in_destination_settings.y_position #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.alignment #=> String, one of "CENTERED", "LEFT", "SMART"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.background_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.password_param #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.uri #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font.username #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_resolution #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.font_size #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_color #=> String, one of "BLACK", "BLUE", "GREEN", "RED", "WHITE", "YELLOW"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.outline_size #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_color #=> String, one of "BLACK", "NONE", "WHITE"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_opacity #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_x_offset #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.shadow_y_offset #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.teletext_grid_control #=> String, one of "FIXED", "SCALED"
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.x_position #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.dvb_sub_destination_settings.y_position #=> Integer
    #   resp.channel.encoder_settings.caption_descriptions[0].destination_settings.ttml_destination_settings.style_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.caption_descriptions[0].language_code #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].language_description #=> String
    #   resp.channel.encoder_settings.caption_descriptions[0].name #=> String
    #   resp.channel.encoder_settings.global_configuration.initial_audio_gain #=> Integer
    #   resp.channel.encoder_settings.global_configuration.input_end_action #=> String, one of "NONE", "SWITCH_AND_LOOP_INPUTS"
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.black_frame_msec #=> Integer
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_color #=> String
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.password_param #=> String
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.uri #=> String
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_slate.username #=> String
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.input_loss_image_type #=> String, one of "COLOR", "SLATE"
    #   resp.channel.encoder_settings.global_configuration.input_loss_behavior.repeat_frame_msec #=> Integer
    #   resp.channel.encoder_settings.global_configuration.output_timing_source #=> String, one of "INPUT_CLOCK", "SYSTEM_CLOCK"
    #   resp.channel.encoder_settings.global_configuration.support_low_framerate_inputs #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups #=> Array
    #   resp.channel.encoder_settings.output_groups[0].name #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.archive_group_settings.rollover_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers #=> Array
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ad_markers[0] #=> String, one of "ADOBE", "ELEMENTAL", "ELEMENTAL_SCTE35"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_content #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.base_url_manifest #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings #=> Array
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].caption_channel #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_code #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_mappings[0].language_description #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.caption_language_setting #=> String, one of "INSERT", "NONE", "OMIT"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.client_cache #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.codec_specification #=> String, one of "RFC_4281", "RFC_6381"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.constant_iv #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.directory_structure #=> String, one of "SINGLE_DIRECTORY", "SUBDIRECTORY_PER_STREAM"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.encryption_type #=> String, one of "AES128", "SAMPLE_AES"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.salt #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_akamai_settings.token #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_basic_put_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.media_store_storage_class #=> String, one of "TEMPORAL"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_media_store_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.http_transfer_mode #=> String, one of "CHUNKED", "NON_CHUNKED"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.hls_cdn_settings.hls_webdav_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.index_n_segments #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_in_manifest #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.iv_source #=> String, one of "EXPLICIT", "FOLLOWS_SEGMENT_NUMBER"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.keep_segments #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_format_versions #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.password_param #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.uri #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.key_provider_server.username #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.key_provider_settings.static_key_settings.static_key_value #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_compression #=> String, one of "GZIP", "NONE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.manifest_duration_format #=> String, one of "FLOATING_POINT", "INTEGER"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.min_segment_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.mode #=> String, one of "LIVE", "VOD"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.output_selection #=> String, one of "MANIFESTS_AND_SEGMENTS", "SEGMENTS_ONLY"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.program_date_time_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segment_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.segments_per_subdirectory #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.stream_inf_resolution #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.timestamp_delta_milliseconds #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.hls_group_settings.ts_file_mode #=> String, one of "SEGMENTED_FILES", "SINGLE_FILE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.acquisition_point_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.audio_only_timecode_control #=> String, one of "PASSTHROUGH", "USE_CONFIGURED_CLOCK"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_id_mode #=> String, one of "NO_EVENT_ID", "USE_CONFIGURED", "USE_TIMESTAMP"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.event_stop_behavior #=> String, one of "NONE", "SEND_EOS"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.filecache_duration #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.fragment_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.input_loss_action #=> String, one of "EMIT_OUTPUT", "PAUSE_OUTPUT"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.segmentation_mode #=> String, one of "USE_INPUT_SEGMENTATION", "USE_SEGMENT_DURATION"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.send_delay_ms #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.sparse_track_type #=> String, one of "NONE", "SCTE_35"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.stream_manifest_behavior #=> String, one of "DO_NOT_SEND", "SEND"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset #=> String
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.ms_smooth_group_settings.timestamp_offset_mode #=> String, one of "USE_CONFIGURED_OFFSET", "USE_EVENT_START_DATE"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.authentication_scheme #=> String, one of "AKAMAI", "COMMON"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_full_behavior #=> String, one of "DISCONNECT_IMMEDIATELY", "WAIT_FOR_SERVER"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.cache_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.caption_data #=> String, one of "ALL", "FIELD1_608", "FIELD1_AND_FIELD2_608"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.rtmp_group_settings.restart_delay #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.input_loss_action #=> String, one of "DROP_PROGRAM", "DROP_TS", "EMIT_PROGRAM"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_frame #=> String, one of "NONE", "PRIV", "TDRL"
    #   resp.channel.encoder_settings.output_groups[0].output_group_settings.udp_group_settings.timed_metadata_id_3_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs #=> Array
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].audio_description_names #=> Array
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].audio_description_names[0] #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].caption_description_names #=> Array
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].caption_description_names[0] #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.extension #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.archive_output_settings.name_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_group_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.password_param #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.uri #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_only_image.username #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.audio_only_hls_settings.audio_track_type #=> String, one of "ALTERNATE_AUDIO_AUTO_SELECT", "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT", "ALTERNATE_AUDIO_NOT_AUTO_SELECT", "AUDIO_ONLY_VARIANT_STREAM"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.audio_rendition_sets #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_frames_per_pes #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.audio_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.ecm_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pat_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pcr_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.pmt_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.program_num #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.scte_35_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.timed_metadata_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.transport_stream_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.hls_settings.standard_hls_settings.m3u_8_settings.video_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.name_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.hls_output_settings.segment_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.ms_smooth_output_settings.name_modifier #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.certificate_mode #=> String, one of "SELF_SIGNED", "VERIFY_AUTHENTICITY"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.connection_retry_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.rtmp_output_settings.num_retries #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.buffer_msec #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.absent_input_audio_behavior #=> String, one of "DROP", "ENCODE_SILENCE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.arib_captions_pid_control #=> String, one of "AUTO", "USE_CONFIGURED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_buffer_model #=> String, one of "ATSC", "DVB"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_frames_per_pes #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.audio_stream_type #=> String, one of "ATSC", "DVB"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.bitrate #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.buffer_model #=> String, one of "MULTIPLEX", "NONE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.cc_descriptor #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.network_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_nit_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.output_sdt #=> String, one of "SDT_FOLLOW", "SDT_FOLLOW_IF_PRESENT", "SDT_MANUAL", "SDT_NONE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sdt_settings.service_provider_name #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_sub_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_tdt_settings.rep_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.dvb_teletext_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebif #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_audio_interval #=> String, one of "VIDEO_AND_FIXED_INTERVALS", "VIDEO_INTERVAL"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_lookahead_ms #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ebp_placement #=> String, one of "VIDEO_AND_AUDIO_PIDS", "VIDEO_PID"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.ecm_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.es_rate_in_pes #=> String, one of "EXCLUDE", "INCLUDE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_platform_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.etv_signal_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.fragment_time #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.klv_data_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.null_packet_bitrate #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pat_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_control #=> String, one of "CONFIGURED_PCR_PERIOD", "PCR_EVERY_PES_PACKET"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_period #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pcr_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_interval #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.pmt_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.program_num #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.rate_mode #=> String, one of "CBR", "VBR"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_27_pids #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_control #=> String, one of "NONE", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.scte_35_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_markers #=> String, one of "EBP", "EBP_LEGACY", "NONE", "PSI_SEGSTART", "RAI_ADAPT", "RAI_SEGSTART"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_style #=> String, one of "MAINTAIN_CADENCE", "RESET_CADENCE"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.segmentation_time #=> Float
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_behavior #=> String, one of "NO_PASSTHROUGH", "PASSTHROUGH"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.timed_metadata_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.transport_stream_id #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.container_settings.m2ts_settings.video_pid #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.destination.destination_ref_id #=> String
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.column_depth #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.include_fec #=> String, one of "COLUMN", "COLUMN_AND_ROW"
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].output_settings.udp_output_settings.fec_output_settings.row_length #=> Integer
    #   resp.channel.encoder_settings.output_groups[0].outputs[0].video_description_name #=> String
    #   resp.channel.encoder_settings.timecode_config.source #=> String, one of "EMBEDDED", "SYSTEMCLOCK", "ZEROBASED"
    #   resp.channel.encoder_settings.timecode_config.sync_threshold #=> Integer
    #   resp.channel.encoder_settings.video_descriptions #=> Array
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.adaptive_quantization #=> String, one of "HIGH", "HIGHER", "LOW", "MAX", "MEDIUM", "OFF"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.afd_signaling #=> String, one of "AUTO", "FIXED", "NONE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.bitrate #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_fill_pct #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.buf_size #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.color_metadata #=> String, one of "IGNORE", "INSERT"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.entropy_encoding #=> String, one of "CABAC", "CAVLC"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.fixed_afd #=> String, one of "AFD_0000", "AFD_0010", "AFD_0011", "AFD_0100", "AFD_1000", "AFD_1001", "AFD_1010", "AFD_1011", "AFD_1101", "AFD_1110", "AFD_1111"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.flicker_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_denominator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.framerate_numerator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_b_reference #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_closed_cadence #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_num_b_frames #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size #=> Float
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.gop_size_units #=> String, one of "FRAMES", "SECONDS"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.level #=> String, one of "H264_LEVEL_1", "H264_LEVEL_1_1", "H264_LEVEL_1_2", "H264_LEVEL_1_3", "H264_LEVEL_2", "H264_LEVEL_2_1", "H264_LEVEL_2_2", "H264_LEVEL_3", "H264_LEVEL_3_1", "H264_LEVEL_3_2", "H264_LEVEL_4", "H264_LEVEL_4_1", "H264_LEVEL_4_2", "H264_LEVEL_5", "H264_LEVEL_5_1", "H264_LEVEL_5_2", "H264_LEVEL_AUTO"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.look_ahead_rate_control #=> String, one of "HIGH", "LOW", "MEDIUM"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.max_bitrate #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.min_i_interval #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.num_ref_frames #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_control #=> String, one of "INITIALIZE_FROM_SOURCE", "SPECIFIED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_denominator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.par_numerator #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.profile #=> String, one of "BASELINE", "HIGH", "HIGH_10BIT", "HIGH_422", "HIGH_422_10BIT", "MAIN"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.rate_control_mode #=> String, one of "CBR", "VBR"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scan_type #=> String, one of "INTERLACED", "PROGRESSIVE"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.scene_change_detect #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.slices #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.softness #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.spatial_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.syntax #=> String, one of "DEFAULT", "RP2027"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.temporal_aq #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.encoder_settings.video_descriptions[0].codec_settings.h264_settings.timecode_insertion #=> String, one of "DISABLED", "PIC_TIMING_SEI"
    #   resp.channel.encoder_settings.video_descriptions[0].height #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].name #=> String
    #   resp.channel.encoder_settings.video_descriptions[0].respond_to_afd #=> String, one of "NONE", "PASSTHROUGH", "RESPOND"
    #   resp.channel.encoder_settings.video_descriptions[0].scaling_behavior #=> String, one of "DEFAULT", "STRETCH_TO_OUTPUT"
    #   resp.channel.encoder_settings.video_descriptions[0].sharpness #=> Integer
    #   resp.channel.encoder_settings.video_descriptions[0].width #=> Integer
    #   resp.channel.id #=> String
    #   resp.channel.input_attachments #=> Array
    #   resp.channel.input_attachments[0].input_id #=> String
    #   resp.channel.input_attachments[0].input_settings.audio_selectors #=> Array
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].name #=> String
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_code #=> String
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_language_selection.language_selection_policy #=> String, one of "LOOSE", "STRICT"
    #   resp.channel.input_attachments[0].input_settings.audio_selectors[0].selector_settings.audio_pid_selection.pid #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors #=> Array
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].language_code #=> String
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].name #=> String
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.dvb_sub_source_settings.pid #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.scte_20_detection #=> String, one of "AUTO", "OFF"
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_channel_number #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.embedded_source_settings.source_608_track_number #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.convert_608_to_708 #=> String, one of "DISABLED", "UPCONVERT"
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_20_source_settings.source_608_channel_number #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.scte_27_source_settings.pid #=> Integer
    #   resp.channel.input_attachments[0].input_settings.caption_selectors[0].selector_settings.teletext_source_settings.page_number #=> String
    #   resp.channel.input_attachments[0].input_settings.deblock_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.input_attachments[0].input_settings.denoise_filter #=> String, one of "DISABLED", "ENABLED"
    #   resp.channel.input_attachments[0].input_settings.filter_strength #=> Integer
    #   resp.channel.input_attachments[0].input_settings.input_filter #=> String, one of "AUTO", "DISABLED", "FORCED"
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.hls_input_settings.bandwidth #=> Integer
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.hls_input_settings.buffer_segments #=> Integer
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retries #=> Integer
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.hls_input_settings.retry_interval #=> Integer
    #   resp.channel.input_attachments[0].input_settings.network_input_settings.server_validation #=> String, one of "CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME", "CHECK_CRYPTOGRAPHY_ONLY"
    #   resp.channel.input_attachments[0].input_settings.source_end_behavior #=> String, one of "CONTINUE", "LOOP"
    #   resp.channel.input_attachments[0].input_settings.video_selector.color_space #=> String, one of "FOLLOW", "REC_601", "REC_709"
    #   resp.channel.input_attachments[0].input_settings.video_selector.color_space_usage #=> String, one of "FALLBACK", "FORCE"
    #   resp.channel.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_pid.pid #=> Integer
    #   resp.channel.input_attachments[0].input_settings.video_selector.selector_settings.video_selector_program_id.program_id #=> Integer
    #   resp.channel.input_specification.codec #=> String, one of "MPEG2", "AVC", "HEVC"
    #   resp.channel.input_specification.maximum_bitrate #=> String, one of "MAX_10_MBPS", "MAX_20_MBPS", "MAX_50_MBPS"
    #   resp.channel.input_specification.resolution #=> String, one of "SD", "HD", "UHD"
    #   resp.channel.log_level #=> String, one of "ERROR", "WARNING", "INFO", "DEBUG", "DISABLED"
    #   resp.channel.name #=> String
    #   resp.channel.pipelines_running_count #=> Integer
    #   resp.channel.role_arn #=> String
    #   resp.channel.state #=> String, one of "CREATING", "CREATE_FAILED", "IDLE", "STARTING", "RUNNING", "RECOVERING", "STOPPING", "DELETING", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateChannel AWS API Documentation
    #
    # @overload update_channel(params = {})
    # @param [Hash] params ({})
    def update_channel(params = {}, options = {})
      req = build_request(:update_channel, params)
      req.send_request(options)
    end

    # Updates an input.
    #
    # @option params [Array<Types::InputDestinationRequest>] :destinations
    #
    # @option params [required, String] :input_id
    #
    # @option params [Array<String>] :input_security_groups
    #
    # @option params [String] :name
    #
    # @option params [Array<Types::InputSourceRequest>] :sources
    #
    # @return [Types::UpdateInputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateInputResponse#input #input} => Types::Input
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_input({
    #     destinations: [
    #       {
    #         stream_name: "__string",
    #       },
    #     ],
    #     input_id: "__string", # required
    #     input_security_groups: ["__string"],
    #     name: "__string",
    #     sources: [
    #       {
    #         password_param: "__string",
    #         url: "__string",
    #         username: "__string",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.input.arn #=> String
    #   resp.input.attached_channels #=> Array
    #   resp.input.attached_channels[0] #=> String
    #   resp.input.destinations #=> Array
    #   resp.input.destinations[0].ip #=> String
    #   resp.input.destinations[0].port #=> String
    #   resp.input.destinations[0].url #=> String
    #   resp.input.id #=> String
    #   resp.input.name #=> String
    #   resp.input.security_groups #=> Array
    #   resp.input.security_groups[0] #=> String
    #   resp.input.sources #=> Array
    #   resp.input.sources[0].password_param #=> String
    #   resp.input.sources[0].url #=> String
    #   resp.input.sources[0].username #=> String
    #   resp.input.state #=> String, one of "CREATING", "DETACHED", "ATTACHED", "DELETING", "DELETED"
    #   resp.input.type #=> String, one of "UDP_PUSH", "RTP_PUSH", "RTMP_PUSH", "RTMP_PULL", "URL_PULL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateInput AWS API Documentation
    #
    # @overload update_input(params = {})
    # @param [Hash] params ({})
    def update_input(params = {}, options = {})
      req = build_request(:update_input, params)
      req.send_request(options)
    end

    # Update an Input Security Group's Whilelists.
    #
    # @option params [required, String] :input_security_group_id
    #
    # @option params [Array<Types::InputWhitelistRuleCidr>] :whitelist_rules
    #
    # @return [Types::UpdateInputSecurityGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateInputSecurityGroupResponse#security_group #security_group} => Types::InputSecurityGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_input_security_group({
    #     input_security_group_id: "__string", # required
    #     whitelist_rules: [
    #       {
    #         cidr: "__string",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.security_group.arn #=> String
    #   resp.security_group.id #=> String
    #   resp.security_group.inputs #=> Array
    #   resp.security_group.inputs[0] #=> String
    #   resp.security_group.state #=> String, one of "IDLE", "IN_USE", "UPDATING", "DELETED"
    #   resp.security_group.whitelist_rules #=> Array
    #   resp.security_group.whitelist_rules[0].cidr #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/medialive-2017-10-14/UpdateInputSecurityGroup AWS API Documentation
    #
    # @overload update_input_security_group(params = {})
    # @param [Hash] params ({})
    def update_input_security_group(params = {}, options = {})
      req = build_request(:update_input_security_group, params)
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
      context[:gem_name] = 'aws-sdk-medialive'
      context[:gem_version] = '1.11.0'
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
