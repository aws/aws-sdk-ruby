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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:pinpoint)

module Aws::Pinpoint
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :pinpoint

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
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
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

    # Creates or updates a campaign.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::WriteCampaignRequest] :write_campaign_request
    #   Used to create a campaign.
    #
    # @return [Types::CreateCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCampaignResponse#campaign_response #campaign_response} => Types::CampaignResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_campaign({
    #     application_id: "__string", # required
    #     write_campaign_request: { # required
    #       additional_treatments: [
    #         {
    #           message_configuration: {
    #             apns_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               silent_push: false,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             default_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               silent_push: false,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             email_message: {
    #               body: "__string",
    #               html_body: "__string",
    #               title: "__string",
    #             },
    #             gcm_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               silent_push: false,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             sms_message: {
    #               body: "__string",
    #               message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #               sender_id: "__string",
    #             },
    #           },
    #           schedule: {
    #             end_time: "__string",
    #             frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
    #             is_local_time: false,
    #             quiet_time: {
    #               end: "__string",
    #               start: "__string",
    #             },
    #             start_time: "__string",
    #             timezone: "__string",
    #           },
    #           size_percent: 1,
    #           treatment_description: "__string",
    #           treatment_name: "__string",
    #         },
    #       ],
    #       description: "__string",
    #       holdout_percent: 1,
    #       is_paused: false,
    #       limits: {
    #         daily: 1,
    #         total: 1,
    #       },
    #       message_configuration: {
    #         apns_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           silent_push: false,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         default_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           silent_push: false,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         email_message: {
    #           body: "__string",
    #           html_body: "__string",
    #           title: "__string",
    #         },
    #         gcm_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           silent_push: false,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         sms_message: {
    #           body: "__string",
    #           message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #           sender_id: "__string",
    #         },
    #       },
    #       name: "__string",
    #       schedule: {
    #         end_time: "__string",
    #         frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
    #         is_local_time: false,
    #         quiet_time: {
    #           end: "__string",
    #           start: "__string",
    #         },
    #         start_time: "__string",
    #         timezone: "__string",
    #       },
    #       segment_id: "__string",
    #       segment_version: 1,
    #       treatment_description: "__string",
    #       treatment_name: "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign_response.additional_treatments #=> Array
    #   resp.campaign_response.additional_treatments[0].id #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.html_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.sender_id #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.end_time #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.campaign_response.additional_treatments[0].schedule.is_local_time #=> Boolean
    #   resp.campaign_response.additional_treatments[0].schedule.quiet_time.end #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.quiet_time.start #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.start_time #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.timezone #=> String
    #   resp.campaign_response.additional_treatments[0].size_percent #=> Integer
    #   resp.campaign_response.additional_treatments[0].state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"
    #   resp.campaign_response.additional_treatments[0].treatment_description #=> String
    #   resp.campaign_response.additional_treatments[0].treatment_name #=> String
    #   resp.campaign_response.application_id #=> String
    #   resp.campaign_response.creation_date #=> String
    #   resp.campaign_response.default_state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"
    #   resp.campaign_response.description #=> String
    #   resp.campaign_response.holdout_percent #=> Integer
    #   resp.campaign_response.id #=> String
    #   resp.campaign_response.is_paused #=> Boolean
    #   resp.campaign_response.last_modified_date #=> String
    #   resp.campaign_response.limits.daily #=> Integer
    #   resp.campaign_response.limits.total #=> Integer
    #   resp.campaign_response.message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.apns_message.body #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.json_body #=> String
    #   resp.campaign_response.message_configuration.apns_message.media_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.apns_message.title #=> String
    #   resp.campaign_response.message_configuration.apns_message.url #=> String
    #   resp.campaign_response.message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.default_message.body #=> String
    #   resp.campaign_response.message_configuration.default_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.default_message.image_url #=> String
    #   resp.campaign_response.message_configuration.default_message.json_body #=> String
    #   resp.campaign_response.message_configuration.default_message.media_url #=> String
    #   resp.campaign_response.message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.default_message.title #=> String
    #   resp.campaign_response.message_configuration.default_message.url #=> String
    #   resp.campaign_response.message_configuration.email_message.body #=> String
    #   resp.campaign_response.message_configuration.email_message.html_body #=> String
    #   resp.campaign_response.message_configuration.email_message.title #=> String
    #   resp.campaign_response.message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.gcm_message.body #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.json_body #=> String
    #   resp.campaign_response.message_configuration.gcm_message.media_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.gcm_message.title #=> String
    #   resp.campaign_response.message_configuration.gcm_message.url #=> String
    #   resp.campaign_response.message_configuration.sms_message.body #=> String
    #   resp.campaign_response.message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaign_response.message_configuration.sms_message.sender_id #=> String
    #   resp.campaign_response.name #=> String
    #   resp.campaign_response.schedule.end_time #=> String
    #   resp.campaign_response.schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.campaign_response.schedule.is_local_time #=> Boolean
    #   resp.campaign_response.schedule.quiet_time.end #=> String
    #   resp.campaign_response.schedule.quiet_time.start #=> String
    #   resp.campaign_response.schedule.start_time #=> String
    #   resp.campaign_response.schedule.timezone #=> String
    #   resp.campaign_response.segment_id #=> String
    #   resp.campaign_response.segment_version #=> Integer
    #   resp.campaign_response.state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"
    #   resp.campaign_response.treatment_description #=> String
    #   resp.campaign_response.treatment_name #=> String
    #   resp.campaign_response.version #=> Integer
    #
    # @overload create_campaign(params = {})
    # @param [Hash] params ({})
    def create_campaign(params = {}, options = {})
      req = build_request(:create_campaign, params)
      req.send_request(options)
    end

    # Creates or updates an import job.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::ImportJobRequest] :import_job_request
    #
    # @return [Types::CreateImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateImportJobResponse#import_job_response #import_job_response} => Types::ImportJobResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_import_job({
    #     application_id: "__string", # required
    #     import_job_request: { # required
    #       define_segment: false,
    #       external_id: "__string",
    #       format: "CSV", # accepts CSV, JSON
    #       register_endpoints: false,
    #       role_arn: "__string",
    #       s3_url: "__string",
    #       segment_id: "__string",
    #       segment_name: "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.import_job_response.application_id #=> String
    #   resp.import_job_response.completed_pieces #=> Integer
    #   resp.import_job_response.completion_date #=> String
    #   resp.import_job_response.creation_date #=> String
    #   resp.import_job_response.definition.define_segment #=> Boolean
    #   resp.import_job_response.definition.external_id #=> String
    #   resp.import_job_response.definition.format #=> String, one of "CSV", "JSON"
    #   resp.import_job_response.definition.register_endpoints #=> Boolean
    #   resp.import_job_response.definition.role_arn #=> String
    #   resp.import_job_response.definition.s3_url #=> String
    #   resp.import_job_response.definition.segment_id #=> String
    #   resp.import_job_response.definition.segment_name #=> String
    #   resp.import_job_response.failed_pieces #=> Integer
    #   resp.import_job_response.failures #=> Array
    #   resp.import_job_response.failures[0] #=> String
    #   resp.import_job_response.id #=> String
    #   resp.import_job_response.job_status #=> String, one of "CREATED", "INITIALIZING", "PROCESSING", "COMPLETING", "COMPLETED", "FAILING", "FAILED"
    #   resp.import_job_response.total_failures #=> Integer
    #   resp.import_job_response.total_pieces #=> Integer
    #   resp.import_job_response.total_processed #=> Integer
    #   resp.import_job_response.type #=> String
    #
    # @overload create_import_job(params = {})
    # @param [Hash] params ({})
    def create_import_job(params = {}, options = {})
      req = build_request(:create_import_job, params)
      req.send_request(options)
    end

    # Used to create or update a segment.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::WriteSegmentRequest] :write_segment_request
    #   Segment definition.
    #
    # @return [Types::CreateSegmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSegmentResponse#segment_response #segment_response} => Types::SegmentResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_segment({
    #     application_id: "__string", # required
    #     write_segment_request: { # required
    #       dimensions: {
    #         attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #         },
    #         behavior: {
    #           recency: {
    #             duration: "HR_24", # accepts HR_24, DAY_7, DAY_14, DAY_30
    #             recency_type: "ACTIVE", # accepts ACTIVE, INACTIVE
    #           },
    #         },
    #         demographic: {
    #           app_version: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #           channel: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #           device_type: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #           make: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #           model: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #           platform: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #         },
    #         location: {
    #           country: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #         },
    #         user_attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #         },
    #       },
    #       name: "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.segment_response.application_id #=> String
    #   resp.segment_response.creation_date #=> String
    #   resp.segment_response.dimensions.attributes #=> Hash
    #   resp.segment_response.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.attributes["__string"].values #=> Array
    #   resp.segment_response.dimensions.attributes["__string"].values[0] #=> String
    #   resp.segment_response.dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.segment_response.dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.segment_response.dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.app_version.values #=> Array
    #   resp.segment_response.dimensions.demographic.app_version.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.channel.values #=> Array
    #   resp.segment_response.dimensions.demographic.channel.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.device_type.values #=> Array
    #   resp.segment_response.dimensions.demographic.device_type.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.make.values #=> Array
    #   resp.segment_response.dimensions.demographic.make.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.model.values #=> Array
    #   resp.segment_response.dimensions.demographic.model.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.platform.values #=> Array
    #   resp.segment_response.dimensions.demographic.platform.values[0] #=> String
    #   resp.segment_response.dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.location.country.values #=> Array
    #   resp.segment_response.dimensions.location.country.values[0] #=> String
    #   resp.segment_response.dimensions.user_attributes #=> Hash
    #   resp.segment_response.dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.user_attributes["__string"].values #=> Array
    #   resp.segment_response.dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.segment_response.id #=> String
    #   resp.segment_response.import_definition.channel_counts #=> Hash
    #   resp.segment_response.import_definition.channel_counts["__string"] #=> Integer
    #   resp.segment_response.import_definition.external_id #=> String
    #   resp.segment_response.import_definition.format #=> String, one of "CSV", "JSON"
    #   resp.segment_response.import_definition.role_arn #=> String
    #   resp.segment_response.import_definition.s3_url #=> String
    #   resp.segment_response.import_definition.size #=> Integer
    #   resp.segment_response.last_modified_date #=> String
    #   resp.segment_response.name #=> String
    #   resp.segment_response.segment_type #=> String, one of "DIMENSIONAL", "IMPORT"
    #   resp.segment_response.version #=> Integer
    #
    # @overload create_segment(params = {})
    # @param [Hash] params ({})
    def create_segment(params = {}, options = {})
      req = build_request(:create_segment, params)
      req.send_request(options)
    end

    # Deletes the APNs channel for an app.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::DeleteApnsChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteApnsChannelResponse#apns_channel_response #apns_channel_response} => Types::APNSChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_apns_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.apns_channel_response.application_id #=> String
    #   resp.apns_channel_response.creation_date #=> String
    #   resp.apns_channel_response.enabled #=> Boolean
    #   resp.apns_channel_response.id #=> String
    #   resp.apns_channel_response.is_archived #=> Boolean
    #   resp.apns_channel_response.last_modified_by #=> String
    #   resp.apns_channel_response.last_modified_date #=> String
    #   resp.apns_channel_response.platform #=> String
    #   resp.apns_channel_response.version #=> Integer
    #
    # @overload delete_apns_channel(params = {})
    # @param [Hash] params ({})
    def delete_apns_channel(params = {}, options = {})
      req = build_request(:delete_apns_channel, params)
      req.send_request(options)
    end

    # Delete an APNS sandbox channel
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::DeleteApnsSandboxChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteApnsSandboxChannelResponse#apns_sandbox_channel_response #apns_sandbox_channel_response} => Types::APNSSandboxChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_apns_sandbox_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.apns_sandbox_channel_response.application_id #=> String
    #   resp.apns_sandbox_channel_response.creation_date #=> String
    #   resp.apns_sandbox_channel_response.enabled #=> Boolean
    #   resp.apns_sandbox_channel_response.id #=> String
    #   resp.apns_sandbox_channel_response.is_archived #=> Boolean
    #   resp.apns_sandbox_channel_response.last_modified_by #=> String
    #   resp.apns_sandbox_channel_response.last_modified_date #=> String
    #   resp.apns_sandbox_channel_response.platform #=> String
    #   resp.apns_sandbox_channel_response.version #=> Integer
    #
    # @overload delete_apns_sandbox_channel(params = {})
    # @param [Hash] params ({})
    def delete_apns_sandbox_channel(params = {}, options = {})
      req = build_request(:delete_apns_sandbox_channel, params)
      req.send_request(options)
    end

    # Deletes a campaign.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :campaign_id
    #
    # @return [Types::DeleteCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCampaignResponse#campaign_response #campaign_response} => Types::CampaignResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_campaign({
    #     application_id: "__string", # required
    #     campaign_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign_response.additional_treatments #=> Array
    #   resp.campaign_response.additional_treatments[0].id #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.html_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.sender_id #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.end_time #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.campaign_response.additional_treatments[0].schedule.is_local_time #=> Boolean
    #   resp.campaign_response.additional_treatments[0].schedule.quiet_time.end #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.quiet_time.start #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.start_time #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.timezone #=> String
    #   resp.campaign_response.additional_treatments[0].size_percent #=> Integer
    #   resp.campaign_response.additional_treatments[0].state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"
    #   resp.campaign_response.additional_treatments[0].treatment_description #=> String
    #   resp.campaign_response.additional_treatments[0].treatment_name #=> String
    #   resp.campaign_response.application_id #=> String
    #   resp.campaign_response.creation_date #=> String
    #   resp.campaign_response.default_state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"
    #   resp.campaign_response.description #=> String
    #   resp.campaign_response.holdout_percent #=> Integer
    #   resp.campaign_response.id #=> String
    #   resp.campaign_response.is_paused #=> Boolean
    #   resp.campaign_response.last_modified_date #=> String
    #   resp.campaign_response.limits.daily #=> Integer
    #   resp.campaign_response.limits.total #=> Integer
    #   resp.campaign_response.message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.apns_message.body #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.json_body #=> String
    #   resp.campaign_response.message_configuration.apns_message.media_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.apns_message.title #=> String
    #   resp.campaign_response.message_configuration.apns_message.url #=> String
    #   resp.campaign_response.message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.default_message.body #=> String
    #   resp.campaign_response.message_configuration.default_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.default_message.image_url #=> String
    #   resp.campaign_response.message_configuration.default_message.json_body #=> String
    #   resp.campaign_response.message_configuration.default_message.media_url #=> String
    #   resp.campaign_response.message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.default_message.title #=> String
    #   resp.campaign_response.message_configuration.default_message.url #=> String
    #   resp.campaign_response.message_configuration.email_message.body #=> String
    #   resp.campaign_response.message_configuration.email_message.html_body #=> String
    #   resp.campaign_response.message_configuration.email_message.title #=> String
    #   resp.campaign_response.message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.gcm_message.body #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.json_body #=> String
    #   resp.campaign_response.message_configuration.gcm_message.media_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.gcm_message.title #=> String
    #   resp.campaign_response.message_configuration.gcm_message.url #=> String
    #   resp.campaign_response.message_configuration.sms_message.body #=> String
    #   resp.campaign_response.message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaign_response.message_configuration.sms_message.sender_id #=> String
    #   resp.campaign_response.name #=> String
    #   resp.campaign_response.schedule.end_time #=> String
    #   resp.campaign_response.schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.campaign_response.schedule.is_local_time #=> Boolean
    #   resp.campaign_response.schedule.quiet_time.end #=> String
    #   resp.campaign_response.schedule.quiet_time.start #=> String
    #   resp.campaign_response.schedule.start_time #=> String
    #   resp.campaign_response.schedule.timezone #=> String
    #   resp.campaign_response.segment_id #=> String
    #   resp.campaign_response.segment_version #=> Integer
    #   resp.campaign_response.state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"
    #   resp.campaign_response.treatment_description #=> String
    #   resp.campaign_response.treatment_name #=> String
    #   resp.campaign_response.version #=> Integer
    #
    # @overload delete_campaign(params = {})
    # @param [Hash] params ({})
    def delete_campaign(params = {}, options = {})
      req = build_request(:delete_campaign, params)
      req.send_request(options)
    end

    # Delete an email channel
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::DeleteEmailChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEmailChannelResponse#email_channel_response #email_channel_response} => Types::EmailChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_email_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.email_channel_response.application_id #=> String
    #   resp.email_channel_response.creation_date #=> String
    #   resp.email_channel_response.enabled #=> Boolean
    #   resp.email_channel_response.from_address #=> String
    #   resp.email_channel_response.id #=> String
    #   resp.email_channel_response.identity #=> String
    #   resp.email_channel_response.is_archived #=> Boolean
    #   resp.email_channel_response.last_modified_by #=> String
    #   resp.email_channel_response.last_modified_date #=> String
    #   resp.email_channel_response.platform #=> String
    #   resp.email_channel_response.role_arn #=> String
    #   resp.email_channel_response.version #=> Integer
    #
    # @overload delete_email_channel(params = {})
    # @param [Hash] params ({})
    def delete_email_channel(params = {}, options = {})
      req = build_request(:delete_email_channel, params)
      req.send_request(options)
    end

    # Deletes the event stream for an app.
    #
    # @option params [required, String] :application_id
    #   Application Id.
    #
    # @return [Types::DeleteEventStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEventStreamResponse#event_stream #event_stream} => Types::EventStream
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_stream({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_stream.application_id #=> String
    #   resp.event_stream.destination_stream_arn #=> String
    #   resp.event_stream.external_id #=> String
    #   resp.event_stream.last_modified_date #=> String
    #   resp.event_stream.last_updated_by #=> String
    #   resp.event_stream.role_arn #=> String
    #
    # @overload delete_event_stream(params = {})
    # @param [Hash] params ({})
    def delete_event_stream(params = {}, options = {})
      req = build_request(:delete_event_stream, params)
      req.send_request(options)
    end

    # Deletes the GCM channel for an app.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::DeleteGcmChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGcmChannelResponse#gcm_channel_response #gcm_channel_response} => Types::GCMChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gcm_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gcm_channel_response.application_id #=> String
    #   resp.gcm_channel_response.creation_date #=> String
    #   resp.gcm_channel_response.credential #=> String
    #   resp.gcm_channel_response.enabled #=> Boolean
    #   resp.gcm_channel_response.id #=> String
    #   resp.gcm_channel_response.is_archived #=> Boolean
    #   resp.gcm_channel_response.last_modified_by #=> String
    #   resp.gcm_channel_response.last_modified_date #=> String
    #   resp.gcm_channel_response.platform #=> String
    #   resp.gcm_channel_response.version #=> Integer
    #
    # @overload delete_gcm_channel(params = {})
    # @param [Hash] params ({})
    def delete_gcm_channel(params = {}, options = {})
      req = build_request(:delete_gcm_channel, params)
      req.send_request(options)
    end

    # Deletes a segment.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :segment_id
    #
    # @return [Types::DeleteSegmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSegmentResponse#segment_response #segment_response} => Types::SegmentResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_segment({
    #     application_id: "__string", # required
    #     segment_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.segment_response.application_id #=> String
    #   resp.segment_response.creation_date #=> String
    #   resp.segment_response.dimensions.attributes #=> Hash
    #   resp.segment_response.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.attributes["__string"].values #=> Array
    #   resp.segment_response.dimensions.attributes["__string"].values[0] #=> String
    #   resp.segment_response.dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.segment_response.dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.segment_response.dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.app_version.values #=> Array
    #   resp.segment_response.dimensions.demographic.app_version.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.channel.values #=> Array
    #   resp.segment_response.dimensions.demographic.channel.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.device_type.values #=> Array
    #   resp.segment_response.dimensions.demographic.device_type.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.make.values #=> Array
    #   resp.segment_response.dimensions.demographic.make.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.model.values #=> Array
    #   resp.segment_response.dimensions.demographic.model.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.platform.values #=> Array
    #   resp.segment_response.dimensions.demographic.platform.values[0] #=> String
    #   resp.segment_response.dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.location.country.values #=> Array
    #   resp.segment_response.dimensions.location.country.values[0] #=> String
    #   resp.segment_response.dimensions.user_attributes #=> Hash
    #   resp.segment_response.dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.user_attributes["__string"].values #=> Array
    #   resp.segment_response.dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.segment_response.id #=> String
    #   resp.segment_response.import_definition.channel_counts #=> Hash
    #   resp.segment_response.import_definition.channel_counts["__string"] #=> Integer
    #   resp.segment_response.import_definition.external_id #=> String
    #   resp.segment_response.import_definition.format #=> String, one of "CSV", "JSON"
    #   resp.segment_response.import_definition.role_arn #=> String
    #   resp.segment_response.import_definition.s3_url #=> String
    #   resp.segment_response.import_definition.size #=> Integer
    #   resp.segment_response.last_modified_date #=> String
    #   resp.segment_response.name #=> String
    #   resp.segment_response.segment_type #=> String, one of "DIMENSIONAL", "IMPORT"
    #   resp.segment_response.version #=> Integer
    #
    # @overload delete_segment(params = {})
    # @param [Hash] params ({})
    def delete_segment(params = {}, options = {})
      req = build_request(:delete_segment, params)
      req.send_request(options)
    end

    # Delete an SMS channel
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::DeleteSmsChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSmsChannelResponse#sms_channel_response #sms_channel_response} => Types::SMSChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sms_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.sms_channel_response.application_id #=> String
    #   resp.sms_channel_response.creation_date #=> String
    #   resp.sms_channel_response.enabled #=> Boolean
    #   resp.sms_channel_response.id #=> String
    #   resp.sms_channel_response.is_archived #=> Boolean
    #   resp.sms_channel_response.last_modified_by #=> String
    #   resp.sms_channel_response.last_modified_date #=> String
    #   resp.sms_channel_response.platform #=> String
    #   resp.sms_channel_response.sender_id #=> String
    #   resp.sms_channel_response.short_code #=> String
    #   resp.sms_channel_response.version #=> Integer
    #
    # @overload delete_sms_channel(params = {})
    # @param [Hash] params ({})
    def delete_sms_channel(params = {}, options = {})
      req = build_request(:delete_sms_channel, params)
      req.send_request(options)
    end

    # Returns information about the APNs channel for an app.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::GetApnsChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApnsChannelResponse#apns_channel_response #apns_channel_response} => Types::APNSChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_apns_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.apns_channel_response.application_id #=> String
    #   resp.apns_channel_response.creation_date #=> String
    #   resp.apns_channel_response.enabled #=> Boolean
    #   resp.apns_channel_response.id #=> String
    #   resp.apns_channel_response.is_archived #=> Boolean
    #   resp.apns_channel_response.last_modified_by #=> String
    #   resp.apns_channel_response.last_modified_date #=> String
    #   resp.apns_channel_response.platform #=> String
    #   resp.apns_channel_response.version #=> Integer
    #
    # @overload get_apns_channel(params = {})
    # @param [Hash] params ({})
    def get_apns_channel(params = {}, options = {})
      req = build_request(:get_apns_channel, params)
      req.send_request(options)
    end

    # Get an APNS sandbox channel
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::GetApnsSandboxChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApnsSandboxChannelResponse#apns_sandbox_channel_response #apns_sandbox_channel_response} => Types::APNSSandboxChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_apns_sandbox_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.apns_sandbox_channel_response.application_id #=> String
    #   resp.apns_sandbox_channel_response.creation_date #=> String
    #   resp.apns_sandbox_channel_response.enabled #=> Boolean
    #   resp.apns_sandbox_channel_response.id #=> String
    #   resp.apns_sandbox_channel_response.is_archived #=> Boolean
    #   resp.apns_sandbox_channel_response.last_modified_by #=> String
    #   resp.apns_sandbox_channel_response.last_modified_date #=> String
    #   resp.apns_sandbox_channel_response.platform #=> String
    #   resp.apns_sandbox_channel_response.version #=> Integer
    #
    # @overload get_apns_sandbox_channel(params = {})
    # @param [Hash] params ({})
    def get_apns_sandbox_channel(params = {}, options = {})
      req = build_request(:get_apns_sandbox_channel, params)
      req.send_request(options)
    end

    # Used to request the settings for an app.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::GetApplicationSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationSettingsResponse#application_settings_resource #application_settings_resource} => Types::ApplicationSettingsResource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application_settings({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_settings_resource.application_id #=> String
    #   resp.application_settings_resource.last_modified_date #=> String
    #   resp.application_settings_resource.limits.daily #=> Integer
    #   resp.application_settings_resource.limits.total #=> Integer
    #   resp.application_settings_resource.quiet_time.end #=> String
    #   resp.application_settings_resource.quiet_time.start #=> String
    #
    # @overload get_application_settings(params = {})
    # @param [Hash] params ({})
    def get_application_settings(params = {}, options = {})
      req = build_request(:get_application_settings, params)
      req.send_request(options)
    end

    # Returns information about a campaign.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :campaign_id
    #
    # @return [Types::GetCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCampaignResponse#campaign_response #campaign_response} => Types::CampaignResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign({
    #     application_id: "__string", # required
    #     campaign_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign_response.additional_treatments #=> Array
    #   resp.campaign_response.additional_treatments[0].id #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.html_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.sender_id #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.end_time #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.campaign_response.additional_treatments[0].schedule.is_local_time #=> Boolean
    #   resp.campaign_response.additional_treatments[0].schedule.quiet_time.end #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.quiet_time.start #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.start_time #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.timezone #=> String
    #   resp.campaign_response.additional_treatments[0].size_percent #=> Integer
    #   resp.campaign_response.additional_treatments[0].state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"
    #   resp.campaign_response.additional_treatments[0].treatment_description #=> String
    #   resp.campaign_response.additional_treatments[0].treatment_name #=> String
    #   resp.campaign_response.application_id #=> String
    #   resp.campaign_response.creation_date #=> String
    #   resp.campaign_response.default_state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"
    #   resp.campaign_response.description #=> String
    #   resp.campaign_response.holdout_percent #=> Integer
    #   resp.campaign_response.id #=> String
    #   resp.campaign_response.is_paused #=> Boolean
    #   resp.campaign_response.last_modified_date #=> String
    #   resp.campaign_response.limits.daily #=> Integer
    #   resp.campaign_response.limits.total #=> Integer
    #   resp.campaign_response.message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.apns_message.body #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.json_body #=> String
    #   resp.campaign_response.message_configuration.apns_message.media_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.apns_message.title #=> String
    #   resp.campaign_response.message_configuration.apns_message.url #=> String
    #   resp.campaign_response.message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.default_message.body #=> String
    #   resp.campaign_response.message_configuration.default_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.default_message.image_url #=> String
    #   resp.campaign_response.message_configuration.default_message.json_body #=> String
    #   resp.campaign_response.message_configuration.default_message.media_url #=> String
    #   resp.campaign_response.message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.default_message.title #=> String
    #   resp.campaign_response.message_configuration.default_message.url #=> String
    #   resp.campaign_response.message_configuration.email_message.body #=> String
    #   resp.campaign_response.message_configuration.email_message.html_body #=> String
    #   resp.campaign_response.message_configuration.email_message.title #=> String
    #   resp.campaign_response.message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.gcm_message.body #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.json_body #=> String
    #   resp.campaign_response.message_configuration.gcm_message.media_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.gcm_message.title #=> String
    #   resp.campaign_response.message_configuration.gcm_message.url #=> String
    #   resp.campaign_response.message_configuration.sms_message.body #=> String
    #   resp.campaign_response.message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaign_response.message_configuration.sms_message.sender_id #=> String
    #   resp.campaign_response.name #=> String
    #   resp.campaign_response.schedule.end_time #=> String
    #   resp.campaign_response.schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.campaign_response.schedule.is_local_time #=> Boolean
    #   resp.campaign_response.schedule.quiet_time.end #=> String
    #   resp.campaign_response.schedule.quiet_time.start #=> String
    #   resp.campaign_response.schedule.start_time #=> String
    #   resp.campaign_response.schedule.timezone #=> String
    #   resp.campaign_response.segment_id #=> String
    #   resp.campaign_response.segment_version #=> Integer
    #   resp.campaign_response.state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"
    #   resp.campaign_response.treatment_description #=> String
    #   resp.campaign_response.treatment_name #=> String
    #   resp.campaign_response.version #=> Integer
    #
    # @overload get_campaign(params = {})
    # @param [Hash] params ({})
    def get_campaign(params = {}, options = {})
      req = build_request(:get_campaign, params)
      req.send_request(options)
    end

    # Returns information about the activity performed by a campaign.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :campaign_id
    #
    # @option params [String] :page_size
    #
    # @option params [String] :token
    #
    # @return [Types::GetCampaignActivitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCampaignActivitiesResponse#activities_response #activities_response} => Types::ActivitiesResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign_activities({
    #     application_id: "__string", # required
    #     campaign_id: "__string", # required
    #     page_size: "__string",
    #     token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.activities_response.item #=> Array
    #   resp.activities_response.item[0].application_id #=> String
    #   resp.activities_response.item[0].campaign_id #=> String
    #   resp.activities_response.item[0].end #=> String
    #   resp.activities_response.item[0].id #=> String
    #   resp.activities_response.item[0].result #=> String
    #   resp.activities_response.item[0].scheduled_start #=> String
    #   resp.activities_response.item[0].start #=> String
    #   resp.activities_response.item[0].state #=> String
    #   resp.activities_response.item[0].successful_endpoint_count #=> Integer
    #   resp.activities_response.item[0].timezones_completed_count #=> Integer
    #   resp.activities_response.item[0].timezones_total_count #=> Integer
    #   resp.activities_response.item[0].total_endpoint_count #=> Integer
    #   resp.activities_response.item[0].treatment_id #=> String
    #
    # @overload get_campaign_activities(params = {})
    # @param [Hash] params ({})
    def get_campaign_activities(params = {}, options = {})
      req = build_request(:get_campaign_activities, params)
      req.send_request(options)
    end

    # Returns information about a specific version of a campaign.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :campaign_id
    #
    # @option params [required, String] :version
    #
    # @return [Types::GetCampaignVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCampaignVersionResponse#campaign_response #campaign_response} => Types::CampaignResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign_version({
    #     application_id: "__string", # required
    #     campaign_id: "__string", # required
    #     version: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign_response.additional_treatments #=> Array
    #   resp.campaign_response.additional_treatments[0].id #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.html_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.sender_id #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.end_time #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.campaign_response.additional_treatments[0].schedule.is_local_time #=> Boolean
    #   resp.campaign_response.additional_treatments[0].schedule.quiet_time.end #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.quiet_time.start #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.start_time #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.timezone #=> String
    #   resp.campaign_response.additional_treatments[0].size_percent #=> Integer
    #   resp.campaign_response.additional_treatments[0].state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"
    #   resp.campaign_response.additional_treatments[0].treatment_description #=> String
    #   resp.campaign_response.additional_treatments[0].treatment_name #=> String
    #   resp.campaign_response.application_id #=> String
    #   resp.campaign_response.creation_date #=> String
    #   resp.campaign_response.default_state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"
    #   resp.campaign_response.description #=> String
    #   resp.campaign_response.holdout_percent #=> Integer
    #   resp.campaign_response.id #=> String
    #   resp.campaign_response.is_paused #=> Boolean
    #   resp.campaign_response.last_modified_date #=> String
    #   resp.campaign_response.limits.daily #=> Integer
    #   resp.campaign_response.limits.total #=> Integer
    #   resp.campaign_response.message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.apns_message.body #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.json_body #=> String
    #   resp.campaign_response.message_configuration.apns_message.media_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.apns_message.title #=> String
    #   resp.campaign_response.message_configuration.apns_message.url #=> String
    #   resp.campaign_response.message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.default_message.body #=> String
    #   resp.campaign_response.message_configuration.default_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.default_message.image_url #=> String
    #   resp.campaign_response.message_configuration.default_message.json_body #=> String
    #   resp.campaign_response.message_configuration.default_message.media_url #=> String
    #   resp.campaign_response.message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.default_message.title #=> String
    #   resp.campaign_response.message_configuration.default_message.url #=> String
    #   resp.campaign_response.message_configuration.email_message.body #=> String
    #   resp.campaign_response.message_configuration.email_message.html_body #=> String
    #   resp.campaign_response.message_configuration.email_message.title #=> String
    #   resp.campaign_response.message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.gcm_message.body #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.json_body #=> String
    #   resp.campaign_response.message_configuration.gcm_message.media_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.gcm_message.title #=> String
    #   resp.campaign_response.message_configuration.gcm_message.url #=> String
    #   resp.campaign_response.message_configuration.sms_message.body #=> String
    #   resp.campaign_response.message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaign_response.message_configuration.sms_message.sender_id #=> String
    #   resp.campaign_response.name #=> String
    #   resp.campaign_response.schedule.end_time #=> String
    #   resp.campaign_response.schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.campaign_response.schedule.is_local_time #=> Boolean
    #   resp.campaign_response.schedule.quiet_time.end #=> String
    #   resp.campaign_response.schedule.quiet_time.start #=> String
    #   resp.campaign_response.schedule.start_time #=> String
    #   resp.campaign_response.schedule.timezone #=> String
    #   resp.campaign_response.segment_id #=> String
    #   resp.campaign_response.segment_version #=> Integer
    #   resp.campaign_response.state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"
    #   resp.campaign_response.treatment_description #=> String
    #   resp.campaign_response.treatment_name #=> String
    #   resp.campaign_response.version #=> Integer
    #
    # @overload get_campaign_version(params = {})
    # @param [Hash] params ({})
    def get_campaign_version(params = {}, options = {})
      req = build_request(:get_campaign_version, params)
      req.send_request(options)
    end

    # Returns information about your campaign versions.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :campaign_id
    #
    # @option params [String] :page_size
    #
    # @option params [String] :token
    #
    # @return [Types::GetCampaignVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCampaignVersionsResponse#campaigns_response #campaigns_response} => Types::CampaignsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaign_versions({
    #     application_id: "__string", # required
    #     campaign_id: "__string", # required
    #     page_size: "__string",
    #     token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.campaigns_response.item #=> Array
    #   resp.campaigns_response.item[0].additional_treatments #=> Array
    #   resp.campaigns_response.item[0].additional_treatments[0].id #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.image_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.json_body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.media_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.title #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.image_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.json_body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.media_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.title #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.html_body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.title #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.image_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.json_body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.media_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.title #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.sender_id #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.end_time #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.is_local_time #=> Boolean
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.quiet_time.end #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.quiet_time.start #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.start_time #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.timezone #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].size_percent #=> Integer
    #   resp.campaigns_response.item[0].additional_treatments[0].state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"
    #   resp.campaigns_response.item[0].additional_treatments[0].treatment_description #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].treatment_name #=> String
    #   resp.campaigns_response.item[0].application_id #=> String
    #   resp.campaigns_response.item[0].creation_date #=> String
    #   resp.campaigns_response.item[0].default_state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"
    #   resp.campaigns_response.item[0].description #=> String
    #   resp.campaigns_response.item[0].holdout_percent #=> Integer
    #   resp.campaigns_response.item[0].id #=> String
    #   resp.campaigns_response.item[0].is_paused #=> Boolean
    #   resp.campaigns_response.item[0].last_modified_date #=> String
    #   resp.campaigns_response.item[0].limits.daily #=> Integer
    #   resp.campaigns_response.item[0].limits.total #=> Integer
    #   resp.campaigns_response.item[0].message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].message_configuration.apns_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.image_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.json_body #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.media_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].message_configuration.apns_message.title #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.url #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].message_configuration.default_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.image_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.json_body #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.media_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].message_configuration.default_message.title #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.url #=> String
    #   resp.campaigns_response.item[0].message_configuration.email_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.email_message.html_body #=> String
    #   resp.campaigns_response.item[0].message_configuration.email_message.title #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.image_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.json_body #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.media_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.title #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.url #=> String
    #   resp.campaigns_response.item[0].message_configuration.sms_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaigns_response.item[0].message_configuration.sms_message.sender_id #=> String
    #   resp.campaigns_response.item[0].name #=> String
    #   resp.campaigns_response.item[0].schedule.end_time #=> String
    #   resp.campaigns_response.item[0].schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.campaigns_response.item[0].schedule.is_local_time #=> Boolean
    #   resp.campaigns_response.item[0].schedule.quiet_time.end #=> String
    #   resp.campaigns_response.item[0].schedule.quiet_time.start #=> String
    #   resp.campaigns_response.item[0].schedule.start_time #=> String
    #   resp.campaigns_response.item[0].schedule.timezone #=> String
    #   resp.campaigns_response.item[0].segment_id #=> String
    #   resp.campaigns_response.item[0].segment_version #=> Integer
    #   resp.campaigns_response.item[0].state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"
    #   resp.campaigns_response.item[0].treatment_description #=> String
    #   resp.campaigns_response.item[0].treatment_name #=> String
    #   resp.campaigns_response.item[0].version #=> Integer
    #   resp.campaigns_response.next_token #=> String
    #
    # @overload get_campaign_versions(params = {})
    # @param [Hash] params ({})
    def get_campaign_versions(params = {}, options = {})
      req = build_request(:get_campaign_versions, params)
      req.send_request(options)
    end

    # Returns information about your campaigns.
    #
    # @option params [required, String] :application_id
    #
    # @option params [String] :page_size
    #
    # @option params [String] :token
    #
    # @return [Types::GetCampaignsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCampaignsResponse#campaigns_response #campaigns_response} => Types::CampaignsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_campaigns({
    #     application_id: "__string", # required
    #     page_size: "__string",
    #     token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.campaigns_response.item #=> Array
    #   resp.campaigns_response.item[0].additional_treatments #=> Array
    #   resp.campaigns_response.item[0].additional_treatments[0].id #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.image_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.json_body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.media_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.title #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.apns_message.url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.image_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.json_body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.media_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.title #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.default_message.url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.html_body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.email_message.title #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.image_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.json_body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.media_url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.title #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.gcm_message.url #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.body #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaigns_response.item[0].additional_treatments[0].message_configuration.sms_message.sender_id #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.end_time #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.is_local_time #=> Boolean
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.quiet_time.end #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.quiet_time.start #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.start_time #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].schedule.timezone #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].size_percent #=> Integer
    #   resp.campaigns_response.item[0].additional_treatments[0].state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"
    #   resp.campaigns_response.item[0].additional_treatments[0].treatment_description #=> String
    #   resp.campaigns_response.item[0].additional_treatments[0].treatment_name #=> String
    #   resp.campaigns_response.item[0].application_id #=> String
    #   resp.campaigns_response.item[0].creation_date #=> String
    #   resp.campaigns_response.item[0].default_state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"
    #   resp.campaigns_response.item[0].description #=> String
    #   resp.campaigns_response.item[0].holdout_percent #=> Integer
    #   resp.campaigns_response.item[0].id #=> String
    #   resp.campaigns_response.item[0].is_paused #=> Boolean
    #   resp.campaigns_response.item[0].last_modified_date #=> String
    #   resp.campaigns_response.item[0].limits.daily #=> Integer
    #   resp.campaigns_response.item[0].limits.total #=> Integer
    #   resp.campaigns_response.item[0].message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].message_configuration.apns_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.image_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.json_body #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.media_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].message_configuration.apns_message.title #=> String
    #   resp.campaigns_response.item[0].message_configuration.apns_message.url #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].message_configuration.default_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.image_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.json_body #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.media_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].message_configuration.default_message.title #=> String
    #   resp.campaigns_response.item[0].message_configuration.default_message.url #=> String
    #   resp.campaigns_response.item[0].message_configuration.email_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.email_message.html_body #=> String
    #   resp.campaigns_response.item[0].message_configuration.email_message.title #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.image_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.json_body #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.media_url #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.title #=> String
    #   resp.campaigns_response.item[0].message_configuration.gcm_message.url #=> String
    #   resp.campaigns_response.item[0].message_configuration.sms_message.body #=> String
    #   resp.campaigns_response.item[0].message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaigns_response.item[0].message_configuration.sms_message.sender_id #=> String
    #   resp.campaigns_response.item[0].name #=> String
    #   resp.campaigns_response.item[0].schedule.end_time #=> String
    #   resp.campaigns_response.item[0].schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.campaigns_response.item[0].schedule.is_local_time #=> Boolean
    #   resp.campaigns_response.item[0].schedule.quiet_time.end #=> String
    #   resp.campaigns_response.item[0].schedule.quiet_time.start #=> String
    #   resp.campaigns_response.item[0].schedule.start_time #=> String
    #   resp.campaigns_response.item[0].schedule.timezone #=> String
    #   resp.campaigns_response.item[0].segment_id #=> String
    #   resp.campaigns_response.item[0].segment_version #=> Integer
    #   resp.campaigns_response.item[0].state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"
    #   resp.campaigns_response.item[0].treatment_description #=> String
    #   resp.campaigns_response.item[0].treatment_name #=> String
    #   resp.campaigns_response.item[0].version #=> Integer
    #   resp.campaigns_response.next_token #=> String
    #
    # @overload get_campaigns(params = {})
    # @param [Hash] params ({})
    def get_campaigns(params = {}, options = {})
      req = build_request(:get_campaigns, params)
      req.send_request(options)
    end

    # Get an email channel
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::GetEmailChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEmailChannelResponse#email_channel_response #email_channel_response} => Types::EmailChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_email_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.email_channel_response.application_id #=> String
    #   resp.email_channel_response.creation_date #=> String
    #   resp.email_channel_response.enabled #=> Boolean
    #   resp.email_channel_response.from_address #=> String
    #   resp.email_channel_response.id #=> String
    #   resp.email_channel_response.identity #=> String
    #   resp.email_channel_response.is_archived #=> Boolean
    #   resp.email_channel_response.last_modified_by #=> String
    #   resp.email_channel_response.last_modified_date #=> String
    #   resp.email_channel_response.platform #=> String
    #   resp.email_channel_response.role_arn #=> String
    #   resp.email_channel_response.version #=> Integer
    #
    # @overload get_email_channel(params = {})
    # @param [Hash] params ({})
    def get_email_channel(params = {}, options = {})
      req = build_request(:get_email_channel, params)
      req.send_request(options)
    end

    # Returns information about an endpoint.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :endpoint_id
    #
    # @return [Types::GetEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEndpointResponse#endpoint_response #endpoint_response} => Types::EndpointResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_endpoint({
    #     application_id: "__string", # required
    #     endpoint_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_response.address #=> String
    #   resp.endpoint_response.application_id #=> String
    #   resp.endpoint_response.attributes #=> Hash
    #   resp.endpoint_response.attributes["__string"] #=> Array
    #   resp.endpoint_response.attributes["__string"][0] #=> String
    #   resp.endpoint_response.channel_type #=> String, one of "GCM", "APNS", "APNS_SANDBOX", "ADM", "SMS", "EMAIL"
    #   resp.endpoint_response.cohort_id #=> String
    #   resp.endpoint_response.creation_date #=> String
    #   resp.endpoint_response.demographic.app_version #=> String
    #   resp.endpoint_response.demographic.locale #=> String
    #   resp.endpoint_response.demographic.make #=> String
    #   resp.endpoint_response.demographic.model #=> String
    #   resp.endpoint_response.demographic.model_version #=> String
    #   resp.endpoint_response.demographic.platform #=> String
    #   resp.endpoint_response.demographic.platform_version #=> String
    #   resp.endpoint_response.demographic.timezone #=> String
    #   resp.endpoint_response.effective_date #=> String
    #   resp.endpoint_response.endpoint_status #=> String
    #   resp.endpoint_response.id #=> String
    #   resp.endpoint_response.location.city #=> String
    #   resp.endpoint_response.location.country #=> String
    #   resp.endpoint_response.location.latitude #=> Float
    #   resp.endpoint_response.location.longitude #=> Float
    #   resp.endpoint_response.location.postal_code #=> String
    #   resp.endpoint_response.location.region #=> String
    #   resp.endpoint_response.metrics #=> Hash
    #   resp.endpoint_response.metrics["__string"] #=> Float
    #   resp.endpoint_response.opt_out #=> String
    #   resp.endpoint_response.request_id #=> String
    #   resp.endpoint_response.shard_id #=> String
    #   resp.endpoint_response.user.user_attributes #=> Hash
    #   resp.endpoint_response.user.user_attributes["__string"] #=> Array
    #   resp.endpoint_response.user.user_attributes["__string"][0] #=> String
    #   resp.endpoint_response.user.user_id #=> String
    #
    # @overload get_endpoint(params = {})
    # @param [Hash] params ({})
    def get_endpoint(params = {}, options = {})
      req = build_request(:get_endpoint, params)
      req.send_request(options)
    end

    # Returns the event stream for an app.
    #
    # @option params [required, String] :application_id
    #   Application Id.
    #
    # @return [Types::GetEventStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventStreamResponse#event_stream #event_stream} => Types::EventStream
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_stream({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_stream.application_id #=> String
    #   resp.event_stream.destination_stream_arn #=> String
    #   resp.event_stream.external_id #=> String
    #   resp.event_stream.last_modified_date #=> String
    #   resp.event_stream.last_updated_by #=> String
    #   resp.event_stream.role_arn #=> String
    #
    # @overload get_event_stream(params = {})
    # @param [Hash] params ({})
    def get_event_stream(params = {}, options = {})
      req = build_request(:get_event_stream, params)
      req.send_request(options)
    end

    # Returns information about the GCM channel for an app.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::GetGcmChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGcmChannelResponse#gcm_channel_response #gcm_channel_response} => Types::GCMChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_gcm_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gcm_channel_response.application_id #=> String
    #   resp.gcm_channel_response.creation_date #=> String
    #   resp.gcm_channel_response.credential #=> String
    #   resp.gcm_channel_response.enabled #=> Boolean
    #   resp.gcm_channel_response.id #=> String
    #   resp.gcm_channel_response.is_archived #=> Boolean
    #   resp.gcm_channel_response.last_modified_by #=> String
    #   resp.gcm_channel_response.last_modified_date #=> String
    #   resp.gcm_channel_response.platform #=> String
    #   resp.gcm_channel_response.version #=> Integer
    #
    # @overload get_gcm_channel(params = {})
    # @param [Hash] params ({})
    def get_gcm_channel(params = {}, options = {})
      req = build_request(:get_gcm_channel, params)
      req.send_request(options)
    end

    # Returns information about an import job.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :job_id
    #
    # @return [Types::GetImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImportJobResponse#import_job_response #import_job_response} => Types::ImportJobResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_import_job({
    #     application_id: "__string", # required
    #     job_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.import_job_response.application_id #=> String
    #   resp.import_job_response.completed_pieces #=> Integer
    #   resp.import_job_response.completion_date #=> String
    #   resp.import_job_response.creation_date #=> String
    #   resp.import_job_response.definition.define_segment #=> Boolean
    #   resp.import_job_response.definition.external_id #=> String
    #   resp.import_job_response.definition.format #=> String, one of "CSV", "JSON"
    #   resp.import_job_response.definition.register_endpoints #=> Boolean
    #   resp.import_job_response.definition.role_arn #=> String
    #   resp.import_job_response.definition.s3_url #=> String
    #   resp.import_job_response.definition.segment_id #=> String
    #   resp.import_job_response.definition.segment_name #=> String
    #   resp.import_job_response.failed_pieces #=> Integer
    #   resp.import_job_response.failures #=> Array
    #   resp.import_job_response.failures[0] #=> String
    #   resp.import_job_response.id #=> String
    #   resp.import_job_response.job_status #=> String, one of "CREATED", "INITIALIZING", "PROCESSING", "COMPLETING", "COMPLETED", "FAILING", "FAILED"
    #   resp.import_job_response.total_failures #=> Integer
    #   resp.import_job_response.total_pieces #=> Integer
    #   resp.import_job_response.total_processed #=> Integer
    #   resp.import_job_response.type #=> String
    #
    # @overload get_import_job(params = {})
    # @param [Hash] params ({})
    def get_import_job(params = {}, options = {})
      req = build_request(:get_import_job, params)
      req.send_request(options)
    end

    # Returns information about your import jobs.
    #
    # @option params [required, String] :application_id
    #
    # @option params [String] :page_size
    #
    # @option params [String] :token
    #
    # @return [Types::GetImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImportJobsResponse#import_jobs_response #import_jobs_response} => Types::ImportJobsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_import_jobs({
    #     application_id: "__string", # required
    #     page_size: "__string",
    #     token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.import_jobs_response.item #=> Array
    #   resp.import_jobs_response.item[0].application_id #=> String
    #   resp.import_jobs_response.item[0].completed_pieces #=> Integer
    #   resp.import_jobs_response.item[0].completion_date #=> String
    #   resp.import_jobs_response.item[0].creation_date #=> String
    #   resp.import_jobs_response.item[0].definition.define_segment #=> Boolean
    #   resp.import_jobs_response.item[0].definition.external_id #=> String
    #   resp.import_jobs_response.item[0].definition.format #=> String, one of "CSV", "JSON"
    #   resp.import_jobs_response.item[0].definition.register_endpoints #=> Boolean
    #   resp.import_jobs_response.item[0].definition.role_arn #=> String
    #   resp.import_jobs_response.item[0].definition.s3_url #=> String
    #   resp.import_jobs_response.item[0].definition.segment_id #=> String
    #   resp.import_jobs_response.item[0].definition.segment_name #=> String
    #   resp.import_jobs_response.item[0].failed_pieces #=> Integer
    #   resp.import_jobs_response.item[0].failures #=> Array
    #   resp.import_jobs_response.item[0].failures[0] #=> String
    #   resp.import_jobs_response.item[0].id #=> String
    #   resp.import_jobs_response.item[0].job_status #=> String, one of "CREATED", "INITIALIZING", "PROCESSING", "COMPLETING", "COMPLETED", "FAILING", "FAILED"
    #   resp.import_jobs_response.item[0].total_failures #=> Integer
    #   resp.import_jobs_response.item[0].total_pieces #=> Integer
    #   resp.import_jobs_response.item[0].total_processed #=> Integer
    #   resp.import_jobs_response.item[0].type #=> String
    #   resp.import_jobs_response.next_token #=> String
    #
    # @overload get_import_jobs(params = {})
    # @param [Hash] params ({})
    def get_import_jobs(params = {}, options = {})
      req = build_request(:get_import_jobs, params)
      req.send_request(options)
    end

    # Returns information about a segment.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :segment_id
    #
    # @return [Types::GetSegmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSegmentResponse#segment_response #segment_response} => Types::SegmentResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segment({
    #     application_id: "__string", # required
    #     segment_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.segment_response.application_id #=> String
    #   resp.segment_response.creation_date #=> String
    #   resp.segment_response.dimensions.attributes #=> Hash
    #   resp.segment_response.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.attributes["__string"].values #=> Array
    #   resp.segment_response.dimensions.attributes["__string"].values[0] #=> String
    #   resp.segment_response.dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.segment_response.dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.segment_response.dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.app_version.values #=> Array
    #   resp.segment_response.dimensions.demographic.app_version.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.channel.values #=> Array
    #   resp.segment_response.dimensions.demographic.channel.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.device_type.values #=> Array
    #   resp.segment_response.dimensions.demographic.device_type.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.make.values #=> Array
    #   resp.segment_response.dimensions.demographic.make.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.model.values #=> Array
    #   resp.segment_response.dimensions.demographic.model.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.platform.values #=> Array
    #   resp.segment_response.dimensions.demographic.platform.values[0] #=> String
    #   resp.segment_response.dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.location.country.values #=> Array
    #   resp.segment_response.dimensions.location.country.values[0] #=> String
    #   resp.segment_response.dimensions.user_attributes #=> Hash
    #   resp.segment_response.dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.user_attributes["__string"].values #=> Array
    #   resp.segment_response.dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.segment_response.id #=> String
    #   resp.segment_response.import_definition.channel_counts #=> Hash
    #   resp.segment_response.import_definition.channel_counts["__string"] #=> Integer
    #   resp.segment_response.import_definition.external_id #=> String
    #   resp.segment_response.import_definition.format #=> String, one of "CSV", "JSON"
    #   resp.segment_response.import_definition.role_arn #=> String
    #   resp.segment_response.import_definition.s3_url #=> String
    #   resp.segment_response.import_definition.size #=> Integer
    #   resp.segment_response.last_modified_date #=> String
    #   resp.segment_response.name #=> String
    #   resp.segment_response.segment_type #=> String, one of "DIMENSIONAL", "IMPORT"
    #   resp.segment_response.version #=> Integer
    #
    # @overload get_segment(params = {})
    # @param [Hash] params ({})
    def get_segment(params = {}, options = {})
      req = build_request(:get_segment, params)
      req.send_request(options)
    end

    # Returns a list of import jobs for a specific segment.
    #
    # @option params [required, String] :application_id
    #
    # @option params [String] :page_size
    #
    # @option params [required, String] :segment_id
    #
    # @option params [String] :token
    #
    # @return [Types::GetSegmentImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSegmentImportJobsResponse#import_jobs_response #import_jobs_response} => Types::ImportJobsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segment_import_jobs({
    #     application_id: "__string", # required
    #     page_size: "__string",
    #     segment_id: "__string", # required
    #     token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.import_jobs_response.item #=> Array
    #   resp.import_jobs_response.item[0].application_id #=> String
    #   resp.import_jobs_response.item[0].completed_pieces #=> Integer
    #   resp.import_jobs_response.item[0].completion_date #=> String
    #   resp.import_jobs_response.item[0].creation_date #=> String
    #   resp.import_jobs_response.item[0].definition.define_segment #=> Boolean
    #   resp.import_jobs_response.item[0].definition.external_id #=> String
    #   resp.import_jobs_response.item[0].definition.format #=> String, one of "CSV", "JSON"
    #   resp.import_jobs_response.item[0].definition.register_endpoints #=> Boolean
    #   resp.import_jobs_response.item[0].definition.role_arn #=> String
    #   resp.import_jobs_response.item[0].definition.s3_url #=> String
    #   resp.import_jobs_response.item[0].definition.segment_id #=> String
    #   resp.import_jobs_response.item[0].definition.segment_name #=> String
    #   resp.import_jobs_response.item[0].failed_pieces #=> Integer
    #   resp.import_jobs_response.item[0].failures #=> Array
    #   resp.import_jobs_response.item[0].failures[0] #=> String
    #   resp.import_jobs_response.item[0].id #=> String
    #   resp.import_jobs_response.item[0].job_status #=> String, one of "CREATED", "INITIALIZING", "PROCESSING", "COMPLETING", "COMPLETED", "FAILING", "FAILED"
    #   resp.import_jobs_response.item[0].total_failures #=> Integer
    #   resp.import_jobs_response.item[0].total_pieces #=> Integer
    #   resp.import_jobs_response.item[0].total_processed #=> Integer
    #   resp.import_jobs_response.item[0].type #=> String
    #   resp.import_jobs_response.next_token #=> String
    #
    # @overload get_segment_import_jobs(params = {})
    # @param [Hash] params ({})
    def get_segment_import_jobs(params = {}, options = {})
      req = build_request(:get_segment_import_jobs, params)
      req.send_request(options)
    end

    # Returns information about a segment version.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :segment_id
    #
    # @option params [required, String] :version
    #
    # @return [Types::GetSegmentVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSegmentVersionResponse#segment_response #segment_response} => Types::SegmentResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segment_version({
    #     application_id: "__string", # required
    #     segment_id: "__string", # required
    #     version: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.segment_response.application_id #=> String
    #   resp.segment_response.creation_date #=> String
    #   resp.segment_response.dimensions.attributes #=> Hash
    #   resp.segment_response.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.attributes["__string"].values #=> Array
    #   resp.segment_response.dimensions.attributes["__string"].values[0] #=> String
    #   resp.segment_response.dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.segment_response.dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.segment_response.dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.app_version.values #=> Array
    #   resp.segment_response.dimensions.demographic.app_version.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.channel.values #=> Array
    #   resp.segment_response.dimensions.demographic.channel.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.device_type.values #=> Array
    #   resp.segment_response.dimensions.demographic.device_type.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.make.values #=> Array
    #   resp.segment_response.dimensions.demographic.make.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.model.values #=> Array
    #   resp.segment_response.dimensions.demographic.model.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.platform.values #=> Array
    #   resp.segment_response.dimensions.demographic.platform.values[0] #=> String
    #   resp.segment_response.dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.location.country.values #=> Array
    #   resp.segment_response.dimensions.location.country.values[0] #=> String
    #   resp.segment_response.dimensions.user_attributes #=> Hash
    #   resp.segment_response.dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.user_attributes["__string"].values #=> Array
    #   resp.segment_response.dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.segment_response.id #=> String
    #   resp.segment_response.import_definition.channel_counts #=> Hash
    #   resp.segment_response.import_definition.channel_counts["__string"] #=> Integer
    #   resp.segment_response.import_definition.external_id #=> String
    #   resp.segment_response.import_definition.format #=> String, one of "CSV", "JSON"
    #   resp.segment_response.import_definition.role_arn #=> String
    #   resp.segment_response.import_definition.s3_url #=> String
    #   resp.segment_response.import_definition.size #=> Integer
    #   resp.segment_response.last_modified_date #=> String
    #   resp.segment_response.name #=> String
    #   resp.segment_response.segment_type #=> String, one of "DIMENSIONAL", "IMPORT"
    #   resp.segment_response.version #=> Integer
    #
    # @overload get_segment_version(params = {})
    # @param [Hash] params ({})
    def get_segment_version(params = {}, options = {})
      req = build_request(:get_segment_version, params)
      req.send_request(options)
    end

    # Returns information about your segment versions.
    #
    # @option params [required, String] :application_id
    #
    # @option params [String] :page_size
    #
    # @option params [required, String] :segment_id
    #
    # @option params [String] :token
    #
    # @return [Types::GetSegmentVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSegmentVersionsResponse#segments_response #segments_response} => Types::SegmentsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segment_versions({
    #     application_id: "__string", # required
    #     page_size: "__string",
    #     segment_id: "__string", # required
    #     token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.segments_response.item #=> Array
    #   resp.segments_response.item[0].application_id #=> String
    #   resp.segments_response.item[0].creation_date #=> String
    #   resp.segments_response.item[0].dimensions.attributes #=> Hash
    #   resp.segments_response.item[0].dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.attributes["__string"].values #=> Array
    #   resp.segments_response.item[0].dimensions.attributes["__string"].values[0] #=> String
    #   resp.segments_response.item[0].dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.segments_response.item[0].dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.segments_response.item[0].dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.app_version.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.app_version.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.channel.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.channel.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.device_type.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.device_type.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.make.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.make.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.model.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.model.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.platform.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.platform.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.location.country.values #=> Array
    #   resp.segments_response.item[0].dimensions.location.country.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.user_attributes #=> Hash
    #   resp.segments_response.item[0].dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.user_attributes["__string"].values #=> Array
    #   resp.segments_response.item[0].dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.segments_response.item[0].id #=> String
    #   resp.segments_response.item[0].import_definition.channel_counts #=> Hash
    #   resp.segments_response.item[0].import_definition.channel_counts["__string"] #=> Integer
    #   resp.segments_response.item[0].import_definition.external_id #=> String
    #   resp.segments_response.item[0].import_definition.format #=> String, one of "CSV", "JSON"
    #   resp.segments_response.item[0].import_definition.role_arn #=> String
    #   resp.segments_response.item[0].import_definition.s3_url #=> String
    #   resp.segments_response.item[0].import_definition.size #=> Integer
    #   resp.segments_response.item[0].last_modified_date #=> String
    #   resp.segments_response.item[0].name #=> String
    #   resp.segments_response.item[0].segment_type #=> String, one of "DIMENSIONAL", "IMPORT"
    #   resp.segments_response.item[0].version #=> Integer
    #   resp.segments_response.next_token #=> String
    #
    # @overload get_segment_versions(params = {})
    # @param [Hash] params ({})
    def get_segment_versions(params = {}, options = {})
      req = build_request(:get_segment_versions, params)
      req.send_request(options)
    end

    # Used to get information about your segments.
    #
    # @option params [required, String] :application_id
    #
    # @option params [String] :page_size
    #
    # @option params [String] :token
    #
    # @return [Types::GetSegmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSegmentsResponse#segments_response #segments_response} => Types::SegmentsResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segments({
    #     application_id: "__string", # required
    #     page_size: "__string",
    #     token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.segments_response.item #=> Array
    #   resp.segments_response.item[0].application_id #=> String
    #   resp.segments_response.item[0].creation_date #=> String
    #   resp.segments_response.item[0].dimensions.attributes #=> Hash
    #   resp.segments_response.item[0].dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.attributes["__string"].values #=> Array
    #   resp.segments_response.item[0].dimensions.attributes["__string"].values[0] #=> String
    #   resp.segments_response.item[0].dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.segments_response.item[0].dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.segments_response.item[0].dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.app_version.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.app_version.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.channel.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.channel.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.device_type.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.device_type.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.make.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.make.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.model.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.model.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.demographic.platform.values #=> Array
    #   resp.segments_response.item[0].dimensions.demographic.platform.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.location.country.values #=> Array
    #   resp.segments_response.item[0].dimensions.location.country.values[0] #=> String
    #   resp.segments_response.item[0].dimensions.user_attributes #=> Hash
    #   resp.segments_response.item[0].dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segments_response.item[0].dimensions.user_attributes["__string"].values #=> Array
    #   resp.segments_response.item[0].dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.segments_response.item[0].id #=> String
    #   resp.segments_response.item[0].import_definition.channel_counts #=> Hash
    #   resp.segments_response.item[0].import_definition.channel_counts["__string"] #=> Integer
    #   resp.segments_response.item[0].import_definition.external_id #=> String
    #   resp.segments_response.item[0].import_definition.format #=> String, one of "CSV", "JSON"
    #   resp.segments_response.item[0].import_definition.role_arn #=> String
    #   resp.segments_response.item[0].import_definition.s3_url #=> String
    #   resp.segments_response.item[0].import_definition.size #=> Integer
    #   resp.segments_response.item[0].last_modified_date #=> String
    #   resp.segments_response.item[0].name #=> String
    #   resp.segments_response.item[0].segment_type #=> String, one of "DIMENSIONAL", "IMPORT"
    #   resp.segments_response.item[0].version #=> Integer
    #   resp.segments_response.next_token #=> String
    #
    # @overload get_segments(params = {})
    # @param [Hash] params ({})
    def get_segments(params = {}, options = {})
      req = build_request(:get_segments, params)
      req.send_request(options)
    end

    # Get an SMS channel
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::GetSmsChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSmsChannelResponse#sms_channel_response #sms_channel_response} => Types::SMSChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sms_channel({
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.sms_channel_response.application_id #=> String
    #   resp.sms_channel_response.creation_date #=> String
    #   resp.sms_channel_response.enabled #=> Boolean
    #   resp.sms_channel_response.id #=> String
    #   resp.sms_channel_response.is_archived #=> Boolean
    #   resp.sms_channel_response.last_modified_by #=> String
    #   resp.sms_channel_response.last_modified_date #=> String
    #   resp.sms_channel_response.platform #=> String
    #   resp.sms_channel_response.sender_id #=> String
    #   resp.sms_channel_response.short_code #=> String
    #   resp.sms_channel_response.version #=> Integer
    #
    # @overload get_sms_channel(params = {})
    # @param [Hash] params ({})
    def get_sms_channel(params = {}, options = {})
      req = build_request(:get_sms_channel, params)
      req.send_request(options)
    end

    # Use to create or update the event stream for an app.
    #
    # @option params [required, String] :application_id
    #   Application Id.
    #
    # @option params [required, Types::WriteEventStream] :write_event_stream
    #   Write event stream wrapper.
    #
    # @return [Types::PutEventStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutEventStreamResponse#event_stream #event_stream} => Types::EventStream
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_event_stream({
    #     application_id: "__string", # required
    #     write_event_stream: { # required
    #       destination_stream_arn: "__string",
    #       role_arn: "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.event_stream.application_id #=> String
    #   resp.event_stream.destination_stream_arn #=> String
    #   resp.event_stream.external_id #=> String
    #   resp.event_stream.last_modified_date #=> String
    #   resp.event_stream.last_updated_by #=> String
    #   resp.event_stream.role_arn #=> String
    #
    # @overload put_event_stream(params = {})
    # @param [Hash] params ({})
    def put_event_stream(params = {}, options = {})
      req = build_request(:put_event_stream, params)
      req.send_request(options)
    end

    # Send a batch of messages
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::MessageRequest] :message_request
    #   Send message request.
    #
    # @return [Types::SendMessagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendMessagesResponse#message_response #message_response} => Types::MessageResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_messages({
    #     application_id: "__string", # required
    #     message_request: { # required
    #       addresses: {
    #         "__string" => {
    #           body_override: "__string",
    #           channel_type: "GCM", # accepts GCM, APNS, APNS_SANDBOX, ADM, SMS, EMAIL
    #           context: {
    #             "__string" => "__string",
    #           },
    #           raw_content: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           title_override: "__string",
    #         },
    #       },
    #       context: {
    #         "__string" => "__string",
    #       },
    #       message_configuration: {
    #         apns_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           badge: 1,
    #           body: "__string",
    #           category: "__string",
    #           data: {
    #             "__string" => "__string",
    #           },
    #           media_url: "__string",
    #           raw_content: "__string",
    #           silent_push: false,
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           thread_id: "__string",
    #           title: "__string",
    #           url: "__string",
    #         },
    #         default_message: {
    #           body: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #         },
    #         default_push_notification_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           data: {
    #             "__string" => "__string",
    #           },
    #           silent_push: false,
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           title: "__string",
    #           url: "__string",
    #         },
    #         gcm_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           collapse_key: "__string",
    #           data: {
    #             "__string" => "__string",
    #           },
    #           icon_reference: "__string",
    #           image_icon_url: "__string",
    #           image_url: "__string",
    #           raw_content: "__string",
    #           restricted_package_name: "__string",
    #           silent_push: false,
    #           small_image_icon_url: "__string",
    #           sound: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #           title: "__string",
    #           url: "__string",
    #         },
    #         sms_message: {
    #           body: "__string",
    #           message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #           sender_id: "__string",
    #           substitutions: {
    #             "__string" => ["__string"],
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.message_response.application_id #=> String
    #   resp.message_response.request_id #=> String
    #   resp.message_response.result #=> Hash
    #   resp.message_response.result["__string"].delivery_status #=> String, one of "SUCCESSFUL", "THROTTLED", "TEMPORARY_FAILURE", "PERMANENT_FAILURE"
    #   resp.message_response.result["__string"].status_code #=> Integer
    #   resp.message_response.result["__string"].status_message #=> String
    #   resp.message_response.result["__string"].updated_token #=> String
    #
    # @overload send_messages(params = {})
    # @param [Hash] params ({})
    def send_messages(params = {}, options = {})
      req = build_request(:send_messages, params)
      req.send_request(options)
    end

    # Use to update the APNs channel for an app.
    #
    # @option params [required, Types::APNSChannelRequest] :apns_channel_request
    #   Apple Push Notification Service channel definition.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::UpdateApnsChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApnsChannelResponse#apns_channel_response #apns_channel_response} => Types::APNSChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_apns_channel({
    #     apns_channel_request: { # required
    #       certificate: "__string",
    #       enabled: false,
    #       private_key: "__string",
    #     },
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.apns_channel_response.application_id #=> String
    #   resp.apns_channel_response.creation_date #=> String
    #   resp.apns_channel_response.enabled #=> Boolean
    #   resp.apns_channel_response.id #=> String
    #   resp.apns_channel_response.is_archived #=> Boolean
    #   resp.apns_channel_response.last_modified_by #=> String
    #   resp.apns_channel_response.last_modified_date #=> String
    #   resp.apns_channel_response.platform #=> String
    #   resp.apns_channel_response.version #=> Integer
    #
    # @overload update_apns_channel(params = {})
    # @param [Hash] params ({})
    def update_apns_channel(params = {}, options = {})
      req = build_request(:update_apns_channel, params)
      req.send_request(options)
    end

    # Update an APNS sandbox channel
    #
    # @option params [required, Types::APNSSandboxChannelRequest] :apns_sandbox_channel_request
    #   Apple Development Push Notification Service channel definition.
    #
    # @option params [required, String] :application_id
    #
    # @return [Types::UpdateApnsSandboxChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApnsSandboxChannelResponse#apns_sandbox_channel_response #apns_sandbox_channel_response} => Types::APNSSandboxChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_apns_sandbox_channel({
    #     apns_sandbox_channel_request: { # required
    #       certificate: "__string",
    #       enabled: false,
    #       private_key: "__string",
    #     },
    #     application_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.apns_sandbox_channel_response.application_id #=> String
    #   resp.apns_sandbox_channel_response.creation_date #=> String
    #   resp.apns_sandbox_channel_response.enabled #=> Boolean
    #   resp.apns_sandbox_channel_response.id #=> String
    #   resp.apns_sandbox_channel_response.is_archived #=> Boolean
    #   resp.apns_sandbox_channel_response.last_modified_by #=> String
    #   resp.apns_sandbox_channel_response.last_modified_date #=> String
    #   resp.apns_sandbox_channel_response.platform #=> String
    #   resp.apns_sandbox_channel_response.version #=> Integer
    #
    # @overload update_apns_sandbox_channel(params = {})
    # @param [Hash] params ({})
    def update_apns_sandbox_channel(params = {}, options = {})
      req = build_request(:update_apns_sandbox_channel, params)
      req.send_request(options)
    end

    # Used to update the settings for an app.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::WriteApplicationSettingsRequest] :write_application_settings_request
    #   Creating application setting request
    #
    # @return [Types::UpdateApplicationSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApplicationSettingsResponse#application_settings_resource #application_settings_resource} => Types::ApplicationSettingsResource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application_settings({
    #     application_id: "__string", # required
    #     write_application_settings_request: { # required
    #       limits: {
    #         daily: 1,
    #         total: 1,
    #       },
    #       quiet_time: {
    #         end: "__string",
    #         start: "__string",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application_settings_resource.application_id #=> String
    #   resp.application_settings_resource.last_modified_date #=> String
    #   resp.application_settings_resource.limits.daily #=> Integer
    #   resp.application_settings_resource.limits.total #=> Integer
    #   resp.application_settings_resource.quiet_time.end #=> String
    #   resp.application_settings_resource.quiet_time.start #=> String
    #
    # @overload update_application_settings(params = {})
    # @param [Hash] params ({})
    def update_application_settings(params = {}, options = {})
      req = build_request(:update_application_settings, params)
      req.send_request(options)
    end

    # Use to update a campaign.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :campaign_id
    #
    # @option params [required, Types::WriteCampaignRequest] :write_campaign_request
    #   Used to create a campaign.
    #
    # @return [Types::UpdateCampaignResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCampaignResponse#campaign_response #campaign_response} => Types::CampaignResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_campaign({
    #     application_id: "__string", # required
    #     campaign_id: "__string", # required
    #     write_campaign_request: { # required
    #       additional_treatments: [
    #         {
    #           message_configuration: {
    #             apns_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               silent_push: false,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             default_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               silent_push: false,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             email_message: {
    #               body: "__string",
    #               html_body: "__string",
    #               title: "__string",
    #             },
    #             gcm_message: {
    #               action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #               body: "__string",
    #               image_icon_url: "__string",
    #               image_small_icon_url: "__string",
    #               image_url: "__string",
    #               json_body: "__string",
    #               media_url: "__string",
    #               silent_push: false,
    #               title: "__string",
    #               url: "__string",
    #             },
    #             sms_message: {
    #               body: "__string",
    #               message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #               sender_id: "__string",
    #             },
    #           },
    #           schedule: {
    #             end_time: "__string",
    #             frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
    #             is_local_time: false,
    #             quiet_time: {
    #               end: "__string",
    #               start: "__string",
    #             },
    #             start_time: "__string",
    #             timezone: "__string",
    #           },
    #           size_percent: 1,
    #           treatment_description: "__string",
    #           treatment_name: "__string",
    #         },
    #       ],
    #       description: "__string",
    #       holdout_percent: 1,
    #       is_paused: false,
    #       limits: {
    #         daily: 1,
    #         total: 1,
    #       },
    #       message_configuration: {
    #         apns_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           silent_push: false,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         default_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           silent_push: false,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         email_message: {
    #           body: "__string",
    #           html_body: "__string",
    #           title: "__string",
    #         },
    #         gcm_message: {
    #           action: "OPEN_APP", # accepts OPEN_APP, DEEP_LINK, URL
    #           body: "__string",
    #           image_icon_url: "__string",
    #           image_small_icon_url: "__string",
    #           image_url: "__string",
    #           json_body: "__string",
    #           media_url: "__string",
    #           silent_push: false,
    #           title: "__string",
    #           url: "__string",
    #         },
    #         sms_message: {
    #           body: "__string",
    #           message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #           sender_id: "__string",
    #         },
    #       },
    #       name: "__string",
    #       schedule: {
    #         end_time: "__string",
    #         frequency: "ONCE", # accepts ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
    #         is_local_time: false,
    #         quiet_time: {
    #           end: "__string",
    #           start: "__string",
    #         },
    #         start_time: "__string",
    #         timezone: "__string",
    #       },
    #       segment_id: "__string",
    #       segment_version: 1,
    #       treatment_description: "__string",
    #       treatment_name: "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.campaign_response.additional_treatments #=> Array
    #   resp.campaign_response.additional_treatments[0].id #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.apns_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.default_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.html_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.email_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.image_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.json_body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.media_url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.title #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.gcm_message.url #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.body #=> String
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaign_response.additional_treatments[0].message_configuration.sms_message.sender_id #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.end_time #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.campaign_response.additional_treatments[0].schedule.is_local_time #=> Boolean
    #   resp.campaign_response.additional_treatments[0].schedule.quiet_time.end #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.quiet_time.start #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.start_time #=> String
    #   resp.campaign_response.additional_treatments[0].schedule.timezone #=> String
    #   resp.campaign_response.additional_treatments[0].size_percent #=> Integer
    #   resp.campaign_response.additional_treatments[0].state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"
    #   resp.campaign_response.additional_treatments[0].treatment_description #=> String
    #   resp.campaign_response.additional_treatments[0].treatment_name #=> String
    #   resp.campaign_response.application_id #=> String
    #   resp.campaign_response.creation_date #=> String
    #   resp.campaign_response.default_state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"
    #   resp.campaign_response.description #=> String
    #   resp.campaign_response.holdout_percent #=> Integer
    #   resp.campaign_response.id #=> String
    #   resp.campaign_response.is_paused #=> Boolean
    #   resp.campaign_response.last_modified_date #=> String
    #   resp.campaign_response.limits.daily #=> Integer
    #   resp.campaign_response.limits.total #=> Integer
    #   resp.campaign_response.message_configuration.apns_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.apns_message.body #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.image_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.json_body #=> String
    #   resp.campaign_response.message_configuration.apns_message.media_url #=> String
    #   resp.campaign_response.message_configuration.apns_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.apns_message.title #=> String
    #   resp.campaign_response.message_configuration.apns_message.url #=> String
    #   resp.campaign_response.message_configuration.default_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.default_message.body #=> String
    #   resp.campaign_response.message_configuration.default_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.default_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.default_message.image_url #=> String
    #   resp.campaign_response.message_configuration.default_message.json_body #=> String
    #   resp.campaign_response.message_configuration.default_message.media_url #=> String
    #   resp.campaign_response.message_configuration.default_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.default_message.title #=> String
    #   resp.campaign_response.message_configuration.default_message.url #=> String
    #   resp.campaign_response.message_configuration.email_message.body #=> String
    #   resp.campaign_response.message_configuration.email_message.html_body #=> String
    #   resp.campaign_response.message_configuration.email_message.title #=> String
    #   resp.campaign_response.message_configuration.gcm_message.action #=> String, one of "OPEN_APP", "DEEP_LINK", "URL"
    #   resp.campaign_response.message_configuration.gcm_message.body #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_icon_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_small_icon_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.image_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.json_body #=> String
    #   resp.campaign_response.message_configuration.gcm_message.media_url #=> String
    #   resp.campaign_response.message_configuration.gcm_message.silent_push #=> Boolean
    #   resp.campaign_response.message_configuration.gcm_message.title #=> String
    #   resp.campaign_response.message_configuration.gcm_message.url #=> String
    #   resp.campaign_response.message_configuration.sms_message.body #=> String
    #   resp.campaign_response.message_configuration.sms_message.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.campaign_response.message_configuration.sms_message.sender_id #=> String
    #   resp.campaign_response.name #=> String
    #   resp.campaign_response.schedule.end_time #=> String
    #   resp.campaign_response.schedule.frequency #=> String, one of "ONCE", "HOURLY", "DAILY", "WEEKLY", "MONTHLY"
    #   resp.campaign_response.schedule.is_local_time #=> Boolean
    #   resp.campaign_response.schedule.quiet_time.end #=> String
    #   resp.campaign_response.schedule.quiet_time.start #=> String
    #   resp.campaign_response.schedule.start_time #=> String
    #   resp.campaign_response.schedule.timezone #=> String
    #   resp.campaign_response.segment_id #=> String
    #   resp.campaign_response.segment_version #=> Integer
    #   resp.campaign_response.state.campaign_status #=> String, one of "SCHEDULED", "EXECUTING", "PENDING_NEXT_RUN", "COMPLETED", "PAUSED"
    #   resp.campaign_response.treatment_description #=> String
    #   resp.campaign_response.treatment_name #=> String
    #   resp.campaign_response.version #=> Integer
    #
    # @overload update_campaign(params = {})
    # @param [Hash] params ({})
    def update_campaign(params = {}, options = {})
      req = build_request(:update_campaign, params)
      req.send_request(options)
    end

    # Update an email channel
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::EmailChannelRequest] :email_channel_request
    #   Email Channel Request
    #
    # @return [Types::UpdateEmailChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEmailChannelResponse#email_channel_response #email_channel_response} => Types::EmailChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_email_channel({
    #     application_id: "__string", # required
    #     email_channel_request: { # required
    #       enabled: false,
    #       from_address: "__string",
    #       identity: "__string",
    #       role_arn: "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.email_channel_response.application_id #=> String
    #   resp.email_channel_response.creation_date #=> String
    #   resp.email_channel_response.enabled #=> Boolean
    #   resp.email_channel_response.from_address #=> String
    #   resp.email_channel_response.id #=> String
    #   resp.email_channel_response.identity #=> String
    #   resp.email_channel_response.is_archived #=> Boolean
    #   resp.email_channel_response.last_modified_by #=> String
    #   resp.email_channel_response.last_modified_date #=> String
    #   resp.email_channel_response.platform #=> String
    #   resp.email_channel_response.role_arn #=> String
    #   resp.email_channel_response.version #=> Integer
    #
    # @overload update_email_channel(params = {})
    # @param [Hash] params ({})
    def update_email_channel(params = {}, options = {})
      req = build_request(:update_email_channel, params)
      req.send_request(options)
    end

    # Use to update an endpoint.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :endpoint_id
    #
    # @option params [required, Types::EndpointRequest] :endpoint_request
    #   Endpoint update request
    #
    # @return [Types::UpdateEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEndpointResponse#message_body #message_body} => Types::MessageBody
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_endpoint({
    #     application_id: "__string", # required
    #     endpoint_id: "__string", # required
    #     endpoint_request: { # required
    #       address: "__string",
    #       attributes: {
    #         "__string" => ["__string"],
    #       },
    #       channel_type: "GCM", # accepts GCM, APNS, APNS_SANDBOX, ADM, SMS, EMAIL
    #       demographic: {
    #         app_version: "__string",
    #         locale: "__string",
    #         make: "__string",
    #         model: "__string",
    #         model_version: "__string",
    #         platform: "__string",
    #         platform_version: "__string",
    #         timezone: "__string",
    #       },
    #       effective_date: "__string",
    #       endpoint_status: "__string",
    #       location: {
    #         city: "__string",
    #         country: "__string",
    #         latitude: 1.0,
    #         longitude: 1.0,
    #         postal_code: "__string",
    #         region: "__string",
    #       },
    #       metrics: {
    #         "__string" => 1.0,
    #       },
    #       opt_out: "__string",
    #       request_id: "__string",
    #       user: {
    #         user_attributes: {
    #           "__string" => ["__string"],
    #         },
    #         user_id: "__string",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.message_body.message #=> String
    #   resp.message_body.request_id #=> String
    #
    # @overload update_endpoint(params = {})
    # @param [Hash] params ({})
    def update_endpoint(params = {}, options = {})
      req = build_request(:update_endpoint, params)
      req.send_request(options)
    end

    # Use to update a batch of endpoints.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::EndpointBatchRequest] :endpoint_batch_request
    #   Endpoint batch update request.
    #
    # @return [Types::UpdateEndpointsBatchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEndpointsBatchResponse#message_body #message_body} => Types::MessageBody
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_endpoints_batch({
    #     application_id: "__string", # required
    #     endpoint_batch_request: { # required
    #       item: [
    #         {
    #           address: "__string",
    #           attributes: {
    #             "__string" => ["__string"],
    #           },
    #           channel_type: "GCM", # accepts GCM, APNS, APNS_SANDBOX, ADM, SMS, EMAIL
    #           demographic: {
    #             app_version: "__string",
    #             locale: "__string",
    #             make: "__string",
    #             model: "__string",
    #             model_version: "__string",
    #             platform: "__string",
    #             platform_version: "__string",
    #             timezone: "__string",
    #           },
    #           effective_date: "__string",
    #           endpoint_status: "__string",
    #           id: "__string",
    #           location: {
    #             city: "__string",
    #             country: "__string",
    #             latitude: 1.0,
    #             longitude: 1.0,
    #             postal_code: "__string",
    #             region: "__string",
    #           },
    #           metrics: {
    #             "__string" => 1.0,
    #           },
    #           opt_out: "__string",
    #           request_id: "__string",
    #           user: {
    #             user_attributes: {
    #               "__string" => ["__string"],
    #             },
    #             user_id: "__string",
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.message_body.message #=> String
    #   resp.message_body.request_id #=> String
    #
    # @overload update_endpoints_batch(params = {})
    # @param [Hash] params ({})
    def update_endpoints_batch(params = {}, options = {})
      req = build_request(:update_endpoints_batch, params)
      req.send_request(options)
    end

    # Use to update the GCM channel for an app.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::GCMChannelRequest] :gcm_channel_request
    #   Google Cloud Messaging credentials
    #
    # @return [Types::UpdateGcmChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGcmChannelResponse#gcm_channel_response #gcm_channel_response} => Types::GCMChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gcm_channel({
    #     application_id: "__string", # required
    #     gcm_channel_request: { # required
    #       api_key: "__string",
    #       enabled: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.gcm_channel_response.application_id #=> String
    #   resp.gcm_channel_response.creation_date #=> String
    #   resp.gcm_channel_response.credential #=> String
    #   resp.gcm_channel_response.enabled #=> Boolean
    #   resp.gcm_channel_response.id #=> String
    #   resp.gcm_channel_response.is_archived #=> Boolean
    #   resp.gcm_channel_response.last_modified_by #=> String
    #   resp.gcm_channel_response.last_modified_date #=> String
    #   resp.gcm_channel_response.platform #=> String
    #   resp.gcm_channel_response.version #=> Integer
    #
    # @overload update_gcm_channel(params = {})
    # @param [Hash] params ({})
    def update_gcm_channel(params = {}, options = {})
      req = build_request(:update_gcm_channel, params)
      req.send_request(options)
    end

    # Use to update a segment.
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, String] :segment_id
    #
    # @option params [required, Types::WriteSegmentRequest] :write_segment_request
    #   Segment definition.
    #
    # @return [Types::UpdateSegmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSegmentResponse#segment_response #segment_response} => Types::SegmentResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_segment({
    #     application_id: "__string", # required
    #     segment_id: "__string", # required
    #     write_segment_request: { # required
    #       dimensions: {
    #         attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #         },
    #         behavior: {
    #           recency: {
    #             duration: "HR_24", # accepts HR_24, DAY_7, DAY_14, DAY_30
    #             recency_type: "ACTIVE", # accepts ACTIVE, INACTIVE
    #           },
    #         },
    #         demographic: {
    #           app_version: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #           channel: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #           device_type: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #           make: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #           model: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #           platform: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #         },
    #         location: {
    #           country: {
    #             dimension_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #         },
    #         user_attributes: {
    #           "__string" => {
    #             attribute_type: "INCLUSIVE", # accepts INCLUSIVE, EXCLUSIVE
    #             values: ["__string"],
    #           },
    #         },
    #       },
    #       name: "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.segment_response.application_id #=> String
    #   resp.segment_response.creation_date #=> String
    #   resp.segment_response.dimensions.attributes #=> Hash
    #   resp.segment_response.dimensions.attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.attributes["__string"].values #=> Array
    #   resp.segment_response.dimensions.attributes["__string"].values[0] #=> String
    #   resp.segment_response.dimensions.behavior.recency.duration #=> String, one of "HR_24", "DAY_7", "DAY_14", "DAY_30"
    #   resp.segment_response.dimensions.behavior.recency.recency_type #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.segment_response.dimensions.demographic.app_version.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.app_version.values #=> Array
    #   resp.segment_response.dimensions.demographic.app_version.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.channel.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.channel.values #=> Array
    #   resp.segment_response.dimensions.demographic.channel.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.device_type.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.device_type.values #=> Array
    #   resp.segment_response.dimensions.demographic.device_type.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.make.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.make.values #=> Array
    #   resp.segment_response.dimensions.demographic.make.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.model.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.model.values #=> Array
    #   resp.segment_response.dimensions.demographic.model.values[0] #=> String
    #   resp.segment_response.dimensions.demographic.platform.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.demographic.platform.values #=> Array
    #   resp.segment_response.dimensions.demographic.platform.values[0] #=> String
    #   resp.segment_response.dimensions.location.country.dimension_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.location.country.values #=> Array
    #   resp.segment_response.dimensions.location.country.values[0] #=> String
    #   resp.segment_response.dimensions.user_attributes #=> Hash
    #   resp.segment_response.dimensions.user_attributes["__string"].attribute_type #=> String, one of "INCLUSIVE", "EXCLUSIVE"
    #   resp.segment_response.dimensions.user_attributes["__string"].values #=> Array
    #   resp.segment_response.dimensions.user_attributes["__string"].values[0] #=> String
    #   resp.segment_response.id #=> String
    #   resp.segment_response.import_definition.channel_counts #=> Hash
    #   resp.segment_response.import_definition.channel_counts["__string"] #=> Integer
    #   resp.segment_response.import_definition.external_id #=> String
    #   resp.segment_response.import_definition.format #=> String, one of "CSV", "JSON"
    #   resp.segment_response.import_definition.role_arn #=> String
    #   resp.segment_response.import_definition.s3_url #=> String
    #   resp.segment_response.import_definition.size #=> Integer
    #   resp.segment_response.last_modified_date #=> String
    #   resp.segment_response.name #=> String
    #   resp.segment_response.segment_type #=> String, one of "DIMENSIONAL", "IMPORT"
    #   resp.segment_response.version #=> Integer
    #
    # @overload update_segment(params = {})
    # @param [Hash] params ({})
    def update_segment(params = {}, options = {})
      req = build_request(:update_segment, params)
      req.send_request(options)
    end

    # Update an SMS channel
    #
    # @option params [required, String] :application_id
    #
    # @option params [required, Types::SMSChannelRequest] :sms_channel_request
    #   SMS Channel Request
    #
    # @return [Types::UpdateSmsChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSmsChannelResponse#sms_channel_response #sms_channel_response} => Types::SMSChannelResponse
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sms_channel({
    #     application_id: "__string", # required
    #     sms_channel_request: { # required
    #       enabled: false,
    #       sender_id: "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.sms_channel_response.application_id #=> String
    #   resp.sms_channel_response.creation_date #=> String
    #   resp.sms_channel_response.enabled #=> Boolean
    #   resp.sms_channel_response.id #=> String
    #   resp.sms_channel_response.is_archived #=> Boolean
    #   resp.sms_channel_response.last_modified_by #=> String
    #   resp.sms_channel_response.last_modified_date #=> String
    #   resp.sms_channel_response.platform #=> String
    #   resp.sms_channel_response.sender_id #=> String
    #   resp.sms_channel_response.short_code #=> String
    #   resp.sms_channel_response.version #=> Integer
    #
    # @overload update_sms_channel(params = {})
    # @param [Hash] params ({})
    def update_sms_channel(params = {}, options = {})
      req = build_request(:update_sms_channel, params)
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
      context[:gem_name] = 'aws-sdk-pinpoint'
      context[:gem_version] = '1.0.0.rc7'
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
