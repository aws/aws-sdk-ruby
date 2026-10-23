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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:oam)

module Aws::OAM
  # An API client for Aws::OAM.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Oamservice
    @identifier = :oam

    add_plugin(::Aws::OAM::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::OAM::EndpointProvider)
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

    # <p>Creates a link between a source account and a sink that you have created in a monitoring account. After the link is created, data is sent from the source account to the monitoring account. When you create a link, you can optionally specify filters that specify which metric namespaces and which log groups are shared from the source account to the monitoring account.</p> <p>Before you create a link, you must create a sink in the monitoring account and create a sink policy in that account. The sink policy must permit the source account to link to it. You can grant permission to source accounts by granting permission to an entire organization or to individual accounts.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/OAM/latest/APIReference/API_CreateSink.html">CreateSink</a> and <a href="https://docs.aws.amazon.com/OAM/latest/APIReference/API_PutSinkPolicy.html">PutSinkPolicy</a>.</p> <p>Each monitoring account can be linked to as many as 100,000 source accounts.</p> <p>Each source account can be linked to as many as five monitoring accounts.</p>
    # @param [Hash, Types::CreateLinkInput] params
    # @option params [String] :label_template
    #   <p>Specify a friendly human-readable name to use to identify this source account when you are viewing data from it in the monitoring account.</p> <p>You can use a custom label or use the following variables:</p> <ul> <li> <p> <code>$AccountName</code> is the name of the account</p> </li> <li> <p> <code>$AccountEmail</code> is the globally unique email address of the account</p> </li> <li> <p> <code>$AccountEmailNoDomain</code> is the email address of the account without the domain name</p> </li> </ul> <note> <p>In the Amazon Web Services GovCloud (US-East) and Amazon Web Services GovCloud (US-West) Regions, the only supported option is to use custom labels, and the <code>$AccountName</code>, <code>$AccountEmail</code>, and <code>$AccountEmailNoDomain</code> variables all resolve as <i>account-id</i> instead of the specified variable.</p> </note>
    # @option params [Array<String>] :resource_types
    #   <p>An array of strings that define which types of data that the source account shares with the monitoring account.</p>
    # @option params [String] :sink_identifier
    #   <p>The ARN of the sink to use to create this link. You can use <a href="https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListSinks.html">ListSinks</a> to find the ARNs of sinks.</p> <p>For more information about sinks, see <a href="https://docs.aws.amazon.com/OAM/latest/APIReference/API_CreateSink.html">CreateSink</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Assigns one or more tags (key-value pairs) to the link. </p> <p>Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values.</p> <p>For more information about using tags to control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Controlling access to Amazon Web Services resources using tags</a>.</p>
    # @option params [Types::LinkConfiguration] :link_configuration
    #   <p>Use this structure to optionally create filters that specify that only some metric namespaces or log groups are to be shared from the source account to the monitoring account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     label_template: "LabelTemplate", # required
    #     resource_types: ["AWS::CloudWatch::Metric" # One of: ["AWS::CloudWatch::Metric", "AWS::Logs::LogGroup", "AWS::XRay::Trace", "AWS::ApplicationInsights::Application", "AWS::InternetMonitor::Monitor", "AWS::ApplicationSignals::Service", "AWS::ApplicationSignals::ServiceLevelObjective"]], # required
    #     sink_identifier: "ResourceIdentifier", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     link_configuration: {
    #       log_group_configuration: {
    #         filter: "LogsFilter", # required
    #       },
    #       metric_configuration: {
    #         filter: "MetricsFilter", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "String",
    #     id: "String",
    #     label: "String",
    #     label_template: "String",
    #     resource_types: ["String"],
    #     sink_arn: "String",
    #     tags: {
    #       "String" => "String"
    #     },
    #     link_configuration: {
    #       log_group_configuration: {
    #         filter: "LogsFilter", # required
    #       },
    #       metric_configuration: {
    #         filter: "MetricsFilter", # required
    #       }
    #     }
    #   }
    # @return [Types::CreateLinkOutput]
    def create_link(params = {}, options = {})
      request = build_request(:create_link, params)
      request.send_request(options)
    end

    # <p>Use this to create a <i>sink</i> in the current account, so that it can be used as a monitoring account in CloudWatch cross-account observability. A sink is a resource that represents an attachment point in a monitoring account. Source accounts can link to the sink to send observability data.</p> <p>After you create a sink, you must create a sink policy that allows source accounts to attach to it. For more information, see <a href="https://docs.aws.amazon.com/OAM/latest/APIReference/API_PutSinkPolicy.html">PutSinkPolicy</a>.</p> <p>Each account can contain one sink per Region. If you delete a sink, you can then create a new one in that Region.</p>
    # @param [Hash, Types::CreateSinkInput] params
    # @option params [String] :name
    #   <p>A name for the sink.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Assigns one or more tags (key-value pairs) to the link. </p> <p>Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values.</p> <p>For more information about using tags to control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Controlling access to Amazon Web Services resources using tags</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "SinkName", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_sink(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "String",
    #     id: "String",
    #     name: "String",
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::CreateSinkOutput]
    def create_sink(params = {}, options = {})
      request = build_request(:create_sink, params)
      request.send_request(options)
    end

    # <p>Deletes a link between a monitoring account sink and a source account. You must run this operation in the source account.</p>
    # @param [Hash, Types::DeleteLinkInput] params
    # @option params [String] :identifier
    #   <p>The ARN of the link to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ResourceIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLinkOutput]
    def delete_link(params = {}, options = {})
      request = build_request(:delete_link, params)
      request.send_request(options)
    end

    # <p>Deletes a sink. You must delete all links to a sink before you can delete that sink.</p>
    # @param [Hash, Types::DeleteSinkInput] params
    # @option params [String] :identifier
    #   <p>The ARN of the sink to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ResourceIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_sink(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSinkOutput]
    def delete_sink(params = {}, options = {})
      request = build_request(:delete_sink, params)
      request.send_request(options)
    end

    # <p>Returns complete information about one link.</p> <p>To use this operation, provide the link ARN. To retrieve a list of link ARNs, use <a href="https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListLinks.html">ListLinks</a>.</p>
    # @param [Hash, Types::GetLinkInput] params
    # @option params [String] :identifier
    #   <p>The ARN of the link to retrieve information for.</p>
    # @option params [Boolean] :include_tags
    #   <p>Specifies whether to include the tags associated with the link in the response. When <code>IncludeTags</code> is set to <code>true</code> and the caller has the required permission, <code>oam:ListTagsForResource</code>, the API will return the tags for the specified resource. If the caller doesn't have the required permission, <code>oam:ListTagsForResource</code>, the API will raise an exception.</p> <p>The default value is <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ResourceIdentifier", # required
    #     include_tags: false
    #   }
    #   options = {}
    #   response = client.get_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "String",
    #     id: "String",
    #     label: "String",
    #     label_template: "String",
    #     resource_types: ["String"],
    #     sink_arn: "String",
    #     tags: {
    #       "String" => "String"
    #     },
    #     link_configuration: {
    #       log_group_configuration: {
    #         filter: "LogsFilter", # required
    #       },
    #       metric_configuration: {
    #         filter: "MetricsFilter", # required
    #       }
    #     }
    #   }
    # @return [Types::GetLinkOutput]
    def get_link(params = {}, options = {})
      request = build_request(:get_link, params)
      request.send_request(options)
    end

    # <p>Returns complete information about one monitoring account sink.</p> <p>To use this operation, provide the sink ARN. To retrieve a list of sink ARNs, use <a href="https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListSinks.html">ListSinks</a>.</p>
    # @param [Hash, Types::GetSinkInput] params
    # @option params [String] :identifier
    #   <p>The ARN of the sink to retrieve information for.</p>
    # @option params [Boolean] :include_tags
    #   <p>Specifies whether to include the tags associated with the sink in the response. When <code>IncludeTags</code> is set to <code>true</code> and the caller has the required permission, <code>oam:ListTagsForResource</code>, the API will return the tags for the specified resource. If the caller doesn't have the required permission, <code>oam:ListTagsForResource</code>, the API will raise an exception.</p> <p>The default value is <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ResourceIdentifier", # required
    #     include_tags: false
    #   }
    #   options = {}
    #   response = client.get_sink(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "String",
    #     id: "String",
    #     name: "String",
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetSinkOutput]
    def get_sink(params = {}, options = {})
      request = build_request(:get_sink, params)
      request.send_request(options)
    end

    # <p>Returns the current sink policy attached to this sink. The sink policy specifies what accounts can attach to this sink as source accounts, and what types of data they can share.</p>
    # @param [Hash, Types::GetSinkPolicyInput] params
    # @option params [String] :sink_identifier
    #   <p>The ARN of the sink to retrieve the policy of.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sink_identifier: "ResourceIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_sink_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sink_arn: "String",
    #     sink_id: "String",
    #     policy: "String"
    #   }
    # @return [Types::GetSinkPolicyOutput]
    def get_sink_policy(params = {}, options = {})
      request = build_request(:get_sink_policy, params)
      request.send_request(options)
    end

    # <p>Returns a list of source account links that are linked to this monitoring account sink.</p> <p>To use this operation, provide the sink ARN. To retrieve a list of sink ARNs, use <a href="https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListSinks.html">ListSinks</a>.</p> <p>To find a list of links for one source account, use <a href="https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListLinks.html">ListLinks</a>.</p>
    # @param [Hash, Types::ListAttachedLinksInput] params
    # @option params [Integer] :max_results
    #   <p>Limits the number of returned links to the specified number.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. You received this token from a previous call.</p>
    # @option params [String] :sink_identifier
    #   <p>The ARN of the sink that you want to retrieve links for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sink_identifier: "ResourceIdentifier", # required
    #   }
    #   options = {}
    #   response = client.list_attached_links(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         label: "String",
    #         link_arn: "String",
    #         resource_types: ["String"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListAttachedLinksOutput]
    def list_attached_links(params = {}, options = {})
      request = build_request(:list_attached_links, params)
      request.send_request(options)
    end

    # <p>Use this operation in a source account to return a list of links to monitoring account sinks that this source account has.</p> <p>To find a list of links for one monitoring account sink, use <a href="https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListAttachedLinks.html">ListAttachedLinks</a> from within the monitoring account.</p>
    # @param [Hash, Types::ListLinksInput] params
    # @option params [Integer] :max_results
    #   <p>Limits the number of returned links to the specified number.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. You received this token from a previous call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_links(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         arn: "String",
    #         id: "String",
    #         label: "String",
    #         resource_types: ["String"],
    #         sink_arn: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListLinksOutput]
    def list_links(params = {}, options = {})
      request = build_request(:list_links, params)
      request.send_request(options)
    end

    # <p>Use this operation in a monitoring account to return the list of sinks created in that account.</p>
    # @param [Hash, Types::ListSinksInput] params
    # @option params [Integer] :max_results
    #   <p>Limits the number of returned links to the specified number.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. You received this token from a previous call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_sinks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         arn: "String",
    #         id: "String",
    #         name: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSinksOutput]
    def list_sinks(params = {}, options = {})
      request = build_request(:list_sinks, params)
      request.send_request(options)
    end

    # <p>Displays the tags associated with a resource. Both sinks and links support tagging.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource that you want to view tags for.</p> <p>The ARN format of a sink is <code>arn:aws:oam:<i>Region</i>:<i>account-id</i>:sink/<i>sink-id</i> </code> </p> <p>The ARN format of a link is <code>arn:aws:oam:<i>Region</i>:<i>account-id</i>:link/<i>link-id</i> </code> </p> <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html">CloudWatch Logs resources and operations</a>.</p> <important> <p>Unlike tagging permissions in other Amazon Web Services services, to retrieve the list of tags for links or sinks you must have the <code>oam:RequestTag</code> permission. The <code>aws:ReguestTag</code> permission does not allow you to tag and untag links and sinks.</p> </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Creates or updates the resource policy that grants permissions to source accounts to link to the monitoring account sink. When you create a sink policy, you can grant permissions to all accounts in an organization or to individual accounts.</p> <p>You can also use a sink policy to limit the types of data that is shared. The six types of services with their respective resource types that you can allow or deny are:</p> <ul> <li> <p> <b>Metrics</b> - Specify with <code>AWS::CloudWatch::Metric</code> </p> </li> <li> <p> <b>Log groups</b> - Specify with <code>AWS::Logs::LogGroup</code> </p> </li> <li> <p> <b>Traces</b> - Specify with <code>AWS::XRay::Trace</code> </p> </li> <li> <p> <b>Application Insights - Applications</b> - Specify with <code>AWS::ApplicationInsights::Application</code> </p> </li> <li> <p> <b>Internet Monitor</b> - Specify with <code>AWS::InternetMonitor::Monitor</code> </p> </li> <li> <p> <b>Application Signals</b> - Specify with <code>AWS::ApplicationSignals::Service</code> and <code>AWS::ApplicationSignals::ServiceLevelObjective</code> </p> </li> </ul> <p>See the examples in this section to see how to specify permitted source accounts and data types.</p>
    # @param [Hash, Types::PutSinkPolicyInput] params
    # @option params [String] :sink_identifier
    #   <p>The ARN of the sink to attach this policy to.</p>
    # @option params [String] :policy
    #   <p>The JSON policy to use. If you are updating an existing policy, the entire existing policy is replaced by what you specify here.</p> <p>The policy must be in JSON string format with quotation marks escaped and no newlines.</p> <p>For examples of different types of policies, see the <b>Examples</b> section on this page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sink_identifier: "ResourceIdentifier", # required
    #     policy: "SinkPolicy", # required
    #   }
    #   options = {}
    #   response = client.put_sink_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sink_arn: "String",
    #     sink_id: "String",
    #     policy: "String"
    #   }
    # @return [Types::PutSinkPolicyOutput]
    def put_sink_policy(params = {}, options = {})
      request = build_request(:put_sink_policy, params)
      request.send_request(options)
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified resource. Both sinks and links can be tagged. </p> <p>Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values.</p> <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p> <p>You can use the <code>TagResource</code> action with a resource that already has tags. If you specify a new tag key for the alarm, this tag is appended to the list of tags associated with the alarm. If you specify a tag key that is already associated with the alarm, the new tag value that you specify replaces the previous value for that tag.</p> <p>You can associate as many as 50 tags with a resource.</p> <important> <p>Unlike tagging permissions in other Amazon Web Services services, to tag or untag links and sinks you must have the <code>oam:ResourceTag</code> permission. The <code>iam:ResourceTag</code> permission does not allow you to tag and untag links and sinks.</p> </important>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource that you're adding tags to.</p> <p>The ARN format of a sink is <code>arn:aws:oam:<i>Region</i>:<i>account-id</i>:sink/<i>sink-id</i> </code> </p> <p>The ARN format of a link is <code>arn:aws:oam:<i>Region</i>:<i>account-id</i>:link/<i>link-id</i> </code> </p> <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html">CloudWatch Logs resources and operations</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of key-value pairs to associate with the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Removes one or more tags from the specified resource.</p> <important> <p>Unlike tagging permissions in other Amazon Web Services services, to tag or untag links and sinks you must have the <code>oam:ResourceTag</code> permission. The <code>iam:TagResource</code> permission does not allow you to tag and untag links and sinks.</p> </important>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource that you're removing tags from.</p> <p>The ARN format of a sink is <code>arn:aws:oam:<i>Region</i>:<i>account-id</i>:sink/<i>sink-id</i> </code> </p> <p>The ARN format of a link is <code>arn:aws:oam:<i>Region</i>:<i>account-id</i>:link/<i>link-id</i> </code> </p> <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html">CloudWatch Logs resources and operations</a>.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Use this operation to change what types of data are shared from a source account to its linked monitoring account sink. You can't change the sink or change the monitoring account with this operation.</p> <p>When you update a link, you can optionally specify filters that specify which metric namespaces and which log groups are shared from the source account to the monitoring account.</p> <p>To update the list of tags associated with the sink, use <a href="https://docs.aws.amazon.com/OAM/latest/APIReference/API_TagResource.html">TagResource</a>.</p>
    # @param [Hash, Types::UpdateLinkInput] params
    # @option params [String] :identifier
    #   <p>The ARN of the link that you want to update.</p>
    # @option params [Array<String>] :resource_types
    #   <p>An array of strings that define which types of data that the source account will send to the monitoring account.</p> <p>Your input here replaces the current set of data types that are shared.</p>
    # @option params [Types::LinkConfiguration] :link_configuration
    #   <p>Use this structure to filter which metric namespaces and which log groups are to be shared from the source account to the monitoring account.</p>
    # @option params [Boolean] :include_tags
    #   <p>Specifies whether to include the tags associated with the link in the response after the update operation. When <code>IncludeTags</code> is set to <code>true</code> and the caller has the required permission, <code>oam:ListTagsForResource</code>, the API will return the tags for the specified resource. If the caller doesn't have the required permission, <code>oam:ListTagsForResource</code>, the API will raise an exception. </p> <p>The default value is <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ResourceIdentifier", # required
    #     resource_types: ["AWS::CloudWatch::Metric" # One of: ["AWS::CloudWatch::Metric", "AWS::Logs::LogGroup", "AWS::XRay::Trace", "AWS::ApplicationInsights::Application", "AWS::InternetMonitor::Monitor", "AWS::ApplicationSignals::Service", "AWS::ApplicationSignals::ServiceLevelObjective"]], # required
    #     link_configuration: {
    #       log_group_configuration: {
    #         filter: "LogsFilter", # required
    #       },
    #       metric_configuration: {
    #         filter: "MetricsFilter", # required
    #       }
    #     },
    #     include_tags: false
    #   }
    #   options = {}
    #   response = client.update_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "String",
    #     id: "String",
    #     label: "String",
    #     label_template: "LabelTemplate",
    #     resource_types: ["String"],
    #     sink_arn: "String",
    #     tags: {
    #       "String" => "String"
    #     },
    #     link_configuration: {
    #       log_group_configuration: {
    #         filter: "LogsFilter", # required
    #       },
    #       metric_configuration: {
    #         filter: "MetricsFilter", # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateLinkOutput]
    def update_link(params = {}, options = {})
      request = build_request(:update_link, params)
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
      context[:gem_name] = 'aws-sdk-oam'
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
