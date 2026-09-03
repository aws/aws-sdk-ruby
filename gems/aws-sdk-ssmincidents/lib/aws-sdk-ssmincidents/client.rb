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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:ssmincidents)

module Aws::SSMIncidents
  # An API client for Aws::SSMIncidents.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::SSMIncidents
    @identifier = :ssmincidents

    add_plugin(::Aws::SSMIncidents::Plugins::Endpoint)
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
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SSMIncidents::EndpointProvider)
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
    #  `#transmit(request)` (returning a stream) to swap the transport, or a
    #  directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
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

    # <p>Retrieves details about all specified findings for an incident, including descriptive details about each finding. A finding
    #       represents a recent application environment change made by an CodeDeploy
    #       deployment or an CloudFormation stack creation or update that can be investigated as a
    #       potential cause of the incident.</p>
    # @param [Hash, Types::BatchGetIncidentFindingsInput] params
    # @option params [String] :incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident for which you want to view finding
    #         details.</p>
    # @option params [Array<String>] :finding_ids
    #   <p>A list of IDs of findings for which you want to view details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     incident_record_arn: "Arn", # required
    #     finding_ids: ["FindingId"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_incident_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     findings: [ # required
    #       {
    #         id: "FindingId", # required
    #         creation_time: Time.now, # required
    #         last_modified_time: Time.now, # required
    #         details: {
    #           # One of:
    #           code_deploy_deployment: {
    #             start_time: Time.now, # required
    #             end_time: Time.now,
    #             deployment_group_arn: "Arn", # required
    #             deployment_id: "String", # required
    #           },
    #           cloud_formation_stack_update: {
    #             start_time: Time.now, # required
    #             end_time: Time.now,
    #             stack_arn: "Arn", # required
    #           }
    #         }
    #       }
    #     ],
    #     errors: [ # required
    #       {
    #         finding_id: "FindingId", # required
    #         code: "String", # required
    #         message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetIncidentFindingsOutput]
    def batch_get_incident_findings(params = {}, options = {})
      request = build_request(:batch_get_incident_findings, params)
      request.send_request(options)
    end

    # <p>A replication set replicates and encrypts your data to the provided Regions with the
    #       provided KMS key. </p>
    # @param [Hash, Types::CreateReplicationSetOperationInput] params
    # @option params [Hash<String, Types::RegionMapInputValue>] :regions
    #   <p>The Regions that Incident Manager replicates your data to. You can have up to three Regions in
    #         your replication set.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures that the operation is called only once with the specified
    #         details.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags to add to the replication set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     regions: { # required
    #       "RegionName" => {
    #         sse_kms_key_id: "SseKmsKey"
    #       }
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_replication_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn", # required
    #   }
    # @return [Types::CreateReplicationSetOperationOutput]
    def create_replication_set(params = {}, options = {})
      request = build_request(:create_replication_set, params)
      request.send_request(options)
    end

    # <p>Creates a response plan that automates the initial response to incidents. A response plan
    #       engages contacts, starts chat channel collaboration, and initiates runbooks at the beginning
    #       of an incident.</p>
    # @param [Hash, Types::CreateResponsePlanOperationInput] params
    # @option params [String] :client_token
    #   <p>A token ensuring that the operation is called only once with the specified details.</p>
    # @option params [String] :name
    #   <p>The short format name of the response plan. Can't include spaces.</p>
    # @option params [String] :display_name
    #   <p>The long format of the response plan name. This field can contain spaces.</p>
    # @option params [Types::IncidentTemplate] :incident_template
    #   <p>Details used to create an incident when using this response plan.</p>
    # @option params [Types::ChatChannel] :chat_channel
    #   <p>The Chatbot chat channel used for collaboration during an incident.</p>
    # @option params [Array<String>] :engagements
    #   <p>The Amazon Resource Name (ARN) for the contacts and escalation plans that the response
    #         plan engages during an incident.</p>
    # @option params [Array<Types::Action>] :actions
    #   <p>The actions that the response plan starts at the beginning of an incident.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags that you are adding to the response plan.</p>
    # @option params [Array<Types::Integration>] :integrations
    #   <p>Information about third-party services integrated into the response plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     name: "ResponsePlanName", # required
    #     display_name: "ResponsePlanDisplayName",
    #     incident_template: { # required
    #       title: "IncidentTitle", # required
    #       impact: 1, # required
    #       summary: "IncidentSummary",
    #       dedupe_string: "DedupeString",
    #       notification_targets: [{
    #         # One of:
    #         sns_topic_arn: "Arn"
    #       }],
    #       incident_tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     },
    #     chat_channel: {
    #       # One of:
    #       empty: {
    #       },
    #       chatbot_sns: ["SnsArn"]
    #     },
    #     engagements: ["SsmContactsArn"],
    #     actions: [{
    #       # One of:
    #       ssm_automation: {
    #         role_arn: "RoleArn", # required
    #         document_name: "String", # required
    #         document_version: "String",
    #         target_account: "SsmTargetAccount",
    #         parameters: {
    #           "String" => ["String"]
    #         },
    #         dynamic_parameters: {
    #           "String" => {
    #             # One of:
    #             variable: "VariableType"
    #           }
    #         }
    #       }
    #     }],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     integrations: [{
    #       # One of:
    #       pager_duty_configuration: {
    #         name: "String", # required
    #         secret_id: "String", # required
    #         pager_duty_incident_configuration: { # required
    #           service_id: "String", # required
    #         }
    #       }
    #     }]
    #   }
    #   options = {}
    #   response = client.create_response_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn", # required
    #   }
    # @return [Types::CreateResponsePlanOperationOutput]
    def create_response_plan(params = {}, options = {})
      request = build_request(:create_response_plan, params)
      request.send_request(options)
    end

    # <p>Creates a custom timeline event on the incident details page of an incident record.
    #       Incident Manager automatically creates timeline events that mark key moments during an incident.
    #       You can create custom timeline events to mark important events that Incident Manager can detect
    #       automatically.</p>
    # @param [Hash, Types::CreateTimelineEventOperationInput] params
    # @option params [String] :client_token
    #   <p>A token that ensures that a client calls the action only once with the specified
    #         details.</p>
    # @option params [String] :incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident record that the action adds the incident
    #         to.</p>
    # @option params [Time] :event_time
    #   <p>The timestamp for when the event occurred.</p>
    # @option params [String] :event_type
    #   <p>The type of event. You can create timeline events of type <code>Custom Event</code> and
    #           <code>Note</code>.</p>
    #            <p>To make a Note-type event appear on the <i>Incident notes</i> panel in the
    #         console, specify <code>eventType</code> as <code>Note</code>and enter the Amazon Resource Name
    #         (ARN) of the incident as the value for <code>eventReference</code>.</p>
    # @option params [String] :event_data
    #   <p>A short description of the event.</p>
    # @option params [Array<Types::EventReference>] :event_references
    #   <p>Adds one or more references to the <code>TimelineEvent</code>. A reference is an Amazon Web Services resource involved or associated with the incident. To specify a reference, enter
    #         its Amazon Resource Name (ARN). You can also specify a related item associated with a
    #         resource. For example, to specify an Amazon DynamoDB (DynamoDB) table as a
    #         resource, use the table's ARN. You can also specify an Amazon CloudWatch metric associated
    #         with the DynamoDB table as a related item.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     incident_record_arn: "Arn", # required
    #     event_time: Time.now, # required
    #     event_type: "TimelineEventType", # required
    #     event_data: "EventData", # required
    #     event_references: [{
    #       # One of:
    #       resource: "Arn",
    #       related_item_id: "GeneratedId"
    #     }]
    #   }
    #   options = {}
    #   response = client.create_timeline_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     incident_record_arn: "Arn", # required
    #     event_id: "UUID", # required
    #   }
    # @return [Types::CreateTimelineEventOperationOutput]
    def create_timeline_event(params = {}, options = {})
      request = build_request(:create_timeline_event, params)
      request.send_request(options)
    end

    # <p>Delete an incident record from Incident Manager. </p>
    # @param [Hash, Types::DeleteIncidentRecordOperationInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the incident record you are deleting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_incident_record(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIncidentRecordOperationOutput]
    def delete_incident_record(params = {}, options = {})
      request = build_request(:delete_incident_record, params)
      request.send_request(options)
    end

    # <p>Deletes all Regions in your replication set. Deleting the replication set deletes all
    #       Incident Manager data.</p>
    # @param [Hash, Types::DeleteReplicationSetOperationInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the replication set you're deleting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_replication_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteReplicationSetOperationOutput]
    def delete_replication_set(params = {}, options = {})
      request = build_request(:delete_replication_set, params)
      request.send_request(options)
    end

    # <p>Deletes the resource policy that Resource Access Manager uses to share your Incident Manager
    #       resource.</p>
    # @param [Hash, Types::DeleteResourcePolicyOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource you're deleting the policy from.</p>
    # @option params [String] :policy_id
    #   <p>The ID of the resource policy you're deleting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     policy_id: "PolicyId", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteResourcePolicyOperationOutput]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the specified response plan. Deleting a response plan stops all linked CloudWatch alarms and EventBridge events from creating an incident with this response
    #       plan.</p>
    # @param [Hash, Types::DeleteResponsePlanOperationInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the response plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_response_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteResponsePlanOperationOutput]
    def delete_response_plan(params = {}, options = {})
      request = build_request(:delete_response_plan, params)
      request.send_request(options)
    end

    # <p>Deletes a timeline event from an incident.</p>
    # @param [Hash, Types::DeleteTimelineEventOperationInput] params
    # @option params [String] :incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident that includes the timeline event.</p>
    # @option params [String] :event_id
    #   <p>The ID of the event to update. You can use <code>ListTimelineEvents</code> to find an
    #         event's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     incident_record_arn: "Arn", # required
    #     event_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.delete_timeline_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTimelineEventOperationOutput]
    def delete_timeline_event(params = {}, options = {})
      request = build_request(:delete_timeline_event, params)
      request.send_request(options)
    end

    # <p>Returns the details for the specified incident record.</p>
    # @param [Hash, Types::GetIncidentRecordOperationInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the incident record.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_incident_record(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     incident_record: { # required
    #       arn: "Arn", # required
    #       title: "IncidentTitle", # required
    #       summary: "IncidentSummary",
    #       status: "IncidentRecordStatus", # required
    #       impact: 1, # required
    #       creation_time: Time.now, # required
    #       resolved_time: Time.now,
    #       last_modified_time: Time.now, # required
    #       last_modified_by: "Arn", # required
    #       automation_executions: [{
    #         # One of:
    #         ssm_execution_arn: "Arn"
    #       }],
    #       incident_record_source: { # required
    #         created_by: "Arn", # required
    #         invoked_by: "ServicePrincipal",
    #         resource_arn: "Arn",
    #         source: "IncidentSource", # required
    #       },
    #       dedupe_string: "DedupeString", # required
    #       chat_channel: {
    #         # One of:
    #         empty: {
    #         },
    #         chatbot_sns: ["SnsArn"]
    #       },
    #       notification_targets: [{
    #         # One of:
    #         sns_topic_arn: "Arn"
    #       }]
    #     }
    #   }
    # @return [Types::GetIncidentRecordOperationOutput]
    def get_incident_record(params = {}, options = {})
      request = build_request(:get_incident_record, params)
      request.send_request(options)
    end

    # <p>Retrieve your Incident Manager replication set.</p>
    # @param [Hash, Types::GetReplicationSetOperationInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the replication set you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_replication_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_set: { # required
    #       arn: "Arn",
    #       region_map: { # required
    #         "RegionName" => {
    #           sse_kms_key_id: "SseKmsKey",
    #           status: "RegionStatus", # required
    #           status_message: "String",
    #           status_update_date_time: Time.now, # required
    #         }
    #       },
    #       status: "ReplicationSetStatus", # required
    #       deletion_protected: false, # required
    #       created_time: Time.now, # required
    #       created_by: "Arn", # required
    #       last_modified_time: Time.now, # required
    #       last_modified_by: "Arn", # required
    #     }
    #   }
    # @return [Types::GetReplicationSetOperationOutput]
    def get_replication_set(params = {}, options = {})
      request = build_request(:get_replication_set, params)
      request.send_request(options)
    end

    # <p>Retrieves the resource policies attached to the specified response plan.</p>
    # @param [Hash, Types::GetResourcePoliciesOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan with the attached resource policy.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of resource policies to display for each page of results.</p>
    # @option params [String] :next_token
    #   <p>The pagination token for the next set of items to return. (You received this token from a
    #         previous call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_resource_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_policies: [ # required
    #       {
    #         policy_document: "Policy", # required
    #         policy_id: "PolicyId", # required
    #         ram_resource_share_region: "String", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetResourcePoliciesOperationOutput]
    def get_resource_policies(params = {}, options = {})
      request = build_request(:get_resource_policies, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of the specified response plan.</p>
    # @param [Hash, Types::GetResponsePlanOperationInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the response plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_response_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "Arn", # required
    #     name: "ResponsePlanName", # required
    #     display_name: "ResponsePlanDisplayName",
    #     incident_template: { # required
    #       title: "IncidentTitle", # required
    #       impact: 1, # required
    #       summary: "IncidentSummary",
    #       dedupe_string: "DedupeString",
    #       notification_targets: [{
    #         # One of:
    #         sns_topic_arn: "Arn"
    #       }],
    #       incident_tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     },
    #     chat_channel: {
    #       # One of:
    #       empty: {
    #       },
    #       chatbot_sns: ["SnsArn"]
    #     },
    #     engagements: ["SsmContactsArn"],
    #     actions: [{
    #       # One of:
    #       ssm_automation: {
    #         role_arn: "RoleArn", # required
    #         document_name: "String", # required
    #         document_version: "String",
    #         target_account: "SsmTargetAccount",
    #         parameters: {
    #           "String" => ["String"]
    #         },
    #         dynamic_parameters: {
    #           "String" => {
    #             # One of:
    #             variable: "VariableType"
    #           }
    #         }
    #       }
    #     }],
    #     integrations: [{
    #       # One of:
    #       pager_duty_configuration: {
    #         name: "String", # required
    #         secret_id: "String", # required
    #         pager_duty_incident_configuration: { # required
    #           service_id: "String", # required
    #         }
    #       }
    #     }]
    #   }
    # @return [Types::GetResponsePlanOperationOutput]
    def get_response_plan(params = {}, options = {})
      request = build_request(:get_response_plan, params)
      request.send_request(options)
    end

    # <p>Retrieves a timeline event based on its ID and incident record.</p>
    # @param [Hash, Types::GetTimelineEventOperationInput] params
    # @option params [String] :incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident that includes the timeline event.</p>
    # @option params [String] :event_id
    #   <p>The ID of the event. You can get an event's ID when you create it, or by using
    #           <code>ListTimelineEvents</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     incident_record_arn: "Arn", # required
    #     event_id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_timeline_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event: { # required
    #       incident_record_arn: "Arn", # required
    #       event_id: "UUID", # required
    #       event_time: Time.now, # required
    #       event_updated_time: Time.now, # required
    #       event_type: "TimelineEventType", # required
    #       event_data: "EventData", # required
    #       event_references: [{
    #         # One of:
    #         resource: "Arn",
    #         related_item_id: "GeneratedId"
    #       }]
    #     }
    #   }
    # @return [Types::GetTimelineEventOperationOutput]
    def get_timeline_event(params = {}, options = {})
      request = build_request(:get_timeline_event, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of the IDs of findings, plus their last modified times, that have been
    #       identified for a specified incident. A finding represents a recent application environment
    #       change made by an CloudFormation stack creation or update or an CodeDeploy
    #       deployment that can be investigated as a potential cause of the incident.</p>
    # @param [Hash, Types::ListIncidentFindingsInput] params
    # @option params [String] :incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident for which you want to view associated
    #         findings.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of findings to retrieve per call.</p>
    # @option params [String] :next_token
    #   <p>The pagination token for the next set of items to return. (You received this token from a
    #         previous call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     incident_record_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_incident_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     findings: [ # required
    #       {
    #         id: "FindingId", # required
    #         last_modified_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListIncidentFindingsOutput]
    def list_incident_findings(params = {}, options = {})
      request = build_request(:list_incident_findings, params)
      request.send_request(options)
    end

    # <p>Lists all incident records in your account. Use this command to retrieve the Amazon
    #       Resource Name (ARN) of the incident record you want to update. </p>
    # @param [Hash, Types::ListIncidentRecordsOperationInput] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters the list of incident records you want to search through. You can filter on the
    #         following keys:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>creationTime</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>impact</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>status</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>createdBy</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Note the following when when you use Filters:</p>
    #            <ul>
    #               <li>
    #                  <p>If you don't specify a Filter, the response includes all incident records.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify more than one filter in a single request, the response returns incident
    #             records that match all filters.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify a filter with more than one value, the response returns incident
    #             records that match any of the values provided.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results per page.</p>
    # @option params [String] :next_token
    #   <p>The pagination token for the next set of items to return. (You received this token from a
    #         previous call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         key: "String", # required
    #         condition: { # required
    #           # One of:
    #           before: Time.now,
    #           after: Time.now,
    #           equals: {
    #             # One of:
    #             string_values: ["String"],
    #             integer_values: [1]
    #           }
    #         }
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_incident_records(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     incident_record_summaries: [ # required
    #       {
    #         arn: "Arn", # required
    #         title: "IncidentTitle", # required
    #         status: "IncidentRecordStatus", # required
    #         impact: 1, # required
    #         creation_time: Time.now, # required
    #         resolved_time: Time.now,
    #         incident_record_source: { # required
    #           created_by: "Arn", # required
    #           invoked_by: "ServicePrincipal",
    #           resource_arn: "Arn",
    #           source: "IncidentSource", # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListIncidentRecordsOperationOutput]
    def list_incident_records(params = {}, options = {})
      request = build_request(:list_incident_records, params)
      request.send_request(options)
    end

    # <p>List all related items for an incident record.</p>
    # @param [Hash, Types::ListRelatedItemsOperationInput] params
    # @option params [String] :incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident record containing the listed related
    #         items.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of related items per page.</p>
    # @option params [String] :next_token
    #   <p>The pagination token for the next set of items to return. (You received this token from a
    #         previous call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     incident_record_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_related_items(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     related_items: [ # required
    #       {
    #         identifier: { # required
    #           value: { # required
    #             # One of:
    #             arn: "Arn",
    #             url: "Url",
    #             metric_definition: "MetricDefinition",
    #             pager_duty_incident_detail: {
    #               id: "String", # required
    #               auto_resolve: false,
    #               secret_id: "String"
    #             }
    #           },
    #           type: "ItemType", # required
    #         },
    #         title: "String",
    #         generated_id: "GeneratedId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRelatedItemsOperationOutput]
    def list_related_items(params = {}, options = {})
      request = build_request(:list_related_items, params)
      request.send_request(options)
    end

    # <p>Lists details about the replication set configured in your account. </p>
    # @param [Hash, Types::ListReplicationSetsOperationInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results per page. </p>
    # @option params [String] :next_token
    #   <p>The pagination token for the next set of items to return. (You received this token from a
    #         previous call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_replication_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_set_arns: ["Arn"], # required
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListReplicationSetsOperationOutput]
    def list_replication_sets(params = {}, options = {})
      request = build_request(:list_replication_sets, params)
      request.send_request(options)
    end

    # <p>Lists all response plans in your account.</p>
    # @param [Hash, Types::ListResponsePlansOperationInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of response plans per page.</p>
    # @option params [String] :next_token
    #   <p>The pagination token for the next set of items to return. (You received this token from a
    #         previous call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_response_plans(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     response_plan_summaries: [ # required
    #       {
    #         arn: "Arn", # required
    #         name: "ResponsePlanName", # required
    #         display_name: "ResponsePlanDisplayName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResponsePlansOperationOutput]
    def list_response_plans(params = {}, options = {})
      request = build_request(:list_response_plans, params)
      request.send_request(options)
    end

    # <p>Lists the tags that are attached to the specified response plan or incident.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan or incident.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists timeline events for the specified incident record.</p>
    # @param [Hash, Types::ListTimelineEventsOperationInput] params
    # @option params [String] :incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident that includes the timeline event.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filters the timeline events based on the provided conditional values. You can filter
    #         timeline events with the following keys:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>eventReference</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>eventTime</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>eventType</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Note the following when deciding how to use Filters:</p>
    #            <ul>
    #               <li>
    #                  <p>If you don't specify a Filter, the response includes all timeline events.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify more than one filter in a single request, the response returns timeline
    #             events that match all filters.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify a filter with more than one value, the response returns timeline events
    #             that match any of the values provided.</p>
    #               </li>
    #            </ul>
    # @option params [String] :sort_by
    #   <p>Sort timeline events by the specified key value pair.</p>
    # @option params [String] :sort_order
    #   <p>Sorts the order of timeline events by the value specified in the <code>sortBy</code>
    #         field.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results per page.</p>
    # @option params [String] :next_token
    #   <p>The pagination token for the next set of items to return. (You received this token from a
    #         previous call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     incident_record_arn: "Arn", # required
    #     filters: [
    #       {
    #         key: "String", # required
    #         condition: { # required
    #           # One of:
    #           before: Time.now,
    #           after: Time.now,
    #           equals: {
    #             # One of:
    #             string_values: ["String"],
    #             integer_values: [1]
    #           }
    #         }
    #       }
    #     ],
    #     sort_by: "TimelineEventSort",
    #     sort_order: "SortOrder",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_timeline_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_summaries: [ # required
    #       {
    #         incident_record_arn: "Arn", # required
    #         event_id: "UUID", # required
    #         event_time: Time.now, # required
    #         event_updated_time: Time.now, # required
    #         event_type: "TimelineEventType", # required
    #         event_references: [{
    #           # One of:
    #           resource: "Arn",
    #           related_item_id: "GeneratedId"
    #         }]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTimelineEventsOperationOutput]
    def list_timeline_events(params = {}, options = {})
      request = build_request(:list_timeline_events, params)
      request.send_request(options)
    end

    # <p>Adds a resource policy to the specified response plan. The resource policy is used to
    #       share the response plan using Resource Access Manager (RAM). For more
    #       information about cross-account sharing, see <a href="https://docs.aws.amazon.com/incident-manager/latest/userguide/incident-manager-cross-account-cross-region.html">Cross-Region and cross-account incident management</a>.</p>
    # @param [Hash, Types::PutResourcePolicyOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan to add the resource policy to.</p>
    # @option params [String] :policy
    #   <p>Details of the resource policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     policy: "Policy", # required
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_id: "PolicyId", # required
    #   }
    # @return [Types::PutResourcePolicyOperationOutput]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Used to start an incident from CloudWatch alarms, EventBridge events, or
    #       manually. </p>
    # @param [Hash, Types::StartIncidentOperationInput] params
    # @option params [String] :client_token
    #   <p>A token ensuring that the operation is called only once with the specified details.</p>
    # @option params [String] :response_plan_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan that pre-defines summary, chat
    #         channels, Amazon SNS topics, runbooks, title, and impact of the incident. </p>
    # @option params [String] :title
    #   <p>Provide a title for the incident. Providing a title overwrites the title provided by the
    #         response plan. </p>
    # @option params [Integer] :impact
    #   <p>Defines the impact to the customers. Providing an impact overwrites the impact provided by
    #         a response plan.</p>
    #            <p class="title">
    #               <b>Supported impact codes</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>1</code> - Critical</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>2</code> - High</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>3</code> - Medium</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>4</code> - Low</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>5</code> - No Impact</p>
    #               </li>
    #            </ul>
    # @option params [Types::TriggerDetails] :trigger_details
    #   <p>Details of what created the incident record in Incident Manager.</p>
    # @option params [Array<Types::RelatedItem>] :related_items
    #   <p>Add related items to the incident for other responders to use. Related items are Amazon Web Services
    #         resources, external links, or files uploaded to an Amazon S3 bucket. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     response_plan_arn: "Arn", # required
    #     title: "IncidentTitle",
    #     impact: 1,
    #     trigger_details: {
    #       source: "IncidentSource", # required
    #       trigger_arn: "Arn",
    #       timestamp: Time.now, # required
    #       raw_data: "RawData"
    #     },
    #     related_items: [
    #       {
    #         identifier: { # required
    #           value: { # required
    #             # One of:
    #             arn: "Arn",
    #             url: "Url",
    #             metric_definition: "MetricDefinition",
    #             pager_duty_incident_detail: {
    #               id: "String", # required
    #               auto_resolve: false,
    #               secret_id: "String"
    #             }
    #           },
    #           type: "ItemType", # required
    #         },
    #         title: "String",
    #         generated_id: "GeneratedId"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_incident(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     incident_record_arn: "Arn", # required
    #   }
    # @return [Types::StartIncidentOperationOutput]
    def start_incident(params = {}, options = {})
      request = build_request(:start_incident, params)
      request.send_request(options)
    end

    # <p>Adds a tag to a response plan.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan you're adding the tags to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags to add to the response plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes a tag from a resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the response plan you're removing a tag from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The name of the tag to remove from the response plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Update deletion protection to either allow or deny deletion of the final Region in a
    #       replication set.</p>
    # @param [Hash, Types::UpdateDeletionProtectionOperationInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the replication set to update.</p>
    # @option params [Boolean] :deletion_protected
    #   <p>Specifies if deletion protection is turned on or off in your account. </p>
    # @option params [String] :client_token
    #   <p>A token that ensures that the operation is called only once with the specified
    #         details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #     deletion_protected: false, # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_deletion_protection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDeletionProtectionOperationOutput]
    def update_deletion_protection(params = {}, options = {})
      request = build_request(:update_deletion_protection, params)
      request.send_request(options)
    end

    # <p>Update the details of an incident record. You can use this operation to update an incident
    #       record from the defined chat channel. For more information about using actions in chat
    #       channels, see <a href="https://docs.aws.amazon.com/incident-manager/latest/userguide/chat.html#chat-interact">Interacting through chat</a>.</p>
    # @param [Hash, Types::UpdateIncidentRecordOperationInput] params
    # @option params [String] :client_token
    #   <p>A token that ensures that a client calls the operation only once with the specified
    #         details.</p>
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the incident record you are updating.</p>
    # @option params [String] :title
    #   <p>A brief description of the incident.</p>
    # @option params [String] :summary
    #   <p>A longer description of what occurred during the incident.</p>
    # @option params [Integer] :impact
    #   <p>Defines the impact of the incident to customers and applications. If you provide an impact
    #         for an incident, it overwrites the impact provided by the response plan.</p>
    #            <p class="title">
    #               <b>Supported impact codes</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>1</code> - Critical</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>2</code> - High</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>3</code> - Medium</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>4</code> - Low</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>5</code> - No Impact</p>
    #               </li>
    #            </ul>
    # @option params [String] :status
    #   <p>The status of the incident. Possible statuses are <code>Open</code> or
    #           <code>Resolved</code>.</p>
    # @option params [Types::ChatChannel] :chat_channel
    #   <p>The Chatbot chat channel where responders can collaborate.</p>
    # @option params [Array<Types::NotificationTargetItem>] :notification_targets
    #   <p>The Amazon SNS targets that Incident Manager notifies when a client updates an
    #         incident.</p>
    #            <p>Using multiple SNS topics creates redundancy in the event that a Region is down during the
    #         incident.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     arn: "Arn", # required
    #     title: "IncidentTitle",
    #     summary: "IncidentSummary",
    #     impact: 1,
    #     status: "IncidentRecordStatus",
    #     chat_channel: {
    #       # One of:
    #       empty: {
    #       },
    #       chatbot_sns: ["SnsArn"]
    #     },
    #     notification_targets: [{
    #       # One of:
    #       sns_topic_arn: "Arn"
    #     }]
    #   }
    #   options = {}
    #   response = client.update_incident_record(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateIncidentRecordOperationOutput]
    def update_incident_record(params = {}, options = {})
      request = build_request(:update_incident_record, params)
      request.send_request(options)
    end

    # <p>Add or remove related items from the related items tab of an incident record.</p>
    # @param [Hash, Types::UpdateRelatedItemsOperationInput] params
    # @option params [String] :client_token
    #   <p>A token that ensures that a client calls the operation only once with the specified
    #         details.</p>
    # @option params [String] :incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident record that contains the related items that
    #         you update.</p>
    # @option params [Types::RelatedItemsUpdate] :related_items_update
    #   <p>Details about the item that you are add to, or delete from, an incident.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     incident_record_arn: "Arn", # required
    #     related_items_update: { # required
    #       # One of:
    #       item_to_add: {
    #         identifier: { # required
    #           value: { # required
    #             # One of:
    #             arn: "Arn",
    #             url: "Url",
    #             metric_definition: "MetricDefinition",
    #             pager_duty_incident_detail: {
    #               id: "String", # required
    #               auto_resolve: false,
    #               secret_id: "String"
    #             }
    #           },
    #           type: "ItemType", # required
    #         },
    #         title: "String",
    #         generated_id: "GeneratedId"
    #       },
    #       item_to_remove: {
    #         value: { # required
    #           # One of:
    #           arn: "Arn",
    #           url: "Url",
    #           metric_definition: "MetricDefinition",
    #           pager_duty_incident_detail: {
    #             id: "String", # required
    #             auto_resolve: false,
    #             secret_id: "String"
    #           }
    #         },
    #         type: "ItemType", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_related_items(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateRelatedItemsOperationOutput]
    def update_related_items(params = {}, options = {})
      request = build_request(:update_related_items, params)
      request.send_request(options)
    end

    # <p>Add or delete Regions from your replication set.</p>
    # @param [Hash, Types::UpdateReplicationSetOperationInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the replication set you're updating.</p>
    # @option params [Array<Types::UpdateReplicationSetAction>] :actions
    #   <p>An action to add or delete a Region.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures that the operation is called only once with the specified
    #         details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "Arn", # required
    #     actions: [{ # required
    #       # One of:
    #       add_region_action: {
    #         region_name: "RegionName", # required
    #         sse_kms_key_id: "SseKmsKey"
    #       },
    #       delete_region_action: {
    #         region_name: "RegionName", # required
    #       }
    #     }],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_replication_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateReplicationSetOperationOutput]
    def update_replication_set(params = {}, options = {})
      request = build_request(:update_replication_set, params)
      request.send_request(options)
    end

    # <p>Updates the specified response plan.</p>
    # @param [Hash, Types::UpdateResponsePlanOperationInput] params
    # @option params [String] :client_token
    #   <p>A token ensuring that the operation is called only once with the specified details.</p>
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the response plan.</p>
    # @option params [String] :display_name
    #   <p>The long format name of the response plan. The display name can't contain spaces.</p>
    # @option params [String] :incident_template_title
    #   <p>The short format name of the incident. The title can't contain spaces.</p>
    # @option params [Integer] :incident_template_impact
    #   <p>Defines the impact to the customers. Providing an impact overwrites the impact provided by
    #         a response plan.</p>
    #            <p class="title">
    #               <b>Supported impact codes</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>1</code> - Critical</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>2</code> - High</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>3</code> - Medium</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>4</code> - Low</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>5</code> - No Impact</p>
    #               </li>
    #            </ul>
    # @option params [String] :incident_template_summary
    #   <p>A brief summary of the incident. This typically contains what has happened, what's
    #         currently happening, and next steps.</p>
    # @option params [String] :incident_template_dedupe_string
    #   <p>The string Incident Manager uses to prevent duplicate incidents from being created by the same
    #         incident in the same account.</p>
    # @option params [Array<Types::NotificationTargetItem>] :incident_template_notification_targets
    #   <p>The Amazon SNS targets that are notified when updates are made to an
    #         incident.</p>
    # @option params [Types::ChatChannel] :chat_channel
    #   <p>The Chatbot chat channel used for collaboration during an incident.</p>
    #            <p>Use the empty structure to remove the chat channel from the response plan.</p>
    # @option params [Array<String>] :engagements
    #   <p>The Amazon Resource Name (ARN) for the contacts and escalation plans that the response
    #         plan engages during an incident.</p>
    # @option params [Array<Types::Action>] :actions
    #   <p>The actions that this response plan takes at the beginning of an incident.</p>
    # @option params [Hash<String, String>] :incident_template_tags
    #   <p>Tags to assign to the template. When the <code>StartIncident</code> API action is called,
    #         Incident Manager assigns the tags specified in the template to the incident. To call this action,
    #         you must also have permission to call the <code>TagResource</code> API action for the incident
    #         record resource.</p>
    # @option params [Array<Types::Integration>] :integrations
    #   <p>Information about third-party services integrated into the response plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     arn: "Arn", # required
    #     display_name: "ResponsePlanDisplayName",
    #     incident_template_title: "IncidentTitle",
    #     incident_template_impact: 1,
    #     incident_template_summary: "IncidentSummary",
    #     incident_template_dedupe_string: "DedupeString",
    #     incident_template_notification_targets: [{
    #       # One of:
    #       sns_topic_arn: "Arn"
    #     }],
    #     chat_channel: {
    #       # One of:
    #       empty: {
    #       },
    #       chatbot_sns: ["SnsArn"]
    #     },
    #     engagements: ["SsmContactsArn"],
    #     actions: [{
    #       # One of:
    #       ssm_automation: {
    #         role_arn: "RoleArn", # required
    #         document_name: "String", # required
    #         document_version: "String",
    #         target_account: "SsmTargetAccount",
    #         parameters: {
    #           "String" => ["String"]
    #         },
    #         dynamic_parameters: {
    #           "String" => {
    #             # One of:
    #             variable: "VariableType"
    #           }
    #         }
    #       }
    #     }],
    #     incident_template_tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     integrations: [{
    #       # One of:
    #       pager_duty_configuration: {
    #         name: "String", # required
    #         secret_id: "String", # required
    #         pager_duty_incident_configuration: { # required
    #           service_id: "String", # required
    #         }
    #       }
    #     }]
    #   }
    #   options = {}
    #   response = client.update_response_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateResponsePlanOperationOutput]
    def update_response_plan(params = {}, options = {})
      request = build_request(:update_response_plan, params)
      request.send_request(options)
    end

    # <p>Updates a timeline event. You can update events of type <code>Custom Event</code>.</p>
    # @param [Hash, Types::UpdateTimelineEventOperationInput] params
    # @option params [String] :client_token
    #   <p>A token that ensures that a client calls the operation only once with the specified
    #         details.</p>
    # @option params [String] :incident_record_arn
    #   <p>The Amazon Resource Name (ARN) of the incident that includes the timeline event.</p>
    # @option params [String] :event_id
    #   <p>The ID of the event to update. You can use <code>ListTimelineEvents</code> to find an
    #         event's ID.</p>
    # @option params [Time] :event_time
    #   <p>The timestamp for when the event occurred.</p>
    # @option params [String] :event_type
    #   <p>The type of event. You can update events of type <code>Custom Event</code> and
    #           <code>Note</code>.</p>
    # @option params [String] :event_data
    #   <p>A short description of the event.</p>
    # @option params [Array<Types::EventReference>] :event_references
    #   <p>Updates all existing references in a <code>TimelineEvent</code>. A reference is an Amazon Web Services resource involved or associated with the incident. To specify a reference, enter
    #         its Amazon Resource Name (ARN). You can also specify a related item associated with that
    #         resource. For example, to specify an Amazon DynamoDB (DynamoDB) table as a
    #         resource, use its ARN. You can also specify an Amazon CloudWatch metric associated with
    #         the DynamoDB table as a related item.</p>
    #            <important>
    #               <p>This update action overrides all existing references. If you want to keep existing
    #           references, you must specify them in the call. If you don't, this action removes any
    #           existing references and enters only new references.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     incident_record_arn: "Arn", # required
    #     event_id: "UUID", # required
    #     event_time: Time.now,
    #     event_type: "TimelineEventType",
    #     event_data: "EventData",
    #     event_references: [{
    #       # One of:
    #       resource: "Arn",
    #       related_item_id: "GeneratedId"
    #     }]
    #   }
    #   options = {}
    #   response = client.update_timeline_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateTimelineEventOperationOutput]
    def update_timeline_event(params = {}, options = {})
      request = build_request(:update_timeline_event, params)
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
      context[:gem_name] = 'aws-sdk-ssmincidents'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        wait_for_replication_set_active: Waiters::WaitForReplicationSetActive,
        wait_for_replication_set_deleted: Waiters::WaitForReplicationSetDeleted
      }
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
