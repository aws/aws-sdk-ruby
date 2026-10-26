# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:connectcampaignsv2)

module Aws::ConnectCampaignsV2
  # An API client for Aws::ConnectCampaignsV2.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonConnectCampaignServiceV2
    @identifier = :connectcampaignsv2

    add_plugin(::Aws::ConnectCampaignsV2::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ConnectCampaignsV2::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # Creates a campaign for the specified Amazon Connect account. This API is idempotent.
    # @param [Hash, Types::CreateCampaignRequest] params
    # @option params [String] :name
    #   The name of an Amazon Connect Campaign name.
    # @option params [String] :connect_instance_id
    #   Amazon Connect Instance Id
    # @option params [Types::ChannelSubtypeConfig] :channel_subtype_config
    #   Campaign Channel Subtype config
    # @option params [String] :type
    #   The type of campaign externally exposed in APIs.
    # @option params [Types::Source] :source
    #   Source of the campaign
    # @option params [String] :connect_campaign_flow_arn
    #   Amazon Resource Names(ARN)
    # @option params [Types::Schedule] :schedule
    #   Campaign schedule
    # @option params [Types::EntryLimitsConfig] :entry_limits_config
    #   Campaign entry limits config
    # @option params [Types::CommunicationTimeConfig] :communication_time_config
    #   Campaign communication time config
    # @option params [Types::CommunicationLimitsConfig] :communication_limits_override
    #   Communication limits config
    # @option params [Hash<String, String>] :tags
    #   Tag map with key and value.
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CampaignName", # required
    #     connect_instance_id: "InstanceId", # required
    #     channel_subtype_config: {
    #       telephony: {
    #         capacity: 1.0,
    #         connect_queue_id: "QueueId",
    #         outbound_mode: { # required
    #           # One of:
    #           progressive: {
    #             bandwidth_allocation: 1.0, # required
    #           },
    #           predictive: {
    #             bandwidth_allocation: 1.0, # required
    #             pacing_strategies: [{
    #               # One of:
    #               abandonment_rate: {
    #                 target_rate: 1.0, # required
    #                 connection_start_point: "ConnectionStartPoint", # required
    #                 connection_threshold_seconds: 1, # required
    #                 evaluation_window: "EvaluationWindow", # required
    #               }
    #             }]
    #           },
    #           agentless: {
    #           },
    #           preview: {
    #             bandwidth_allocation: 1.0, # required
    #             timeout_config: { # required
    #               duration_in_seconds: 1, # required
    #             },
    #             agent_actions: ["AgentAction"]
    #           }
    #         },
    #         default_outbound_config: { # required
    #           connect_contact_flow_id: "ContactFlowId", # required
    #           connect_source_phone_number: "SourcePhoneNumber",
    #           answer_machine_detection_config: {
    #             enable_answer_machine_detection: false, # required
    #             await_answer_machine_prompt: false
    #           },
    #           ring_timeout: 1
    #         }
    #       },
    #       sms: {
    #         capacity: 1.0,
    #         outbound_mode: { # required
    #           # One of:
    #           agentless: {
    #           }
    #         },
    #         default_outbound_config: { # required
    #           connect_source_phone_number_arn: "Arn", # required
    #           wisdom_template_arn: "Arn", # required
    #         }
    #       },
    #       email: {
    #         capacity: 1.0,
    #         outbound_mode: { # required
    #           # One of:
    #           agentless: {
    #           }
    #         },
    #         default_outbound_config: { # required
    #           connect_source_email_address: "EmailAddress", # required
    #           source_email_address_display_name: "EmailDisplayName",
    #           wisdom_template_arn: "Arn", # required
    #         }
    #       },
    #       whats_app: {
    #         capacity: 1.0,
    #         outbound_mode: { # required
    #           # One of:
    #           agentless: {
    #           }
    #         },
    #         default_outbound_config: { # required
    #           connect_source_phone_number_arn: "Arn", # required
    #           wisdom_template_arn: "Arn", # required
    #         }
    #       }
    #     },
    #     type: "ExternalCampaignType",
    #     source: {
    #       # One of:
    #       customer_profiles_segment_arn: "Arn",
    #       event_trigger: {
    #         customer_profiles_domain_arn: "Arn"
    #       }
    #     },
    #     connect_campaign_flow_arn: "Arn",
    #     schedule: {
    #       start_time: Time.now, # required
    #       end_time: Time.now, # required
    #       refresh_frequency: "Iso8601Duration"
    #     },
    #     entry_limits_config: {
    #       max_entry_count: 1, # required
    #       min_entry_interval: "Iso8601Duration", # required
    #     },
    #     communication_time_config: {
    #       local_time_zone_config: { # required
    #         default_time_zone: "TimeZone",
    #         local_time_zone_detection: ["LocalTimeZoneDetectionType"],
    #         local_time_zone_detection_scope: "LocalTimeZoneDetectionScope"
    #       },
    #       telephony: {
    #         open_hours: { # required
    #           # One of:
    #           daily_hours: {
    #             "DayOfWeek" => [
    #               {
    #                 start_time: "Iso8601Time", # required
    #                 end_time: "Iso8601Time", # required
    #               }
    #             ]
    #           }
    #         },
    #         restricted_periods: {
    #           # One of:
    #           restricted_period_list: [
    #             {
    #               name: "RestrictedPeriodName",
    #               start_date: "Iso8601Date", # required
    #               end_date: "Iso8601Date", # required
    #             }
    #           ]
    #         }
    #       },
    #       sms: {
    #         open_hours: { # required
    #           # One of:
    #           daily_hours: {
    #             "DayOfWeek" => [
    #               {
    #                 start_time: "Iso8601Time", # required
    #                 end_time: "Iso8601Time", # required
    #               }
    #             ]
    #           }
    #         },
    #         restricted_periods: {
    #           # One of:
    #           restricted_period_list: [
    #             {
    #               name: "RestrictedPeriodName",
    #               start_date: "Iso8601Date", # required
    #               end_date: "Iso8601Date", # required
    #             }
    #           ]
    #         }
    #       },
    #       email: {
    #         open_hours: { # required
    #           # One of:
    #           daily_hours: {
    #             "DayOfWeek" => [
    #               {
    #                 start_time: "Iso8601Time", # required
    #                 end_time: "Iso8601Time", # required
    #               }
    #             ]
    #           }
    #         },
    #         restricted_periods: {
    #           # One of:
    #           restricted_period_list: [
    #             {
    #               name: "RestrictedPeriodName",
    #               start_date: "Iso8601Date", # required
    #               end_date: "Iso8601Date", # required
    #             }
    #           ]
    #         }
    #       },
    #       whats_app: {
    #         open_hours: { # required
    #           # One of:
    #           daily_hours: {
    #             "DayOfWeek" => [
    #               {
    #                 start_time: "Iso8601Time", # required
    #                 end_time: "Iso8601Time", # required
    #               }
    #             ]
    #           }
    #         },
    #         restricted_periods: {
    #           # One of:
    #           restricted_period_list: [
    #             {
    #               name: "RestrictedPeriodName",
    #               start_date: "Iso8601Date", # required
    #               end_date: "Iso8601Date", # required
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     communication_limits_override: {
    #       all_channel_subtypes: {
    #         # One of:
    #         communication_limits_list: [
    #           {
    #             max_count_per_recipient: 1, # required
    #             frequency: 1, # required
    #             unit: "CommunicationLimitTimeUnit", # required
    #           }
    #         ]
    #       },
    #       instance_limits_handling: "InstanceLimitsHandling"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_campaign(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "CampaignId",
    #     arn: "CampaignArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateCampaignResponse]
    def create_campaign(params = {}, options = {})
      request = build_request(:create_campaign, params)
      request.send_request(options)
    end

    # Deletes a campaign from the specified Amazon Connect account.
    # @param [Hash, Types::DeleteCampaignRequest] params
    # @option params [String] :id
    #   Identifier representing a Campaign
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CampaignId", # required
    #   }
    #   options = {}
    #   response = client.delete_campaign(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_campaign(params = {}, options = {})
      request = build_request(:delete_campaign, params)
      request.send_request(options)
    end

    # Deletes the channel subtype config of a campaign. This API is idempotent.
    # @param [Hash, Types::DeleteCampaignChannelSubtypeConfigRequest] params
    # @option params [String] :id
    #   Identifier representing a Campaign
    # @option params [String] :channel_subtype
    #   The type of campaign channel subtype.
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CampaignId", # required
    #     channel_subtype: "ChannelSubtype", # required
    #   }
    #   options = {}
    #   response = client.delete_campaign_channel_subtype_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_campaign_channel_subtype_config(params = {}, options = {})
      request = build_request(:delete_campaign_channel_subtype_config, params)
      request.send_request(options)
    end

    # Deletes the communication limits config for a campaign. This API is idempotent.
    # @param [Hash, Types::DeleteCampaignCommunicationLimitsRequest] params
    # @option params [String] :id
    #   Identifier representing a Campaign
    # @option params [String] :config
    #   The type of campaign communication limits config.
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CampaignId", # required
    #     config: "CommunicationLimitsConfigType", # required
    #   }
    #   options = {}
    #   response = client.delete_campaign_communication_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_campaign_communication_limits(params = {}, options = {})
      request = build_request(:delete_campaign_communication_limits, params)
      request.send_request(options)
    end

    # Deletes the communication time config for a campaign. This API is idempotent.
    # @param [Hash, Types::DeleteCampaignCommunicationTimeRequest] params
    # @option params [String] :id
    #   Identifier representing a Campaign
    # @option params [String] :config
    #   The type of campaign communication time config
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CampaignId", # required
    #     config: "CommunicationTimeConfigType", # required
    #   }
    #   options = {}
    #   response = client.delete_campaign_communication_time(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_campaign_communication_time(params = {}, options = {})
      request = build_request(:delete_campaign_communication_time, params)
      request.send_request(options)
    end

    # Deletes the entry limits config for a campaign. This API is idempotent.
    # @param [Hash, Types::DeleteCampaignEntryLimitsRequest] params
    # @option params [String] :id
    #   Identifier representing a Campaign
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CampaignId", # required
    #   }
    #   options = {}
    #   response = client.delete_campaign_entry_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_campaign_entry_limits(params = {}, options = {})
      request = build_request(:delete_campaign_entry_limits, params)
      request.send_request(options)
    end

    # Deletes a connect instance config from the specified AWS account.
    # @param [Hash, Types::DeleteConnectInstanceConfigRequest] params
    # @option params [String] :connect_instance_id
    #   Amazon Connect Instance Id
    # @option params [String] :campaign_deletion_policy
    #   Enumeration of the policies to enact on existing campaigns during instance config deletion
    # @example Request syntax with placeholder values
    #   params = {
    #     connect_instance_id: "InstanceId", # required
    #     campaign_deletion_policy: "CampaignDeletionPolicy"
    #   }
    #   options = {}
    #   response = client.delete_connect_instance_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_connect_instance_config(params = {}, options = {})
      request = build_request(:delete_connect_instance_config, params)
      request.send_request(options)
    end

    # Delete the integration for the specified Amazon Connect instance.
    # @param [Hash, Types::DeleteConnectInstanceIntegrationRequest] params
    # @option params [String] :connect_instance_id
    #   Amazon Connect Instance Id
    # @option params [Types::IntegrationIdentifier] :integration_identifier
    #   Integration identifier for Connect instance
    # @example Request syntax with placeholder values
    #   params = {
    #     connect_instance_id: "InstanceId", # required
    #     integration_identifier: { # required
    #       # One of:
    #       customer_profiles: {
    #         domain_arn: "Arn", # required
    #       },
    #       q_connect: {
    #         knowledge_base_arn: "Arn", # required
    #       },
    #       lambda: {
    #         function_arn: "LambdaArn", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.delete_connect_instance_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_connect_instance_integration(params = {}, options = {})
      request = build_request(:delete_connect_instance_integration, params)
      request.send_request(options)
    end

    # Delete the Connect Campaigns onboarding job for the specified Amazon Connect instance.
    # @param [Hash, Types::DeleteInstanceOnboardingJobRequest] params
    # @option params [String] :connect_instance_id
    #   Amazon Connect Instance Id
    # @example Request syntax with placeholder values
    #   params = {
    #     connect_instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.delete_instance_onboarding_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_instance_onboarding_job(params = {}, options = {})
      request = build_request(:delete_instance_onboarding_job, params)
      request.send_request(options)
    end

    # Describes the specific campaign.
    # @param [Hash, Types::DescribeCampaignRequest] params
    # @option params [String] :id
    #   Identifier representing a Campaign
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CampaignId", # required
    #   }
    #   options = {}
    #   response = client.describe_campaign(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     campaign: {
    #       id: "CampaignId", # required
    #       arn: "CampaignArn", # required
    #       name: "CampaignName", # required
    #       connect_instance_id: "InstanceId", # required
    #       channel_subtype_config: {
    #         telephony: {
    #           capacity: 1.0,
    #           connect_queue_id: "QueueId",
    #           outbound_mode: { # required
    #             # One of:
    #             progressive: {
    #               bandwidth_allocation: 1.0, # required
    #             },
    #             predictive: {
    #               bandwidth_allocation: 1.0, # required
    #               pacing_strategies: [{
    #                 # One of:
    #                 abandonment_rate: {
    #                   target_rate: 1.0, # required
    #                   connection_start_point: "ConnectionStartPoint", # required
    #                   connection_threshold_seconds: 1, # required
    #                   evaluation_window: "EvaluationWindow", # required
    #                 }
    #               }]
    #             },
    #             agentless: {
    #             },
    #             preview: {
    #               bandwidth_allocation: 1.0, # required
    #               timeout_config: { # required
    #                 duration_in_seconds: 1, # required
    #               },
    #               agent_actions: ["AgentAction"]
    #             }
    #           },
    #           default_outbound_config: { # required
    #             connect_contact_flow_id: "ContactFlowId", # required
    #             connect_source_phone_number: "SourcePhoneNumber",
    #             answer_machine_detection_config: {
    #               enable_answer_machine_detection: false, # required
    #               await_answer_machine_prompt: false
    #             },
    #             ring_timeout: 1
    #           }
    #         },
    #         sms: {
    #           capacity: 1.0,
    #           outbound_mode: { # required
    #             # One of:
    #             agentless: {
    #             }
    #           },
    #           default_outbound_config: { # required
    #             connect_source_phone_number_arn: "Arn", # required
    #             wisdom_template_arn: "Arn", # required
    #           }
    #         },
    #         email: {
    #           capacity: 1.0,
    #           outbound_mode: { # required
    #             # One of:
    #             agentless: {
    #             }
    #           },
    #           default_outbound_config: { # required
    #             connect_source_email_address: "EmailAddress", # required
    #             source_email_address_display_name: "EmailDisplayName",
    #             wisdom_template_arn: "Arn", # required
    #           }
    #         },
    #         whats_app: {
    #           capacity: 1.0,
    #           outbound_mode: { # required
    #             # One of:
    #             agentless: {
    #             }
    #           },
    #           default_outbound_config: { # required
    #             connect_source_phone_number_arn: "Arn", # required
    #             wisdom_template_arn: "Arn", # required
    #           }
    #         }
    #       },
    #       type: "ExternalCampaignType",
    #       source: {
    #         # One of:
    #         customer_profiles_segment_arn: "Arn",
    #         event_trigger: {
    #           customer_profiles_domain_arn: "Arn"
    #         }
    #       },
    #       connect_campaign_flow_arn: "Arn",
    #       schedule: {
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         refresh_frequency: "Iso8601Duration"
    #       },
    #       entry_limits_config: {
    #         max_entry_count: 1, # required
    #         min_entry_interval: "Iso8601Duration", # required
    #       },
    #       communication_time_config: {
    #         local_time_zone_config: { # required
    #           default_time_zone: "TimeZone",
    #           local_time_zone_detection: ["LocalTimeZoneDetectionType"],
    #           local_time_zone_detection_scope: "LocalTimeZoneDetectionScope"
    #         },
    #         telephony: {
    #           open_hours: { # required
    #             # One of:
    #             daily_hours: {
    #               "DayOfWeek" => [
    #                 {
    #                   start_time: "Iso8601Time", # required
    #                   end_time: "Iso8601Time", # required
    #                 }
    #               ]
    #             }
    #           },
    #           restricted_periods: {
    #             # One of:
    #             restricted_period_list: [
    #               {
    #                 name: "RestrictedPeriodName",
    #                 start_date: "Iso8601Date", # required
    #                 end_date: "Iso8601Date", # required
    #               }
    #             ]
    #           }
    #         },
    #         sms: {
    #           open_hours: { # required
    #             # One of:
    #             daily_hours: {
    #               "DayOfWeek" => [
    #                 {
    #                   start_time: "Iso8601Time", # required
    #                   end_time: "Iso8601Time", # required
    #                 }
    #               ]
    #             }
    #           },
    #           restricted_periods: {
    #             # One of:
    #             restricted_period_list: [
    #               {
    #                 name: "RestrictedPeriodName",
    #                 start_date: "Iso8601Date", # required
    #                 end_date: "Iso8601Date", # required
    #               }
    #             ]
    #           }
    #         },
    #         email: {
    #           open_hours: { # required
    #             # One of:
    #             daily_hours: {
    #               "DayOfWeek" => [
    #                 {
    #                   start_time: "Iso8601Time", # required
    #                   end_time: "Iso8601Time", # required
    #                 }
    #               ]
    #             }
    #           },
    #           restricted_periods: {
    #             # One of:
    #             restricted_period_list: [
    #               {
    #                 name: "RestrictedPeriodName",
    #                 start_date: "Iso8601Date", # required
    #                 end_date: "Iso8601Date", # required
    #               }
    #             ]
    #           }
    #         },
    #         whats_app: {
    #           open_hours: { # required
    #             # One of:
    #             daily_hours: {
    #               "DayOfWeek" => [
    #                 {
    #                   start_time: "Iso8601Time", # required
    #                   end_time: "Iso8601Time", # required
    #                 }
    #               ]
    #             }
    #           },
    #           restricted_periods: {
    #             # One of:
    #             restricted_period_list: [
    #               {
    #                 name: "RestrictedPeriodName",
    #                 start_date: "Iso8601Date", # required
    #                 end_date: "Iso8601Date", # required
    #               }
    #             ]
    #           }
    #         }
    #       },
    #       communication_limits_override: {
    #         all_channel_subtypes: {
    #           # One of:
    #           communication_limits_list: [
    #             {
    #               max_count_per_recipient: 1, # required
    #               frequency: 1, # required
    #               unit: "CommunicationLimitTimeUnit", # required
    #             }
    #           ]
    #         },
    #         instance_limits_handling: "InstanceLimitsHandling"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::DescribeCampaignResponse]
    def describe_campaign(params = {}, options = {})
      request = build_request(:describe_campaign, params)
      request.send_request(options)
    end

    # Get state of a campaign for the specified Amazon Connect account.
    # @param [Hash, Types::GetCampaignStateRequest] params
    # @option params [String] :id
    #   Identifier representing a Campaign
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CampaignId", # required
    #   }
    #   options = {}
    #   response = client.get_campaign_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     state: "CampaignState"
    #   }
    # @return [Types::GetCampaignStateResponse]
    def get_campaign_state(params = {}, options = {})
      request = build_request(:get_campaign_state, params)
      request.send_request(options)
    end

    # Get state of campaigns for the specified Amazon Connect account.
    # @param [Hash, Types::GetCampaignStateBatchRequest] params
    # @option params [Array<String>] :campaign_ids
    #   List of CampaignId
    # @example Request syntax with placeholder values
    #   params = {
    #     campaign_ids: ["CampaignId"], # required
    #   }
    #   options = {}
    #   response = client.get_campaign_state_batch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successful_requests: [
    #       {
    #         campaign_id: "CampaignId",
    #         state: "CampaignState"
    #       }
    #     ],
    #     failed_requests: [
    #       {
    #         campaign_id: "CampaignId",
    #         failure_code: "GetCampaignStateBatchFailureCode"
    #       }
    #     ]
    #   }
    # @return [Types::GetCampaignStateBatchResponse]
    def get_campaign_state_batch(params = {}, options = {})
      request = build_request(:get_campaign_state_batch, params)
      request.send_request(options)
    end

    # Get the specific Connect instance config.
    # @param [Hash, Types::GetConnectInstanceConfigRequest] params
    # @option params [String] :connect_instance_id
    #   Amazon Connect Instance Id
    # @example Request syntax with placeholder values
    #   params = {
    #     connect_instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.get_connect_instance_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connect_instance_config: {
    #       connect_instance_id: "InstanceId", # required
    #       service_linked_role_arn: "ServiceLinkedRoleArn", # required
    #       encryption_config: { # required
    #         enabled: false, # required
    #         encryption_type: "EncryptionType",
    #         key_arn: "EncryptionKey"
    #       }
    #     }
    #   }
    # @return [Types::GetConnectInstanceConfigResponse]
    def get_connect_instance_config(params = {}, options = {})
      request = build_request(:get_connect_instance_config, params)
      request.send_request(options)
    end

    # Get the instance communication limits.
    # @param [Hash, Types::GetInstanceCommunicationLimitsRequest] params
    # @option params [String] :connect_instance_id
    #   Amazon Connect Instance Id
    # @example Request syntax with placeholder values
    #   params = {
    #     connect_instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.get_instance_communication_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     communication_limits_config: {
    #       all_channel_subtypes: {
    #         # One of:
    #         communication_limits_list: [
    #           {
    #             max_count_per_recipient: 1, # required
    #             frequency: 1, # required
    #             unit: "CommunicationLimitTimeUnit", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::GetInstanceCommunicationLimitsResponse]
    def get_instance_communication_limits(params = {}, options = {})
      request = build_request(:get_instance_communication_limits, params)
      request.send_request(options)
    end

    # Get the specific instance onboarding job status.
    # @param [Hash, Types::GetInstanceOnboardingJobStatusRequest] params
    # @option params [String] :connect_instance_id
    #   Amazon Connect Instance Id
    # @example Request syntax with placeholder values
    #   params = {
    #     connect_instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.get_instance_onboarding_job_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connect_instance_onboarding_job_status: {
    #       connect_instance_id: "InstanceId", # required
    #       status: "InstanceOnboardingJobStatusCode", # required
    #       failure_code: "InstanceOnboardingJobFailureCode"
    #     }
    #   }
    # @return [Types::GetInstanceOnboardingJobStatusResponse]
    def get_instance_onboarding_job_status(params = {}, options = {})
      request = build_request(:get_instance_onboarding_job_status, params)
      request.send_request(options)
    end

    # Provides summary information about the campaigns under the specified Amazon Connect account.
    # @param [Hash, Types::ListCampaignsRequest] params
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    # @option params [String] :next_token
    #   The token for the next set of results.
    # @option params [Types::CampaignFilters] :filters
    #   Filter model by type
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: {
    #       instance_id_filter: {
    #         value: "InstanceId", # required
    #         operator: "InstanceIdFilterOperator", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.list_campaigns(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     campaign_summary_list: [
    #       {
    #         id: "CampaignId", # required
    #         arn: "CampaignArn", # required
    #         name: "CampaignName", # required
    #         connect_instance_id: "InstanceId", # required
    #         channel_subtypes: ["ChannelSubtype"], # required
    #         type: "ExternalCampaignType",
    #         schedule: {
    #           start_time: Time.now, # required
    #           end_time: Time.now, # required
    #           refresh_frequency: "Iso8601Duration"
    #         },
    #         entry_limits_config: {
    #           max_entry_count: 1, # required
    #           min_entry_interval: "Iso8601Duration", # required
    #         },
    #         connect_campaign_flow_arn: "Arn"
    #       }
    #     ]
    #   }
    # @return [Types::ListCampaignsResponse]
    def list_campaigns(params = {}, options = {})
      request = build_request(:list_campaigns, params)
      request.send_request(options)
    end

    # Provides summary information about the integration under the specified Connect instance.
    # @param [Hash, Types::ListConnectInstanceIntegrationsRequest] params
    # @option params [String] :connect_instance_id
    #   Amazon Connect Instance Id
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    # @option params [String] :next_token
    #   The token for the next set of results.
    # @example Request syntax with placeholder values
    #   params = {
    #     connect_instance_id: "InstanceId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_connect_instance_integrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     integration_summary_list: [{
    #       # One of:
    #       customer_profiles: {
    #         domain_arn: "Arn", # required
    #         object_type_names: { # required
    #           "EventType" => "ObjectTypeName"
    #         }
    #       },
    #       q_connect: {
    #         knowledge_base_arn: "Arn", # required
    #       },
    #       lambda: {
    #         function_arn: "LambdaArn", # required
    #       }
    #     }]
    #   }
    # @return [Types::ListConnectInstanceIntegrationsResponse]
    def list_connect_instance_integrations(params = {}, options = {})
      request = build_request(:list_connect_instance_integrations, params)
      request.send_request(options)
    end

    # List tags for a resource.
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :arn
    #   Amazon Resource Names(ARN)
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # Pauses a campaign for the specified Amazon Connect account.
    # @param [Hash, Types::PauseCampaignRequest] params
    # @option params [String] :id
    #   Identifier representing a Campaign
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CampaignId", # required
    #   }
    #   options = {}
    #   response = client.pause_campaign(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def pause_campaign(params = {}, options = {})
      request = build_request(:pause_campaign, params)
      request.send_request(options)
    end

    # Put or update the integration for the specified Amazon Connect instance.
    # @param [Hash, Types::PutConnectInstanceIntegrationRequest] params
    # @option params [String] :connect_instance_id
    #   Amazon Connect Instance Id
    # @option params [Types::IntegrationConfig] :integration_config
    #   Integration config for Connect Instance
    # @example Request syntax with placeholder values
    #   params = {
    #     connect_instance_id: "InstanceId", # required
    #     integration_config: { # required
    #       # One of:
    #       customer_profiles: {
    #         domain_arn: "Arn", # required
    #         object_type_names: { # required
    #           "EventType" => "ObjectTypeName"
    #         }
    #       },
    #       q_connect: {
    #         knowledge_base_arn: "Arn", # required
    #       },
    #       lambda: {
    #         function_arn: "LambdaArn", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_connect_instance_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_connect_instance_integration(params = {}, options = {})
      request = build_request(:put_connect_instance_integration, params)
      request.send_request(options)
    end

    # Put the instance communication limits. This API is idempotent.
    # @param [Hash, Types::PutInstanceCommunicationLimitsRequest] params
    # @option params [String] :connect_instance_id
    #   Amazon Connect Instance Id
    # @option params [Types::InstanceCommunicationLimitsConfig] :communication_limits_config
    #   Instance Communication limits config
    # @example Request syntax with placeholder values
    #   params = {
    #     connect_instance_id: "InstanceId", # required
    #     communication_limits_config: { # required
    #       all_channel_subtypes: {
    #         # One of:
    #         communication_limits_list: [
    #           {
    #             max_count_per_recipient: 1, # required
    #             frequency: 1, # required
    #             unit: "CommunicationLimitTimeUnit", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_instance_communication_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_instance_communication_limits(params = {}, options = {})
      request = build_request(:put_instance_communication_limits, params)
      request.send_request(options)
    end

    # Creates outbound requests for the specified campaign Amazon Connect account. This API is idempotent.
    # @param [Hash, Types::PutOutboundRequestBatchRequest] params
    # @option params [String] :id
    #   Identifier representing a Campaign
    # @option params [Array<Types::OutboundRequest>] :outbound_requests
    #   A list of outbound requests.
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CampaignId", # required
    #     outbound_requests: [ # required
    #       {
    #         client_token: "ClientToken", # required
    #         expiration_time: Time.now, # required
    #         channel_subtype_parameters: { # required
    #           # One of:
    #           telephony: {
    #             destination_phone_number: "DestinationPhoneNumber", # required
    #             attributes: { # required
    #               "AttributeName" => "AttributeValue"
    #             },
    #             connect_source_phone_number: "SourcePhoneNumber",
    #             answer_machine_detection_config: {
    #               enable_answer_machine_detection: false, # required
    #               await_answer_machine_prompt: false
    #             },
    #             ring_timeout: 1
    #           },
    #           sms: {
    #             destination_phone_number: "DestinationPhoneNumber", # required
    #             connect_source_phone_number_arn: "Arn",
    #             template_arn: "Arn",
    #             template_parameters: { # required
    #               "AttributeName" => "AttributeValue"
    #             }
    #           },
    #           email: {
    #             destination_email_address: "EmailAddress", # required
    #             connect_source_email_address: "EmailAddress",
    #             template_arn: "Arn",
    #             template_parameters: { # required
    #               "AttributeName" => "AttributeValue"
    #             }
    #           },
    #           whats_app: {
    #             destination_phone_number: "DestinationPhoneNumber", # required
    #             connect_source_phone_number_arn: "Arn",
    #             template_arn: "Arn",
    #             template_parameters: { # required
    #               "AttributeName" => "AttributeValue"
    #             }
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_outbound_request_batch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successful_requests: [
    #       {
    #         client_token: "ClientToken",
    #         id: "DialRequestId"
    #       }
    #     ],
    #     failed_requests: [
    #       {
    #         client_token: "ClientToken",
    #         id: "DialRequestId",
    #         failure_code: "FailureCode"
    #       }
    #     ]
    #   }
    # @return [Types::PutOutboundRequestBatchResponse]
    def put_outbound_request_batch(params = {}, options = {})
      request = build_request(:put_outbound_request_batch, params)
      request.send_request(options)
    end

    # Takes in a list of profile outbound requests to be placed as part of an outbound campaign. This API is idempotent.
    # @param [Hash, Types::PutProfileOutboundRequestBatchRequest] params
    # @option params [String] :id
    #   Identifier representing a Campaign
    # @option params [Array<Types::ProfileOutboundRequest>] :profile_outbound_requests
    #   List of profile outbound requests
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CampaignId", # required
    #     profile_outbound_requests: [ # required
    #       {
    #         client_token: "ClientToken", # required
    #         profile_id: "ProfileId", # required
    #         expiration_time: Time.now,
    #         event_trigger_context: {
    #           source_event: "SourceEvent",
    #           channel_context: {
    #             web_notification_context: {
    #               session_id: "SessionId",
    #               browser_id: "BrowserId"
    #             }
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_profile_outbound_request_batch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successful_requests: [
    #       {
    #         client_token: "ClientToken",
    #         id: "ProfileOutboundRequestId"
    #       }
    #     ],
    #     failed_requests: [
    #       {
    #         client_token: "ClientToken",
    #         id: "ProfileOutboundRequestId",
    #         failure_code: "ProfileOutboundRequestFailureCode"
    #       }
    #     ]
    #   }
    # @return [Types::PutProfileOutboundRequestBatchResponse]
    def put_profile_outbound_request_batch(params = {}, options = {})
      request = build_request(:put_profile_outbound_request_batch, params)
      request.send_request(options)
    end

    # Stops a campaign for the specified Amazon Connect account.
    # @param [Hash, Types::ResumeCampaignRequest] params
    # @option params [String] :id
    #   Identifier representing a Campaign
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CampaignId", # required
    #   }
    #   options = {}
    #   response = client.resume_campaign(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def resume_campaign(params = {}, options = {})
      request = build_request(:resume_campaign, params)
      request.send_request(options)
    end

    # Starts a campaign for the specified Amazon Connect account.
    # @param [Hash, Types::StartCampaignRequest] params
    # @option params [String] :id
    #   Identifier representing a Campaign
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CampaignId", # required
    #   }
    #   options = {}
    #   response = client.start_campaign(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def start_campaign(params = {}, options = {})
      request = build_request(:start_campaign, params)
      request.send_request(options)
    end

    # Onboard the specific Amazon Connect instance to Connect Campaigns.
    # @param [Hash, Types::StartInstanceOnboardingJobRequest] params
    # @option params [String] :connect_instance_id
    #   Amazon Connect Instance Id
    # @option params [Types::EncryptionConfig] :encryption_config
    #   Encryption config for Connect Instance. Note that sensitive data will always be encrypted.
    #   If disabled, service will perform encryption with its own key.
    #   If enabled, a KMS key id needs to be provided and KMS charges will apply.
    #   KMS is only type supported
    # @example Request syntax with placeholder values
    #   params = {
    #     connect_instance_id: "InstanceId", # required
    #     encryption_config: { # required
    #       enabled: false, # required
    #       encryption_type: "EncryptionType",
    #       key_arn: "EncryptionKey"
    #     }
    #   }
    #   options = {}
    #   response = client.start_instance_onboarding_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connect_instance_onboarding_job_status: {
    #       connect_instance_id: "InstanceId", # required
    #       status: "InstanceOnboardingJobStatusCode", # required
    #       failure_code: "InstanceOnboardingJobFailureCode"
    #     }
    #   }
    # @return [Types::StartInstanceOnboardingJobResponse]
    def start_instance_onboarding_job(params = {}, options = {})
      request = build_request(:start_instance_onboarding_job, params)
      request.send_request(options)
    end

    # Stops a campaign for the specified Amazon Connect account.
    # @param [Hash, Types::StopCampaignRequest] params
    # @option params [String] :id
    #   Identifier representing a Campaign
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CampaignId", # required
    #   }
    #   options = {}
    #   response = client.stop_campaign(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_campaign(params = {}, options = {})
      request = build_request(:stop_campaign, params)
      request.send_request(options)
    end

    # Tag a resource.
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :arn
    #   Amazon Resource Names(ARN)
    # @option params [Hash<String, String>] :tags
    #   Tag map with key and value.
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # Untag a resource.
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :arn
    #   Amazon Resource Names(ARN)
    # @option params [Array<String>] :tag_keys
    #   List of tag keys.
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # Updates the channel subtype config of a campaign. This API is idempotent.
    # @param [Hash, Types::UpdateCampaignChannelSubtypeConfigRequest] params
    # @option params [String] :id
    #   Identifier representing a Campaign
    # @option params [Types::ChannelSubtypeConfig] :channel_subtype_config
    #   Campaign Channel Subtype config
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CampaignId", # required
    #     channel_subtype_config: { # required
    #       telephony: {
    #         capacity: 1.0,
    #         connect_queue_id: "QueueId",
    #         outbound_mode: { # required
    #           # One of:
    #           progressive: {
    #             bandwidth_allocation: 1.0, # required
    #           },
    #           predictive: {
    #             bandwidth_allocation: 1.0, # required
    #             pacing_strategies: [{
    #               # One of:
    #               abandonment_rate: {
    #                 target_rate: 1.0, # required
    #                 connection_start_point: "ConnectionStartPoint", # required
    #                 connection_threshold_seconds: 1, # required
    #                 evaluation_window: "EvaluationWindow", # required
    #               }
    #             }]
    #           },
    #           agentless: {
    #           },
    #           preview: {
    #             bandwidth_allocation: 1.0, # required
    #             timeout_config: { # required
    #               duration_in_seconds: 1, # required
    #             },
    #             agent_actions: ["AgentAction"]
    #           }
    #         },
    #         default_outbound_config: { # required
    #           connect_contact_flow_id: "ContactFlowId", # required
    #           connect_source_phone_number: "SourcePhoneNumber",
    #           answer_machine_detection_config: {
    #             enable_answer_machine_detection: false, # required
    #             await_answer_machine_prompt: false
    #           },
    #           ring_timeout: 1
    #         }
    #       },
    #       sms: {
    #         capacity: 1.0,
    #         outbound_mode: { # required
    #           # One of:
    #           agentless: {
    #           }
    #         },
    #         default_outbound_config: { # required
    #           connect_source_phone_number_arn: "Arn", # required
    #           wisdom_template_arn: "Arn", # required
    #         }
    #       },
    #       email: {
    #         capacity: 1.0,
    #         outbound_mode: { # required
    #           # One of:
    #           agentless: {
    #           }
    #         },
    #         default_outbound_config: { # required
    #           connect_source_email_address: "EmailAddress", # required
    #           source_email_address_display_name: "EmailDisplayName",
    #           wisdom_template_arn: "Arn", # required
    #         }
    #       },
    #       whats_app: {
    #         capacity: 1.0,
    #         outbound_mode: { # required
    #           # One of:
    #           agentless: {
    #           }
    #         },
    #         default_outbound_config: { # required
    #           connect_source_phone_number_arn: "Arn", # required
    #           wisdom_template_arn: "Arn", # required
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_campaign_channel_subtype_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_campaign_channel_subtype_config(params = {}, options = {})
      request = build_request(:update_campaign_channel_subtype_config, params)
      request.send_request(options)
    end

    # Updates the communication limits config for a campaign. This API is idempotent.
    # @param [Hash, Types::UpdateCampaignCommunicationLimitsRequest] params
    # @option params [String] :id
    #   Identifier representing a Campaign
    # @option params [Types::CommunicationLimitsConfig] :communication_limits_override
    #   Communication limits config
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CampaignId", # required
    #     communication_limits_override: { # required
    #       all_channel_subtypes: {
    #         # One of:
    #         communication_limits_list: [
    #           {
    #             max_count_per_recipient: 1, # required
    #             frequency: 1, # required
    #             unit: "CommunicationLimitTimeUnit", # required
    #           }
    #         ]
    #       },
    #       instance_limits_handling: "InstanceLimitsHandling"
    #     }
    #   }
    #   options = {}
    #   response = client.update_campaign_communication_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_campaign_communication_limits(params = {}, options = {})
      request = build_request(:update_campaign_communication_limits, params)
      request.send_request(options)
    end

    # Updates the communication time config for a campaign. This API is idempotent.
    # @param [Hash, Types::UpdateCampaignCommunicationTimeRequest] params
    # @option params [String] :id
    #   Identifier representing a Campaign
    # @option params [Types::CommunicationTimeConfig] :communication_time_config
    #   Campaign communication time config
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CampaignId", # required
    #     communication_time_config: { # required
    #       local_time_zone_config: { # required
    #         default_time_zone: "TimeZone",
    #         local_time_zone_detection: ["LocalTimeZoneDetectionType"],
    #         local_time_zone_detection_scope: "LocalTimeZoneDetectionScope"
    #       },
    #       telephony: {
    #         open_hours: { # required
    #           # One of:
    #           daily_hours: {
    #             "DayOfWeek" => [
    #               {
    #                 start_time: "Iso8601Time", # required
    #                 end_time: "Iso8601Time", # required
    #               }
    #             ]
    #           }
    #         },
    #         restricted_periods: {
    #           # One of:
    #           restricted_period_list: [
    #             {
    #               name: "RestrictedPeriodName",
    #               start_date: "Iso8601Date", # required
    #               end_date: "Iso8601Date", # required
    #             }
    #           ]
    #         }
    #       },
    #       sms: {
    #         open_hours: { # required
    #           # One of:
    #           daily_hours: {
    #             "DayOfWeek" => [
    #               {
    #                 start_time: "Iso8601Time", # required
    #                 end_time: "Iso8601Time", # required
    #               }
    #             ]
    #           }
    #         },
    #         restricted_periods: {
    #           # One of:
    #           restricted_period_list: [
    #             {
    #               name: "RestrictedPeriodName",
    #               start_date: "Iso8601Date", # required
    #               end_date: "Iso8601Date", # required
    #             }
    #           ]
    #         }
    #       },
    #       email: {
    #         open_hours: { # required
    #           # One of:
    #           daily_hours: {
    #             "DayOfWeek" => [
    #               {
    #                 start_time: "Iso8601Time", # required
    #                 end_time: "Iso8601Time", # required
    #               }
    #             ]
    #           }
    #         },
    #         restricted_periods: {
    #           # One of:
    #           restricted_period_list: [
    #             {
    #               name: "RestrictedPeriodName",
    #               start_date: "Iso8601Date", # required
    #               end_date: "Iso8601Date", # required
    #             }
    #           ]
    #         }
    #       },
    #       whats_app: {
    #         open_hours: { # required
    #           # One of:
    #           daily_hours: {
    #             "DayOfWeek" => [
    #               {
    #                 start_time: "Iso8601Time", # required
    #                 end_time: "Iso8601Time", # required
    #               }
    #             ]
    #           }
    #         },
    #         restricted_periods: {
    #           # One of:
    #           restricted_period_list: [
    #             {
    #               name: "RestrictedPeriodName",
    #               start_date: "Iso8601Date", # required
    #               end_date: "Iso8601Date", # required
    #             }
    #           ]
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_campaign_communication_time(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_campaign_communication_time(params = {}, options = {})
      request = build_request(:update_campaign_communication_time, params)
      request.send_request(options)
    end

    # Updates the entry limits config for a campaign. This API is idempotent.
    # @param [Hash, Types::UpdateCampaignEntryLimitsRequest] params
    # @option params [String] :id
    #   Identifier representing a Campaign
    # @option params [Types::EntryLimitsConfig] :entry_limits_config
    #   Campaign entry limits config
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CampaignId", # required
    #     entry_limits_config: { # required
    #       max_entry_count: 1, # required
    #       min_entry_interval: "Iso8601Duration", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_campaign_entry_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_campaign_entry_limits(params = {}, options = {})
      request = build_request(:update_campaign_entry_limits, params)
      request.send_request(options)
    end

    # Updates the campaign flow associated with a campaign. This API is idempotent.
    # @param [Hash, Types::UpdateCampaignFlowAssociationRequest] params
    # @option params [String] :id
    #   Identifier representing a Campaign
    # @option params [String] :connect_campaign_flow_arn
    #   Amazon Resource Names(ARN)
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CampaignId", # required
    #     connect_campaign_flow_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.update_campaign_flow_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_campaign_flow_association(params = {}, options = {})
      request = build_request(:update_campaign_flow_association, params)
      request.send_request(options)
    end

    # Updates the name of a campaign. This API is idempotent.
    # @param [Hash, Types::UpdateCampaignNameRequest] params
    # @option params [String] :id
    #   Identifier representing a Campaign
    # @option params [String] :name
    #   The name of an Amazon Connect Campaign name.
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CampaignId", # required
    #     name: "CampaignName", # required
    #   }
    #   options = {}
    #   response = client.update_campaign_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_campaign_name(params = {}, options = {})
      request = build_request(:update_campaign_name, params)
      request.send_request(options)
    end

    # Updates the schedule for a campaign. This API is idempotent.
    # @param [Hash, Types::UpdateCampaignScheduleRequest] params
    # @option params [String] :id
    #   Identifier representing a Campaign
    # @option params [Types::Schedule] :schedule
    #   Campaign schedule
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CampaignId", # required
    #     schedule: { # required
    #       start_time: Time.now, # required
    #       end_time: Time.now, # required
    #       refresh_frequency: "Iso8601Duration"
    #     }
    #   }
    #   options = {}
    #   response = client.update_campaign_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_campaign_schedule(params = {}, options = {})
      request = build_request(:update_campaign_schedule, params)
      request.send_request(options)
    end

    # Updates the campaign source with a campaign. This API is idempotent.
    # @param [Hash, Types::UpdateCampaignSourceRequest] params
    # @option params [String] :id
    #   Identifier representing a Campaign
    # @option params [Types::Source] :source
    #   Source of the campaign
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CampaignId", # required
    #     source: { # required
    #       # One of:
    #       customer_profiles_segment_arn: "Arn",
    #       event_trigger: {
    #         customer_profiles_domain_arn: "Arn"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_campaign_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_campaign_source(params = {}, options = {})
      request = build_request(:update_campaign_source, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-connectcampaignsv2'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
