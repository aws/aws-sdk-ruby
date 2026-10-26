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
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:ssm)

module Aws::SSM
  # An API client for Aws::SSM.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonSSM
    @identifier = :ssm

    add_plugin(::Aws::SSM::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SSM::EndpointProvider)
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
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
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

    # <p>Adds or overwrites one or more tags for the specified resource. <i>Tags</i>
    #    are metadata that you can assign to your automations, documents, managed nodes, maintenance
    #    windows, Parameter Store parameters, and patch baselines. Tags enable you to categorize your
    #    resources in different ways, for example, by purpose, owner, or environment. Each tag consists of
    #    a key and an optional value, both of which you define. For example, you could define a set of
    #    tags for your account's managed nodes that helps you track each node's owner and stack level. For
    #    example:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>Key=Owner,Value=DbAdmin</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Key=Owner,Value=SysAdmin</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Key=Owner,Value=Dev</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Key=Stack,Value=Production</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Key=Stack,Value=Pre-Production</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Key=Stack,Value=Test</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Most resources can have a maximum of 50 tags. Automations can have a maximum of 5
    #    tags.</p>
    #          <p>We recommend that you devise a set of tag keys that meets your needs for each resource type.
    #    Using a consistent set of tag keys makes it easier for you to manage your resources. You can
    #    search and filter the resources based on the tags you add. Tags don't have any semantic meaning
    #    to and are interpreted strictly as a string of characters.</p>
    #          <p>For more information about using tags with Amazon Elastic Compute Cloud (Amazon EC2) instances, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html">Tag your Amazon EC2
    #     resources</a> in the <i>Amazon EC2 User Guide</i>.</p>
    # @param [Hash, Types::AddTagsToResourceRequest] params
    # @option params [String] :resource_type
    #   <p>Specifies the type of resource you are tagging.</p>
    #            <note>
    #               <p>The <code>ManagedInstance</code> type for this API operation is for on-premises managed
    #       nodes. You must specify the name of the managed node in the following format:
    #         <code>mi-<i>ID_number</i>
    #                  </code>. For example,
    #       <code>mi-1a2b3c4d5e6f</code>.</p>
    #            </note>
    # @option params [String] :resource_id
    #   <p>The resource ID you want to tag.</p>
    #            <p>Use the ID of the resource. Here are some examples:</p>
    #            <p>
    #               <code>MaintenanceWindow</code>: <code>mw-012345abcde</code>
    #            </p>
    #            <p>
    #               <code>PatchBaseline</code>: <code>pb-012345abcde</code>
    #            </p>
    #            <p>
    #               <code>Automation</code>: <code>example-c160-4567-8519-012345abcde</code>
    #            </p>
    #            <p>
    #               <code>OpsMetadata</code> object: <code>ResourceID</code> for tagging is created from the
    #      Amazon Resource Name (ARN) for the object. Specifically, <code>ResourceID</code> is created from
    #      the strings that come after the word <code>opsmetadata</code> in the ARN. For example, an
    #      OpsMetadata object with an ARN of
    #       <code>arn:aws:ssm:us-east-2:1234567890:opsmetadata/aws/ssm/MyGroup/appmanager</code> has a
    #       <code>ResourceID</code> of either <code>aws/ssm/MyGroup/appmanager</code> or
    #       <code>/aws/ssm/MyGroup/appmanager</code>.</p>
    #            <p>For the <code>Document</code> and <code>Parameter</code> values, use the name of the
    #      resource. If you're tagging a shared document, you must use the full ARN of the document.</p>
    #            <p>
    #               <code>ManagedInstance</code>: <code>mi-012345abcde</code>
    #            </p>
    #            <note>
    #               <p>The <code>ManagedInstance</code> type for this API operation is only for on-premises
    #       managed nodes. You must specify the name of the managed node in the following format:
    #         <code>mi-<i>ID_number</i>
    #                  </code>. For example,
    #       <code>mi-1a2b3c4d5e6f</code>.</p>
    #            </note>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tags. The value parameter is required.</p>
    #            <important>
    #               <p>Don't enter personally identifiable information in this field.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "Document" # One of: ["Document", "ManagedInstance", "MaintenanceWindow", "Parameter", "PatchBaseline", "OpsItem", "OpsMetadata", "Automation", "Association", "CloudConnector"], # required
    #     resource_id: "ResourceId", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_tags_to_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AddTagsToResourceResult]
    def add_tags_to_resource(params = {}, options = {})
      request = build_request(:add_tags_to_resource, params)
      request.send_request(options)
    end

    # <p>Associates a related item to a Systems Manager OpsCenter OpsItem. For example, you can associate an
    #    Incident Manager incident or analysis with an OpsItem. Incident Manager and OpsCenter are tools in
    #    Amazon Web Services Systems Manager.</p>
    # @param [Hash, Types::AssociateOpsItemRelatedItemRequest] params
    # @option params [String] :ops_item_id
    #   <p>The ID of the OpsItem to which you want to associate a resource as a related item.</p>
    # @option params [String] :association_type
    #   <p>The type of association that you want to create between an OpsItem and a resource. OpsCenter
    #      supports <code>IsParentOf</code> and <code>RelatesTo</code> association types.</p>
    # @option params [String] :resource_type
    #   <p>The type of resource that you want to associate with an OpsItem. OpsCenter supports the
    #      following types:</p>
    #            <p>
    #               <code>AWS::SSMIncidents::IncidentRecord</code>: an Incident Manager incident. </p>
    #            <p>
    #               <code>AWS::SSM::Document</code>: a Systems Manager (SSM) document.</p>
    # @option params [String] :resource_uri
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services resource that you want to associate with the
    #      OpsItem.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ops_item_id: "OpsItemId", # required
    #     association_type: "OpsItemRelatedItemAssociationType", # required
    #     resource_type: "OpsItemRelatedItemAssociationResourceType", # required
    #     resource_uri: "OpsItemRelatedItemAssociationResourceUri", # required
    #   }
    #   options = {}
    #   response = client.associate_ops_item_related_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association_id: "OpsItemRelatedItemAssociationId"
    #   }
    # @return [Types::AssociateOpsItemRelatedItemResponse]
    def associate_ops_item_related_item(params = {}, options = {})
      request = build_request(:associate_ops_item_related_item, params)
      request.send_request(options)
    end

    # <p>Attempts to cancel the command specified by the Command ID. There is no guarantee that the
    #    command will be terminated and the underlying process stopped.</p>
    # @param [Hash, Types::CancelCommandRequest] params
    # @option params [String] :command_id
    #   <p>The ID of the command you want to cancel.</p>
    # @option params [Array<String>] :instance_ids
    #   <p>(Optional) A list of managed node IDs on which you want to cancel the command. If not
    #      provided, the command is canceled on every node on which it was requested.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     command_id: "CommandId", # required
    #     instance_ids: ["InstanceId"]
    #   }
    #   options = {}
    #   response = client.cancel_command(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelCommandResult]
    def cancel_command(params = {}, options = {})
      request = build_request(:cancel_command, params)
      request.send_request(options)
    end

    # <p>Stops a maintenance window execution that is already in progress and cancels any tasks in
    #    the window that haven't already starting running. Tasks already in progress will continue to
    #    completion.</p>
    # @param [Hash, Types::CancelMaintenanceWindowExecutionRequest] params
    # @option params [String] :window_execution_id
    #   <p>The ID of the maintenance window execution to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     window_execution_id: "MaintenanceWindowExecutionId", # required
    #   }
    #   options = {}
    #   response = client.cancel_maintenance_window_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     window_execution_id: "MaintenanceWindowExecutionId"
    #   }
    # @return [Types::CancelMaintenanceWindowExecutionResult]
    def cancel_maintenance_window_execution(params = {}, options = {})
      request = build_request(:cancel_maintenance_window_execution, params)
      request.send_request(options)
    end

    # <p>Generates an activation code and activation ID you can use to register your on-premises
    #    servers, edge devices, or virtual machine (VM) with Amazon Web Services Systems Manager. Registering these machines with
    #    Systems Manager makes it possible to manage them using Systems Manager tools. You use the activation code and ID when
    #    installing SSM Agent on machines in your hybrid environment. For more information about
    #    requirements for managing on-premises machines using Systems Manager, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-hybrid-multicloud.html">Using Amazon Web Services Systems Manager in
    #     hybrid and multicloud environments</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    #          <note>
    #             <p>Amazon Elastic Compute Cloud (Amazon EC2) instances, edge devices, and on-premises servers and VMs that are
    #     configured for Systems Manager are all called <i>managed nodes</i>.</p>
    #          </note>
    # @param [Hash, Types::CreateActivationRequest] params
    # @option params [String] :description
    #   <p>A user-defined description of the resource that you want to register with Systems Manager. </p>
    #            <important>
    #               <p>Don't enter personally identifiable information in this field.</p>
    #            </important>
    # @option params [String] :default_instance_name
    #   <p>The name of the registered, managed node as it will appear in the Amazon Web Services Systems Manager console or when
    #      you use the Amazon Web Services command line tools to list Systems Manager resources.</p>
    #            <important>
    #               <p>Don't enter personally identifiable information in this field.</p>
    #            </important>
    # @option params [String] :iam_role
    #   <p>The name of the Identity and Access Management (IAM) role that you want to assign to
    #      the managed node. This IAM role must provide AssumeRole permissions for the
    #      Amazon Web Services Systems Manager service principal <code>ssm.amazonaws.com</code>. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/hybrid-multicloud-service-role.html">Create the IAM service role required for Systems Manager in a hybrid and multicloud
    #       environments</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            <note>
    #               <p>You can't specify an IAM service-linked role for this parameter. You must
    #       create a unique role.</p>
    #            </note>
    # @option params [Integer] :registration_limit
    #   <p>Specify the maximum number of managed nodes you want to register. The default value is
    #       <code>1</code>.</p>
    # @option params [Time] :expiration_date
    #   <p>The date by which this activation request should expire, in timestamp format, such as
    #      "2024-07-07T00:00:00". You can specify a date up to 30 days in advance. If you don't provide an
    #      expiration date, the activation code expires in 24 hours.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in
    #      different ways, such as by purpose, owner, or environment. For example, you might want to tag an
    #      activation to identify which servers or virtual machines (VMs) in your on-premises environment
    #      you intend to activate. In this case, you could specify the following key-value pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=OS,Value=Windows</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=Environment,Value=Production</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <important>
    #               <p>When you install SSM Agent on your on-premises servers and VMs, you specify an activation ID
    #       and code. When you specify the activation ID and code, tags assigned to the activation are
    #       automatically applied to the on-premises servers or VMs.</p>
    #            </important>
    #            <p>You can't add tags to or delete tags from an existing activation. You can tag your
    #      on-premises servers, edge devices, and VMs after they connect to Systems Manager for the first time and are
    #      assigned a managed node ID. This means they are listed in the Amazon Web Services Systems Manager console with an ID that
    #      is prefixed with "mi-". For information about how to add tags to your managed nodes, see <a>AddTagsToResource</a>. For information about how to remove tags from your managed nodes,
    #      see <a>RemoveTagsFromResource</a>.</p>
    # @option params [Array<Types::RegistrationMetadataItem>] :registration_metadata
    #   <p>Reserved for internal use.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "ActivationDescription",
    #     default_instance_name: "DefaultInstanceName",
    #     iam_role: "IamRole", # required
    #     registration_limit: 1,
    #     expiration_date: Time.now,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     registration_metadata: [
    #       {
    #         key: "RegistrationMetadataKey", # required
    #         value: "RegistrationMetadataValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_activation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     activation_id: "ActivationId",
    #     activation_code: "ActivationCode"
    #   }
    # @return [Types::CreateActivationResult]
    def create_activation(params = {}, options = {})
      request = build_request(:create_activation, params)
      request.send_request(options)
    end

    # <p>A State Manager association defines the state that you want to maintain on your managed
    #    nodes. For example, an association can specify that anti-virus software must be installed and
    #    running on your managed nodes, or that certain ports must be closed. For static targets, the
    #    association specifies a schedule for when the configuration is reapplied. For dynamic targets,
    #    such as an Amazon Web Services resource group or an Amazon Web Services autoscaling group, State Manager, a tool in Amazon Web Services Systems Manager
    #    applies the configuration when new managed nodes are added to the group. The association also
    #    specifies actions to take when applying the configuration. For example, an association for
    #    anti-virus software might run once a day. If the software isn't installed, then State Manager
    #    installs it. If the software is installed, but the service isn't running, then the association
    #    might instruct State Manager to start the service. </p>
    # @param [Hash, Types::CreateAssociationRequest] params
    # @option params [String] :name
    #   <p>The name of the SSM Command document or Automation runbook that contains the configuration
    #      information for the managed node.</p>
    #            <p>You can specify Amazon Web Services-predefined documents, documents you created, or a document that is
    #      shared with you from another Amazon Web Services account.</p>
    #            <p>For Systems Manager documents (SSM documents) that are shared with you from other Amazon Web Services accounts, you
    #      must specify the complete SSM document ARN, in the following format:</p>
    #            <p>
    #               <code>arn:<i>partition</i>:ssm:<i>region</i>:<i>account-id</i>:document/<i>document-name</i>
    #               </code>
    #            </p>
    #            <p>For example:</p>
    #            <p>
    #               <code>arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document</code>
    #            </p>
    #            <p>For Amazon Web Services-predefined documents and SSM documents you created in your account, you only need
    #      to specify the document name. For example, <code>AWS-ApplyPatchBaseline</code> or
    #       <code>My-Document</code>.</p>
    # @option params [String] :document_version
    #   <p>The document version you want to associate with the targets. Can be a specific version or
    #      the default version.</p>
    #            <important>
    #               <p>State Manager doesn't support running associations that use a new version of a document if
    #       that document is shared from another account. State Manager always runs the <code>default</code>
    #       version of a document if shared from another account, even though the Systems Manager console shows that a
    #       new version was processed. If you want to run an association using a new version of a document
    #       shared form another account, you must set the document version to <code>default</code>.</p>
    #            </important>
    # @option params [String] :instance_id
    #   <p>The managed node ID.</p>
    #            <note>
    #               <p>
    #                  <code>InstanceId</code> has been deprecated. To specify a managed node ID for an
    #       association, use the <code>Targets</code> parameter. Requests that
    #       include the parameter <code>InstanceID</code> with Systems Manager documents (SSM documents) that use
    #       schema version 2.0 or later will fail. In addition, if you use the
    #       parameter <code>InstanceId</code>, you can't use the parameters <code>AssociationName</code>,
    #        <code>DocumentVersion</code>, <code>MaxErrors</code>, <code>MaxConcurrency</code>,
    #        <code>OutputLocation</code>, or <code>ScheduleExpression</code>. To use these parameters, you
    #       must use the <code>Targets</code> parameter.</p>
    #            </note>
    # @option params [Hash<String, Array<String>>] :parameters
    #   <p>The parameters for the runtime configuration of the document.</p>
    # @option params [Array<Types::Target>] :targets
    #   <p>The targets for the association. You can target managed nodes by using tags, Amazon Web Services resource
    #      groups, all managed nodes in an Amazon Web Services account, or individual managed node IDs. You can target all
    #      managed nodes in an Amazon Web Services account by specifying the <code>InstanceIds</code> key with a value of
    #       <code>*</code>. For more information about choosing targets for an association, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-state-manager-targets-and-rate-controls.html">Understanding targets and rate controls in State Manager associations</a> in the
    #       <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [String] :schedule_expression
    #   <p>A cron expression when the association will be applied to the targets.</p>
    # @option params [Types::InstanceAssociationOutputLocation] :output_location
    #   <p>An Amazon Simple Storage Service (Amazon S3) bucket where you want to store the output
    #      details of the request.</p>
    # @option params [String] :association_name
    #   <p>Specify a descriptive name for the association.</p>
    # @option params [String] :automation_target_parameter_name
    #   <p>Choose the parameter that will define how your automation will branch out. This target is
    #      required for associations that use an Automation runbook and target resources by using rate
    #      controls. Automation is a tool in Amazon Web Services Systems Manager.</p>
    # @option params [String] :max_errors
    #   <p>The number of errors that are allowed before the system stops sending requests to run the
    #      association on additional targets. You can specify either an absolute number of errors, for
    #      example 10, or a percentage of the target set, for example 10%. If you specify 3, for example,
    #      the system stops sending requests when the fourth error is received. If you specify 0, then the
    #      system stops sending requests after the first error is returned. If you run an association on 50
    #      managed nodes and set <code>MaxError</code> to 10%, then the system stops sending the request
    #      when the sixth error is received.</p>
    #            <p>Executions that are already running an association when <code>MaxErrors</code> is reached
    #      are allowed to complete, but some of these executions may fail as well. If you need to ensure
    #      that there won't be more than max-errors failed executions, set <code>MaxConcurrency</code> to 1
    #      so that executions proceed one at a time.</p>
    # @option params [String] :max_concurrency
    #   <p>The maximum number of targets allowed to run the association at the same time. You can
    #      specify a number, for example 10, or a percentage of the target set, for example 10%. The default
    #      value is 100%, which means all targets run the association at the same time.</p>
    #            <p>If a new managed node starts and attempts to run an association while Systems Manager is running
    #       <code>MaxConcurrency</code> associations, the association is allowed to run. During the next
    #      association interval, the new managed node will process its association within the limit
    #      specified for <code>MaxConcurrency</code>.</p>
    # @option params [String] :compliance_severity
    #   <p>The severity level to assign to the association.</p>
    # @option params [String] :sync_compliance
    #   <p>The mode for generating association compliance. You can specify <code>AUTO</code> or
    #       <code>MANUAL</code>. In <code>AUTO</code> mode, the system uses the status of the association
    #      execution to determine the compliance status. If the association execution runs successfully,
    #      then the association is <code>COMPLIANT</code>. If the association execution doesn't run
    #      successfully, the association is <code>NON-COMPLIANT</code>.</p>
    #            <p>In <code>MANUAL</code> mode, you must specify the <code>AssociationId</code> as a parameter
    #      for the <a>PutComplianceItems</a> API operation. In this case, compliance data isn't
    #      managed by State Manager. It is managed by your direct call to the <a>PutComplianceItems</a> API operation.</p>
    #            <p>By default, all associations use <code>AUTO</code> mode.</p>
    # @option params [Boolean] :apply_only_at_cron_interval
    #   <p>By default, when you create a new association, the system runs it immediately after it is
    #      created and then according to the schedule you specified and when target changes are detected.
    #      Specify <code>true</code> for <code>ApplyOnlyAtCronInterval</code>if you want the association to
    #      run only according to the schedule you specified.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/state-manager-about.html#state-manager-about-scheduling">Understanding when associations are applied to resources</a> and <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/state-manager-about.html#runbook-target-updates">>About
    #       target updates with Automation runbooks</a> in the
    #      <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            <p>This parameter isn't supported for rate expressions.</p>
    # @option params [Array<String>] :calendar_names
    #   <p>The names of Amazon Resource Names (ARNs) of the Change Calendar type documents you want to
    #      gate your associations under. The associations only run when that change calendar is open. For
    #      more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar">Amazon Web Services Systems Manager Change
    #       Calendar</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [Array<Types::TargetLocation>] :target_locations
    #   <p>A location is a combination of Amazon Web Services Regions and Amazon Web Services accounts where you want to run the
    #      association. Use this action to create an association in multiple Regions and multiple
    #      accounts.</p>
    #            <note>
    #               <p>The <code>TargetLocationAlarmConfiguration</code> parameter is not supported by State
    #       Manager.</p>
    #            </note>
    # @option params [Integer] :schedule_offset
    #   <p>Number of days to wait after the scheduled day to run an association. For example, if you
    #      specified a cron schedule of <code>cron(0 0 ? * THU#2 *)</code>, you could specify an offset of 3
    #      to run the association each Sunday after the second Thursday of the month. For more information
    #      about cron schedules for associations, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html">Reference: Cron
    #       and rate expressions for Systems Manager</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    #            <note>
    #               <p>To use offsets, you must specify the <code>ApplyOnlyAtCronInterval</code> parameter. This
    #       option tells the system not to run an association immediately after you create it. </p>
    #            </note>
    # @option params [Integer] :duration
    #   <p>The number of hours the association can run before it is canceled. Duration applies to
    #      associations that are currently running, and any pending and in progress commands on all targets.
    #      If a target was taken offline for the association to run, it is made available again immediately,
    #      without a reboot. </p>
    #            <p>The <code>Duration</code> parameter applies only when both these conditions are true:</p>
    #            <ul>
    #               <li>
    #                  <p>The association for which you specify a duration is cancelable according to the parameters
    #        of the SSM command document or Automation runbook associated with this execution. </p>
    #               </li>
    #               <li>
    #                  <p>The command specifies the <code>
    #                        <a href="https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_CreateAssociation.html#systemsmanager-CreateAssociation-request-ApplyOnlyAtCronInterval">ApplyOnlyAtCronInterval</a>
    #                     </code> parameter, which means that the association doesn't
    #        run immediately after it is created, but only according to the specified schedule.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Hash<String, Array<String>>>] :target_maps
    #   <p>A key-value mapping of document parameters to target resources. Both Targets and TargetMaps
    #      can't be specified together.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Adds or overwrites one or more tags for a State Manager association.
    #       <i>Tags</i> are metadata that you can assign to your Amazon Web Services resources. Tags enable
    #      you to categorize your resources in different ways, for example, by purpose, owner, or
    #      environment. Each tag consists of a key and an optional value, both of which you define. </p>
    # @option params [Types::AlarmConfiguration] :alarm_configuration
    #   <p>The details for the CloudWatch alarm you want to apply to an automation or
    #      command.</p>
    # @option params [String] :association_dispatch_assume_role
    #   <p>A role used by association to take actions on your behalf.
    #      State Manager will assume this role and call required APIs when dispatching
    #      configurations to nodes. If not specified, <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html">
    #      service-linked role for Systems Manager</a> will be used by default.
    #     </p>
    #            <note>
    #               <p>It is recommended that you define a custom IAM role so that you have full control of
    #       the permissions that State Manager has when taking actions on your behalf.</p>
    #               <p>Service-linked role support in State Manager is being phased out. Associations
    #       relying on service-linked role may require updates in the future to continue
    #       functioning properly.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DocumentARN", # required
    #     document_version: "DocumentVersion",
    #     instance_id: "InstanceId",
    #     parameters: {
    #       "ParameterName" => ["ParameterValue"]
    #     },
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"]
    #       }
    #     ],
    #     schedule_expression: "ScheduleExpression",
    #     output_location: {
    #       s3_location: {
    #         output_s3_region: "S3Region",
    #         output_s3_bucket_name: "S3BucketName",
    #         output_s3_key_prefix: "S3KeyPrefix"
    #       }
    #     },
    #     association_name: "AssociationName",
    #     automation_target_parameter_name: "AutomationTargetParameterName",
    #     max_errors: "MaxErrors",
    #     max_concurrency: "MaxConcurrency",
    #     compliance_severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"],
    #     sync_compliance: "AUTO" # One of: ["AUTO", "MANUAL"],
    #     apply_only_at_cron_interval: false,
    #     calendar_names: ["CalendarNameOrARN"],
    #     target_locations: [
    #       {
    #         accounts: ["Account"],
    #         regions: ["Region"],
    #         target_location_max_concurrency: "MaxConcurrency",
    #         target_location_max_errors: "MaxErrors",
    #         execution_role_name: "ExecutionRoleName",
    #         target_location_alarm_configuration: {
    #           ignore_poll_alarm_failure: false,
    #           alarms: [ # required
    #             {
    #               name: "AlarmName", # required
    #             }
    #           ]
    #         },
    #         include_child_organization_units: false,
    #         exclude_accounts: ["ExcludeAccount"],
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"]
    #           }
    #         ],
    #         targets_max_concurrency: "MaxConcurrency",
    #         targets_max_errors: "MaxErrors"
    #       }
    #     ],
    #     schedule_offset: 1,
    #     duration: 1,
    #     target_maps: [
    #       {
    #         "TargetMapKey" => ["TargetMapValue"]
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     alarm_configuration: {
    #       ignore_poll_alarm_failure: false,
    #       alarms: [ # required
    #         {
    #           name: "AlarmName", # required
    #         }
    #       ]
    #     },
    #     association_dispatch_assume_role: "AssociationDispatchAssumeRoleArn"
    #   }
    #   options = {}
    #   response = client.create_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association_description: {
    #       name: "DocumentARN",
    #       instance_id: "InstanceId",
    #       association_version: "AssociationVersion",
    #       date: Time.now,
    #       last_update_association_date: Time.now,
    #       status: {
    #         date: Time.now, # required
    #         name: "Pending" # One of: ["Pending", "Success", "Failed"], # required
    #         message: "StatusMessage", # required
    #         additional_info: "StatusAdditionalInfo"
    #       },
    #       overview: {
    #         status: "StatusName",
    #         detailed_status: "StatusName",
    #         association_status_aggregated_count: {
    #           "StatusName" => 1
    #         }
    #       },
    #       document_version: "DocumentVersion",
    #       automation_target_parameter_name: "AutomationTargetParameterName",
    #       parameters: {
    #         "ParameterName" => ["ParameterValue"]
    #       },
    #       association_id: "AssociationId",
    #       targets: [
    #         {
    #           key: "TargetKey",
    #           values: ["TargetValue"]
    #         }
    #       ],
    #       schedule_expression: "ScheduleExpression",
    #       output_location: {
    #         s3_location: {
    #           output_s3_region: "S3Region",
    #           output_s3_bucket_name: "S3BucketName",
    #           output_s3_key_prefix: "S3KeyPrefix"
    #         }
    #       },
    #       last_execution_date: Time.now,
    #       last_successful_execution_date: Time.now,
    #       association_name: "AssociationName",
    #       max_errors: "MaxErrors",
    #       max_concurrency: "MaxConcurrency",
    #       compliance_severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"],
    #       sync_compliance: "AUTO" # One of: ["AUTO", "MANUAL"],
    #       apply_only_at_cron_interval: false,
    #       calendar_names: ["CalendarNameOrARN"],
    #       target_locations: [
    #         {
    #           accounts: ["Account"],
    #           regions: ["Region"],
    #           target_location_max_concurrency: "MaxConcurrency",
    #           target_location_max_errors: "MaxErrors",
    #           execution_role_name: "ExecutionRoleName",
    #           target_location_alarm_configuration: {
    #             ignore_poll_alarm_failure: false,
    #             alarms: [ # required
    #               {
    #                 name: "AlarmName", # required
    #               }
    #             ]
    #           },
    #           include_child_organization_units: false,
    #           exclude_accounts: ["ExcludeAccount"],
    #           targets: [
    #             {
    #               key: "TargetKey",
    #               values: ["TargetValue"]
    #             }
    #           ],
    #           targets_max_concurrency: "MaxConcurrency",
    #           targets_max_errors: "MaxErrors"
    #         }
    #       ],
    #       schedule_offset: 1,
    #       duration: 1,
    #       target_maps: [
    #         {
    #           "TargetMapKey" => ["TargetMapValue"]
    #         }
    #       ],
    #       alarm_configuration: {
    #         ignore_poll_alarm_failure: false,
    #         alarms: [ # required
    #           {
    #             name: "AlarmName", # required
    #           }
    #         ]
    #       },
    #       triggered_alarms: [
    #         {
    #           name: "AlarmName", # required
    #           state: "UNKNOWN" # One of: ["UNKNOWN", "ALARM"], # required
    #         }
    #       ],
    #       association_dispatch_assume_role: "AssociationDispatchAssumeRoleArn"
    #     }
    #   }
    # @return [Types::CreateAssociationResult]
    def create_association(params = {}, options = {})
      request = build_request(:create_association, params)
      request.send_request(options)
    end

    # <p>Associates the specified Amazon Web Services Systems Manager document (SSM document) with the specified managed nodes
    #    or targets.</p>
    #          <p>When you associate a document with one or more managed nodes using IDs or tags, Amazon Web Services Systems Manager
    #    Agent (SSM Agent) running on the managed node processes the document and configures the node as
    #    specified.</p>
    #          <p>If you associate a document with a managed node that already has an associated document, the
    #    system returns the AssociationAlreadyExists exception.</p>
    # @param [Hash, Types::CreateAssociationBatchRequest] params
    # @option params [Array<Types::CreateAssociationBatchRequestEntry>] :entries
    #   <p>One or more associations.</p>
    # @option params [String] :association_dispatch_assume_role
    #   <p>A role used by association to take actions on your behalf.
    #      State Manager will assume this role and call required APIs when dispatching
    #      configurations to nodes. If not specified, <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html">
    #      service-linked role for Systems Manager</a> will be used by default.
    #     </p>
    #            <note>
    #               <p>It is recommended that you define a custom IAM role so that you have full control of
    #       the permissions that State Manager has when taking actions on your behalf.</p>
    #               <p>Service-linked role support in State Manager is being phased out. Associations
    #       relying on service-linked role may require updates in the future to continue
    #       functioning properly.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     entries: [ # required
    #       {
    #         name: "DocumentARN", # required
    #         instance_id: "InstanceId",
    #         parameters: {
    #           "ParameterName" => ["ParameterValue"]
    #         },
    #         automation_target_parameter_name: "AutomationTargetParameterName",
    #         document_version: "DocumentVersion",
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"]
    #           }
    #         ],
    #         schedule_expression: "ScheduleExpression",
    #         output_location: {
    #           s3_location: {
    #             output_s3_region: "S3Region",
    #             output_s3_bucket_name: "S3BucketName",
    #             output_s3_key_prefix: "S3KeyPrefix"
    #           }
    #         },
    #         association_name: "AssociationName",
    #         max_errors: "MaxErrors",
    #         max_concurrency: "MaxConcurrency",
    #         compliance_severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"],
    #         sync_compliance: "AUTO" # One of: ["AUTO", "MANUAL"],
    #         apply_only_at_cron_interval: false,
    #         calendar_names: ["CalendarNameOrARN"],
    #         target_locations: [
    #           {
    #             accounts: ["Account"],
    #             regions: ["Region"],
    #             target_location_max_concurrency: "MaxConcurrency",
    #             target_location_max_errors: "MaxErrors",
    #             execution_role_name: "ExecutionRoleName",
    #             target_location_alarm_configuration: {
    #               ignore_poll_alarm_failure: false,
    #               alarms: [ # required
    #                 {
    #                   name: "AlarmName", # required
    #                 }
    #               ]
    #             },
    #             include_child_organization_units: false,
    #             exclude_accounts: ["ExcludeAccount"],
    #             targets: [
    #               {
    #                 key: "TargetKey",
    #                 values: ["TargetValue"]
    #               }
    #             ],
    #             targets_max_concurrency: "MaxConcurrency",
    #             targets_max_errors: "MaxErrors"
    #           }
    #         ],
    #         schedule_offset: 1,
    #         duration: 1,
    #         target_maps: [
    #           {
    #             "TargetMapKey" => ["TargetMapValue"]
    #           }
    #         ],
    #         alarm_configuration: {
    #           ignore_poll_alarm_failure: false,
    #           alarms: [ # required
    #             {
    #               name: "AlarmName", # required
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     association_dispatch_assume_role: "AssociationDispatchAssumeRoleArn"
    #   }
    #   options = {}
    #   response = client.create_association_batch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successful: [
    #       {
    #         name: "DocumentARN",
    #         instance_id: "InstanceId",
    #         association_version: "AssociationVersion",
    #         date: Time.now,
    #         last_update_association_date: Time.now,
    #         status: {
    #           date: Time.now, # required
    #           name: "Pending" # One of: ["Pending", "Success", "Failed"], # required
    #           message: "StatusMessage", # required
    #           additional_info: "StatusAdditionalInfo"
    #         },
    #         overview: {
    #           status: "StatusName",
    #           detailed_status: "StatusName",
    #           association_status_aggregated_count: {
    #             "StatusName" => 1
    #           }
    #         },
    #         document_version: "DocumentVersion",
    #         automation_target_parameter_name: "AutomationTargetParameterName",
    #         parameters: {
    #           "ParameterName" => ["ParameterValue"]
    #         },
    #         association_id: "AssociationId",
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"]
    #           }
    #         ],
    #         schedule_expression: "ScheduleExpression",
    #         output_location: {
    #           s3_location: {
    #             output_s3_region: "S3Region",
    #             output_s3_bucket_name: "S3BucketName",
    #             output_s3_key_prefix: "S3KeyPrefix"
    #           }
    #         },
    #         last_execution_date: Time.now,
    #         last_successful_execution_date: Time.now,
    #         association_name: "AssociationName",
    #         max_errors: "MaxErrors",
    #         max_concurrency: "MaxConcurrency",
    #         compliance_severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"],
    #         sync_compliance: "AUTO" # One of: ["AUTO", "MANUAL"],
    #         apply_only_at_cron_interval: false,
    #         calendar_names: ["CalendarNameOrARN"],
    #         target_locations: [
    #           {
    #             accounts: ["Account"],
    #             regions: ["Region"],
    #             target_location_max_concurrency: "MaxConcurrency",
    #             target_location_max_errors: "MaxErrors",
    #             execution_role_name: "ExecutionRoleName",
    #             target_location_alarm_configuration: {
    #               ignore_poll_alarm_failure: false,
    #               alarms: [ # required
    #                 {
    #                   name: "AlarmName", # required
    #                 }
    #               ]
    #             },
    #             include_child_organization_units: false,
    #             exclude_accounts: ["ExcludeAccount"],
    #             targets: [
    #               {
    #                 key: "TargetKey",
    #                 values: ["TargetValue"]
    #               }
    #             ],
    #             targets_max_concurrency: "MaxConcurrency",
    #             targets_max_errors: "MaxErrors"
    #           }
    #         ],
    #         schedule_offset: 1,
    #         duration: 1,
    #         target_maps: [
    #           {
    #             "TargetMapKey" => ["TargetMapValue"]
    #           }
    #         ],
    #         alarm_configuration: {
    #           ignore_poll_alarm_failure: false,
    #           alarms: [ # required
    #             {
    #               name: "AlarmName", # required
    #             }
    #           ]
    #         },
    #         triggered_alarms: [
    #           {
    #             name: "AlarmName", # required
    #             state: "UNKNOWN" # One of: ["UNKNOWN", "ALARM"], # required
    #           }
    #         ],
    #         association_dispatch_assume_role: "AssociationDispatchAssumeRoleArn"
    #       }
    #     ],
    #     failed: [
    #       {
    #         entry: {
    #           name: "DocumentARN", # required
    #           instance_id: "InstanceId",
    #           parameters: {
    #             "ParameterName" => ["ParameterValue"]
    #           },
    #           automation_target_parameter_name: "AutomationTargetParameterName",
    #           document_version: "DocumentVersion",
    #           targets: [
    #             {
    #               key: "TargetKey",
    #               values: ["TargetValue"]
    #             }
    #           ],
    #           schedule_expression: "ScheduleExpression",
    #           output_location: {
    #             s3_location: {
    #               output_s3_region: "S3Region",
    #               output_s3_bucket_name: "S3BucketName",
    #               output_s3_key_prefix: "S3KeyPrefix"
    #             }
    #           },
    #           association_name: "AssociationName",
    #           max_errors: "MaxErrors",
    #           max_concurrency: "MaxConcurrency",
    #           compliance_severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"],
    #           sync_compliance: "AUTO" # One of: ["AUTO", "MANUAL"],
    #           apply_only_at_cron_interval: false,
    #           calendar_names: ["CalendarNameOrARN"],
    #           target_locations: [
    #             {
    #               accounts: ["Account"],
    #               regions: ["Region"],
    #               target_location_max_concurrency: "MaxConcurrency",
    #               target_location_max_errors: "MaxErrors",
    #               execution_role_name: "ExecutionRoleName",
    #               target_location_alarm_configuration: {
    #                 ignore_poll_alarm_failure: false,
    #                 alarms: [ # required
    #                   {
    #                     name: "AlarmName", # required
    #                   }
    #                 ]
    #               },
    #               include_child_organization_units: false,
    #               exclude_accounts: ["ExcludeAccount"],
    #               targets: [
    #                 {
    #                   key: "TargetKey",
    #                   values: ["TargetValue"]
    #                 }
    #               ],
    #               targets_max_concurrency: "MaxConcurrency",
    #               targets_max_errors: "MaxErrors"
    #             }
    #           ],
    #           schedule_offset: 1,
    #           duration: 1,
    #           target_maps: [
    #             {
    #               "TargetMapKey" => ["TargetMapValue"]
    #             }
    #           ],
    #           alarm_configuration: {
    #             ignore_poll_alarm_failure: false,
    #             alarms: [ # required
    #               {
    #                 name: "AlarmName", # required
    #               }
    #             ]
    #           }
    #         },
    #         message: "BatchErrorMessage",
    #         fault: "Client" # One of: ["Client", "Server", "Unknown"]
    #       }
    #     ]
    #   }
    # @return [Types::CreateAssociationBatchResult]
    def create_association_batch(params = {}, options = {})
      request = build_request(:create_association_batch, params)
      request.send_request(options)
    end

    # <p>Creates a cloud connector that establishes a connection between Systems Manager and a third-party
    #    cloud environment.</p>
    # @param [Hash, Types::CreateCloudConnectorRequest] params
    # @option params [String] :display_name
    #   <p>A friendly name for the cloud connector.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that the cloud connector
    #      uses to communicate with the third-party cloud environment.</p>
    # @option params [String] :description
    #   <p>A description for the cloud connector.</p>
    # @option params [Types::CloudConnectorConfiguration] :configuration
    #   <p>The configuration details for connecting to the third-party cloud environment.</p>
    # @option params [String] :config_connector_arn
    #   <p>The ARN of the Amazon Web Services Config connector associated with this cloud connector.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource
    #      in different ways, such as by purpose, owner, or environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     display_name: "DisplayName", # required
    #     role_arn: "CloudConnectorIamRoleArn", # required
    #     description: "CloudConnectorDescription",
    #     configuration: { # required
    #       # One of:
    #       azure_configuration: {
    #         tenant_id: "AzureTenantId", # required
    #         tenant_display_name: "AzureTenantDisplayName",
    #         application_id: "AzureApplicationId", # required
    #         application_display_name: "AzureApplicationDisplayName",
    #         targets: {
    #           # One of:
    #           subscriptions: [
    #             {
    #               id: "AzureSubscriptionId", # required
    #               display_name: "AzureSubscriptionDisplayName"
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     config_connector_arn: "ConfigConnectorArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_cloud_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cloud_connector_id: "CloudConnectorId"
    #   }
    # @return [Types::CreateCloudConnectorResult]
    def create_cloud_connector(params = {}, options = {})
      request = build_request(:create_cloud_connector, params)
      request.send_request(options)
    end

    # <p>Creates a Amazon Web Services Systems Manager (SSM document). An SSM document defines the actions that Systems Manager performs
    #    on your managed nodes. For more information about SSM documents, including information about
    #    supported schemas, features, and syntax, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/documents.html">Amazon Web Services Systems Manager Documents</a> in the
    #     <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @param [Hash, Types::CreateDocumentRequest] params
    # @option params [String] :content
    #   <p>The content for the new SSM document in JSON or YAML format. The content of the document
    #      must not exceed 64KB. This quota also includes the content specified for input parameters at
    #      runtime. We recommend storing the contents for your new document in an external JSON or YAML file
    #      and referencing the file in a command.</p>
    #            <p>For examples, see the following topics in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/documents-using.html#create-ssm-console">Create an SSM
    #         document (console)</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/documents-using.html#create-ssm-document-cli">Create an
    #         SSM document (command line)</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/documents-using.html#create-ssm-document-api">Create an
    #         SSM document (API)</a>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::DocumentRequires>] :requires
    #   <p>A list of SSM documents required by a document. This parameter is used exclusively by
    #      AppConfig. When a user creates an AppConfig configuration in an SSM document, the user must also
    #      specify a required document for validation purposes. In this case, an
    #       <code>ApplicationConfiguration</code> document requires an
    #       <code>ApplicationConfigurationSchema</code> document for validation purposes. For more
    #      information, see <a href="https://docs.aws.amazon.com/appconfig/latest/userguide/what-is-appconfig.html">What is AppConfig?</a> in the
    #       <i>AppConfig User Guide</i>.</p>
    # @option params [Array<Types::AttachmentsSource>] :attachments
    #   <p>A list of key-value pairs that describe attachments to a version of a document.</p>
    # @option params [String] :name
    #   <p>A name for the SSM document.</p>
    #            <important>
    #               <p>You can't use the following strings as document name prefixes. These are reserved by Amazon Web Services
    #       for use as document name prefixes:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <code>aws</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>amazon</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>amzn</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>AWSEC2</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>AWSConfigRemediation</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>AWSSupport</code>
    #                     </p>
    #                  </li>
    #               </ul>
    #            </important>
    # @option params [String] :display_name
    #   <p>An optional field where you can specify a friendly name for the SSM document. This value can
    #      differ for each version of the document. You can update this value at a later time using the
    #       <a>UpdateDocument</a> operation.</p>
    # @option params [String] :version_name
    #   <p>An optional field specifying the version of the artifact you are creating with the document.
    #      For example, <code>Release12.1</code>. This value is unique across all versions of a document,
    #      and can't be changed.</p>
    # @option params [String] :document_type
    #   <p>The type of document to create.</p>
    #            <note>
    #               <p>The <code>DeploymentStrategy</code> document type is an internal-use-only document type
    #       reserved for AppConfig.</p>
    #            </note>
    # @option params [String] :document_format
    #   <p>Specify the document format for the request. The document format can be JSON, YAML, or TEXT.
    #      JSON is the default format.</p>
    # @option params [String] :target_type
    #   <p>Specify a target type to define the kinds of resources the document can run on. For example,
    #      to run a document on EC2 instances, specify the following value:
    #      <code>/AWS::EC2::Instance</code>. If you specify a value of '/' the document can run on all types
    #      of resources. If you don't specify a value, the document can't run on any resources. For a list
    #      of valid resource types, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services resource and
    #       property types reference</a> in the <i>CloudFormation User Guide</i>. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in
    #      different ways, such as by purpose, owner, or environment. For example, you might want to tag an
    #      SSM document to identify the types of targets or the environment where it will run. In this case,
    #      you could specify the following key-value pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=OS,Value=Windows</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=Environment,Value=Production</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>To add tags to an existing SSM document, use the <a>AddTagsToResource</a>
    #       operation.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     content: "DocumentContent", # required
    #     requires: [
    #       {
    #         name: "DocumentARN", # required
    #         version: "DocumentVersion",
    #         require_type: "RequireType",
    #         version_name: "DocumentVersionName"
    #       }
    #     ],
    #     attachments: [
    #       {
    #         key: "SourceUrl" # One of: ["SourceUrl", "S3FileUrl", "AttachmentReference"],
    #         values: ["AttachmentsSourceValue"],
    #         name: "AttachmentIdentifier"
    #       }
    #     ],
    #     name: "DocumentName", # required
    #     display_name: "DocumentDisplayName",
    #     version_name: "DocumentVersionName",
    #     document_type: "Command" # One of: ["Command", "Policy", "Automation", "Session", "Package", "ApplicationConfiguration", "ApplicationConfigurationSchema", "DeploymentStrategy", "ChangeCalendar", "Automation.ChangeTemplate", "ProblemAnalysis", "ProblemAnalysisTemplate", "CloudFormation", "ConformancePackTemplate", "QuickSetup", "ManualApprovalPolicy", "AutoApprovalPolicy"],
    #     document_format: "YAML" # One of: ["YAML", "JSON", "TEXT"],
    #     target_type: "TargetType",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_document(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_description: {
    #       sha1: "DocumentSha1",
    #       hash: "DocumentHash",
    #       hash_type: "Sha256" # One of: ["Sha256", "Sha1"],
    #       name: "DocumentARN",
    #       display_name: "DocumentDisplayName",
    #       version_name: "DocumentVersionName",
    #       owner: "DocumentOwner",
    #       created_date: Time.now,
    #       status: "Creating" # One of: ["Creating", "Active", "Updating", "Deleting", "Failed"],
    #       status_information: "DocumentStatusInformation",
    #       document_version: "DocumentVersion",
    #       description: "DescriptionInDocument",
    #       parameters: [
    #         {
    #           name: "DocumentParameterName",
    #           type: "String" # One of: ["String", "StringList"],
    #           description: "DocumentParameterDescrption",
    #           default_value: "DocumentParameterDefaultValue"
    #         }
    #       ],
    #       platform_types: ["Windows" # One of: ["Windows", "Linux", "MacOS"]],
    #       document_type: "Command" # One of: ["Command", "Policy", "Automation", "Session", "Package", "ApplicationConfiguration", "ApplicationConfigurationSchema", "DeploymentStrategy", "ChangeCalendar", "Automation.ChangeTemplate", "ProblemAnalysis", "ProblemAnalysisTemplate", "CloudFormation", "ConformancePackTemplate", "QuickSetup", "ManualApprovalPolicy", "AutoApprovalPolicy"],
    #       schema_version: "DocumentSchemaVersion",
    #       latest_version: "DocumentVersion",
    #       default_version: "DocumentVersion",
    #       document_format: "YAML" # One of: ["YAML", "JSON", "TEXT"],
    #       target_type: "TargetType",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       attachments_information: [
    #         {
    #           name: "AttachmentName"
    #         }
    #       ],
    #       requires: [
    #         {
    #           name: "DocumentARN", # required
    #           version: "DocumentVersion",
    #           require_type: "RequireType",
    #           version_name: "DocumentVersionName"
    #         }
    #       ],
    #       author: "DocumentAuthor",
    #       review_information: [
    #         {
    #           reviewed_time: Time.now,
    #           status: "APPROVED" # One of: ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"],
    #           reviewer: "Reviewer"
    #         }
    #       ],
    #       approved_version: "DocumentVersion",
    #       pending_review_version: "DocumentVersion",
    #       review_status: "APPROVED" # One of: ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"],
    #       category: ["Category"],
    #       category_enum: ["Category"]
    #     }
    #   }
    # @return [Types::CreateDocumentResult]
    def create_document(params = {}, options = {})
      request = build_request(:create_document, params)
      request.send_request(options)
    end

    # <p>Creates a new maintenance window.</p>
    #          <note>
    #             <p>The value you specify for <code>Duration</code> determines the specific end time for the
    #     maintenance window based on the time it begins. No maintenance window tasks are permitted to
    #     start after the resulting endtime minus the number of hours you specify for <code>Cutoff</code>.
    #     For example, if the maintenance window starts at 3 PM, the duration is three hours, and the
    #     value you specify for <code>Cutoff</code> is one hour, no maintenance window tasks can start
    #     after 5 PM.</p>
    #          </note>
    # @param [Hash, Types::CreateMaintenanceWindowRequest] params
    # @option params [String] :name
    #   <p>The name of the maintenance window.</p>
    # @option params [String] :description
    #   <p>An optional description for the maintenance window. We recommend specifying a description to
    #      help you organize your maintenance windows. </p>
    # @option params [String] :start_date
    #   <p>The date and time, in ISO-8601 Extended format, for when you want the maintenance window to
    #      become active. <code>StartDate</code> allows you to delay activation of the maintenance window
    #      until the specified future date.</p>
    #            <note>
    #               <p>When using a rate schedule, if you provide a start date that occurs in the past, the
    #       current date and time are used as the start date. </p>
    #            </note>
    # @option params [String] :end_date
    #   <p>The date and time, in ISO-8601 Extended format, for when you want the maintenance window to
    #      become inactive. <code>EndDate</code> allows you to set a date and time in the future when the
    #      maintenance window will no longer run.</p>
    # @option params [String] :schedule
    #   <p>The schedule of the maintenance window in the form of a cron or rate expression.</p>
    # @option params [String] :schedule_timezone
    #   <p>The time zone that the scheduled maintenance window executions are based on, in Internet
    #      Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or
    #      "Asia/Seoul". For more information, see the <a href="https://www.iana.org/time-zones">Time
    #       Zone Database</a> on the IANA website.</p>
    # @option params [Integer] :schedule_offset
    #   <p>The number of days to wait after the date and time specified by a cron expression before
    #      running the maintenance window.</p>
    #            <p>For example, the following cron expression schedules a maintenance window to run on the
    #      third Tuesday of every month at 11:30 PM.</p>
    #            <p>
    #               <code>cron(30 23 ? * TUE#3 *)</code>
    #            </p>
    #            <p>If the schedule offset is <code>2</code>, the maintenance window won't run until two days
    #      later.</p>
    # @option params [Integer] :duration
    #   <p>The duration of the maintenance window in hours.</p>
    # @option params [Integer] :cutoff
    #   <p>The number of hours before the end of the maintenance window that Amazon Web Services Systems Manager stops scheduling
    #      new tasks for execution.</p>
    # @option params [Boolean] :allow_unassociated_targets
    #   <p>Enables a maintenance window task to run on managed nodes, even if you haven't registered
    #      those nodes as targets. If enabled, then you must specify the unregistered managed nodes (by node
    #      ID) when you register a task with the maintenance window.</p>
    #            <p>If you don't enable this option, then you must specify previously-registered targets when
    #      you register a task with the maintenance window.</p>
    # @option params [String] :client_token
    #   <p>User-provided idempotency token.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in
    #      different ways, such as by purpose, owner, or environment. For example, you might want to tag a
    #      maintenance window to identify the type of tasks it will run, the types of targets, and the
    #      environment it will run in. In this case, you could specify the following key-value pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=TaskType,Value=AgentUpdate</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=OS,Value=Windows</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=Environment,Value=Production</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>To add tags to an existing maintenance window, use the <a>AddTagsToResource</a>
    #       operation.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "MaintenanceWindowName", # required
    #     description: "MaintenanceWindowDescription",
    #     start_date: "MaintenanceWindowStringDateTime",
    #     end_date: "MaintenanceWindowStringDateTime",
    #     schedule: "MaintenanceWindowSchedule", # required
    #     schedule_timezone: "MaintenanceWindowTimezone",
    #     schedule_offset: 1,
    #     duration: 1, # required
    #     cutoff: 1, # required
    #     allow_unassociated_targets: false, # required
    #     client_token: "ClientToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_maintenance_window(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     window_id: "MaintenanceWindowId"
    #   }
    # @return [Types::CreateMaintenanceWindowResult]
    def create_maintenance_window(params = {}, options = {})
      request = build_request(:create_maintenance_window, params)
      request.send_request(options)
    end

    # <p>Creates a new OpsItem. You must have permission in Identity and Access Management (IAM) to create a new OpsItem. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-setup.html">Set up OpsCenter</a> in the
    #     <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #          <p>Operations engineers and IT professionals use Amazon Web Services Systems Manager OpsCenter to view, investigate, and
    #    remediate operational issues impacting the performance and health of their Amazon Web Services resources. For
    #    more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html">Amazon Web Services Systems Manager OpsCenter</a> in the
    #     <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    # @param [Hash, Types::CreateOpsItemRequest] params
    # @option params [String] :description
    #   <p>User-defined text that contains information about the OpsItem, in Markdown format. </p>
    #            <note>
    #               <p>Provide enough information so that users viewing this OpsItem for the first time understand
    #       the issue. </p>
    #            </note>
    # @option params [String] :ops_item_type
    #   <p>The type of OpsItem to create. Systems Manager supports the following types of OpsItems:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>/aws/issue</code>
    #                  </p>
    #                  <p>This type of OpsItem is used for default OpsItems created by OpsCenter. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/aws/insight</code>
    #                  </p>
    #                  <p>This type of OpsItem is used by OpsCenter for aggregating and reporting on duplicate
    #        OpsItems. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/aws/changerequest</code>
    #                  </p>
    #                  <p>This type of OpsItem is used by Change Manager for reviewing and approving or rejecting change
    #        requests. </p>
    #                  <important>
    #                     <p>Amazon Web Services Systems Manager Change Manager is no longer open to new customers. Existing customers can
    #     continue to use the service as normal. For more information, see
    #   <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/change-manager-availability-change.html">Amazon Web Services Systems Manager Change Manager availability change</a>.</p>
    #                  </important>
    #               </li>
    #            </ul>
    # @option params [Hash<String, Types::OpsItemDataValue>] :operational_data
    #   <p>Operational data is custom data that provides useful reference details about the OpsItem.
    #      For example, you can specify log files, error strings, license keys, troubleshooting tips, or
    #      other relevant data. You enter operational data as key-value pairs. The key has a maximum length
    #      of 128 characters. The value has a maximum size of 20 KB.</p>
    #            <important>
    #               <p>Operational data keys <i>can't</i> begin with the following:
    #        <code>amazon</code>, <code>aws</code>, <code>amzn</code>, <code>ssm</code>,
    #        <code>/amazon</code>, <code>/aws</code>, <code>/amzn</code>, <code>/ssm</code>.</p>
    #            </important>
    #            <p>You can choose to make the data searchable by other users in the account or you can restrict
    #      search access. Searchable data means that all users with access to the OpsItem Overview page (as
    #      provided by the <a>DescribeOpsItems</a> API operation) can view and search on the
    #      specified data. Operational data that isn't searchable is only viewable by users who have access
    #      to the OpsItem (as provided by the <a>GetOpsItem</a> API operation).</p>
    #            <p>Use the <code>/aws/resources</code> key in OperationalData to specify a related resource in
    #      the request. Use the <code>/aws/automations</code> key in OperationalData to associate an
    #      Automation runbook with the OpsItem. To view Amazon Web Services CLI example commands that use these keys, see
    #       <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-manually-create-OpsItems.html">Create OpsItems
    #       manually</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [Array<Types::OpsItemNotification>] :notifications
    #   <p>The Amazon Resource Name (ARN) of an SNS topic where notifications are sent when this
    #      OpsItem is edited or changed.</p>
    # @option params [Integer] :priority
    #   <p>The importance of this OpsItem in relation to other OpsItems in the system.</p>
    # @option params [Array<Types::RelatedOpsItem>] :related_ops_items
    #   <p>One or more OpsItems that share something in common with the current OpsItems. For example,
    #      related OpsItems can include OpsItems with similar error messages, impacted resources, or
    #      statuses for the impacted resource.</p>
    # @option params [String] :source
    #   <p>The origin of the OpsItem, such as Amazon EC2 or Systems Manager.</p>
    #            <note>
    #               <p>The source name can't contain the following strings: <code>aws</code>, <code>amazon</code>,
    #       and <code>amzn</code>. </p>
    #            </note>
    # @option params [String] :title
    #   <p>A short heading that describes the nature of the OpsItem and the impacted resource.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Optional metadata that you assign to a resource.</p>
    #            <p>Tags use a key-value pair. For example:</p>
    #            <p>
    #               <code>Key=Department,Value=Finance</code>
    #            </p>
    #            <important>
    #               <p>To add tags to a new OpsItem, a user must have IAM permissions for both the
    #        <code>ssm:CreateOpsItems</code> operation and the <code>ssm:AddTagsToResource</code> operation.
    #       To add tags to an existing OpsItem, use the <a>AddTagsToResource</a>
    #       operation.</p>
    #            </important>
    # @option params [String] :category
    #   <p>Specify a category to assign to an OpsItem. </p>
    # @option params [String] :severity
    #   <p>Specify a severity to assign to an OpsItem.</p>
    # @option params [Time] :actual_start_time
    #   <p>The time a runbook workflow started. Currently reported only for the OpsItem type
    #       <code>/aws/changerequest</code>.</p>
    # @option params [Time] :actual_end_time
    #   <p>The time a runbook workflow ended. Currently reported only for the OpsItem type
    #       <code>/aws/changerequest</code>.</p>
    # @option params [Time] :planned_start_time
    #   <p>The time specified in a change request for a runbook workflow to start. Currently supported
    #      only for the OpsItem type <code>/aws/changerequest</code>.</p>
    # @option params [Time] :planned_end_time
    #   <p>The time specified in a change request for a runbook workflow to end. Currently supported
    #      only for the OpsItem type <code>/aws/changerequest</code>.</p>
    # @option params [String] :account_id
    #   <p>The target Amazon Web Services account where you want to create an OpsItem. To make this call, your account
    #      must be configured to work with OpsItems across accounts. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-setup.html">Set up
    #       OpsCenter</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "OpsItemDescription", # required
    #     ops_item_type: "OpsItemType",
    #     operational_data: {
    #       "OpsItemDataKey" => {
    #         value: "OpsItemDataValueString",
    #         type: "SearchableString" # One of: ["SearchableString", "String"]
    #       }
    #     },
    #     notifications: [
    #       {
    #         arn: "String"
    #       }
    #     ],
    #     priority: 1,
    #     related_ops_items: [
    #       {
    #         ops_item_id: "String", # required
    #       }
    #     ],
    #     source: "OpsItemSource", # required
    #     title: "OpsItemTitle", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     category: "OpsItemCategory",
    #     severity: "OpsItemSeverity",
    #     actual_start_time: Time.now,
    #     actual_end_time: Time.now,
    #     planned_start_time: Time.now,
    #     planned_end_time: Time.now,
    #     account_id: "OpsItemAccountId"
    #   }
    #   options = {}
    #   response = client.create_ops_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ops_item_id: "String",
    #     ops_item_arn: "OpsItemArn"
    #   }
    # @return [Types::CreateOpsItemResponse]
    def create_ops_item(params = {}, options = {})
      request = build_request(:create_ops_item, params)
      request.send_request(options)
    end

    # <p>If you create a new application in Application Manager, Amazon Web Services Systems Manager calls this API operation to specify
    #    information about the new application, including the application type.</p>
    # @param [Hash, Types::CreateOpsMetadataRequest] params
    # @option params [String] :resource_id
    #   <p>A resource ID for a new Application Manager application.</p>
    # @option params [Hash<String, Types::MetadataValue>] :metadata
    #   <p>Metadata for a new Application Manager application. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Optional metadata that you assign to a resource. You can specify a maximum of five tags for
    #      an OpsMetadata object. Tags enable you to categorize a resource in different ways, such as by
    #      purpose, owner, or environment. For example, you might want to tag an OpsMetadata object to
    #      identify an environment or target Amazon Web Services Region. In this case, you could specify the following
    #      key-value pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=Environment,Value=Production</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=Region,Value=us-east-2</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "OpsMetadataResourceId", # required
    #     metadata: {
    #       "MetadataKey" => {
    #         value: "MetadataValueString"
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_ops_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ops_metadata_arn: "OpsMetadataArn"
    #   }
    # @return [Types::CreateOpsMetadataResult]
    def create_ops_metadata(params = {}, options = {})
      request = build_request(:create_ops_metadata, params)
      request.send_request(options)
    end

    # <p>Creates a patch baseline.</p>
    #          <note>
    #             <p>For information about valid key-value pairs in <code>PatchFilters</code> for each supported
    #     operating system type, see <a>PatchFilter</a>.</p>
    #          </note>
    # @param [Hash, Types::CreatePatchBaselineRequest] params
    # @option params [String] :operating_system
    #   <p>Defines the operating system the patch baseline applies to. The default value is
    #       <code>WINDOWS</code>.</p>
    # @option params [String] :name
    #   <p>The name of the patch baseline.</p>
    # @option params [Types::PatchFilterGroup] :global_filters
    #   <p>A set of global filters used to include patches in the baseline.</p>
    #            <important>
    #               <p>The <code>GlobalFilters</code> parameter can be configured only by using the CLI or an Amazon Web Services SDK. It can't be configured from the Patch Manager
    #       console, and its value isn't displayed in the console.</p>
    #            </important>
    # @option params [Types::PatchRuleGroup] :approval_rules
    #   <p>A set of rules used to include patches in the baseline.</p>
    # @option params [Array<String>] :approved_patches
    #   <p>A list of explicitly approved patches for the baseline.</p>
    #            <p>For information about accepted formats for lists of approved patches and rejected patches,
    #                           see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html">Package
    #                           name formats for approved and rejected patch lists</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [String] :approved_patches_compliance_level
    #   <p>Defines the compliance level for approved patches. When an approved patch is reported as
    #      missing, this value describes the severity of the compliance violation. The default value is
    #       <code>UNSPECIFIED</code>.</p>
    # @option params [Boolean] :approved_patches_enable_non_security
    #   <p>Indicates whether the list of approved patches includes non-security updates that should be
    #      applied to the managed nodes. The default value is <code>false</code>. Applies to Linux managed
    #      nodes only.</p>
    # @option params [Array<String>] :rejected_patches
    #   <p>A list of explicitly rejected patches for the baseline.</p>
    #            <p>For information about accepted formats for lists of approved patches and rejected patches,
    #                           see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html">Package
    #                           name formats for approved and rejected patch lists</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [String] :rejected_patches_action
    #   <p>The action for Patch Manager to take on patches included in the
    #       <code>RejectedPackages</code> list.</p>
    #            <dl>
    #               <dt>ALLOW_AS_DEPENDENCY</dt>
    #               <dd>
    #                  <p>
    #                     <b>Linux and macOS</b>: A package in the rejected patches list
    #         is installed only if it is a dependency of another package. It is considered compliant with
    #         the patch baseline, and its status is reported as <code>INSTALLED_OTHER</code>. This is the
    #         default action if no option is specified.</p>
    #                  <p>
    #                     <b>Windows Server</b>: Windows Server doesn't support the
    #         concept of package dependencies. If a package in the rejected patches list and already
    #         installed on the node, its status is reported as <code>INSTALLED_OTHER</code>. Any package not
    #         already installed on the node is skipped. This is the default action if no option is
    #         specified.</p>
    #               </dd>
    #               <dt>BLOCK</dt>
    #               <dd>
    #                  <p>
    #                     <b>All OSs</b>: Packages in the rejected patches list, and
    #         packages that include them as dependencies, aren't installed by Patch Manager under any
    #         circumstances. </p>
    #                  <p>State value assignment for patch compliance:</p>
    #                  <ul>
    #                     <li>
    #                        <p>If a package was installed before it was added to the rejected patches list, or is
    #           installed outside of Patch Manager afterward, it's considered noncompliant with the patch
    #           baseline and its status is reported as <code>INSTALLED_REJECTED</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If an update attempts to install a dependency package that is now rejected by the
    #           baseline, when previous versions of the package were not rejected, the package being updated
    #           is reported as <code>MISSING</code> for <code>SCAN</code> operations and as
    #            <code>FAILED</code> for <code>INSTALL</code> operations.</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #            </dl>
    # @option params [String] :description
    #   <p>A description of the patch baseline.</p>
    # @option params [Array<Types::PatchSource>] :sources
    #   <p>Information about the patches to use to update the managed nodes, including target operating
    #      systems and source repositories. Applies to Linux managed nodes only.</p>
    # @option params [String] :available_security_updates_compliance_status
    #   <p>Indicates the status you want to assign to security patches that are available but not
    #      approved because they don't meet the installation criteria specified in the patch
    #      baseline.</p>
    #            <p>Example scenario: Security patches that you might want installed can be skipped if you have
    #      specified a long period to wait after a patch is released before installation. If an update to
    #      the patch is released during your specified waiting period, the waiting period for installing the
    #      patch starts over. If the waiting period is too long, multiple versions of the patch could be
    #      released but never installed.</p>
    #            <p>Supported for Windows Server managed nodes only.</p>
    # @option params [String] :client_token
    #   <p>User-provided idempotency token.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in
    #      different ways, such as by purpose, owner, or environment. For example, you might want to tag a
    #      patch baseline to identify the severity level of patches it specifies and the operating system
    #      family it applies to. In this case, you could specify the following key-value pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=PatchSeverity,Value=Critical</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=OS,Value=Windows</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>To add tags to an existing patch baseline, use the <a>AddTagsToResource</a>
    #       operation.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     operating_system: "WINDOWS" # One of: ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "AMAZON_LINUX_2022", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX", "ALMA_LINUX", "AMAZON_LINUX_2023"],
    #     name: "BaselineName", # required
    #     global_filters: {
    #       patch_filters: [ # required
    #         {
    #           key: "ARCH" # One of: ["ARCH", "ADVISORY_ID", "BUGZILLA_ID", "PATCH_SET", "PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "CVE_ID", "EPOCH", "MSRC_SEVERITY", "NAME", "PATCH_ID", "SECTION", "PRIORITY", "REPOSITORY", "RELEASE", "SEVERITY", "SECURITY", "VERSION"], # required
    #           values: ["PatchFilterValue"], # required
    #         }
    #       ]
    #     },
    #     approval_rules: {
    #       patch_rules: [ # required
    #         {
    #           patch_filter_group: { # required
    #             patch_filters: [ # required
    #               {
    #                 key: "ARCH" # One of: ["ARCH", "ADVISORY_ID", "BUGZILLA_ID", "PATCH_SET", "PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "CVE_ID", "EPOCH", "MSRC_SEVERITY", "NAME", "PATCH_ID", "SECTION", "PRIORITY", "REPOSITORY", "RELEASE", "SEVERITY", "SECURITY", "VERSION"], # required
    #                 values: ["PatchFilterValue"], # required
    #               }
    #             ]
    #           },
    #           compliance_level: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"],
    #           approve_after_days: 1,
    #           approve_until_date: "PatchStringDateTime",
    #           enable_non_security: false
    #         }
    #       ]
    #     },
    #     approved_patches: ["PatchId"],
    #     approved_patches_compliance_level: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"],
    #     approved_patches_enable_non_security: false,
    #     rejected_patches: ["PatchId"],
    #     rejected_patches_action: "ALLOW_AS_DEPENDENCY" # One of: ["ALLOW_AS_DEPENDENCY", "BLOCK"],
    #     description: "BaselineDescription",
    #     sources: [
    #       {
    #         name: "PatchSourceName", # required
    #         products: ["PatchSourceProduct"], # required
    #         configuration: "PatchSourceConfiguration", # required
    #       }
    #     ],
    #     available_security_updates_compliance_status: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT"],
    #     client_token: "ClientToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_patch_baseline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     baseline_id: "BaselineId"
    #   }
    # @return [Types::CreatePatchBaselineResult]
    def create_patch_baseline(params = {}, options = {})
      request = build_request(:create_patch_baseline, params)
      request.send_request(options)
    end

    # <p>A resource data sync helps you view data from multiple sources in a single location.
    #    Amazon Web Services Systems Manager offers two types of resource data sync: <code>SyncToDestination</code> and
    #     <code>SyncFromSource</code>.</p>
    #          <p>You can configure Systems Manager Inventory to use the <code>SyncToDestination</code> type to
    #    synchronize Inventory data from multiple Amazon Web Services Regions to a single Amazon Simple Storage Service (Amazon S3) bucket. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/inventory-create-resource-data-sync.html">Creating a
    #     resource data sync for Inventory</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #          <p>You can configure Systems Manager Explorer to use the <code>SyncFromSource</code> type to synchronize
    #    operational work items (OpsItems) and operational data (OpsData) from multiple Amazon Web Services Regions to a
    #    single Amazon S3 bucket. This type can synchronize OpsItems and OpsData from multiple
    #    Amazon Web Services accounts and Amazon Web Services Regions or <code>EntireOrganization</code> by using Organizations. For more
    #    information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/Explorer-resource-data-sync.html">Setting up Systems Manager
    #     Explorer to display data from multiple accounts and Regions</a> in the
    #     <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #          <p>A resource data sync is an asynchronous operation that returns immediately. After a
    #    successful initial sync is completed, the system continuously syncs data. To check the status of
    #    a sync, use the <a>ListResourceDataSync</a>.</p>
    #          <note>
    #             <p>By default, data isn't encrypted in Amazon S3. We strongly recommend that you
    #     enable encryption in Amazon S3 to ensure secure data storage. We also recommend that you
    #     secure access to the Amazon S3 bucket by creating a restrictive bucket policy. </p>
    #          </note>
    # @param [Hash, Types::CreateResourceDataSyncRequest] params
    # @option params [String] :sync_name
    #   <p>A name for the configuration.</p>
    # @option params [Types::ResourceDataSyncS3Destination] :s3_destination
    #   <p>Amazon S3 configuration details for the sync. This parameter is required if the
    #       <code>SyncType</code> value is SyncToDestination.</p>
    # @option params [String] :sync_type
    #   <p>Specify <code>SyncToDestination</code> to create a resource data sync that synchronizes data
    #      to an S3 bucket for Inventory. If you specify <code>SyncToDestination</code>, you must provide a
    #      value for <code>S3Destination</code>. Specify <code>SyncFromSource</code> to synchronize data
    #      from a single account and multiple Regions, or multiple Amazon Web Services accounts and Amazon Web Services Regions, as
    #      listed in Organizations for Explorer. If you specify <code>SyncFromSource</code>, you must provide a
    #      value for <code>SyncSource</code>. The default value is <code>SyncToDestination</code>.</p>
    # @option params [Types::ResourceDataSyncSource] :sync_source
    #   <p>Specify information about the data sources to synchronize. This parameter is required if the
    #       <code>SyncType</code> value is SyncFromSource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sync_name: "ResourceDataSyncName", # required
    #     s3_destination: {
    #       bucket_name: "ResourceDataSyncS3BucketName", # required
    #       prefix: "ResourceDataSyncS3Prefix",
    #       sync_format: "JsonSerDe" # One of: ["JsonSerDe"], # required
    #       region: "ResourceDataSyncS3Region", # required
    #       awskms_key_arn: "ResourceDataSyncAWSKMSKeyARN",
    #       destination_data_sharing: {
    #         destination_data_sharing_type: "ResourceDataSyncDestinationDataSharingType"
    #       }
    #     },
    #     sync_type: "ResourceDataSyncType",
    #     sync_source: {
    #       source_type: "ResourceDataSyncSourceType", # required
    #       aws_organizations_source: {
    #         organization_source_type: "ResourceDataSyncOrganizationSourceType", # required
    #         organizational_units: [
    #           {
    #             organizational_unit_id: "ResourceDataSyncOrganizationalUnitId"
    #           }
    #         ]
    #       },
    #       source_regions: ["ResourceDataSyncSourceRegion"], # required
    #       include_future_regions: false,
    #       enable_all_ops_data_sources: false
    #     }
    #   }
    #   options = {}
    #   response = client.create_resource_data_sync(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateResourceDataSyncResult]
    def create_resource_data_sync(params = {}, options = {})
      request = build_request(:create_resource_data_sync, params)
      request.send_request(options)
    end

    # <p>Deletes an activation. You aren't required to delete an activation. If you delete an
    #    activation, you can no longer use it to register additional managed nodes. Deleting an activation
    #    doesn't de-register managed nodes. You must manually de-register managed nodes.</p>
    # @param [Hash, Types::DeleteActivationRequest] params
    # @option params [String] :activation_id
    #   <p>The ID of the activation that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     activation_id: "ActivationId", # required
    #   }
    #   options = {}
    #   response = client.delete_activation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteActivationResult]
    def delete_activation(params = {}, options = {})
      request = build_request(:delete_activation, params)
      request.send_request(options)
    end

    # <p>Disassociates the specified Amazon Web Services Systems Manager document (SSM document) from the specified managed
    #    node. If you created the association by using the <code>Targets</code> parameter, then you must
    #    delete the association by using the association ID.</p>
    #          <p>When you disassociate a document from a managed node, it doesn't change the configuration of
    #    the node. To change the configuration state of a managed node after you disassociate a document,
    #    you must create a new document with the desired configuration and associate it with the
    #    node.</p>
    # @param [Hash, Types::DeleteAssociationRequest] params
    # @option params [String] :name
    #   <p>The name of the SSM document.</p>
    # @option params [String] :instance_id
    #   <p>The managed node ID.</p>
    #            <note>
    #               <p>
    #                  <code>InstanceId</code> has been deprecated. To specify a managed node ID for an
    #       association, use the <code>Targets</code> parameter. Requests that include the parameter
    #        <code>InstanceID</code> with Systems Manager documents (SSM documents) that use schema version 2.0 or
    #       later will fail. In addition, if you use the parameter <code>InstanceId</code>, you can't use
    #       the parameters <code>AssociationName</code>, <code>DocumentVersion</code>,
    #        <code>MaxErrors</code>, <code>MaxConcurrency</code>, <code>OutputLocation</code>, or
    #        <code>ScheduleExpression</code>. To use these parameters, you must use the <code>Targets</code>
    #       parameter.</p>
    #            </note>
    # @option params [String] :association_id
    #   <p>The association ID that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DocumentARN",
    #     instance_id: "InstanceId",
    #     association_id: "AssociationId"
    #   }
    #   options = {}
    #   response = client.delete_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAssociationResult]
    def delete_association(params = {}, options = {})
      request = build_request(:delete_association, params)
      request.send_request(options)
    end

    # <p>Deletes a cloud connector.</p>
    # @param [Hash, Types::DeleteCloudConnectorRequest] params
    # @option params [String] :cloud_connector_id
    #   <p>The ID of the cloud connector to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_connector_id: "CloudConnectorId", # required
    #   }
    #   options = {}
    #   response = client.delete_cloud_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cloud_connector_id: "CloudConnectorId"
    #   }
    # @return [Types::DeleteCloudConnectorResult]
    def delete_cloud_connector(params = {}, options = {})
      request = build_request(:delete_cloud_connector, params)
      request.send_request(options)
    end

    # <p>Deletes the Amazon Web Services Systems Manager document (SSM document) and all managed node associations to the
    #    document.</p>
    #          <p>Before you delete the document, we recommend that you use <a>DeleteAssociation</a> to disassociate all managed nodes that are associated with the document.</p>
    # @param [Hash, Types::DeleteDocumentRequest] params
    # @option params [String] :name
    #   <p>The name of the document.</p>
    # @option params [String] :document_version
    #   <p>The version of the document that you want to delete. If not provided, all versions of the
    #      document are deleted.</p>
    # @option params [String] :version_name
    #   <p>The version name of the document that you want to delete. If not provided, all versions of
    #      the document are deleted.</p>
    # @option params [Boolean] :force
    #   <p>Some SSM document types require that you specify a <code>Force</code> flag before you can
    #      delete the document. For example, you must specify a <code>Force</code> flag to delete a document
    #      of type <code>ApplicationConfigurationSchema</code>. You can restrict access to the
    #       <code>Force</code> flag in an Identity and Access Management (IAM) policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DocumentName", # required
    #     document_version: "DocumentVersion",
    #     version_name: "DocumentVersionName",
    #     force: false
    #   }
    #   options = {}
    #   response = client.delete_document(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDocumentResult]
    def delete_document(params = {}, options = {})
      request = build_request(:delete_document, params)
      request.send_request(options)
    end

    # <p>Delete a custom inventory type or the data associated with a custom Inventory type. Deleting
    #    a custom inventory type is also referred to as deleting a custom inventory schema.</p>
    # @param [Hash, Types::DeleteInventoryRequest] params
    # @option params [String] :type_name
    #   <p>The name of the custom inventory type for which you want to delete either all previously
    #      collected data or the inventory type itself. </p>
    # @option params [String] :schema_delete_option
    #   <p>Use the <code>SchemaDeleteOption</code> to delete a custom inventory type (schema). If you
    #      don't choose this option, the system only deletes existing inventory data associated with the
    #      custom inventory type. Choose one of the following options:</p>
    #            <p>DisableSchema: If you choose this option, the system ignores all inventory data for the
    #      specified version, and any earlier versions. To enable this schema again, you must call the
    #       <code>PutInventory</code> operation for a version greater than the disabled version.</p>
    #            <p>DeleteSchema: This option deletes the specified custom type from the Inventory service. You
    #      can recreate the schema later, if you want.</p>
    # @option params [Boolean] :dry_run
    #   <p>Use this option to view a summary of the deletion request without deleting any data or the
    #      data type. This option is useful when you only want to understand what will be deleted. Once you
    #      validate that the data to be deleted is what you intend to delete, you can run the same command
    #      without specifying the <code>DryRun</code> option.</p>
    # @option params [String] :client_token
    #   <p>User-provided idempotency token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type_name: "InventoryItemTypeName", # required
    #     schema_delete_option: "DisableSchema" # One of: ["DisableSchema", "DeleteSchema"],
    #     dry_run: false,
    #     client_token: "UUID"
    #   }
    #   options = {}
    #   response = client.delete_inventory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deletion_id: "UUID",
    #     type_name: "InventoryItemTypeName",
    #     deletion_summary: {
    #       total_count: 1,
    #       remaining_count: 1,
    #       summary_items: [
    #         {
    #           version: "InventoryItemSchemaVersion",
    #           count: 1,
    #           remaining_count: 1
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DeleteInventoryResult]
    def delete_inventory(params = {}, options = {})
      request = build_request(:delete_inventory, params)
      request.send_request(options)
    end

    # <p>Deletes a maintenance window.</p>
    # @param [Hash, Types::DeleteMaintenanceWindowRequest] params
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     window_id: "MaintenanceWindowId", # required
    #   }
    #   options = {}
    #   response = client.delete_maintenance_window(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     window_id: "MaintenanceWindowId"
    #   }
    # @return [Types::DeleteMaintenanceWindowResult]
    def delete_maintenance_window(params = {}, options = {})
      request = build_request(:delete_maintenance_window, params)
      request.send_request(options)
    end

    # <p>Delete an OpsItem. You must have permission in Identity and Access Management (IAM) to
    #    delete an OpsItem. </p>
    #          <important>
    #             <p>Note the following important information about this operation.</p>
    #             <ul>
    #                <li>
    #                   <p>Deleting an OpsItem is irreversible. You can't restore a deleted OpsItem.</p>
    #                </li>
    #                <li>
    #                   <p>This operation uses an <i>eventual consistency model</i>, which means the
    #       system can take a few minutes to complete this operation. If you delete an OpsItem and
    #       immediately call, for example, <a>GetOpsItem</a>, the deleted OpsItem might still
    #       appear in the response. </p>
    #                </li>
    #                <li>
    #                   <p>This operation is idempotent. The system doesn't throw an exception if you repeatedly
    #       call this operation for the same OpsItem. If the first call is successful, all additional calls
    #       return the same successful response as the first call.</p>
    #                </li>
    #                <li>
    #                   <p>This operation doesn't support cross-account calls. A delegated administrator or
    #       management account can't delete OpsItems in other accounts, even if OpsCenter has been set up for
    #       cross-account administration. For more information about cross-account administration, see
    #        <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-setting-up-cross-account.html">Setting up
    #        OpsCenter to centrally manage OpsItems across accounts</a> in the <i>Systems Manager User Guide</i>.</p>
    #                </li>
    #             </ul>
    #          </important>
    # @param [Hash, Types::DeleteOpsItemRequest] params
    # @option params [String] :ops_item_id
    #   <p>The ID of the OpsItem that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ops_item_id: "OpsItemId", # required
    #   }
    #   options = {}
    #   response = client.delete_ops_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteOpsItemResponse]
    def delete_ops_item(params = {}, options = {})
      request = build_request(:delete_ops_item, params)
      request.send_request(options)
    end

    # <p>Delete OpsMetadata related to an application.</p>
    # @param [Hash, Types::DeleteOpsMetadataRequest] params
    # @option params [String] :ops_metadata_arn
    #   <p>The Amazon Resource Name (ARN) of an OpsMetadata Object to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ops_metadata_arn: "OpsMetadataArn", # required
    #   }
    #   options = {}
    #   response = client.delete_ops_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteOpsMetadataResult]
    def delete_ops_metadata(params = {}, options = {})
      request = build_request(:delete_ops_metadata, params)
      request.send_request(options)
    end

    # <p>Delete a parameter from the system. After deleting a parameter, wait for at least 30 seconds
    #    to create a parameter with the same name.</p>
    # @param [Hash, Types::DeleteParameterRequest] params
    # @option params [String] :name
    #   <p>The name of the parameter to delete.</p>
    #            <note>
    #               <p>You can't enter the Amazon Resource Name (ARN) for a parameter, only the parameter name
    #       itself.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PSParameterName", # required
    #   }
    #   options = {}
    #   response = client.delete_parameter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteParameterResult]
    def delete_parameter(params = {}, options = {})
      request = build_request(:delete_parameter, params)
      request.send_request(options)
    end

    # <p>Delete a list of parameters. After deleting a parameter, wait for at least 30 seconds to
    #    create a parameter with the same name.</p>
    # @param [Hash, Types::DeleteParametersRequest] params
    # @option params [Array<String>] :names
    #   <p>The names of the parameters to delete. After deleting a parameter, wait for at least 30
    #      seconds to create a parameter with the same name.</p>
    #            <note>
    #               <p>You can't enter the Amazon Resource Name (ARN) for a parameter, only the parameter name
    #       itself.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     names: ["PSParameterName"], # required
    #   }
    #   options = {}
    #   response = client.delete_parameters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deleted_parameters: ["PSParameterName"],
    #     invalid_parameters: ["PSParameterName"]
    #   }
    # @return [Types::DeleteParametersResult]
    def delete_parameters(params = {}, options = {})
      request = build_request(:delete_parameters, params)
      request.send_request(options)
    end

    # <p>Deletes a patch baseline.</p>
    # @param [Hash, Types::DeletePatchBaselineRequest] params
    # @option params [String] :baseline_id
    #   <p>The ID of the patch baseline to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     baseline_id: "BaselineId", # required
    #   }
    #   options = {}
    #   response = client.delete_patch_baseline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     baseline_id: "BaselineId"
    #   }
    # @return [Types::DeletePatchBaselineResult]
    def delete_patch_baseline(params = {}, options = {})
      request = build_request(:delete_patch_baseline, params)
      request.send_request(options)
    end

    # <p>Deletes a resource data sync configuration. After the configuration is deleted, changes to
    #    data on managed nodes are no longer synced to or from the target. Deleting a sync configuration
    #    doesn't delete data.</p>
    # @param [Hash, Types::DeleteResourceDataSyncRequest] params
    # @option params [String] :sync_name
    #   <p>The name of the configuration to delete.</p>
    # @option params [String] :sync_type
    #   <p>Specify the type of resource data sync to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sync_name: "ResourceDataSyncName", # required
    #     sync_type: "ResourceDataSyncType"
    #   }
    #   options = {}
    #   response = client.delete_resource_data_sync(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteResourceDataSyncResult]
    def delete_resource_data_sync(params = {}, options = {})
      request = build_request(:delete_resource_data_sync, params)
      request.send_request(options)
    end

    # <p>Deletes a Systems Manager resource policy. A resource policy helps you to define the IAM entity (for example, an Amazon Web Services account) that can manage your Systems Manager resources. The following
    #    resources support Systems Manager resource policies.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>OpsItemGroup</code> - The resource policy for <code>OpsItemGroup</code> enables
    #      Amazon Web Services accounts to view and interact with OpsCenter operational work items (OpsItems).</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Parameter</code> - The resource policy is used to share a parameter with other
    #      accounts using Resource Access Manager (RAM). For more information about
    #      cross-account sharing of parameters, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-shared-parameters.html">Working with
    #       shared parameters</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Document</code> – Shares the document using Resource Access Manager (RAM). For more information about sharing documents, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/documents-ssm-sharing.html">Sharing
    #       Systems Manager documents</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DeleteResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource to which the policies are attached.</p>
    # @option params [String] :policy_id
    #   <p>The policy ID.</p>
    # @option params [String] :policy_hash
    #   <p>ID of the current policy version. The hash helps to prevent multiple calls from attempting
    #      to overwrite a policy.</p>
    # @option params [String] :deletion_mode
    #   <p>Specifies the intended outcome of the operation. Applies only to the <code>Document</code>
    #      resource type. The operation ignores this parameter for other resource types. Optional. Defaults
    #      to <code>RemoveSharing</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RemoveSharing</code> – Deletes the resource policy and removes sharing of the
    #        document.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RollbackMigration</code> – Reverts the document to Custom sharing, preserving
    #        existing consumer access, instead of removing the policy.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArnString", # required
    #     policy_id: "PolicyId", # required
    #     policy_hash: "PolicyHash", # required
    #     deletion_mode: "RemoveSharing" # One of: ["RemoveSharing", "RollbackMigration"]
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteResourcePolicyResponse]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Removes the server or virtual machine from the list of registered servers.</p>
    #          <p>If you want to reregister an on-premises server, edge device, or VM, you must use a
    #    different Activation Code and Activation ID than used to register the machine previously. The
    #    Activation Code and Activation ID must not have already been used on the maximum number of
    #    activations specified when they were created. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/fleet-manager-deregister-hybrid-nodes.html">Deregistering
    #     managed nodes in a hybrid and multicloud environment</a> in the
    #     <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @param [Hash, Types::DeregisterManagedInstanceRequest] params
    # @option params [String] :instance_id
    #   <p>The ID assigned to the managed node when you registered it using the activation process.
    #     </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "ManagedInstanceId", # required
    #   }
    #   options = {}
    #   response = client.deregister_managed_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeregisterManagedInstanceResult]
    def deregister_managed_instance(params = {}, options = {})
      request = build_request(:deregister_managed_instance, params)
      request.send_request(options)
    end

    # <p>Removes a patch group from a patch baseline.</p>
    # @param [Hash, Types::DeregisterPatchBaselineForPatchGroupRequest] params
    # @option params [String] :baseline_id
    #   <p>The ID of the patch baseline to deregister the patch group from.</p>
    # @option params [String] :patch_group
    #   <p>The name of the patch group that should be deregistered from the patch baseline.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     baseline_id: "BaselineId", # required
    #     patch_group: "PatchGroup", # required
    #   }
    #   options = {}
    #   response = client.deregister_patch_baseline_for_patch_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     baseline_id: "BaselineId",
    #     patch_group: "PatchGroup"
    #   }
    # @return [Types::DeregisterPatchBaselineForPatchGroupResult]
    def deregister_patch_baseline_for_patch_group(params = {}, options = {})
      request = build_request(:deregister_patch_baseline_for_patch_group, params)
      request.send_request(options)
    end

    # <p>Removes a target from a maintenance window.</p>
    # @param [Hash, Types::DeregisterTargetFromMaintenanceWindowRequest] params
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window the target should be removed from.</p>
    # @option params [String] :window_target_id
    #   <p>The ID of the target definition to remove.</p>
    # @option params [Boolean] :safe
    #   <p>The system checks if the target is being referenced by a task. If the target is being
    #      referenced, the system returns an error and doesn't deregister the target from the maintenance
    #      window.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     window_id: "MaintenanceWindowId", # required
    #     window_target_id: "MaintenanceWindowTargetId", # required
    #     safe: false
    #   }
    #   options = {}
    #   response = client.deregister_target_from_maintenance_window(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     window_id: "MaintenanceWindowId",
    #     window_target_id: "MaintenanceWindowTargetId"
    #   }
    # @return [Types::DeregisterTargetFromMaintenanceWindowResult]
    def deregister_target_from_maintenance_window(params = {}, options = {})
      request = build_request(:deregister_target_from_maintenance_window, params)
      request.send_request(options)
    end

    # <p>Removes a task from a maintenance window.</p>
    # @param [Hash, Types::DeregisterTaskFromMaintenanceWindowRequest] params
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window the task should be removed from.</p>
    # @option params [String] :window_task_id
    #   <p>The ID of the task to remove from the maintenance window.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     window_id: "MaintenanceWindowId", # required
    #     window_task_id: "MaintenanceWindowTaskId", # required
    #   }
    #   options = {}
    #   response = client.deregister_task_from_maintenance_window(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     window_id: "MaintenanceWindowId",
    #     window_task_id: "MaintenanceWindowTaskId"
    #   }
    # @return [Types::DeregisterTaskFromMaintenanceWindowResult]
    def deregister_task_from_maintenance_window(params = {}, options = {})
      request = build_request(:deregister_task_from_maintenance_window, params)
      request.send_request(options)
    end

    # <p>Describes details about the activation, such as the date and time the activation was
    #    created, its expiration date, the Identity and Access Management (IAM) role assigned to
    #    the managed nodes in the activation, and the number of nodes registered by using this
    #    activation.</p>
    # @param [Hash, Types::DescribeActivationsRequest] params
    # @option params [Array<Types::DescribeActivationsFilter>] :filters
    #   <p>A filter to view information about your activations.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         filter_key: "ActivationIds" # One of: ["ActivationIds", "DefaultInstanceName", "IamRole"],
    #         filter_values: ["String"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_activations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     activation_list: [
    #       {
    #         activation_id: "ActivationId",
    #         description: "ActivationDescription",
    #         default_instance_name: "DefaultInstanceName",
    #         iam_role: "IamRole",
    #         registration_limit: 1,
    #         registrations_count: 1,
    #         expiration_date: Time.now,
    #         expired: false,
    #         created_date: Time.now,
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeActivationsResult]
    def describe_activations(params = {}, options = {})
      request = build_request(:describe_activations, params)
      request.send_request(options)
    end

    # <p>Describes the association for the specified target or managed node. If you created the
    #    association by using the <code>Targets</code> parameter, then you must retrieve the association
    #    by using the association ID.</p>
    # @param [Hash, Types::DescribeAssociationRequest] params
    # @option params [String] :name
    #   <p>The name of the SSM document.</p>
    # @option params [String] :instance_id
    #   <p>The managed node ID.</p>
    # @option params [String] :association_id
    #   <p>The association ID for which you want information.</p>
    # @option params [String] :association_version
    #   <p>Specify the association version to retrieve. To view the latest version, either specify
    #       <code>$LATEST</code> for this parameter, or omit this parameter. To view a list of all
    #      associations for a managed node, use <a>ListAssociations</a>. To get a list of
    #      versions for a specific association, use <a>ListAssociationVersions</a>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DocumentARN",
    #     instance_id: "InstanceId",
    #     association_id: "AssociationId",
    #     association_version: "AssociationVersion"
    #   }
    #   options = {}
    #   response = client.describe_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association_description: {
    #       name: "DocumentARN",
    #       instance_id: "InstanceId",
    #       association_version: "AssociationVersion",
    #       date: Time.now,
    #       last_update_association_date: Time.now,
    #       status: {
    #         date: Time.now, # required
    #         name: "Pending" # One of: ["Pending", "Success", "Failed"], # required
    #         message: "StatusMessage", # required
    #         additional_info: "StatusAdditionalInfo"
    #       },
    #       overview: {
    #         status: "StatusName",
    #         detailed_status: "StatusName",
    #         association_status_aggregated_count: {
    #           "StatusName" => 1
    #         }
    #       },
    #       document_version: "DocumentVersion",
    #       automation_target_parameter_name: "AutomationTargetParameterName",
    #       parameters: {
    #         "ParameterName" => ["ParameterValue"]
    #       },
    #       association_id: "AssociationId",
    #       targets: [
    #         {
    #           key: "TargetKey",
    #           values: ["TargetValue"]
    #         }
    #       ],
    #       schedule_expression: "ScheduleExpression",
    #       output_location: {
    #         s3_location: {
    #           output_s3_region: "S3Region",
    #           output_s3_bucket_name: "S3BucketName",
    #           output_s3_key_prefix: "S3KeyPrefix"
    #         }
    #       },
    #       last_execution_date: Time.now,
    #       last_successful_execution_date: Time.now,
    #       association_name: "AssociationName",
    #       max_errors: "MaxErrors",
    #       max_concurrency: "MaxConcurrency",
    #       compliance_severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"],
    #       sync_compliance: "AUTO" # One of: ["AUTO", "MANUAL"],
    #       apply_only_at_cron_interval: false,
    #       calendar_names: ["CalendarNameOrARN"],
    #       target_locations: [
    #         {
    #           accounts: ["Account"],
    #           regions: ["Region"],
    #           target_location_max_concurrency: "MaxConcurrency",
    #           target_location_max_errors: "MaxErrors",
    #           execution_role_name: "ExecutionRoleName",
    #           target_location_alarm_configuration: {
    #             ignore_poll_alarm_failure: false,
    #             alarms: [ # required
    #               {
    #                 name: "AlarmName", # required
    #               }
    #             ]
    #           },
    #           include_child_organization_units: false,
    #           exclude_accounts: ["ExcludeAccount"],
    #           targets: [
    #             {
    #               key: "TargetKey",
    #               values: ["TargetValue"]
    #             }
    #           ],
    #           targets_max_concurrency: "MaxConcurrency",
    #           targets_max_errors: "MaxErrors"
    #         }
    #       ],
    #       schedule_offset: 1,
    #       duration: 1,
    #       target_maps: [
    #         {
    #           "TargetMapKey" => ["TargetMapValue"]
    #         }
    #       ],
    #       alarm_configuration: {
    #         ignore_poll_alarm_failure: false,
    #         alarms: [ # required
    #           {
    #             name: "AlarmName", # required
    #           }
    #         ]
    #       },
    #       triggered_alarms: [
    #         {
    #           name: "AlarmName", # required
    #           state: "UNKNOWN" # One of: ["UNKNOWN", "ALARM"], # required
    #         }
    #       ],
    #       association_dispatch_assume_role: "AssociationDispatchAssumeRoleArn"
    #     }
    #   }
    # @return [Types::DescribeAssociationResult]
    def describe_association(params = {}, options = {})
      request = build_request(:describe_association, params)
      request.send_request(options)
    end

    # <p>Views information about a specific execution of a specific association.</p>
    # @param [Hash, Types::DescribeAssociationExecutionTargetsRequest] params
    # @option params [String] :association_id
    #   <p>The association ID that includes the execution for which you want to view details.</p>
    # @option params [String] :execution_id
    #   <p>The execution ID for which you want to view details.</p>
    # @option params [Array<Types::AssociationExecutionTargetsFilter>] :filters
    #   <p>Filters for the request. You can specify the following filters and values.</p>
    #            <p>Status (EQUAL)</p>
    #            <p>ResourceId (EQUAL)</p>
    #            <p>ResourceType (EQUAL)</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     association_id: "AssociationId", # required
    #     execution_id: "AssociationExecutionId", # required
    #     filters: [
    #       {
    #         key: "Status" # One of: ["Status", "ResourceId", "ResourceType"], # required
    #         value: "AssociationExecutionTargetsFilterValue", # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_association_execution_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association_execution_targets: [
    #       {
    #         association_id: "AssociationId",
    #         association_version: "AssociationVersion",
    #         execution_id: "AssociationExecutionId",
    #         resource_id: "AssociationResourceId",
    #         resource_type: "AssociationResourceType",
    #         status: "StatusName",
    #         detailed_status: "StatusName",
    #         last_execution_date: Time.now,
    #         output_source: {
    #           output_source_id: "OutputSourceId",
    #           output_source_type: "OutputSourceType"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeAssociationExecutionTargetsResult]
    def describe_association_execution_targets(params = {}, options = {})
      request = build_request(:describe_association_execution_targets, params)
      request.send_request(options)
    end

    # <p>Views all executions for a specific association ID. </p>
    # @param [Hash, Types::DescribeAssociationExecutionsRequest] params
    # @option params [String] :association_id
    #   <p>The association ID for which you want to view execution history details.</p>
    # @option params [Array<Types::AssociationExecutionFilter>] :filters
    #   <p>Filters for the request. You can specify the following filters and values.</p>
    #            <p>ExecutionId (EQUAL)</p>
    #            <p>Status (EQUAL)</p>
    #            <p>CreatedTime (EQUAL, GREATER_THAN, LESS_THAN)</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     association_id: "AssociationId", # required
    #     filters: [
    #       {
    #         key: "ExecutionId" # One of: ["ExecutionId", "Status", "CreatedTime"], # required
    #         value: "AssociationExecutionFilterValue", # required
    #         type: "EQUAL" # One of: ["EQUAL", "LESS_THAN", "GREATER_THAN"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_association_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association_executions: [
    #       {
    #         association_id: "AssociationId",
    #         association_version: "AssociationVersion",
    #         execution_id: "AssociationExecutionId",
    #         status: "StatusName",
    #         detailed_status: "StatusName",
    #         created_time: Time.now,
    #         last_execution_date: Time.now,
    #         resource_count_by_status: "ResourceCountByStatus",
    #         alarm_configuration: {
    #           ignore_poll_alarm_failure: false,
    #           alarms: [ # required
    #             {
    #               name: "AlarmName", # required
    #             }
    #           ]
    #         },
    #         triggered_alarms: [
    #           {
    #             name: "AlarmName", # required
    #             state: "UNKNOWN" # One of: ["UNKNOWN", "ALARM"], # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeAssociationExecutionsResult]
    def describe_association_executions(params = {}, options = {})
      request = build_request(:describe_association_executions, params)
      request.send_request(options)
    end

    # <p>Provides details about all active and terminated Automation executions.</p>
    # @param [Hash, Types::DescribeAutomationExecutionsRequest] params
    # @option params [Array<Types::AutomationExecutionFilter>] :filters
    #   <p>Filters used to limit the scope of executions that are requested.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         key: "DocumentNamePrefix" # One of: ["DocumentNamePrefix", "ExecutionStatus", "ExecutionId", "ParentExecutionId", "CurrentAction", "StartTimeBefore", "StartTimeAfter", "AutomationType", "TagKey", "TargetResourceGroup", "AutomationSubtype", "OpsItemId"], # required
    #         values: ["AutomationExecutionFilterValue"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_automation_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     automation_execution_metadata_list: [
    #       {
    #         automation_execution_id: "AutomationExecutionId",
    #         document_name: "DocumentName",
    #         document_version: "DocumentVersion",
    #         automation_execution_status: "Pending" # One of: ["Pending", "InProgress", "Waiting", "Success", "TimedOut", "Cancelling", "Cancelled", "Failed", "PendingApproval", "Approved", "Rejected", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "CompletedWithSuccess", "CompletedWithFailure", "Exited"],
    #         execution_start_time: Time.now,
    #         execution_end_time: Time.now,
    #         executed_by: "String",
    #         log_file: "String",
    #         outputs: {
    #           "AutomationParameterKey" => ["AutomationParameterValue"]
    #         },
    #         mode: "Auto" # One of: ["Auto", "Interactive"],
    #         parent_automation_execution_id: "AutomationExecutionId",
    #         current_step_name: "String",
    #         current_action: "String",
    #         failure_message: "String",
    #         warning_message: "String",
    #         target_parameter_name: "AutomationParameterKey",
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"]
    #           }
    #         ],
    #         target_maps: [
    #           {
    #             "TargetMapKey" => ["TargetMapValue"]
    #           }
    #         ],
    #         resolved_targets: {
    #           parameter_values: ["ParameterValue"],
    #           truncated: false
    #         },
    #         max_concurrency: "MaxConcurrency",
    #         max_errors: "MaxErrors",
    #         target: "String",
    #         automation_type: "CrossAccount" # One of: ["CrossAccount", "Local"],
    #         alarm_configuration: {
    #           ignore_poll_alarm_failure: false,
    #           alarms: [ # required
    #             {
    #               name: "AlarmName", # required
    #             }
    #           ]
    #         },
    #         triggered_alarms: [
    #           {
    #             name: "AlarmName", # required
    #             state: "UNKNOWN" # One of: ["UNKNOWN", "ALARM"], # required
    #           }
    #         ],
    #         target_locations_url: "TargetLocationsURL",
    #         automation_subtype: "ChangeRequest" # One of: ["ChangeRequest", "AccessRequest"],
    #         scheduled_time: Time.now,
    #         runbooks: [
    #           {
    #             document_name: "DocumentARN", # required
    #             document_version: "DocumentVersion",
    #             parameters: {
    #               "AutomationParameterKey" => ["AutomationParameterValue"]
    #             },
    #             target_parameter_name: "AutomationParameterKey",
    #             targets: [
    #               {
    #                 key: "TargetKey",
    #                 values: ["TargetValue"]
    #               }
    #             ],
    #             target_maps: [
    #               {
    #                 "TargetMapKey" => ["TargetMapValue"]
    #               }
    #             ],
    #             max_concurrency: "MaxConcurrency",
    #             max_errors: "MaxErrors",
    #             target_locations: [
    #               {
    #                 accounts: ["Account"],
    #                 regions: ["Region"],
    #                 target_location_max_concurrency: "MaxConcurrency",
    #                 target_location_max_errors: "MaxErrors",
    #                 execution_role_name: "ExecutionRoleName",
    #                 target_location_alarm_configuration: {
    #                   ignore_poll_alarm_failure: false,
    #                   alarms: [ # required
    #                     {
    #                       name: "AlarmName", # required
    #                     }
    #                   ]
    #                 },
    #                 include_child_organization_units: false,
    #                 exclude_accounts: ["ExcludeAccount"],
    #                 targets: [
    #                   {
    #                     key: "TargetKey",
    #                     values: ["TargetValue"]
    #                   }
    #                 ],
    #                 targets_max_concurrency: "MaxConcurrency",
    #                 targets_max_errors: "MaxErrors"
    #               }
    #             ]
    #           }
    #         ],
    #         ops_item_id: "String",
    #         association_id: "String",
    #         change_request_name: "ChangeRequestName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeAutomationExecutionsResult]
    def describe_automation_executions(params = {}, options = {})
      request = build_request(:describe_automation_executions, params)
      request.send_request(options)
    end

    # <p>Information about all active and terminated step executions in an Automation
    #    workflow.</p>
    # @param [Hash, Types::DescribeAutomationStepExecutionsRequest] params
    # @option params [String] :automation_execution_id
    #   <p>The Automation execution ID for which you want step execution descriptions.</p>
    # @option params [Array<Types::StepExecutionFilter>] :filters
    #   <p>One or more filters to limit the number of step executions returned by the request.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [Boolean] :reverse_order
    #   <p>Indicates whether to list step executions in reverse order by start time. The default value
    #      is 'false'.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     automation_execution_id: "AutomationExecutionId", # required
    #     filters: [
    #       {
    #         key: "StartTimeBefore" # One of: ["StartTimeBefore", "StartTimeAfter", "StepExecutionStatus", "StepExecutionId", "StepName", "Action", "ParentStepExecutionId", "ParentStepIteration", "ParentStepIteratorValue"], # required
    #         values: ["StepExecutionFilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     reverse_order: false
    #   }
    #   options = {}
    #   response = client.describe_automation_step_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     step_executions: [
    #       {
    #         step_name: "String",
    #         action: "AutomationActionName",
    #         timeout_seconds: 1,
    #         on_failure: "String",
    #         max_attempts: 1,
    #         execution_start_time: Time.now,
    #         execution_end_time: Time.now,
    #         step_status: "Pending" # One of: ["Pending", "InProgress", "Waiting", "Success", "TimedOut", "Cancelling", "Cancelled", "Failed", "PendingApproval", "Approved", "Rejected", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "CompletedWithSuccess", "CompletedWithFailure", "Exited"],
    #         response_code: "String",
    #         inputs: {
    #           "String" => "String"
    #         },
    #         outputs: {
    #           "AutomationParameterKey" => ["AutomationParameterValue"]
    #         },
    #         response: "String",
    #         failure_message: "String",
    #         warning_message: "String",
    #         failure_details: {
    #           failure_stage: "String",
    #           failure_type: "String",
    #           details: {
    #             "AutomationParameterKey" => ["AutomationParameterValue"]
    #           }
    #         },
    #         step_execution_id: "String",
    #         overridden_parameters: {
    #           "AutomationParameterKey" => ["AutomationParameterValue"]
    #         },
    #         is_end: false,
    #         next_step: "String",
    #         is_critical: false,
    #         valid_next_steps: ["ValidNextStep"],
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"]
    #           }
    #         ],
    #         target_location: {
    #           accounts: ["Account"],
    #           regions: ["Region"],
    #           target_location_max_concurrency: "MaxConcurrency",
    #           target_location_max_errors: "MaxErrors",
    #           execution_role_name: "ExecutionRoleName",
    #           target_location_alarm_configuration: {
    #             ignore_poll_alarm_failure: false,
    #             alarms: [ # required
    #               {
    #                 name: "AlarmName", # required
    #               }
    #             ]
    #           },
    #           include_child_organization_units: false,
    #           exclude_accounts: ["ExcludeAccount"],
    #           targets: [
    #             {
    #               key: "TargetKey",
    #               values: ["TargetValue"]
    #             }
    #           ],
    #           targets_max_concurrency: "MaxConcurrency",
    #           targets_max_errors: "MaxErrors"
    #         },
    #         triggered_alarms: [
    #           {
    #             name: "AlarmName", # required
    #             state: "UNKNOWN" # One of: ["UNKNOWN", "ALARM"], # required
    #           }
    #         ],
    #         parent_step_details: {
    #           step_execution_id: "String",
    #           step_name: "String",
    #           action: "AutomationActionName",
    #           iteration: 1,
    #           iterator_value: "String"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeAutomationStepExecutionsResult]
    def describe_automation_step_executions(params = {}, options = {})
      request = build_request(:describe_automation_step_executions, params)
      request.send_request(options)
    end

    # <p>Lists all patches eligible to be included in a patch baseline.</p>
    #          <note>
    #             <p>Currently, <code>DescribeAvailablePatches</code> supports only the Amazon Linux 1, Amazon
    #     Linux 2, and Windows Server operating systems.</p>
    #          </note>
    # @param [Hash, Types::DescribeAvailablePatchesRequest] params
    # @option params [Array<Types::PatchOrchestratorFilter>] :filters
    #   <p>Each element in the array is a structure containing a key-value pair.</p>
    #            <p>
    #               <b>Windows Server</b>
    #            </p>
    #            <p>Supported keys for Windows Server managed node patches include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>PATCH_SET</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>OS</code> | <code>APPLICATION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>PRODUCT</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>WindowsServer2012</code> | <code>Office 2010</code> |
    #         <code>MicrosoftDefenderAntivirus</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>PRODUCT_FAMILY</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>Windows</code> | <code>Office</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>MSRC_SEVERITY</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>ServicePacks</code> | <code>Important</code> | <code>Moderate</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>CLASSIFICATION</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>ServicePacks</code> | <code>SecurityUpdates</code> |
    #         <code>DefinitionUpdates</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>PATCH_ID</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>KB123456</code> | <code>KB4516046</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Linux</b>
    #            </p>
    #            <important>
    #               <p>When specifying filters for Linux patches, you must specify a key-pair for
    #        <code>PRODUCT</code>. For example, using the Command Line Interface (CLI), the
    #       following command fails:</p>
    #               <p>
    #                  <code>aws ssm describe-available-patches --filters Key=CVE_ID,Values=CVE-2018-3615</code>
    #               </p>
    #               <p>However, the following command succeeds:</p>
    #               <p>
    #                  <code>aws ssm describe-available-patches --filters Key=PRODUCT,Values=AmazonLinux2018.03
    #        Key=CVE_ID,Values=CVE-2018-3615</code>
    #               </p>
    #            </important>
    #            <p>Supported keys for Linux managed node patches include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>PRODUCT</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>AmazonLinux2018.03</code> | <code>AmazonLinux2.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NAME</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>kernel-headers</code> | <code>samba-python</code> | <code>php</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>SEVERITY</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>Critical</code> | <code>Important</code> | <code>Medium</code> |
    #         <code>Low</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>EPOCH</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>0</code> | <code>1</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>VERSION</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>78.6.1</code> | <code>4.10.16</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>RELEASE</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>9.56.amzn1</code> | <code>1.amzn2</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>ARCH</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>i686</code> | <code>x86_64</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>REPOSITORY</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>Core</code> | <code>Updates</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>ADVISORY_ID</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>ALAS-2018-1058</code> | <code>ALAS2-2021-1594</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>CVE_ID</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>CVE-2018-3615</code> | <code>CVE-2020-1472</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>BUGZILLA_ID</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>1463241</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of patches to return (per page).</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         key: "PatchOrchestratorFilterKey",
    #         values: ["PatchOrchestratorFilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_available_patches(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     patches: [
    #       {
    #         id: "PatchId",
    #         release_date: Time.now,
    #         title: "PatchTitle",
    #         description: "PatchDescription",
    #         content_url: "PatchContentUrl",
    #         vendor: "PatchVendor",
    #         product_family: "PatchProductFamily",
    #         product: "PatchProduct",
    #         classification: "PatchClassification",
    #         msrc_severity: "PatchMsrcSeverity",
    #         kb_number: "PatchKbNumber",
    #         msrc_number: "PatchMsrcNumber",
    #         language: "PatchLanguage",
    #         advisory_ids: ["PatchAdvisoryId"],
    #         bugzilla_ids: ["PatchBugzillaId"],
    #         cve_ids: ["PatchCVEId"],
    #         name: "PatchName",
    #         epoch: 1,
    #         version: "PatchVersion",
    #         release: "PatchRelease",
    #         arch: "PatchArch",
    #         severity: "PatchSeverity",
    #         repository: "PatchRepository"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeAvailablePatchesResult]
    def describe_available_patches(params = {}, options = {})
      request = build_request(:describe_available_patches, params)
      request.send_request(options)
    end

    # <p>Describes the specified Amazon Web Services Systems Manager document (SSM document).</p>
    # @param [Hash, Types::DescribeDocumentRequest] params
    # @option params [String] :name
    #   <p>The name of the SSM document.</p>
    #            <note>
    #               <p>If you're calling a shared SSM document from a different Amazon Web Services account,
    #        <code>Name</code> is the full Amazon Resource Name (ARN) of the document.</p>
    #            </note>
    # @option params [String] :document_version
    #   <p>The document version for which you want information. Can be a specific version or the
    #      default version.</p>
    # @option params [String] :version_name
    #   <p>An optional field specifying the version of the artifact associated with the document. For
    #      example, 12.6. This value is unique across all versions of a document, and can't be
    #      changed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DocumentARN", # required
    #     document_version: "DocumentVersion",
    #     version_name: "DocumentVersionName"
    #   }
    #   options = {}
    #   response = client.describe_document(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document: {
    #       sha1: "DocumentSha1",
    #       hash: "DocumentHash",
    #       hash_type: "Sha256" # One of: ["Sha256", "Sha1"],
    #       name: "DocumentARN",
    #       display_name: "DocumentDisplayName",
    #       version_name: "DocumentVersionName",
    #       owner: "DocumentOwner",
    #       created_date: Time.now,
    #       status: "Creating" # One of: ["Creating", "Active", "Updating", "Deleting", "Failed"],
    #       status_information: "DocumentStatusInformation",
    #       document_version: "DocumentVersion",
    #       description: "DescriptionInDocument",
    #       parameters: [
    #         {
    #           name: "DocumentParameterName",
    #           type: "String" # One of: ["String", "StringList"],
    #           description: "DocumentParameterDescrption",
    #           default_value: "DocumentParameterDefaultValue"
    #         }
    #       ],
    #       platform_types: ["Windows" # One of: ["Windows", "Linux", "MacOS"]],
    #       document_type: "Command" # One of: ["Command", "Policy", "Automation", "Session", "Package", "ApplicationConfiguration", "ApplicationConfigurationSchema", "DeploymentStrategy", "ChangeCalendar", "Automation.ChangeTemplate", "ProblemAnalysis", "ProblemAnalysisTemplate", "CloudFormation", "ConformancePackTemplate", "QuickSetup", "ManualApprovalPolicy", "AutoApprovalPolicy"],
    #       schema_version: "DocumentSchemaVersion",
    #       latest_version: "DocumentVersion",
    #       default_version: "DocumentVersion",
    #       document_format: "YAML" # One of: ["YAML", "JSON", "TEXT"],
    #       target_type: "TargetType",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       attachments_information: [
    #         {
    #           name: "AttachmentName"
    #         }
    #       ],
    #       requires: [
    #         {
    #           name: "DocumentARN", # required
    #           version: "DocumentVersion",
    #           require_type: "RequireType",
    #           version_name: "DocumentVersionName"
    #         }
    #       ],
    #       author: "DocumentAuthor",
    #       review_information: [
    #         {
    #           reviewed_time: Time.now,
    #           status: "APPROVED" # One of: ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"],
    #           reviewer: "Reviewer"
    #         }
    #       ],
    #       approved_version: "DocumentVersion",
    #       pending_review_version: "DocumentVersion",
    #       review_status: "APPROVED" # One of: ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"],
    #       category: ["Category"],
    #       category_enum: ["Category"]
    #     }
    #   }
    # @return [Types::DescribeDocumentResult]
    def describe_document(params = {}, options = {})
      request = build_request(:describe_document, params)
      request.send_request(options)
    end

    # <p>Describes the permissions for a Amazon Web Services Systems Manager document (SSM document). If you created the
    #    document, you are the owner. If a document is shared, it can either be shared privately (by
    #    specifying a user's Amazon Web Services account ID) or publicly (<i>All</i>). </p>
    # @param [Hash, Types::DescribeDocumentPermissionRequest] params
    # @option params [String] :name
    #   <p>The name of the document for which you are the owner. </p>
    # @option params [String] :permission_type
    #   <p>The permission type for the document. The permission type can be
    #      <i>Share</i>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DocumentName", # required
    #     permission_type: "Share" # One of: ["Share"], # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_document_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_ids: ["AccountId"],
    #     account_sharing_info_list: [
    #       {
    #         account_id: "AccountId",
    #         shared_document_version: "SharedDocumentVersion"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeDocumentPermissionResponse]
    def describe_document_permission(params = {}, options = {})
      request = build_request(:describe_document_permission, params)
      request.send_request(options)
    end

    # <p>All associations for the managed nodes.</p>
    # @param [Hash, Types::DescribeEffectiveInstanceAssociationsRequest] params
    # @option params [String] :instance_id
    #   <p>The managed node ID for which you want to view all associations.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_effective_instance_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     associations: [
    #       {
    #         association_id: "AssociationId",
    #         instance_id: "InstanceId",
    #         content: "DocumentContent",
    #         association_version: "AssociationVersion"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeEffectiveInstanceAssociationsResult]
    def describe_effective_instance_associations(params = {}, options = {})
      request = build_request(:describe_effective_instance_associations, params)
      request.send_request(options)
    end

    # <p>Retrieves the current effective patches (the patch and the approval state) for the specified
    #    patch baseline. Applies to patch baselines for Windows only.</p>
    # @param [Hash, Types::DescribeEffectivePatchesForPatchBaselineRequest] params
    # @option params [String] :baseline_id
    #   <p>The ID of the patch baseline to retrieve the effective patches for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of patches to return (per page).</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     baseline_id: "BaselineId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_effective_patches_for_patch_baseline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     effective_patches: [
    #       {
    #         patch: {
    #           id: "PatchId",
    #           release_date: Time.now,
    #           title: "PatchTitle",
    #           description: "PatchDescription",
    #           content_url: "PatchContentUrl",
    #           vendor: "PatchVendor",
    #           product_family: "PatchProductFamily",
    #           product: "PatchProduct",
    #           classification: "PatchClassification",
    #           msrc_severity: "PatchMsrcSeverity",
    #           kb_number: "PatchKbNumber",
    #           msrc_number: "PatchMsrcNumber",
    #           language: "PatchLanguage",
    #           advisory_ids: ["PatchAdvisoryId"],
    #           bugzilla_ids: ["PatchBugzillaId"],
    #           cve_ids: ["PatchCVEId"],
    #           name: "PatchName",
    #           epoch: 1,
    #           version: "PatchVersion",
    #           release: "PatchRelease",
    #           arch: "PatchArch",
    #           severity: "PatchSeverity",
    #           repository: "PatchRepository"
    #         },
    #         patch_status: {
    #           deployment_status: "APPROVED" # One of: ["APPROVED", "PENDING_APPROVAL", "EXPLICIT_APPROVED", "EXPLICIT_REJECTED"],
    #           compliance_level: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"],
    #           approval_date: Time.now
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeEffectivePatchesForPatchBaselineResult]
    def describe_effective_patches_for_patch_baseline(params = {}, options = {})
      request = build_request(:describe_effective_patches_for_patch_baseline, params)
      request.send_request(options)
    end

    # <p>The status of the associations for the managed nodes.</p>
    # @param [Hash, Types::DescribeInstanceAssociationsStatusRequest] params
    # @option params [String] :instance_id
    #   <p>The managed node IDs for which you want association status information.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_instance_associations_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_association_status_infos: [
    #       {
    #         association_id: "AssociationId",
    #         name: "DocumentARN",
    #         document_version: "DocumentVersion",
    #         association_version: "AssociationVersion",
    #         instance_id: "InstanceId",
    #         execution_date: Time.now,
    #         status: "StatusName",
    #         detailed_status: "StatusName",
    #         execution_summary: "InstanceAssociationExecutionSummary",
    #         error_code: "AgentErrorCode",
    #         output_url: {
    #           s3_output_url: {
    #             output_url: "Url"
    #           }
    #         },
    #         association_name: "AssociationName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeInstanceAssociationsStatusResult]
    def describe_instance_associations_status(params = {}, options = {})
      request = build_request(:describe_instance_associations_status, params)
      request.send_request(options)
    end

    # <p>Provides information about one or more of your managed nodes, including the operating system
    #    platform, SSM Agent version, association status, and IP address. This operation does not return
    #    information for nodes that are either Stopped or Terminated.</p>
    #          <p>If you specify one or more node IDs, the operation returns information for those managed
    #    nodes. If you don't specify node IDs, it returns information for all your managed nodes. If you
    #    specify a node ID that isn't valid or a node that you don't own, you receive an error.</p>
    #          <note>
    #             <p>The <code>IamRole</code> field returned for this API operation is the role assigned to an
    #     Amazon EC2 instance configured with a Systems Manager Quick Setup host management configuration or
    #     the role assigned to an on-premises managed node.</p>
    #          </note>
    # @param [Hash, Types::DescribeInstanceInformationRequest] params
    # @option params [Array<Types::InstanceInformationFilter>] :instance_information_filter_list
    #   <p>This is a legacy method. We recommend that you don't use this method. Instead, use the
    #       <code>Filters</code> data type. <code>Filters</code> enables you to return node information by
    #      filtering based on tags applied to managed nodes.</p>
    #            <note>
    #               <p>Attempting to use <code>InstanceInformationFilterList</code> and <code>Filters</code> leads
    #       to an exception error. </p>
    #            </note>
    # @option params [Array<Types::InstanceInformationStringFilter>] :filters
    #   <p>One or more filters. Use a filter to return a more specific list of managed nodes. You can
    #      filter based on tags applied to your managed nodes. Tag filters can't be combined with other
    #      filter types. Use this <code>Filters</code> data type instead of
    #       <code>InstanceInformationFilterList</code>, which is deprecated.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results. The default value is 10 items.
    #     </p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_information_filter_list: [
    #       {
    #         key: "InstanceIds" # One of: ["InstanceIds", "AgentVersion", "PingStatus", "PlatformTypes", "ActivationIds", "IamRole", "ResourceType", "AssociationStatus"], # required
    #         value_set: ["InstanceInformationFilterValue"], # required
    #       }
    #     ],
    #     filters: [
    #       {
    #         key: "InstanceInformationStringFilterKey", # required
    #         values: ["InstanceInformationFilterValue"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_instance_information(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_information_list: [
    #       {
    #         instance_id: "InstanceId",
    #         ping_status: "Online" # One of: ["Online", "ConnectionLost", "Inactive"],
    #         last_ping_date_time: Time.now,
    #         agent_version: "Version",
    #         is_latest_version: false,
    #         platform_type: "Windows" # One of: ["Windows", "Linux", "MacOS"],
    #         platform_name: "String",
    #         platform_version: "String",
    #         activation_id: "ActivationId",
    #         iam_role: "IamRole",
    #         registration_date: Time.now,
    #         resource_type: "ManagedInstance" # One of: ["ManagedInstance", "EC2Instance"],
    #         name: "String",
    #         ip_address: "IPAddress",
    #         computer_name: "ComputerName",
    #         association_status: "StatusName",
    #         last_association_execution_date: Time.now,
    #         last_successful_association_execution_date: Time.now,
    #         association_overview: {
    #           detailed_status: "StatusName",
    #           instance_association_status_aggregated_count: {
    #             "StatusName" => 1
    #           }
    #         },
    #         source_id: "SourceId",
    #         source_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::IoT::Thing", "AWS::SSM::ManagedInstance", "Microsoft.Compute/virtualMachines"],
    #         source_location: "SourceLocation"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeInstanceInformationResult]
    def describe_instance_information(params = {}, options = {})
      request = build_request(:describe_instance_information, params)
      request.send_request(options)
    end

    # <p>Retrieves the high-level patch state of one or more managed nodes.</p>
    # @param [Hash, Types::DescribeInstancePatchStatesRequest] params
    # @option params [Array<String>] :instance_ids
    #   <p>The ID of the managed node for which patch state information should be retrieved.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of managed nodes to return (per page).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_ids: ["InstanceId"], # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_instance_patch_states(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_patch_states: [
    #       {
    #         instance_id: "InstanceId", # required
    #         patch_group: "PatchGroup", # required
    #         baseline_id: "BaselineId", # required
    #         snapshot_id: "SnapshotId",
    #         install_override_list: "InstallOverrideList",
    #         owner_information: "OwnerInformation",
    #         installed_count: 1,
    #         installed_other_count: 1,
    #         installed_pending_reboot_count: 1,
    #         installed_rejected_count: 1,
    #         missing_count: 1,
    #         failed_count: 1,
    #         unreported_not_applicable_count: 1,
    #         not_applicable_count: 1,
    #         available_security_update_count: 1,
    #         operation_start_time: Time.now, # required
    #         operation_end_time: Time.now, # required
    #         operation: "Scan" # One of: ["Scan", "Install"], # required
    #         last_no_reboot_install_operation_time: Time.now,
    #         reboot_option: "RebootIfNeeded" # One of: ["RebootIfNeeded", "NoReboot"],
    #         critical_non_compliant_count: 1,
    #         security_non_compliant_count: 1,
    #         other_non_compliant_count: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeInstancePatchStatesResult]
    def describe_instance_patch_states(params = {}, options = {})
      request = build_request(:describe_instance_patch_states, params)
      request.send_request(options)
    end

    # <p>Retrieves the high-level patch state for the managed nodes in the specified patch
    #    group.</p>
    # @param [Hash, Types::DescribeInstancePatchStatesForPatchGroupRequest] params
    # @option params [String] :patch_group
    #   <p>The name of the patch group for which the patch state information should be
    #      retrieved.</p>
    # @option params [Array<Types::InstancePatchStateFilter>] :filters
    #   <p>Each entry in the array is a structure containing:</p>
    #            <ul>
    #               <li>
    #                  <p>Key (string between 1 and 200 characters)</p>
    #               </li>
    #               <li>
    #                  <p>Values (array containing a single string)</p>
    #               </li>
    #               <li>
    #                  <p>Type (string "Equal", "NotEqual", "LessThan", "GreaterThan")</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of patches to return (per page).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     patch_group: "PatchGroup", # required
    #     filters: [
    #       {
    #         key: "InstancePatchStateFilterKey", # required
    #         values: ["InstancePatchStateFilterValue"], # required
    #         type: "Equal" # One of: ["Equal", "NotEqual", "LessThan", "GreaterThan"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_instance_patch_states_for_patch_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_patch_states: [
    #       {
    #         instance_id: "InstanceId", # required
    #         patch_group: "PatchGroup", # required
    #         baseline_id: "BaselineId", # required
    #         snapshot_id: "SnapshotId",
    #         install_override_list: "InstallOverrideList",
    #         owner_information: "OwnerInformation",
    #         installed_count: 1,
    #         installed_other_count: 1,
    #         installed_pending_reboot_count: 1,
    #         installed_rejected_count: 1,
    #         missing_count: 1,
    #         failed_count: 1,
    #         unreported_not_applicable_count: 1,
    #         not_applicable_count: 1,
    #         available_security_update_count: 1,
    #         operation_start_time: Time.now, # required
    #         operation_end_time: Time.now, # required
    #         operation: "Scan" # One of: ["Scan", "Install"], # required
    #         last_no_reboot_install_operation_time: Time.now,
    #         reboot_option: "RebootIfNeeded" # One of: ["RebootIfNeeded", "NoReboot"],
    #         critical_non_compliant_count: 1,
    #         security_non_compliant_count: 1,
    #         other_non_compliant_count: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeInstancePatchStatesForPatchGroupResult]
    def describe_instance_patch_states_for_patch_group(params = {}, options = {})
      request = build_request(:describe_instance_patch_states_for_patch_group, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the patches on the specified managed node and their state
    #    relative to the patch baseline being used for the node.</p>
    # @param [Hash, Types::DescribeInstancePatchesRequest] params
    # @option params [String] :instance_id
    #   <p>The ID of the managed node whose patch state information should be retrieved.</p>
    # @option params [Array<Types::PatchOrchestratorFilter>] :filters
    #   <p>Each element in the array is a structure containing a key-value pair.</p>
    #            <p>Supported keys for <code>DescribeInstancePatches</code>include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Classification</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>Security</code> | <code>SecurityUpdates</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>KBId</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>KB4480056</code> | <code>java-1.7.0-openjdk.x86_64</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>Severity</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>Important</code> | <code>Medium</code> | <code>Low</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>State</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>Installed</code> | <code>InstalledOther</code> |
    #         <code>InstalledPendingReboot</code>
    #                  </p>
    #                  <p>For lists of all <code>State</code> values, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-compliance-states.html">Patch compliance
    #         state values</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of patches to return (per page).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     filters: [
    #       {
    #         key: "PatchOrchestratorFilterKey",
    #         values: ["PatchOrchestratorFilterValue"]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_instance_patches(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     patches: [
    #       {
    #         title: "PatchTitle", # required
    #         kb_id: "PatchKbNumber", # required
    #         classification: "PatchClassification", # required
    #         severity: "PatchSeverity", # required
    #         state: "INSTALLED" # One of: ["INSTALLED", "INSTALLED_OTHER", "INSTALLED_PENDING_REBOOT", "INSTALLED_REJECTED", "MISSING", "NOT_APPLICABLE", "FAILED", "AVAILABLE_SECURITY_UPDATE"], # required
    #         installed_time: Time.now, # required
    #         cve_ids: "PatchCVEIds"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeInstancePatchesResult]
    def describe_instance_patches(params = {}, options = {})
      request = build_request(:describe_instance_patches, params)
      request.send_request(options)
    end

    # <p>An API operation used by the Systems Manager console to display information about Systems Manager managed
    #    nodes.</p>
    # @param [Hash, Types::DescribeInstancePropertiesRequest] params
    # @option params [Array<Types::InstancePropertyFilter>] :instance_property_filter_list
    #   <p>An array of instance property filters.</p>
    # @option params [Array<Types::InstancePropertyStringFilter>] :filters_with_operator
    #   <p>The request filters to use with the operator.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for the call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token provided by a previous request to use to return the next set of properties.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_property_filter_list: [
    #       {
    #         key: "InstanceIds" # One of: ["InstanceIds", "AgentVersion", "PingStatus", "PlatformTypes", "DocumentName", "ActivationIds", "IamRole", "ResourceType", "AssociationStatus"], # required
    #         value_set: ["InstancePropertyFilterValue"], # required
    #       }
    #     ],
    #     filters_with_operator: [
    #       {
    #         key: "InstancePropertyStringFilterKey", # required
    #         values: ["InstancePropertyFilterValue"], # required
    #         operator: "Equal" # One of: ["Equal", "NotEqual", "BeginWith", "LessThan", "GreaterThan"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_instance_properties(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_properties: [
    #       {
    #         name: "InstanceName",
    #         instance_id: "InstanceId",
    #         instance_type: "InstanceType",
    #         instance_role: "InstanceRole",
    #         key_name: "KeyName",
    #         instance_state: "InstanceState",
    #         architecture: "Architecture",
    #         ip_address: "IPAddress",
    #         launch_time: Time.now,
    #         ping_status: "Online" # One of: ["Online", "ConnectionLost", "Inactive"],
    #         last_ping_date_time: Time.now,
    #         agent_version: "Version",
    #         platform_type: "Windows" # One of: ["Windows", "Linux", "MacOS"],
    #         platform_name: "PlatformName",
    #         platform_version: "PlatformVersion",
    #         activation_id: "ActivationId",
    #         iam_role: "IamRole",
    #         registration_date: Time.now,
    #         resource_type: "String",
    #         computer_name: "ComputerName",
    #         association_status: "StatusName",
    #         last_association_execution_date: Time.now,
    #         last_successful_association_execution_date: Time.now,
    #         association_overview: {
    #           detailed_status: "StatusName",
    #           instance_association_status_aggregated_count: {
    #             "StatusName" => 1
    #           }
    #         },
    #         source_id: "SourceId",
    #         source_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::IoT::Thing", "AWS::SSM::ManagedInstance", "Microsoft.Compute/virtualMachines"],
    #         source_location: "SourceLocation",
    #         availability_zone: "AvailabilityZone"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeInstancePropertiesResult]
    def describe_instance_properties(params = {}, options = {})
      request = build_request(:describe_instance_properties, params)
      request.send_request(options)
    end

    # <p>Describes a specific delete inventory operation.</p>
    # @param [Hash, Types::DescribeInventoryDeletionsRequest] params
    # @option params [String] :deletion_id
    #   <p>Specify the delete inventory ID for which you want information. This ID was returned by the
    #       <code>DeleteInventory</code> operation.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deletion_id: "UUID",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_inventory_deletions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     inventory_deletions: [
    #       {
    #         deletion_id: "UUID",
    #         type_name: "InventoryItemTypeName",
    #         deletion_start_time: Time.now,
    #         last_status: "InProgress" # One of: ["InProgress", "Complete"],
    #         last_status_message: "InventoryDeletionLastStatusMessage",
    #         deletion_summary: {
    #           total_count: 1,
    #           remaining_count: 1,
    #           summary_items: [
    #             {
    #               version: "InventoryItemSchemaVersion",
    #               count: 1,
    #               remaining_count: 1
    #             }
    #           ]
    #         },
    #         last_status_update_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeInventoryDeletionsResult]
    def describe_inventory_deletions(params = {}, options = {})
      request = build_request(:describe_inventory_deletions, params)
      request.send_request(options)
    end

    # <p>Retrieves the individual task executions (one per target) for a particular task run as part
    #    of a maintenance window execution.</p>
    # @param [Hash, Types::DescribeMaintenanceWindowExecutionTaskInvocationsRequest] params
    # @option params [String] :window_execution_id
    #   <p>The ID of the maintenance window execution the task is part of.</p>
    # @option params [String] :task_id
    #   <p>The ID of the specific task in the maintenance window task that should be retrieved.</p>
    # @option params [Array<Types::MaintenanceWindowFilter>] :filters
    #   <p>Optional filters used to scope down the returned task invocations. The supported filter key
    #      is <code>STATUS</code> with the corresponding values <code>PENDING</code>,
    #       <code>IN_PROGRESS</code>, <code>SUCCESS</code>, <code>FAILED</code>, <code>TIMED_OUT</code>,
    #       <code>CANCELLING</code>, and <code>CANCELLED</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     window_execution_id: "MaintenanceWindowExecutionId", # required
    #     task_id: "MaintenanceWindowExecutionTaskId", # required
    #     filters: [
    #       {
    #         key: "MaintenanceWindowFilterKey",
    #         values: ["MaintenanceWindowFilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_maintenance_window_execution_task_invocations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     window_execution_task_invocation_identities: [
    #       {
    #         window_execution_id: "MaintenanceWindowExecutionId",
    #         task_execution_id: "MaintenanceWindowExecutionTaskId",
    #         invocation_id: "MaintenanceWindowExecutionTaskInvocationId",
    #         execution_id: "MaintenanceWindowExecutionTaskExecutionId",
    #         task_type: "RUN_COMMAND" # One of: ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"],
    #         parameters: "MaintenanceWindowExecutionTaskInvocationParameters",
    #         status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"],
    #         status_details: "MaintenanceWindowExecutionStatusDetails",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         owner_information: "OwnerInformation",
    #         window_target_id: "MaintenanceWindowTaskTargetId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeMaintenanceWindowExecutionTaskInvocationsResult]
    def describe_maintenance_window_execution_task_invocations(params = {}, options = {})
      request = build_request(:describe_maintenance_window_execution_task_invocations, params)
      request.send_request(options)
    end

    # <p>For a given maintenance window execution, lists the tasks that were run.</p>
    # @param [Hash, Types::DescribeMaintenanceWindowExecutionTasksRequest] params
    # @option params [String] :window_execution_id
    #   <p>The ID of the maintenance window execution whose task executions should be retrieved.</p>
    # @option params [Array<Types::MaintenanceWindowFilter>] :filters
    #   <p>Optional filters used to scope down the returned tasks. The supported filter key is
    #       <code>STATUS</code> with the corresponding values <code>PENDING</code>,
    #      <code>IN_PROGRESS</code>, <code>SUCCESS</code>, <code>FAILED</code>, <code>TIMED_OUT</code>,
    #       <code>CANCELLING</code>, and <code>CANCELLED</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     window_execution_id: "MaintenanceWindowExecutionId", # required
    #     filters: [
    #       {
    #         key: "MaintenanceWindowFilterKey",
    #         values: ["MaintenanceWindowFilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_maintenance_window_execution_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     window_execution_task_identities: [
    #       {
    #         window_execution_id: "MaintenanceWindowExecutionId",
    #         task_execution_id: "MaintenanceWindowExecutionTaskId",
    #         status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"],
    #         status_details: "MaintenanceWindowExecutionStatusDetails",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         task_arn: "MaintenanceWindowTaskArn",
    #         task_type: "RUN_COMMAND" # One of: ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"],
    #         alarm_configuration: {
    #           ignore_poll_alarm_failure: false,
    #           alarms: [ # required
    #             {
    #               name: "AlarmName", # required
    #             }
    #           ]
    #         },
    #         triggered_alarms: [
    #           {
    #             name: "AlarmName", # required
    #             state: "UNKNOWN" # One of: ["UNKNOWN", "ALARM"], # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeMaintenanceWindowExecutionTasksResult]
    def describe_maintenance_window_execution_tasks(params = {}, options = {})
      request = build_request(:describe_maintenance_window_execution_tasks, params)
      request.send_request(options)
    end

    # <p>Lists the executions of a maintenance window. This includes information about when the
    #    maintenance window was scheduled to be active, and information about tasks registered and run
    #    with the maintenance window.</p>
    # @param [Hash, Types::DescribeMaintenanceWindowExecutionsRequest] params
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window whose executions should be retrieved.</p>
    # @option params [Array<Types::MaintenanceWindowFilter>] :filters
    #   <p>Each entry in the array is a structure containing:</p>
    #            <ul>
    #               <li>
    #                  <p>Key. A string between 1 and 128 characters. Supported keys include
    #         <code>ExecutedBefore</code> and <code>ExecutedAfter</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Values. An array of strings, each between 1 and 256 characters. Supported values are
    #        date/time strings in a valid ISO 8601 date/time format, such as
    #         <code>2024-11-04T05:00:00Z</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     window_id: "MaintenanceWindowId", # required
    #     filters: [
    #       {
    #         key: "MaintenanceWindowFilterKey",
    #         values: ["MaintenanceWindowFilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_maintenance_window_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     window_executions: [
    #       {
    #         window_id: "MaintenanceWindowId",
    #         window_execution_id: "MaintenanceWindowExecutionId",
    #         status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"],
    #         status_details: "MaintenanceWindowExecutionStatusDetails",
    #         start_time: Time.now,
    #         end_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeMaintenanceWindowExecutionsResult]
    def describe_maintenance_window_executions(params = {}, options = {})
      request = build_request(:describe_maintenance_window_executions, params)
      request.send_request(options)
    end

    # <p>Retrieves information about upcoming executions of a maintenance window.</p>
    # @param [Hash, Types::DescribeMaintenanceWindowScheduleRequest] params
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window to retrieve information about.</p>
    # @option params [Array<Types::Target>] :targets
    #   <p>The managed node ID or key-value pair to retrieve information about.</p>
    # @option params [String] :resource_type
    #   <p>The type of resource you want to retrieve information about. For example,
    #       <code>INSTANCE</code>.</p>
    # @option params [Array<Types::PatchOrchestratorFilter>] :filters
    #   <p>Filters used to limit the range of results. For example, you can limit maintenance window
    #      executions to only those scheduled before or after a certain date and time.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     window_id: "MaintenanceWindowId",
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"]
    #       }
    #     ],
    #     resource_type: "INSTANCE" # One of: ["INSTANCE", "RESOURCE_GROUP"],
    #     filters: [
    #       {
    #         key: "PatchOrchestratorFilterKey",
    #         values: ["PatchOrchestratorFilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_maintenance_window_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scheduled_window_executions: [
    #       {
    #         window_id: "MaintenanceWindowId",
    #         name: "MaintenanceWindowName",
    #         execution_time: "MaintenanceWindowStringDateTime"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeMaintenanceWindowScheduleResult]
    def describe_maintenance_window_schedule(params = {}, options = {})
      request = build_request(:describe_maintenance_window_schedule, params)
      request.send_request(options)
    end

    # <p>Lists the targets registered with the maintenance window.</p>
    # @param [Hash, Types::DescribeMaintenanceWindowTargetsRequest] params
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window whose targets should be retrieved.</p>
    # @option params [Array<Types::MaintenanceWindowFilter>] :filters
    #   <p>Optional filters that can be used to narrow down the scope of the returned window targets.
    #      The supported filter keys are <code>Type</code>, <code>WindowTargetId</code>, and
    #       <code>OwnerInformation</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     window_id: "MaintenanceWindowId", # required
    #     filters: [
    #       {
    #         key: "MaintenanceWindowFilterKey",
    #         values: ["MaintenanceWindowFilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_maintenance_window_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     targets: [
    #       {
    #         window_id: "MaintenanceWindowId",
    #         window_target_id: "MaintenanceWindowTargetId",
    #         resource_type: "INSTANCE" # One of: ["INSTANCE", "RESOURCE_GROUP"],
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"]
    #           }
    #         ],
    #         owner_information: "OwnerInformation",
    #         name: "MaintenanceWindowName",
    #         description: "MaintenanceWindowDescription"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeMaintenanceWindowTargetsResult]
    def describe_maintenance_window_targets(params = {}, options = {})
      request = build_request(:describe_maintenance_window_targets, params)
      request.send_request(options)
    end

    # <p>Lists the tasks in a maintenance window.</p>
    #          <note>
    #             <p>For maintenance window tasks without a specified target, you can't supply values for
    #      <code>--max-errors</code> and <code>--max-concurrency</code>. Instead, the system inserts a
    #     placeholder value of <code>1</code>, which may be reported in the response to this command.
    #     These values don't affect the running of your task and can be ignored.</p>
    #          </note>
    # @param [Hash, Types::DescribeMaintenanceWindowTasksRequest] params
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window whose tasks should be retrieved.</p>
    # @option params [Array<Types::MaintenanceWindowFilter>] :filters
    #   <p>Optional filters used to narrow down the scope of the returned tasks. The supported filter
    #      keys are <code>WindowTaskId</code>, <code>TaskArn</code>, <code>Priority</code>, and
    #       <code>TaskType</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     window_id: "MaintenanceWindowId", # required
    #     filters: [
    #       {
    #         key: "MaintenanceWindowFilterKey",
    #         values: ["MaintenanceWindowFilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_maintenance_window_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tasks: [
    #       {
    #         window_id: "MaintenanceWindowId",
    #         window_task_id: "MaintenanceWindowTaskId",
    #         task_arn: "MaintenanceWindowTaskArn",
    #         type: "RUN_COMMAND" # One of: ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"],
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"]
    #           }
    #         ],
    #         task_parameters: {
    #           "MaintenanceWindowTaskParameterName" => {
    #             values: ["MaintenanceWindowTaskParameterValue"]
    #           }
    #         },
    #         priority: 1,
    #         logging_info: {
    #           s3_bucket_name: "S3BucketName", # required
    #           s3_key_prefix: "S3KeyPrefix",
    #           s3_region: "S3Region", # required
    #         },
    #         service_role_arn: "ServiceRole",
    #         max_concurrency: "MaxConcurrency",
    #         max_errors: "MaxErrors",
    #         name: "MaintenanceWindowName",
    #         description: "MaintenanceWindowDescription",
    #         cutoff_behavior: "CONTINUE_TASK" # One of: ["CONTINUE_TASK", "CANCEL_TASK"],
    #         alarm_configuration: {
    #           ignore_poll_alarm_failure: false,
    #           alarms: [ # required
    #             {
    #               name: "AlarmName", # required
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeMaintenanceWindowTasksResult]
    def describe_maintenance_window_tasks(params = {}, options = {})
      request = build_request(:describe_maintenance_window_tasks, params)
      request.send_request(options)
    end

    # <p>Retrieves the maintenance windows in an Amazon Web Services account.</p>
    # @param [Hash, Types::DescribeMaintenanceWindowsRequest] params
    # @option params [Array<Types::MaintenanceWindowFilter>] :filters
    #   <p>Optional filters used to narrow down the scope of the returned maintenance windows.
    #      Supported filter keys are <code>Name</code> and <code>Enabled</code>. For example,
    #       <code>Name=MyMaintenanceWindow</code> and <code>Enabled=True</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         key: "MaintenanceWindowFilterKey",
    #         values: ["MaintenanceWindowFilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_maintenance_windows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     window_identities: [
    #       {
    #         window_id: "MaintenanceWindowId",
    #         name: "MaintenanceWindowName",
    #         description: "MaintenanceWindowDescription",
    #         enabled: false,
    #         duration: 1,
    #         cutoff: 1,
    #         schedule: "MaintenanceWindowSchedule",
    #         schedule_timezone: "MaintenanceWindowTimezone",
    #         schedule_offset: 1,
    #         end_date: "MaintenanceWindowStringDateTime",
    #         start_date: "MaintenanceWindowStringDateTime",
    #         next_execution_time: "MaintenanceWindowStringDateTime"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeMaintenanceWindowsResult]
    def describe_maintenance_windows(params = {}, options = {})
      request = build_request(:describe_maintenance_windows, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the maintenance window targets or tasks that a managed node is
    #    associated with.</p>
    # @param [Hash, Types::DescribeMaintenanceWindowsForTargetRequest] params
    # @option params [Array<Types::Target>] :targets
    #   <p>The managed node ID or key-value pair to retrieve information about.</p>
    # @option params [String] :resource_type
    #   <p>The type of resource you want to retrieve information about. For example,
    #       <code>INSTANCE</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     targets: [ # required
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"]
    #       }
    #     ],
    #     resource_type: "INSTANCE" # One of: ["INSTANCE", "RESOURCE_GROUP"], # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_maintenance_windows_for_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     window_identities: [
    #       {
    #         window_id: "MaintenanceWindowId",
    #         name: "MaintenanceWindowName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeMaintenanceWindowsForTargetResult]
    def describe_maintenance_windows_for_target(params = {}, options = {})
      request = build_request(:describe_maintenance_windows_for_target, params)
      request.send_request(options)
    end

    # <p>Query a set of OpsItems. You must have permission in Identity and Access Management (IAM) to query a list of OpsItems. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-setup.html">Set up OpsCenter</a> in the
    #     <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #          <p>Operations engineers and IT professionals use Amazon Web Services Systems Manager OpsCenter to view, investigate, and
    #    remediate operational issues impacting the performance and health of their Amazon Web Services resources. For
    #    more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html">Amazon Web Services Systems Manager OpsCenter</a> in the
    #     <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    # @param [Hash, Types::DescribeOpsItemsRequest] params
    # @option params [Array<Types::OpsItemFilter>] :ops_item_filters
    #   <p>One or more filters to limit the response.</p>
    #            <ul>
    #               <li>
    #                  <p>Key: CreatedTime</p>
    #                  <p>Operations: GreaterThan, LessThan</p>
    #               </li>
    #               <li>
    #                  <p>Key: LastModifiedBy</p>
    #                  <p>Operations: Contains, Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: LastModifiedTime</p>
    #                  <p>Operations: GreaterThan, LessThan</p>
    #               </li>
    #               <li>
    #                  <p>Key: Priority</p>
    #                  <p>Operations: Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: Source</p>
    #                  <p>Operations: Contains, Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: Status</p>
    #                  <p>Operations: Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: Title*</p>
    #                  <p>Operations: Equals,Contains</p>
    #               </li>
    #               <li>
    #                  <p>Key: OperationalData**</p>
    #                  <p>Operations: Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: OperationalDataKey</p>
    #                  <p>Operations: Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: OperationalDataValue</p>
    #                  <p>Operations: Equals, Contains</p>
    #               </li>
    #               <li>
    #                  <p>Key: OpsItemId</p>
    #                  <p>Operations: Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: ResourceId</p>
    #                  <p>Operations: Contains</p>
    #               </li>
    #               <li>
    #                  <p>Key: AutomationId</p>
    #                  <p>Operations: Equals</p>
    #               </li>
    #               <li>
    #                  <p>Key: AccountId</p>
    #                  <p>Operations: Equals</p>
    #               </li>
    #            </ul>
    #            <p>*The Equals operator for Title matches the first 100 characters. If you specify more than
    #      100 characters, they system returns an error that the filter value exceeds the length
    #      limit.</p>
    #            <p>**If you filter the response by using the OperationalData operator, specify a key-value pair
    #      by using the following JSON format: {"key":"key_name","value":"a_value"}</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ops_item_filters: [
    #       {
    #         key: "Status" # One of: ["Status", "CreatedBy", "Source", "Priority", "Title", "OpsItemId", "CreatedTime", "LastModifiedTime", "ActualStartTime", "ActualEndTime", "PlannedStartTime", "PlannedEndTime", "OperationalData", "OperationalDataKey", "OperationalDataValue", "ResourceId", "AutomationId", "Category", "Severity", "OpsItemType", "AccessRequestByRequesterArn", "AccessRequestByRequesterId", "AccessRequestByApproverArn", "AccessRequestByApproverId", "AccessRequestBySourceAccountId", "AccessRequestBySourceOpsItemId", "AccessRequestBySourceRegion", "AccessRequestByIsReplica", "AccessRequestByTargetResourceId", "ChangeRequestByRequesterArn", "ChangeRequestByRequesterName", "ChangeRequestByApproverArn", "ChangeRequestByApproverName", "ChangeRequestByTemplate", "ChangeRequestByTargetsResourceGroup", "InsightByType", "AccountId"], # required
    #         values: ["OpsItemFilterValue"], # required
    #         operator: "Equal" # One of: ["Equal", "Contains", "GreaterThan", "LessThan"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_ops_items(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     ops_item_summaries: [
    #       {
    #         created_by: "String",
    #         created_time: Time.now,
    #         last_modified_by: "String",
    #         last_modified_time: Time.now,
    #         priority: 1,
    #         source: "OpsItemSource",
    #         status: "Open" # One of: ["Open", "InProgress", "Resolved", "Pending", "TimedOut", "Cancelling", "Cancelled", "Failed", "CompletedWithSuccess", "CompletedWithFailure", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "PendingApproval", "Approved", "Revoked", "Rejected", "Closed"],
    #         ops_item_id: "OpsItemId",
    #         title: "OpsItemTitle",
    #         operational_data: {
    #           "OpsItemDataKey" => {
    #             value: "OpsItemDataValueString",
    #             type: "SearchableString" # One of: ["SearchableString", "String"]
    #           }
    #         },
    #         category: "OpsItemCategory",
    #         severity: "OpsItemSeverity",
    #         ops_item_type: "OpsItemType",
    #         actual_start_time: Time.now,
    #         actual_end_time: Time.now,
    #         planned_start_time: Time.now,
    #         planned_end_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::DescribeOpsItemsResponse]
    def describe_ops_items(params = {}, options = {})
      request = build_request(:describe_ops_items, params)
      request.send_request(options)
    end

    # <p>Lists the parameters in your Amazon Web Services account or the parameters shared with you when you enable
    #    the <a href="https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_DescribeParameters.html#systemsmanager-DescribeParameters-request-Shared">Shared</a> option.</p>
    #          <p>Request results are returned on a best-effort basis. If you specify <code>MaxResults</code>
    #    in the request, the response includes information up to the limit specified. The number of items
    #    returned, however, can be between zero and the value of <code>MaxResults</code>. If the service
    #    reaches an internal limit while processing the results, it stops the operation and returns the
    #    matching values up to that point and a <code>NextToken</code>. You can specify the
    #     <code>NextToken</code> in a subsequent call to get the next set of results.</p>
    #          <p>Parameter names can't contain spaces. The service removes any spaces specified for the
    #    beginning or end of a parameter name. If the specified name for a parameter contains spaces
    #    between characters, the request fails with a <code>ValidationException</code> error.</p>
    #          <important>
    #             <p>If you change the KMS key alias for the KMS key used to encrypt a parameter,
    #     then you must also update the key alias the parameter uses to reference KMS. Otherwise,
    #      <code>DescribeParameters</code> retrieves whatever the original key alias was
    #     referencing.</p>
    #          </important>
    # @param [Hash, Types::DescribeParametersRequest] params
    # @option params [Array<Types::ParametersFilter>] :filters
    #   <p>This data type is deprecated. Instead, use <code>ParameterFilters</code>.</p>
    # @option params [Array<Types::ParameterStringFilter>] :parameter_filters
    #   <p>Filters to limit the request results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @option params [Boolean] :shared
    #   <p>Lists parameters that are shared with you.</p>
    #            <note>
    #               <p>By default when using this option, the command returns parameters that have been shared
    #       using a standard Resource Access Manager Resource Share. In order for a parameter that was shared
    #       using the <a>PutResourcePolicy</a> command to be returned, the associated
    #         <code>RAM Resource Share Created From Policy</code> must have been promoted to
    #       a standard Resource Share using the RAM
    #       <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html">PromoteResourceShareCreatedFromPolicy</a> API operation.</p>
    #               <p>For more information about sharing parameters, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-shared-parameters.html">Working with
    #        shared parameters</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         key: "Name" # One of: ["Name", "Type", "KeyId"], # required
    #         values: ["ParametersFilterValue"], # required
    #       }
    #     ],
    #     parameter_filters: [
    #       {
    #         key: "ParameterStringFilterKey", # required
    #         option: "ParameterStringQueryOption",
    #         values: ["ParameterStringFilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     shared: false
    #   }
    #   options = {}
    #   response = client.describe_parameters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parameters: [
    #       {
    #         name: "PSParameterName",
    #         arn: "String",
    #         type: "String" # One of: ["String", "StringList", "SecureString"],
    #         key_id: "ParameterKeyId",
    #         last_modified_date: Time.now,
    #         last_modified_user: "String",
    #         description: "ParameterDescription",
    #         allowed_pattern: "AllowedPattern",
    #         version: 1,
    #         tier: "Standard" # One of: ["Standard", "Advanced", "Intelligent-Tiering"],
    #         policies: [
    #           {
    #             policy_text: "String",
    #             policy_type: "String",
    #             policy_status: "String"
    #           }
    #         ],
    #         data_type: "ParameterDataType"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeParametersResult]
    def describe_parameters(params = {}, options = {})
      request = build_request(:describe_parameters, params)
      request.send_request(options)
    end

    # <p>Lists the patch baselines in your Amazon Web Services account.</p>
    # @param [Hash, Types::DescribePatchBaselinesRequest] params
    # @option params [Array<Types::PatchOrchestratorFilter>] :filters
    #   <p>Each element in the array is a structure containing a key-value pair.</p>
    #            <p>Supported keys for <code>DescribePatchBaselines</code> include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NAME_PREFIX</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>AWS-</code> | <code>My-</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>OWNER</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>AWS</code> | <code>Self</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>OPERATING_SYSTEM</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>AMAZON_LINUX</code> | <code>SUSE</code> | <code>WINDOWS</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of patch baselines to return (per page).</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         key: "PatchOrchestratorFilterKey",
    #         values: ["PatchOrchestratorFilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_patch_baselines(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     baseline_identities: [
    #       {
    #         baseline_id: "BaselineId",
    #         baseline_name: "BaselineName",
    #         operating_system: "WINDOWS" # One of: ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "AMAZON_LINUX_2022", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX", "ALMA_LINUX", "AMAZON_LINUX_2023"],
    #         baseline_description: "BaselineDescription",
    #         default_baseline: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribePatchBaselinesResult]
    def describe_patch_baselines(params = {}, options = {})
      request = build_request(:describe_patch_baselines, params)
      request.send_request(options)
    end

    # <p>Returns high-level aggregated patch compliance state information for a patch group.</p>
    # @param [Hash, Types::DescribePatchGroupStateRequest] params
    # @option params [String] :patch_group
    #   <p>The name of the patch group whose patch snapshot should be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     patch_group: "PatchGroup", # required
    #   }
    #   options = {}
    #   response = client.describe_patch_group_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instances: 1,
    #     instances_with_installed_patches: 1,
    #     instances_with_installed_other_patches: 1,
    #     instances_with_installed_pending_reboot_patches: 1,
    #     instances_with_installed_rejected_patches: 1,
    #     instances_with_missing_patches: 1,
    #     instances_with_failed_patches: 1,
    #     instances_with_not_applicable_patches: 1,
    #     instances_with_unreported_not_applicable_patches: 1,
    #     instances_with_critical_non_compliant_patches: 1,
    #     instances_with_security_non_compliant_patches: 1,
    #     instances_with_other_non_compliant_patches: 1,
    #     instances_with_available_security_updates: 1
    #   }
    # @return [Types::DescribePatchGroupStateResult]
    def describe_patch_group_state(params = {}, options = {})
      request = build_request(:describe_patch_group_state, params)
      request.send_request(options)
    end

    # <p>Lists all patch groups that have been registered with patch baselines.</p>
    # @param [Hash, Types::DescribePatchGroupsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of patch groups to return (per page).</p>
    # @option params [Array<Types::PatchOrchestratorFilter>] :filters
    #   <p>Each element in the array is a structure containing a key-value pair.</p>
    #            <p>Supported keys for <code>DescribePatchGroups</code> include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>NAME_PREFIX</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>AWS-</code> | <code>My-</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>OPERATING_SYSTEM</code>
    #                     </b>
    #                  </p>
    #                  <p>Sample values: <code>AMAZON_LINUX</code> | <code>SUSE</code> | <code>WINDOWS</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "PatchOrchestratorFilterKey",
    #         values: ["PatchOrchestratorFilterValue"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_patch_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mappings: [
    #       {
    #         patch_group: "PatchGroup",
    #         baseline_identity: {
    #           baseline_id: "BaselineId",
    #           baseline_name: "BaselineName",
    #           operating_system: "WINDOWS" # One of: ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "AMAZON_LINUX_2022", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX", "ALMA_LINUX", "AMAZON_LINUX_2023"],
    #           baseline_description: "BaselineDescription",
    #           default_baseline: false
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribePatchGroupsResult]
    def describe_patch_groups(params = {}, options = {})
      request = build_request(:describe_patch_groups, params)
      request.send_request(options)
    end

    # <p>Lists the properties of available patches organized by product, product family,
    #    classification, severity, and other properties of available patches. You can use the reported
    #    properties in the filters you specify in requests for operations such as <a>CreatePatchBaseline</a>, <a>UpdatePatchBaseline</a>, <a>DescribeAvailablePatches</a>, and <a>DescribePatchBaselines</a>.</p>
    #          <p>The following section lists the properties that can be used in filters for each major
    #    operating system type:</p>
    #          <dl>
    #             <dt>AMAZON_LINUX</dt>
    #             <dd>
    #                <p>Valid properties: <code>PRODUCT</code> | <code>CLASSIFICATION</code> |
    #        <code>SEVERITY</code>
    #                </p>
    #             </dd>
    #             <dt>AMAZON_LINUX_2</dt>
    #             <dd>
    #                <p>Valid properties: <code>PRODUCT</code> | <code>CLASSIFICATION</code> |
    #        <code>SEVERITY</code>
    #                </p>
    #             </dd>
    #             <dt>AMAZON_LINUX_2023</dt>
    #             <dd>
    #                <p>Valid properties: <code>PRODUCT</code> | <code>CLASSIFICATION</code> |
    #        <code>SEVERITY</code>
    #                </p>
    #             </dd>
    #             <dt>CENTOS</dt>
    #             <dd>
    #                <p>Valid properties: <code>PRODUCT</code> | <code>CLASSIFICATION</code> |
    #        <code>SEVERITY</code>
    #                </p>
    #             </dd>
    #             <dt>DEBIAN</dt>
    #             <dd>
    #                <p>Valid properties: <code>PRODUCT</code> | <code>PRIORITY</code>
    #                </p>
    #             </dd>
    #             <dt>MACOS</dt>
    #             <dd>
    #                <p>Valid properties: <code>PRODUCT</code> | <code>CLASSIFICATION</code>
    #                </p>
    #             </dd>
    #             <dt>ORACLE_LINUX</dt>
    #             <dd>
    #                <p>Valid properties: <code>PRODUCT</code> | <code>CLASSIFICATION</code> |
    #        <code>SEVERITY</code>
    #                </p>
    #             </dd>
    #             <dt>REDHAT_ENTERPRISE_LINUX</dt>
    #             <dd>
    #                <p>Valid properties: <code>PRODUCT</code> | <code>CLASSIFICATION</code> |
    #        <code>SEVERITY</code>
    #                </p>
    #             </dd>
    #             <dt>SUSE</dt>
    #             <dd>
    #                <p>Valid properties: <code>PRODUCT</code> | <code>CLASSIFICATION</code> |
    #        <code>SEVERITY</code>
    #                </p>
    #             </dd>
    #             <dt>UBUNTU</dt>
    #             <dd>
    #                <p>Valid properties: <code>PRODUCT</code> | <code>PRIORITY</code>
    #                </p>
    #             </dd>
    #             <dt>WINDOWS</dt>
    #             <dd>
    #                <p>Valid properties: <code>PRODUCT</code> | <code>PRODUCT_FAMILY</code> |
    #        <code>CLASSIFICATION</code> | <code>MSRC_SEVERITY</code>
    #                </p>
    #             </dd>
    #          </dl>
    # @param [Hash, Types::DescribePatchPropertiesRequest] params
    # @option params [String] :operating_system
    #   <p>The operating system type for which to list patches.</p>
    # @option params [String] :property
    #   <p>The patch property for which you want to view patch details. </p>
    # @option params [String] :patch_set
    #   <p>Indicates whether to list patches for the Windows operating system or for applications
    #      released by Microsoft. Not applicable for the Linux or macOS operating systems.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     operating_system: "WINDOWS" # One of: ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "AMAZON_LINUX_2022", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX", "ALMA_LINUX", "AMAZON_LINUX_2023"], # required
    #     property: "PRODUCT" # One of: ["PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "MSRC_SEVERITY", "PRIORITY", "SEVERITY"], # required
    #     patch_set: "OS" # One of: ["OS", "APPLICATION"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_patch_properties(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     properties: [
    #       {
    #         "AttributeName" => "AttributeValue"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribePatchPropertiesResult]
    def describe_patch_properties(params = {}, options = {})
      request = build_request(:describe_patch_properties, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of all active sessions (both connected and disconnected) or terminated
    #    sessions from the past 30 days.</p>
    # @param [Hash, Types::DescribeSessionsRequest] params
    # @option params [String] :state
    #   <p>The session status to retrieve a list of sessions for. For example, "Active".</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @option params [Array<Types::SessionFilter>] :filters
    #   <p>One or more filters to limit the type of sessions returned by the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     state: "Active" # One of: ["Active", "History"], # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         key: "InvokedAfter" # One of: ["InvokedAfter", "InvokedBefore", "Target", "Owner", "Status", "SessionId", "AccessType"], # required
    #         value: "SessionFilterValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sessions: [
    #       {
    #         session_id: "SessionId",
    #         target: "SessionTarget",
    #         status: "Connected" # One of: ["Connected", "Connecting", "Disconnected", "Terminated", "Terminating", "Failed"],
    #         start_date: Time.now,
    #         end_date: Time.now,
    #         document_name: "DocumentName",
    #         owner: "SessionOwner",
    #         reason: "SessionReason",
    #         details: "SessionDetails",
    #         output_url: {
    #           s3_output_url: "SessionManagerS3OutputUrl",
    #           cloud_watch_output_url: "SessionManagerCloudWatchOutputUrl"
    #         },
    #         max_session_duration: "MaxSessionDuration",
    #         access_type: "Standard" # One of: ["Standard", "JustInTime"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeSessionsResponse]
    def describe_sessions(params = {}, options = {})
      request = build_request(:describe_sessions, params)
      request.send_request(options)
    end

    # <p>Deletes the association between an OpsItem and a related item. For example, this API
    #    operation can delete an Incident Manager incident from an OpsItem. Incident Manager is a tool in
    #    Amazon Web Services Systems Manager.</p>
    # @param [Hash, Types::DisassociateOpsItemRelatedItemRequest] params
    # @option params [String] :ops_item_id
    #   <p>The ID of the OpsItem for which you want to delete an association between the OpsItem and a
    #      related item.</p>
    # @option params [String] :association_id
    #   <p>The ID of the association for which you want to delete an association between the OpsItem
    #      and a related item.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ops_item_id: "OpsItemId", # required
    #     association_id: "OpsItemRelatedItemAssociationId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_ops_item_related_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateOpsItemRelatedItemResponse]
    def disassociate_ops_item_related_item(params = {}, options = {})
      request = build_request(:disassociate_ops_item_related_item, params)
      request.send_request(options)
    end

    # <p>Returns a credentials set to be used with just-in-time node access.</p>
    # @param [Hash, Types::GetAccessTokenRequest] params
    # @option params [String] :access_request_id
    #   <p>The ID of a just-in-time node access request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_request_id: "AccessRequestId", # required
    #   }
    #   options = {}
    #   response = client.get_access_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credentials: {
    #       access_key_id: "AccessKeyIdType", # required
    #       secret_access_key: "AccessKeySecretType", # required
    #       session_token: "SessionTokenType", # required
    #       expiration_time: Time.now, # required
    #     },
    #     access_request_status: "Approved" # One of: ["Approved", "Rejected", "Revoked", "Expired", "Pending"]
    #   }
    # @return [Types::GetAccessTokenResponse]
    def get_access_token(params = {}, options = {})
      request = build_request(:get_access_token, params)
      request.send_request(options)
    end

    # <p>Get detailed information about a particular Automation execution.</p>
    # @param [Hash, Types::GetAutomationExecutionRequest] params
    # @option params [String] :automation_execution_id
    #   <p>The unique identifier for an existing automation execution to examine. The execution ID is
    #      returned by StartAutomationExecution when the execution of an Automation runbook is
    #      initiated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     automation_execution_id: "AutomationExecutionId", # required
    #   }
    #   options = {}
    #   response = client.get_automation_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     automation_execution: {
    #       automation_execution_id: "AutomationExecutionId",
    #       document_name: "DocumentName",
    #       document_version: "DocumentVersion",
    #       execution_start_time: Time.now,
    #       execution_end_time: Time.now,
    #       automation_execution_status: "Pending" # One of: ["Pending", "InProgress", "Waiting", "Success", "TimedOut", "Cancelling", "Cancelled", "Failed", "PendingApproval", "Approved", "Rejected", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "CompletedWithSuccess", "CompletedWithFailure", "Exited"],
    #       step_executions: [
    #         {
    #           step_name: "String",
    #           action: "AutomationActionName",
    #           timeout_seconds: 1,
    #           on_failure: "String",
    #           max_attempts: 1,
    #           execution_start_time: Time.now,
    #           execution_end_time: Time.now,
    #           step_status: "Pending" # One of: ["Pending", "InProgress", "Waiting", "Success", "TimedOut", "Cancelling", "Cancelled", "Failed", "PendingApproval", "Approved", "Rejected", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "CompletedWithSuccess", "CompletedWithFailure", "Exited"],
    #           response_code: "String",
    #           inputs: {
    #             "String" => "String"
    #           },
    #           outputs: {
    #             "AutomationParameterKey" => ["AutomationParameterValue"]
    #           },
    #           response: "String",
    #           failure_message: "String",
    #           warning_message: "String",
    #           failure_details: {
    #             failure_stage: "String",
    #             failure_type: "String",
    #             details: {
    #               "AutomationParameterKey" => ["AutomationParameterValue"]
    #             }
    #           },
    #           step_execution_id: "String",
    #           overridden_parameters: {
    #             "AutomationParameterKey" => ["AutomationParameterValue"]
    #           },
    #           is_end: false,
    #           next_step: "String",
    #           is_critical: false,
    #           valid_next_steps: ["ValidNextStep"],
    #           targets: [
    #             {
    #               key: "TargetKey",
    #               values: ["TargetValue"]
    #             }
    #           ],
    #           target_location: {
    #             accounts: ["Account"],
    #             regions: ["Region"],
    #             target_location_max_concurrency: "MaxConcurrency",
    #             target_location_max_errors: "MaxErrors",
    #             execution_role_name: "ExecutionRoleName",
    #             target_location_alarm_configuration: {
    #               ignore_poll_alarm_failure: false,
    #               alarms: [ # required
    #                 {
    #                   name: "AlarmName", # required
    #                 }
    #               ]
    #             },
    #             include_child_organization_units: false,
    #             exclude_accounts: ["ExcludeAccount"],
    #             targets: [
    #               {
    #                 key: "TargetKey",
    #                 values: ["TargetValue"]
    #               }
    #             ],
    #             targets_max_concurrency: "MaxConcurrency",
    #             targets_max_errors: "MaxErrors"
    #           },
    #           triggered_alarms: [
    #             {
    #               name: "AlarmName", # required
    #               state: "UNKNOWN" # One of: ["UNKNOWN", "ALARM"], # required
    #             }
    #           ],
    #           parent_step_details: {
    #             step_execution_id: "String",
    #             step_name: "String",
    #             action: "AutomationActionName",
    #             iteration: 1,
    #             iterator_value: "String"
    #           }
    #         }
    #       ],
    #       step_executions_truncated: false,
    #       parameters: {
    #         "AutomationParameterKey" => ["AutomationParameterValue"]
    #       },
    #       outputs: {
    #         "AutomationParameterKey" => ["AutomationParameterValue"]
    #       },
    #       failure_message: "String",
    #       warning_message: "String",
    #       mode: "Auto" # One of: ["Auto", "Interactive"],
    #       parent_automation_execution_id: "AutomationExecutionId",
    #       executed_by: "String",
    #       current_step_name: "String",
    #       current_action: "String",
    #       target_parameter_name: "AutomationParameterKey",
    #       targets: [
    #         {
    #           key: "TargetKey",
    #           values: ["TargetValue"]
    #         }
    #       ],
    #       target_maps: [
    #         {
    #           "TargetMapKey" => ["TargetMapValue"]
    #         }
    #       ],
    #       resolved_targets: {
    #         parameter_values: ["ParameterValue"],
    #         truncated: false
    #       },
    #       max_concurrency: "MaxConcurrency",
    #       max_errors: "MaxErrors",
    #       target: "String",
    #       target_locations: [
    #         {
    #           accounts: ["Account"],
    #           regions: ["Region"],
    #           target_location_max_concurrency: "MaxConcurrency",
    #           target_location_max_errors: "MaxErrors",
    #           execution_role_name: "ExecutionRoleName",
    #           target_location_alarm_configuration: {
    #             ignore_poll_alarm_failure: false,
    #             alarms: [ # required
    #               {
    #                 name: "AlarmName", # required
    #               }
    #             ]
    #           },
    #           include_child_organization_units: false,
    #           exclude_accounts: ["ExcludeAccount"],
    #           targets: [
    #             {
    #               key: "TargetKey",
    #               values: ["TargetValue"]
    #             }
    #           ],
    #           targets_max_concurrency: "MaxConcurrency",
    #           targets_max_errors: "MaxErrors"
    #         }
    #       ],
    #       progress_counters: {
    #         total_steps: 1,
    #         success_steps: 1,
    #         failed_steps: 1,
    #         cancelled_steps: 1,
    #         timed_out_steps: 1
    #       },
    #       alarm_configuration: {
    #         ignore_poll_alarm_failure: false,
    #         alarms: [ # required
    #           {
    #             name: "AlarmName", # required
    #           }
    #         ]
    #       },
    #       triggered_alarms: [
    #         {
    #           name: "AlarmName", # required
    #           state: "UNKNOWN" # One of: ["UNKNOWN", "ALARM"], # required
    #         }
    #       ],
    #       target_locations_url: "TargetLocationsURL",
    #       automation_subtype: "ChangeRequest" # One of: ["ChangeRequest", "AccessRequest"],
    #       scheduled_time: Time.now,
    #       runbooks: [
    #         {
    #           document_name: "DocumentARN", # required
    #           document_version: "DocumentVersion",
    #           parameters: {
    #             "AutomationParameterKey" => ["AutomationParameterValue"]
    #           },
    #           target_parameter_name: "AutomationParameterKey",
    #           targets: [
    #             {
    #               key: "TargetKey",
    #               values: ["TargetValue"]
    #             }
    #           ],
    #           target_maps: [
    #             {
    #               "TargetMapKey" => ["TargetMapValue"]
    #             }
    #           ],
    #           max_concurrency: "MaxConcurrency",
    #           max_errors: "MaxErrors",
    #           target_locations: [
    #             {
    #               accounts: ["Account"],
    #               regions: ["Region"],
    #               target_location_max_concurrency: "MaxConcurrency",
    #               target_location_max_errors: "MaxErrors",
    #               execution_role_name: "ExecutionRoleName",
    #               target_location_alarm_configuration: {
    #                 ignore_poll_alarm_failure: false,
    #                 alarms: [ # required
    #                   {
    #                     name: "AlarmName", # required
    #                   }
    #                 ]
    #               },
    #               include_child_organization_units: false,
    #               exclude_accounts: ["ExcludeAccount"],
    #               targets: [
    #                 {
    #                   key: "TargetKey",
    #                   values: ["TargetValue"]
    #                 }
    #               ],
    #               targets_max_concurrency: "MaxConcurrency",
    #               targets_max_errors: "MaxErrors"
    #             }
    #           ]
    #         }
    #       ],
    #       ops_item_id: "String",
    #       association_id: "String",
    #       change_request_name: "ChangeRequestName",
    #       variables: {
    #         "AutomationParameterKey" => ["AutomationParameterValue"]
    #       }
    #     }
    #   }
    # @return [Types::GetAutomationExecutionResult]
    def get_automation_execution(params = {}, options = {})
      request = build_request(:get_automation_execution, params)
      request.send_request(options)
    end

    # <p>Gets the state of a Amazon Web Services Systems Manager change calendar at the current time or a specified time. If
    #    you specify a time, <code>GetCalendarState</code> returns the state of the calendar at that
    #    specific time, and returns the next time that the change calendar state will transition. If you
    #    don't specify a time, <code>GetCalendarState</code> uses the current time. Change Calendar
    #    entries have two possible states: <code>OPEN</code> or <code>CLOSED</code>.</p>
    #          <p>If you specify more than one calendar in a request, the command returns the status of
    #     <code>OPEN</code> only if all calendars in the request are open. If one or more calendars in the
    #    request are closed, the status returned is <code>CLOSED</code>.</p>
    #          <p>For more information about Change Calendar, a tool in Amazon Web Services Systems Manager, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar.html">Amazon Web Services Systems Manager Change Calendar</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @param [Hash, Types::GetCalendarStateRequest] params
    # @option params [Array<String>] :calendar_names
    #   <p>The names of Amazon Resource Names (ARNs) of the Systems Manager documents (SSM documents) that
    #      represent the calendar entries for which you want to get the state.</p>
    # @option params [String] :at_time
    #   <p>(Optional) The specific time for which you want to get calendar state information, in <a href="https://en.wikipedia.org/wiki/ISO_8601">ISO 8601</a> format. If you don't specify a
    #      value or <code>AtTime</code>, the current time is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     calendar_names: ["CalendarNameOrARN"], # required
    #     at_time: "ISO8601String"
    #   }
    #   options = {}
    #   response = client.get_calendar_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     state: "OPEN" # One of: ["OPEN", "CLOSED"],
    #     at_time: "ISO8601String",
    #     next_transition_time: "ISO8601String"
    #   }
    # @return [Types::GetCalendarStateResponse]
    def get_calendar_state(params = {}, options = {})
      request = build_request(:get_calendar_state, params)
      request.send_request(options)
    end

    # <p>Returns detailed information about a cloud connector.</p>
    # @param [Hash, Types::GetCloudConnectorRequest] params
    # @option params [String] :cloud_connector_id
    #   <p>The ID of the cloud connector to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_connector_id: "CloudConnectorId", # required
    #   }
    #   options = {}
    #   response = client.get_cloud_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cloud_connector_arn: "CloudConnectorArn",
    #     display_name: "DisplayName",
    #     description: "CloudConnectorDescription",
    #     role_arn: "CloudConnectorIamRoleArn",
    #     configuration: {
    #       # One of:
    #       azure_configuration: {
    #         tenant_id: "AzureTenantId", # required
    #         tenant_display_name: "AzureTenantDisplayName",
    #         application_id: "AzureApplicationId", # required
    #         application_display_name: "AzureApplicationDisplayName",
    #         targets: {
    #           # One of:
    #           subscriptions: [
    #             {
    #               id: "AzureSubscriptionId", # required
    #               display_name: "AzureSubscriptionDisplayName"
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     config_connector_arn: "ConfigConnectorArn",
    #     created_at: Time.now,
    #     updated_at: Time.now
    #   }
    # @return [Types::GetCloudConnectorResult]
    def get_cloud_connector(params = {}, options = {})
      request = build_request(:get_cloud_connector, params)
      request.send_request(options)
    end

    # <p>Returns detailed information about command execution for an invocation or plugin. The Run
    #    Command API follows an eventual consistency model, due to the distributed nature of the system
    #    supporting the API. This means that the result of an API command you run that affects your
    #    resources might not be immediately visible to all subsequent commands you run. You should keep
    #    this in mind when you carry out an API command that immediately follows a previous API
    #    command.</p>
    #          <p>
    #             <code>GetCommandInvocation</code> only gives the execution status of a plugin in a document.
    #    To get the command execution status on a specific managed node, use <a>ListCommandInvocations</a>. To get the command execution status across managed nodes,
    #    use <a>ListCommands</a>.</p>
    # @param [Hash, Types::GetCommandInvocationRequest] params
    # @option params [String] :command_id
    #   <p>(Required) The parent command ID of the invocation plugin.</p>
    # @option params [String] :instance_id
    #   <p>(Required) The ID of the managed node targeted by the command. A <i>managed
    #       node</i> can be an Amazon Elastic Compute Cloud (Amazon EC2) instance, edge device, and on-premises server or VM
    #      in your hybrid environment that is configured for Amazon Web Services Systems Manager.</p>
    # @option params [String] :plugin_name
    #   <p>The name of the step for which you want detailed results. If the document contains only one
    #      step, you can omit the name and details for that step. If the document contains more than one
    #      step, you must specify the name of the step for which you want to view details. Be sure to
    #      specify the name of the step, not the name of a plugin like
    #      <code>aws:RunShellScript</code>.</p>
    #            <p>To find the <code>PluginName</code>, check the document content and find the name of the
    #      step you want details for. Alternatively, use <a>ListCommandInvocations</a> with the
    #       <code>CommandId</code> and <code>Details</code> parameters. The <code>PluginName</code> is the
    #       <code>Name</code> attribute of the <code>CommandPlugin</code> object in the
    #       <code>CommandPlugins</code> list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     command_id: "CommandId", # required
    #     instance_id: "InstanceId", # required
    #     plugin_name: "CommandPluginName"
    #   }
    #   options = {}
    #   response = client.get_command_invocation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     command_id: "CommandId",
    #     instance_id: "InstanceId",
    #     comment: "Comment",
    #     document_name: "DocumentName",
    #     document_version: "DocumentVersion",
    #     plugin_name: "CommandPluginName",
    #     response_code: 1,
    #     execution_start_date_time: "StringDateTime",
    #     execution_elapsed_time: "StringDateTime",
    #     execution_end_date_time: "StringDateTime",
    #     status: "Pending" # One of: ["Pending", "InProgress", "Delayed", "Success", "Cancelled", "TimedOut", "Failed", "Cancelling"],
    #     status_details: "StatusDetails",
    #     standard_output_content: "StandardOutputContent",
    #     standard_output_url: "Url",
    #     standard_error_content: "StandardErrorContent",
    #     standard_error_url: "Url",
    #     cloud_watch_output_config: {
    #       cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #       cloud_watch_output_enabled: false
    #     }
    #   }
    # @return [Types::GetCommandInvocationResult]
    def get_command_invocation(params = {}, options = {})
      request = build_request(:get_command_invocation, params)
      request.send_request(options)
    end

    # <p>Retrieves the Session Manager connection status for a managed node to determine whether it is running
    #    and ready to receive Session Manager connections.</p>
    # @param [Hash, Types::GetConnectionStatusRequest] params
    # @option params [String] :target
    #   <p>The managed node ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target: "SessionTarget", # required
    #   }
    #   options = {}
    #   response = client.get_connection_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     target: "SessionTarget",
    #     status: "connected" # One of: ["connected", "notconnected"]
    #   }
    # @return [Types::GetConnectionStatusResponse]
    def get_connection_status(params = {}, options = {})
      request = build_request(:get_connection_status, params)
      request.send_request(options)
    end

    # <p>Retrieves the default patch baseline. Amazon Web Services Systems Manager supports creating multiple default patch
    #    baselines. For example, you can create a default patch baseline for each operating system.</p>
    #          <p>If you don't specify an operating system value, the default patch baseline for Windows is
    #    returned.</p>
    # @param [Hash, Types::GetDefaultPatchBaselineRequest] params
    # @option params [String] :operating_system
    #   <p>Returns the default patch baseline for the specified operating system.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     operating_system: "WINDOWS" # One of: ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "AMAZON_LINUX_2022", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX", "ALMA_LINUX", "AMAZON_LINUX_2023"]
    #   }
    #   options = {}
    #   response = client.get_default_patch_baseline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     baseline_id: "BaselineId",
    #     operating_system: "WINDOWS" # One of: ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "AMAZON_LINUX_2022", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX", "ALMA_LINUX", "AMAZON_LINUX_2023"]
    #   }
    # @return [Types::GetDefaultPatchBaselineResult]
    def get_default_patch_baseline(params = {}, options = {})
      request = build_request(:get_default_patch_baseline, params)
      request.send_request(options)
    end

    # <p>Retrieves the current snapshot for the patch baseline the managed node uses. This API is
    #    primarily used by the <code>AWS-RunPatchBaseline</code> Systems Manager document (SSM document).</p>
    #          <note>
    #             <p>If you run the command locally, such as with the Command Line Interface (CLI), the system attempts to use your local Amazon Web Services credentials and the operation fails. To avoid
    #     this, you can run the command in the Amazon Web Services Systems Manager console. Use Run Command, a tool in Amazon Web Services Systems Manager,
    #     with an SSM document that enables you to target a managed node with a script or command. For
    #     example, run the command using the <code>AWS-RunShellScript</code> document or the
    #      <code>AWS-RunPowerShellScript</code> document.</p>
    #          </note>
    # @param [Hash, Types::GetDeployablePatchSnapshotForInstanceRequest] params
    # @option params [String] :instance_id
    #   <p>The ID of the managed node for which the appropriate patch snapshot should be
    #      retrieved.</p>
    # @option params [String] :snapshot_id
    #   <p>The snapshot ID provided by the user when running <code>AWS-RunPatchBaseline</code>.</p>
    # @option params [Types::BaselineOverride] :baseline_override
    #   <p>Defines the basic information about a patch baseline override.</p>
    # @option params [Boolean] :use_s3_dual_stack_endpoint
    #   <p>Specifies whether to use S3 dualstack endpoints for the patch snapshot download URL. Set to
    #       <code>true</code> to receive a presigned URL that supports both IPv4 and IPv6 connectivity. Set
    #      to <code>false</code> to use standard IPv4-only endpoints. Default is <code>false</code>. This
    #      parameter is required for managed nodes in IPv6-only environments. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     snapshot_id: "SnapshotId", # required
    #     baseline_override: {
    #       operating_system: "WINDOWS" # One of: ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "AMAZON_LINUX_2022", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX", "ALMA_LINUX", "AMAZON_LINUX_2023"],
    #       global_filters: {
    #         patch_filters: [ # required
    #           {
    #             key: "ARCH" # One of: ["ARCH", "ADVISORY_ID", "BUGZILLA_ID", "PATCH_SET", "PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "CVE_ID", "EPOCH", "MSRC_SEVERITY", "NAME", "PATCH_ID", "SECTION", "PRIORITY", "REPOSITORY", "RELEASE", "SEVERITY", "SECURITY", "VERSION"], # required
    #             values: ["PatchFilterValue"], # required
    #           }
    #         ]
    #       },
    #       approval_rules: {
    #         patch_rules: [ # required
    #           {
    #             patch_filter_group: { # required
    #               patch_filters: [ # required
    #                 {
    #                   key: "ARCH" # One of: ["ARCH", "ADVISORY_ID", "BUGZILLA_ID", "PATCH_SET", "PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "CVE_ID", "EPOCH", "MSRC_SEVERITY", "NAME", "PATCH_ID", "SECTION", "PRIORITY", "REPOSITORY", "RELEASE", "SEVERITY", "SECURITY", "VERSION"], # required
    #                   values: ["PatchFilterValue"], # required
    #                 }
    #               ]
    #             },
    #             compliance_level: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"],
    #             approve_after_days: 1,
    #             approve_until_date: "PatchStringDateTime",
    #             enable_non_security: false
    #           }
    #         ]
    #       },
    #       approved_patches: ["PatchId"],
    #       approved_patches_compliance_level: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"],
    #       rejected_patches: ["PatchId"],
    #       rejected_patches_action: "ALLOW_AS_DEPENDENCY" # One of: ["ALLOW_AS_DEPENDENCY", "BLOCK"],
    #       approved_patches_enable_non_security: false,
    #       sources: [
    #         {
    #           name: "PatchSourceName", # required
    #           products: ["PatchSourceProduct"], # required
    #           configuration: "PatchSourceConfiguration", # required
    #         }
    #       ],
    #       available_security_updates_compliance_status: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT"]
    #     },
    #     use_s3_dual_stack_endpoint: false
    #   }
    #   options = {}
    #   response = client.get_deployable_patch_snapshot_for_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_id: "InstanceId",
    #     snapshot_id: "SnapshotId",
    #     snapshot_download_url: "SnapshotDownloadUrl",
    #     product: "Product"
    #   }
    # @return [Types::GetDeployablePatchSnapshotForInstanceResult]
    def get_deployable_patch_snapshot_for_instance(params = {}, options = {})
      request = build_request(:get_deployable_patch_snapshot_for_instance, params)
      request.send_request(options)
    end

    # <p>Gets the contents of the specified Amazon Web Services Systems Manager document (SSM document).</p>
    # @param [Hash, Types::GetDocumentRequest] params
    # @option params [String] :name
    #   <p>The name of the SSM document.</p>
    # @option params [String] :version_name
    #   <p>An optional field specifying the version of the artifact associated with the document. For
    #      example, 12.6. This value is unique across all versions of a document and can't be
    #      changed.</p>
    # @option params [String] :document_version
    #   <p>The document version for which you want information.</p>
    # @option params [String] :document_format
    #   <p>Returns the document in the specified format. The document format can be either JSON or
    #      YAML. JSON is the default format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DocumentARN", # required
    #     version_name: "DocumentVersionName",
    #     document_version: "DocumentVersion",
    #     document_format: "YAML" # One of: ["YAML", "JSON", "TEXT"]
    #   }
    #   options = {}
    #   response = client.get_document(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "DocumentARN",
    #     created_date: Time.now,
    #     display_name: "DocumentDisplayName",
    #     version_name: "DocumentVersionName",
    #     document_version: "DocumentVersion",
    #     status: "Creating" # One of: ["Creating", "Active", "Updating", "Deleting", "Failed"],
    #     status_information: "DocumentStatusInformation",
    #     content: "DocumentContent",
    #     document_type: "Command" # One of: ["Command", "Policy", "Automation", "Session", "Package", "ApplicationConfiguration", "ApplicationConfigurationSchema", "DeploymentStrategy", "ChangeCalendar", "Automation.ChangeTemplate", "ProblemAnalysis", "ProblemAnalysisTemplate", "CloudFormation", "ConformancePackTemplate", "QuickSetup", "ManualApprovalPolicy", "AutoApprovalPolicy"],
    #     document_format: "YAML" # One of: ["YAML", "JSON", "TEXT"],
    #     requires: [
    #       {
    #         name: "DocumentARN", # required
    #         version: "DocumentVersion",
    #         require_type: "RequireType",
    #         version_name: "DocumentVersionName"
    #       }
    #     ],
    #     attachments_content: [
    #       {
    #         name: "AttachmentName",
    #         size: 1,
    #         hash: "AttachmentHash",
    #         hash_type: "Sha256" # One of: ["Sha256"],
    #         url: "AttachmentUrl"
    #       }
    #     ],
    #     review_status: "APPROVED" # One of: ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"]
    #   }
    # @return [Types::GetDocumentResult]
    def get_document(params = {}, options = {})
      request = build_request(:get_document, params)
      request.send_request(options)
    end

    # <p>Initiates the process of retrieving an existing preview that shows the effects that running
    #    a specified Automation runbook would have on the targeted resources.</p>
    # @param [Hash, Types::GetExecutionPreviewRequest] params
    # @option params [String] :execution_preview_id
    #   <p>The ID of the existing execution preview.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     execution_preview_id: "ExecutionPreviewId", # required
    #   }
    #   options = {}
    #   response = client.get_execution_preview(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_preview_id: "ExecutionPreviewId",
    #     ended_at: Time.now,
    #     status: "Pending" # One of: ["Pending", "InProgress", "Success", "Failed"],
    #     status_message: "String",
    #     execution_preview: {
    #       # One of:
    #       automation: {
    #         step_previews: {
    #           "ImpactType" => 1
    #         },
    #         regions: ["Region"],
    #         target_previews: [
    #           {
    #             count: 1,
    #             target_type: "String"
    #           }
    #         ],
    #         total_accounts: 1
    #       }
    #     }
    #   }
    # @return [Types::GetExecutionPreviewResponse]
    def get_execution_preview(params = {}, options = {})
      request = build_request(:get_execution_preview, params)
      request.send_request(options)
    end

    # <p>Query inventory information. This includes managed node status, such as <code>Stopped</code>
    #    or <code>Terminated</code>.</p>
    # @param [Hash, Types::GetInventoryRequest] params
    # @option params [Array<Types::InventoryFilter>] :filters
    #   <p>One or more filters. Use a filter to return a more specific list of results.</p>
    # @option params [Array<Types::InventoryAggregator>] :aggregators
    #   <p>Returns counts of inventory types based on one or more expressions. For example, if you
    #      aggregate by using an expression that uses the <code>AWS:InstanceInformation.PlatformType</code>
    #      type, you can see a count of how many Windows and Linux managed nodes exist in your inventoried
    #      fleet.</p>
    # @option params [Array<Types::ResultAttribute>] :result_attributes
    #   <p>The list of inventory item types to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         key: "InventoryFilterKey", # required
    #         values: ["InventoryFilterValue"], # required
    #         type: "Equal" # One of: ["Equal", "NotEqual", "BeginWith", "LessThan", "GreaterThan", "Exists"]
    #       }
    #     ],
    #     aggregators: [
    #       {
    #         expression: "InventoryAggregatorExpression",
    #         aggregators: {
    #           # recursive InventoryAggregatorList
    #         },
    #         groups: [
    #           {
    #             name: "InventoryGroupName", # required
    #             filters: [ # required
    #               {
    #                 key: "InventoryFilterKey", # required
    #                 values: ["InventoryFilterValue"], # required
    #                 type: "Equal" # One of: ["Equal", "NotEqual", "BeginWith", "LessThan", "GreaterThan", "Exists"]
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ],
    #     result_attributes: [
    #       {
    #         type_name: "InventoryItemTypeName", # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_inventory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [
    #       {
    #         id: "InventoryResultEntityId",
    #         data: {
    #           "InventoryResultItemKey" => {
    #             type_name: "InventoryItemTypeName", # required
    #             schema_version: "InventoryItemSchemaVersion", # required
    #             capture_time: "InventoryItemCaptureTime",
    #             content_hash: "InventoryItemContentHash",
    #             content: [ # required
    #               {
    #                 "AttributeName" => "AttributeValue"
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetInventoryResult]
    def get_inventory(params = {}, options = {})
      request = build_request(:get_inventory, params)
      request.send_request(options)
    end

    # <p>Return a list of inventory type names for the account, or return a list of attribute names
    #    for a specific Inventory item type.</p>
    # @param [Hash, Types::GetInventorySchemaRequest] params
    # @option params [String] :type_name
    #   <p>The type of inventory item to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [Boolean] :aggregator
    #   <p>Returns inventory schemas that support aggregation. For example, this call returns the
    #       <code>AWS:InstanceInformation</code> type, because it supports aggregation based on the
    #       <code>PlatformName</code>, <code>PlatformType</code>, and <code>PlatformVersion</code>
    #      attributes.</p>
    # @option params [Boolean] :sub_type
    #   <p>Returns the sub-type schema for a specified inventory type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type_name: "InventoryItemTypeNameFilter",
    #     next_token: "NextToken",
    #     max_results: 1,
    #     aggregator: false,
    #     sub_type: false
    #   }
    #   options = {}
    #   response = client.get_inventory_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schemas: [
    #       {
    #         type_name: "InventoryItemTypeName", # required
    #         version: "InventoryItemSchemaVersion",
    #         attributes: [ # required
    #           {
    #             name: "InventoryItemAttributeName", # required
    #             data_type: "string" # One of: ["string", "number"], # required
    #           }
    #         ],
    #         display_name: "InventoryTypeDisplayName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetInventorySchemaResult]
    def get_inventory_schema(params = {}, options = {})
      request = build_request(:get_inventory_schema, params)
      request.send_request(options)
    end

    # <p>Retrieves a maintenance window.</p>
    # @param [Hash, Types::GetMaintenanceWindowRequest] params
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window for which you want to retrieve information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     window_id: "MaintenanceWindowId", # required
    #   }
    #   options = {}
    #   response = client.get_maintenance_window(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     window_id: "MaintenanceWindowId",
    #     name: "MaintenanceWindowName",
    #     description: "MaintenanceWindowDescription",
    #     start_date: "MaintenanceWindowStringDateTime",
    #     end_date: "MaintenanceWindowStringDateTime",
    #     schedule: "MaintenanceWindowSchedule",
    #     schedule_timezone: "MaintenanceWindowTimezone",
    #     schedule_offset: 1,
    #     next_execution_time: "MaintenanceWindowStringDateTime",
    #     duration: 1,
    #     cutoff: 1,
    #     allow_unassociated_targets: false,
    #     enabled: false,
    #     created_date: Time.now,
    #     modified_date: Time.now
    #   }
    # @return [Types::GetMaintenanceWindowResult]
    def get_maintenance_window(params = {}, options = {})
      request = build_request(:get_maintenance_window, params)
      request.send_request(options)
    end

    # <p>Retrieves details about a specific a maintenance window execution.</p>
    # @param [Hash, Types::GetMaintenanceWindowExecutionRequest] params
    # @option params [String] :window_execution_id
    #   <p>The ID of the maintenance window execution that includes the task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     window_execution_id: "MaintenanceWindowExecutionId", # required
    #   }
    #   options = {}
    #   response = client.get_maintenance_window_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     window_execution_id: "MaintenanceWindowExecutionId",
    #     task_ids: ["MaintenanceWindowExecutionTaskId"],
    #     status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"],
    #     status_details: "MaintenanceWindowExecutionStatusDetails",
    #     start_time: Time.now,
    #     end_time: Time.now
    #   }
    # @return [Types::GetMaintenanceWindowExecutionResult]
    def get_maintenance_window_execution(params = {}, options = {})
      request = build_request(:get_maintenance_window_execution, params)
      request.send_request(options)
    end

    # <p>Retrieves the details about a specific task run as part of a maintenance window
    #    execution.</p>
    # @param [Hash, Types::GetMaintenanceWindowExecutionTaskRequest] params
    # @option params [String] :window_execution_id
    #   <p>The ID of the maintenance window execution that includes the task.</p>
    # @option params [String] :task_id
    #   <p>The ID of the specific task execution in the maintenance window task that should be
    #      retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     window_execution_id: "MaintenanceWindowExecutionId", # required
    #     task_id: "MaintenanceWindowExecutionTaskId", # required
    #   }
    #   options = {}
    #   response = client.get_maintenance_window_execution_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     window_execution_id: "MaintenanceWindowExecutionId",
    #     task_execution_id: "MaintenanceWindowExecutionTaskId",
    #     task_arn: "MaintenanceWindowTaskArn",
    #     service_role: "ServiceRole",
    #     type: "RUN_COMMAND" # One of: ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"],
    #     task_parameters: [
    #       {
    #         "MaintenanceWindowTaskParameterName" => {
    #           values: ["MaintenanceWindowTaskParameterValue"]
    #         }
    #       }
    #     ],
    #     priority: 1,
    #     max_concurrency: "MaxConcurrency",
    #     max_errors: "MaxErrors",
    #     status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"],
    #     status_details: "MaintenanceWindowExecutionStatusDetails",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     alarm_configuration: {
    #       ignore_poll_alarm_failure: false,
    #       alarms: [ # required
    #         {
    #           name: "AlarmName", # required
    #         }
    #       ]
    #     },
    #     triggered_alarms: [
    #       {
    #         name: "AlarmName", # required
    #         state: "UNKNOWN" # One of: ["UNKNOWN", "ALARM"], # required
    #       }
    #     ]
    #   }
    # @return [Types::GetMaintenanceWindowExecutionTaskResult]
    def get_maintenance_window_execution_task(params = {}, options = {})
      request = build_request(:get_maintenance_window_execution_task, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specific task running on a specific target.</p>
    # @param [Hash, Types::GetMaintenanceWindowExecutionTaskInvocationRequest] params
    # @option params [String] :window_execution_id
    #   <p>The ID of the maintenance window execution for which the task is a part.</p>
    # @option params [String] :task_id
    #   <p>The ID of the specific task in the maintenance window task that should be retrieved. </p>
    # @option params [String] :invocation_id
    #   <p>The invocation ID to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     window_execution_id: "MaintenanceWindowExecutionId", # required
    #     task_id: "MaintenanceWindowExecutionTaskId", # required
    #     invocation_id: "MaintenanceWindowExecutionTaskInvocationId", # required
    #   }
    #   options = {}
    #   response = client.get_maintenance_window_execution_task_invocation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     window_execution_id: "MaintenanceWindowExecutionId",
    #     task_execution_id: "MaintenanceWindowExecutionTaskId",
    #     invocation_id: "MaintenanceWindowExecutionTaskInvocationId",
    #     execution_id: "MaintenanceWindowExecutionTaskExecutionId",
    #     task_type: "RUN_COMMAND" # One of: ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"],
    #     parameters: "MaintenanceWindowExecutionTaskInvocationParameters",
    #     status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"],
    #     status_details: "MaintenanceWindowExecutionStatusDetails",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     owner_information: "OwnerInformation",
    #     window_target_id: "MaintenanceWindowTaskTargetId"
    #   }
    # @return [Types::GetMaintenanceWindowExecutionTaskInvocationResult]
    def get_maintenance_window_execution_task_invocation(params = {}, options = {})
      request = build_request(:get_maintenance_window_execution_task_invocation, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a maintenance window task.</p>
    #          <note>
    #             <p>For maintenance window tasks without a specified target, you can't supply values for
    #      <code>--max-errors</code> and <code>--max-concurrency</code>. Instead, the system inserts a
    #     placeholder value of <code>1</code>, which may be reported in the response to this command.
    #     These values don't affect the running of your task and can be ignored.</p>
    #          </note>
    #          <p>To retrieve a list of tasks in a maintenance window, instead use the <a>DescribeMaintenanceWindowTasks</a> command.</p>
    # @param [Hash, Types::GetMaintenanceWindowTaskRequest] params
    # @option params [String] :window_id
    #   <p>The maintenance window ID that includes the task to retrieve.</p>
    # @option params [String] :window_task_id
    #   <p>The maintenance window task ID to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     window_id: "MaintenanceWindowId", # required
    #     window_task_id: "MaintenanceWindowTaskId", # required
    #   }
    #   options = {}
    #   response = client.get_maintenance_window_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     window_id: "MaintenanceWindowId",
    #     window_task_id: "MaintenanceWindowTaskId",
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"]
    #       }
    #     ],
    #     task_arn: "MaintenanceWindowTaskArn",
    #     service_role_arn: "ServiceRole",
    #     task_type: "RUN_COMMAND" # One of: ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"],
    #     task_parameters: {
    #       "MaintenanceWindowTaskParameterName" => {
    #         values: ["MaintenanceWindowTaskParameterValue"]
    #       }
    #     },
    #     task_invocation_parameters: {
    #       run_command: {
    #         comment: "Comment",
    #         cloud_watch_output_config: {
    #           cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #           cloud_watch_output_enabled: false
    #         },
    #         document_hash: "DocumentHash",
    #         document_hash_type: "Sha256" # One of: ["Sha256", "Sha1"],
    #         document_version: "DocumentVersion",
    #         notification_config: {
    #           notification_arn: "NotificationArn",
    #           notification_events: ["All" # One of: ["All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"]],
    #           notification_type: "Command" # One of: ["Command", "Invocation"]
    #         },
    #         output_s3_bucket_name: "S3BucketName",
    #         output_s3_key_prefix: "S3KeyPrefix",
    #         parameters: {
    #           "ParameterName" => ["ParameterValue"]
    #         },
    #         service_role_arn: "ServiceRole",
    #         timeout_seconds: 1
    #       },
    #       automation: {
    #         document_version: "DocumentVersion",
    #         parameters: {
    #           "AutomationParameterKey" => ["AutomationParameterValue"]
    #         }
    #       },
    #       step_functions: {
    #         input: "MaintenanceWindowStepFunctionsInput",
    #         name: "MaintenanceWindowStepFunctionsName"
    #       },
    #       lambda: {
    #         client_context: "MaintenanceWindowLambdaClientContext",
    #         qualifier: "MaintenanceWindowLambdaQualifier",
    #         payload: "data"
    #       }
    #     },
    #     priority: 1,
    #     max_concurrency: "MaxConcurrency",
    #     max_errors: "MaxErrors",
    #     logging_info: {
    #       s3_bucket_name: "S3BucketName", # required
    #       s3_key_prefix: "S3KeyPrefix",
    #       s3_region: "S3Region", # required
    #     },
    #     name: "MaintenanceWindowName",
    #     description: "MaintenanceWindowDescription",
    #     cutoff_behavior: "CONTINUE_TASK" # One of: ["CONTINUE_TASK", "CANCEL_TASK"],
    #     alarm_configuration: {
    #       ignore_poll_alarm_failure: false,
    #       alarms: [ # required
    #         {
    #           name: "AlarmName", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetMaintenanceWindowTaskResult]
    def get_maintenance_window_task(params = {}, options = {})
      request = build_request(:get_maintenance_window_task, params)
      request.send_request(options)
    end

    # <p>Get information about an OpsItem by using the ID. You must have permission in Identity and Access Management (IAM) to view information about an OpsItem. For more information,
    #    see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-setup.html">Set
    #     up OpsCenter</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #          <p>Operations engineers and IT professionals use Amazon Web Services Systems Manager OpsCenter to view, investigate, and
    #    remediate operational issues impacting the performance and health of their Amazon Web Services resources. For
    #    more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html">Amazon Web Services Systems Manager OpsCenter</a> in the
    #     <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    # @param [Hash, Types::GetOpsItemRequest] params
    # @option params [String] :ops_item_id
    #   <p>The ID of the OpsItem that you want to get.</p>
    # @option params [String] :ops_item_arn
    #   <p>The OpsItem Amazon Resource Name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ops_item_id: "OpsItemId", # required
    #     ops_item_arn: "OpsItemArn"
    #   }
    #   options = {}
    #   response = client.get_ops_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ops_item: {
    #       created_by: "String",
    #       ops_item_type: "OpsItemType",
    #       created_time: Time.now,
    #       description: "OpsItemDescription",
    #       last_modified_by: "String",
    #       last_modified_time: Time.now,
    #       notifications: [
    #         {
    #           arn: "String"
    #         }
    #       ],
    #       priority: 1,
    #       related_ops_items: [
    #         {
    #           ops_item_id: "String", # required
    #         }
    #       ],
    #       status: "Open" # One of: ["Open", "InProgress", "Resolved", "Pending", "TimedOut", "Cancelling", "Cancelled", "Failed", "CompletedWithSuccess", "CompletedWithFailure", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "PendingApproval", "Approved", "Revoked", "Rejected", "Closed"],
    #       ops_item_id: "OpsItemId",
    #       version: "String",
    #       title: "OpsItemTitle",
    #       source: "OpsItemSource",
    #       operational_data: {
    #         "OpsItemDataKey" => {
    #           value: "OpsItemDataValueString",
    #           type: "SearchableString" # One of: ["SearchableString", "String"]
    #         }
    #       },
    #       category: "OpsItemCategory",
    #       severity: "OpsItemSeverity",
    #       actual_start_time: Time.now,
    #       actual_end_time: Time.now,
    #       planned_start_time: Time.now,
    #       planned_end_time: Time.now,
    #       ops_item_arn: "OpsItemArn"
    #     }
    #   }
    # @return [Types::GetOpsItemResponse]
    def get_ops_item(params = {}, options = {})
      request = build_request(:get_ops_item, params)
      request.send_request(options)
    end

    # <p>View operational metadata related to an application in Application Manager.</p>
    # @param [Hash, Types::GetOpsMetadataRequest] params
    # @option params [String] :ops_metadata_arn
    #   <p>The Amazon Resource Name (ARN) of an OpsMetadata Object to view.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ops_metadata_arn: "OpsMetadataArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_ops_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_id: "OpsMetadataResourceId",
    #     metadata: {
    #       "MetadataKey" => {
    #         value: "MetadataValueString"
    #       }
    #     },
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetOpsMetadataResult]
    def get_ops_metadata(params = {}, options = {})
      request = build_request(:get_ops_metadata, params)
      request.send_request(options)
    end

    # <p>View a summary of operations metadata (OpsData) based on specified filters and aggregators.
    #    OpsData can include information about Amazon Web Services Systems Manager OpsCenter operational workitems (OpsItems) as
    #    well as information about any Amazon Web Services resource or service configured to report OpsData to Amazon Web Services Systems Manager
    #    Explorer. </p>
    # @param [Hash, Types::GetOpsSummaryRequest] params
    # @option params [String] :sync_name
    #   <p>Specify the name of a resource data sync to get.</p>
    # @option params [Array<Types::OpsFilter>] :filters
    #   <p>Optional filters used to scope down the returned OpsData. </p>
    # @option params [Array<Types::OpsAggregator>] :aggregators
    #   <p>Optional aggregators that return counts of OpsData based on one or more expressions.</p>
    # @option params [Array<Types::OpsResultAttribute>] :result_attributes
    #   <p>The OpsData data type to return.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sync_name: "ResourceDataSyncName",
    #     filters: [
    #       {
    #         key: "OpsFilterKey", # required
    #         values: ["OpsFilterValue"], # required
    #         type: "Equal" # One of: ["Equal", "NotEqual", "BeginWith", "LessThan", "GreaterThan", "Exists"]
    #       }
    #     ],
    #     aggregators: [
    #       {
    #         aggregator_type: "OpsAggregatorType",
    #         type_name: "OpsDataTypeName",
    #         attribute_name: "OpsDataAttributeName",
    #         values: {
    #           "OpsAggregatorValueKey" => "OpsAggregatorValue"
    #         },
    #         filters: [
    #           {
    #             key: "OpsFilterKey", # required
    #             values: ["OpsFilterValue"], # required
    #             type: "Equal" # One of: ["Equal", "NotEqual", "BeginWith", "LessThan", "GreaterThan", "Exists"]
    #           }
    #         ],
    #         aggregators: {
    #           # recursive OpsAggregatorList
    #         }
    #       }
    #     ],
    #     result_attributes: [
    #       {
    #         type_name: "OpsDataTypeName", # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_ops_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [
    #       {
    #         id: "OpsEntityId",
    #         data: {
    #           "OpsEntityItemKey" => {
    #             capture_time: "OpsEntityItemCaptureTime",
    #             content: [
    #               {
    #                 "AttributeName" => "AttributeValue"
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetOpsSummaryResult]
    def get_ops_summary(params = {}, options = {})
      request = build_request(:get_ops_summary, params)
      request.send_request(options)
    end

    # <p>Get information about a single parameter by specifying the parameter name.</p>
    #          <p>Parameter names can't contain spaces. The service removes any spaces specified for the
    #    beginning or end of a parameter name. If the specified name for a parameter contains spaces
    #    between characters, the request fails with a <code>ValidationException</code> error.</p>
    #          <note>
    #             <p>To get information about more than one parameter at a time, use the <a>GetParameters</a> operation.</p>
    #          </note>
    #          <note>
    #             <p>Parameter Store throughput defines the number of API transactions per second (TPS) that
    #     Systems Manager can process. This applies to <code>GetParameter</code>,
    #     <code>GetParameters</code>, and <code>PutParameter</code> API calls for your Amazon Web Services account and
    #     Amazon Web Services Region. By default, Parameter Store is configured with a standard throughput quota suitable
    #     for low- to moderate-volume workloads. Applications that retrieve configuration data infrequently
    #     or operate at smaller scale can use this default setting without additional cost.</p>
    #             <p>For higher-volume workloads, you can enable higher throughput. This increases the maximum
    #     number of supported transactions per second for your account and Region. Increased throughput
    #     supports applications and workloads that need concurrent access to multiple parameters. If you
    #     experience <code>ThrottlingException: Rate exceeded</code> errors, enable higher throughput. For
    #     more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-throughput.html">Changing Parameter Store
    #      throughput</a>.</p>
    #          </note>
    # @param [Hash, Types::GetParameterRequest] params
    # @option params [String] :name
    #   <p>The name or Amazon Resource Name (ARN) of the parameter that you want to query. For
    #      parameters shared with you from another account, you must use the full ARN.</p>
    #            <p>To query by parameter label, use <code>"Name": "name:label"</code>. To query by parameter
    #      version, use <code>"Name": "name:version"</code>.</p>
    #            <p>For more information about shared parameters, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-shared-parameters.html">Working with
    #       shared parameters</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [Boolean] :with_decryption
    #   <p>Return decrypted values for secure string parameters. This flag is ignored for
    #       <code>String</code> and <code>StringList</code> parameter types.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PSParameterName", # required
    #     with_decryption: false
    #   }
    #   options = {}
    #   response = client.get_parameter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parameter: {
    #       name: "PSParameterName",
    #       type: "String" # One of: ["String", "StringList", "SecureString"],
    #       value: "PSParameterValue",
    #       version: 1,
    #       selector: "PSParameterSelector",
    #       source_result: "String",
    #       last_modified_date: Time.now,
    #       arn: "String",
    #       data_type: "ParameterDataType"
    #     }
    #   }
    # @return [Types::GetParameterResult]
    def get_parameter(params = {}, options = {})
      request = build_request(:get_parameter, params)
      request.send_request(options)
    end

    # <p>Retrieves the history of all changes to a parameter.</p>
    #          <p>Parameter names can't contain spaces. The service removes any spaces specified for the
    #    beginning or end of a parameter name. If the specified name for a parameter contains spaces
    #    between characters, the request fails with a <code>ValidationException</code> error.</p>
    #          <important>
    #             <p>If you change the KMS key alias for the KMS key used to encrypt a parameter,
    #     then you must also update the key alias the parameter uses to reference KMS. Otherwise,
    #      <code>GetParameterHistory</code> retrieves whatever the original key alias was
    #     referencing.</p>
    #          </important>
    # @param [Hash, Types::GetParameterHistoryRequest] params
    # @option params [String] :name
    #   <p>The name or Amazon Resource Name (ARN) of the parameter for which you want to review
    #      history. For parameters shared with you from another account, you must use the full ARN.</p>
    # @option params [Boolean] :with_decryption
    #   <p>Return decrypted values for secure string parameters. This flag is ignored for
    #       <code>String</code> and <code>StringList</code> parameter types.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PSParameterName", # required
    #     with_decryption: false,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_parameter_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parameters: [
    #       {
    #         name: "PSParameterName",
    #         type: "String" # One of: ["String", "StringList", "SecureString"],
    #         key_id: "ParameterKeyId",
    #         last_modified_date: Time.now,
    #         last_modified_user: "String",
    #         description: "ParameterDescription",
    #         value: "PSParameterValue",
    #         allowed_pattern: "AllowedPattern",
    #         version: 1,
    #         labels: ["ParameterLabel"],
    #         tier: "Standard" # One of: ["Standard", "Advanced", "Intelligent-Tiering"],
    #         policies: [
    #           {
    #             policy_text: "String",
    #             policy_type: "String",
    #             policy_status: "String"
    #           }
    #         ],
    #         data_type: "ParameterDataType"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetParameterHistoryResult]
    def get_parameter_history(params = {}, options = {})
      request = build_request(:get_parameter_history, params)
      request.send_request(options)
    end

    # <p>Get information about one or more parameters by specifying multiple parameter names.</p>
    #          <note>
    #             <p>To get information about a single parameter, you can use the <a>GetParameter</a>
    #     operation instead.</p>
    #          </note>
    #          <p>Parameter names can't contain spaces. The service removes any spaces specified for the
    #    beginning or end of a parameter name. If the specified name for a parameter contains spaces
    #    between characters, the request fails with a <code>ValidationException</code> error.</p>
    #          <note>
    #             <p>Parameter Store throughput defines the number of API transactions per second (TPS) that
    #     Systems Manager can process. This applies to <code>GetParameter</code>,
    #     <code>GetParameters</code>, and <code>PutParameter</code> API calls for your Amazon Web Services account and
    #     Amazon Web Services Region. By default, Parameter Store is configured with a standard throughput quota suitable
    #     for low- to moderate-volume workloads. Applications that retrieve configuration data infrequently
    #     or operate at smaller scale can use this default setting without additional cost.</p>
    #             <p>For higher-volume workloads, you can enable higher throughput. This increases the maximum
    #     number of supported transactions per second for your account and Region. Increased throughput
    #     supports applications and workloads that need concurrent access to multiple parameters. If you
    #     experience <code>ThrottlingException: Rate exceeded</code> errors, enable higher throughput. For
    #     more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-throughput.html">Changing Parameter Store
    #      throughput</a>.</p>
    #          </note>
    # @param [Hash, Types::GetParametersRequest] params
    # @option params [Array<String>] :names
    #   <p>The names or Amazon Resource Names (ARNs) of the parameters that you want to query. For
    #      parameters shared with you from another account, you must use the full ARNs.</p>
    #            <p>To query by parameter label, use <code>"Name": "name:label"</code>. To query by parameter
    #      version, use <code>"Name": "name:version"</code>.</p>
    #            <note>
    #               <p>The results for <code>GetParameters</code> requests are listed in alphabetical order in
    #       query responses.</p>
    #            </note>
    #            <p>For information about shared parameters, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-shared-parameters.html">Working with
    #       shared parameters</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [Boolean] :with_decryption
    #   <p>Return decrypted secure string value. Return decrypted values for secure string parameters.
    #      This flag is ignored for <code>String</code> and <code>StringList</code> parameter types.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     names: ["PSParameterName"], # required
    #     with_decryption: false
    #   }
    #   options = {}
    #   response = client.get_parameters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parameters: [
    #       {
    #         name: "PSParameterName",
    #         type: "String" # One of: ["String", "StringList", "SecureString"],
    #         value: "PSParameterValue",
    #         version: 1,
    #         selector: "PSParameterSelector",
    #         source_result: "String",
    #         last_modified_date: Time.now,
    #         arn: "String",
    #         data_type: "ParameterDataType"
    #       }
    #     ],
    #     invalid_parameters: ["PSParameterName"]
    #   }
    # @return [Types::GetParametersResult]
    def get_parameters(params = {}, options = {})
      request = build_request(:get_parameters, params)
      request.send_request(options)
    end

    # <p>Retrieve information about one or more parameters under a specified level in a hierarchy. </p>
    #          <p>Request results are returned on a best-effort basis. If you specify <code>MaxResults</code>
    #    in the request, the response includes information up to the limit specified. The number of items
    #    returned, however, can be between zero and the value of <code>MaxResults</code>. If the service
    #    reaches an internal limit while processing the results, it stops the operation and returns the
    #    matching values up to that point and a <code>NextToken</code>. You can specify the
    #     <code>NextToken</code> in a subsequent call to get the next set of results.</p>
    #          <p>Parameter names can't contain spaces. The service removes any spaces specified for the
    #    beginning or end of a parameter name. If the specified name for a parameter contains spaces
    #    between characters, the request fails with a <code>ValidationException</code> error.</p>
    # @param [Hash, Types::GetParametersByPathRequest] params
    # @option params [String] :path
    #   <p>The hierarchy for the parameter. Hierarchies start with a forward slash (/). The hierarchy
    #      is the parameter name except the last part of the parameter. For the API call to succeed, the
    #      last part of the parameter name can't be in the path. A parameter name hierarchy can have a
    #      maximum of 15 levels. Here is an example of a hierarchy:
    #       <code>/Finance/Prod/IAD/WinServ2016/license33 </code>
    #            </p>
    # @option params [Boolean] :recursive
    #   <p>Retrieve all parameters within a hierarchy.</p>
    #            <important>
    #               <p>If a user has access to a path, then the user can access all levels of that path. For
    #       example, if a user has permission to access path <code>/a</code>, then the user can also access
    #        <code>/a/b</code>. Even if a user has explicitly been denied access in IAM for
    #       parameter <code>/a/b</code>, they can still call the GetParametersByPath API operation
    #       recursively for <code>/a</code> and view <code>/a/b</code>.</p>
    #            </important>
    # @option params [Array<Types::ParameterStringFilter>] :parameter_filters
    #   <p>Filters to limit the request results.</p>
    #            <note>
    #               <p>The following <code>Key</code> values are supported for <code>GetParametersByPath</code>:
    #        <code>Type</code>, <code>KeyId</code>, and <code>Label</code>.</p>
    #               <p>The following <code>Key</code> values aren't supported for
    #       <code>GetParametersByPath</code>: <code>tag</code>, <code>DataType</code>, <code>Name</code>,
    #        <code>Path</code>, and <code>Tier</code>.</p>
    #            </note>
    # @option params [Boolean] :with_decryption
    #   <p>Retrieve all parameters in a hierarchy with their value decrypted.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     path: "PSParameterName", # required
    #     recursive: false,
    #     parameter_filters: [
    #       {
    #         key: "ParameterStringFilterKey", # required
    #         option: "ParameterStringQueryOption",
    #         values: ["ParameterStringFilterValue"]
    #       }
    #     ],
    #     with_decryption: false,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_parameters_by_path(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parameters: [
    #       {
    #         name: "PSParameterName",
    #         type: "String" # One of: ["String", "StringList", "SecureString"],
    #         value: "PSParameterValue",
    #         version: 1,
    #         selector: "PSParameterSelector",
    #         source_result: "String",
    #         last_modified_date: Time.now,
    #         arn: "String",
    #         data_type: "ParameterDataType"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetParametersByPathResult]
    def get_parameters_by_path(params = {}, options = {})
      request = build_request(:get_parameters_by_path, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a patch baseline.</p>
    # @param [Hash, Types::GetPatchBaselineRequest] params
    # @option params [String] :baseline_id
    #   <p>The ID of the patch baseline to retrieve.</p>
    #            <note>
    #               <p>To retrieve information about an Amazon Web Services managed patch baseline, specify the full Amazon
    #       Resource Name (ARN) of the baseline. For example, for the baseline
    #        <code>AWS-AmazonLinuxDefaultPatchBaseline</code>, specify
    #        <code>arn:aws:ssm:us-east-2:733109147000:patchbaseline/pb-0e392de35e7c563b7</code> instead of
    #        <code>pb-0e392de35e7c563b7</code>.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     baseline_id: "BaselineId", # required
    #   }
    #   options = {}
    #   response = client.get_patch_baseline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     baseline_id: "BaselineId",
    #     name: "BaselineName",
    #     operating_system: "WINDOWS" # One of: ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "AMAZON_LINUX_2022", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX", "ALMA_LINUX", "AMAZON_LINUX_2023"],
    #     global_filters: {
    #       patch_filters: [ # required
    #         {
    #           key: "ARCH" # One of: ["ARCH", "ADVISORY_ID", "BUGZILLA_ID", "PATCH_SET", "PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "CVE_ID", "EPOCH", "MSRC_SEVERITY", "NAME", "PATCH_ID", "SECTION", "PRIORITY", "REPOSITORY", "RELEASE", "SEVERITY", "SECURITY", "VERSION"], # required
    #           values: ["PatchFilterValue"], # required
    #         }
    #       ]
    #     },
    #     approval_rules: {
    #       patch_rules: [ # required
    #         {
    #           patch_filter_group: { # required
    #             patch_filters: [ # required
    #               {
    #                 key: "ARCH" # One of: ["ARCH", "ADVISORY_ID", "BUGZILLA_ID", "PATCH_SET", "PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "CVE_ID", "EPOCH", "MSRC_SEVERITY", "NAME", "PATCH_ID", "SECTION", "PRIORITY", "REPOSITORY", "RELEASE", "SEVERITY", "SECURITY", "VERSION"], # required
    #                 values: ["PatchFilterValue"], # required
    #               }
    #             ]
    #           },
    #           compliance_level: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"],
    #           approve_after_days: 1,
    #           approve_until_date: "PatchStringDateTime",
    #           enable_non_security: false
    #         }
    #       ]
    #     },
    #     approved_patches: ["PatchId"],
    #     approved_patches_compliance_level: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"],
    #     approved_patches_enable_non_security: false,
    #     rejected_patches: ["PatchId"],
    #     rejected_patches_action: "ALLOW_AS_DEPENDENCY" # One of: ["ALLOW_AS_DEPENDENCY", "BLOCK"],
    #     patch_groups: ["PatchGroup"],
    #     created_date: Time.now,
    #     modified_date: Time.now,
    #     description: "BaselineDescription",
    #     sources: [
    #       {
    #         name: "PatchSourceName", # required
    #         products: ["PatchSourceProduct"], # required
    #         configuration: "PatchSourceConfiguration", # required
    #       }
    #     ],
    #     available_security_updates_compliance_status: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT"]
    #   }
    # @return [Types::GetPatchBaselineResult]
    def get_patch_baseline(params = {}, options = {})
      request = build_request(:get_patch_baseline, params)
      request.send_request(options)
    end

    # <p>Retrieves the patch baseline that should be used for the specified patch group.</p>
    # @param [Hash, Types::GetPatchBaselineForPatchGroupRequest] params
    # @option params [String] :patch_group
    #   <p>The name of the patch group whose patch baseline should be retrieved.</p>
    # @option params [String] :operating_system
    #   <p>Returns the operating system rule specified for patch groups using the patch
    #     baseline. The default value is <code>WINDOWS</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     patch_group: "PatchGroup", # required
    #     operating_system: "WINDOWS" # One of: ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "AMAZON_LINUX_2022", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX", "ALMA_LINUX", "AMAZON_LINUX_2023"]
    #   }
    #   options = {}
    #   response = client.get_patch_baseline_for_patch_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     baseline_id: "BaselineId",
    #     patch_group: "PatchGroup",
    #     operating_system: "WINDOWS" # One of: ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "AMAZON_LINUX_2022", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX", "ALMA_LINUX", "AMAZON_LINUX_2023"]
    #   }
    # @return [Types::GetPatchBaselineForPatchGroupResult]
    def get_patch_baseline_for_patch_group(params = {}, options = {})
      request = build_request(:get_patch_baseline_for_patch_group, params)
      request.send_request(options)
    end

    # <p>Returns an array of the <code>Policy</code> object.</p>
    # @param [Hash, Types::GetResourcePoliciesRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource to which the policies are attached.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArnString", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_resource_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     policies: [
    #       {
    #         policy_id: "PolicyId",
    #         policy_hash: "PolicyHash",
    #         policy: "Policy"
    #       }
    #     ]
    #   }
    # @return [Types::GetResourcePoliciesResponse]
    def get_resource_policies(params = {}, options = {})
      request = build_request(:get_resource_policies, params)
      request.send_request(options)
    end

    # <p>
    #             <code>ServiceSetting</code> is an account-level setting for an Amazon Web Services service. This setting
    #    defines how a user interacts with or uses a service or a feature of a service. For example, if an
    #    Amazon Web Services service charges money to the account based on feature or service usage, then the Amazon Web Services
    #    service team might create a default setting of <code>false</code>. This means the user can't use
    #    this feature unless they change the setting to <code>true</code> and intentionally opt in for a
    #    paid feature.</p>
    #          <p>Services map a <code>SettingId</code> object to a setting value. Amazon Web Services services teams define
    #    the default value for a <code>SettingId</code>. You can't create a new <code>SettingId</code>,
    #    but you can overwrite the default value if you have the <code>ssm:UpdateServiceSetting</code>
    #    permission for the setting. Use the <a>UpdateServiceSetting</a> API operation to
    #    change the default setting. Or use the <a>ResetServiceSetting</a> to change the value
    #    back to the original value defined by the Amazon Web Services service team.</p>
    #          <p>Query the current service setting for the Amazon Web Services account. </p>
    # @param [Hash, Types::GetServiceSettingRequest] params
    # @option params [String] :setting_id
    #   <p>The ID of the service setting to get. The setting ID can be one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>/ssm/appmanager/appmanager-enabled</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-destination</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-group-name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>/ssm/automation/enable-adaptive-concurrency</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/documents/console/public-sharing-permission</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/managed-instance/activation-tier</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/managed-instance/default-ec2-instance-management-role</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/opsinsights/opscenter</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/default-parameter-tier</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/high-throughput-enabled</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     setting_id: "ServiceSettingId", # required
    #   }
    #   options = {}
    #   response = client.get_service_setting(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_setting: {
    #       setting_id: "ServiceSettingId",
    #       setting_value: "ServiceSettingValue",
    #       last_modified_date: Time.now,
    #       last_modified_user: "String",
    #       arn: "String",
    #       status: "String"
    #     }
    #   }
    # @return [Types::GetServiceSettingResult]
    def get_service_setting(params = {}, options = {})
      request = build_request(:get_service_setting, params)
      request.send_request(options)
    end

    # <p>A parameter label is a user-defined alias to help you manage different versions of a
    #    parameter. When you modify a parameter, Amazon Web Services Systems Manager automatically saves a new version and
    #    increments the version number by one. A label can help you remember the purpose of a parameter
    #    when there are multiple versions. </p>
    #          <p>Parameter labels have the following requirements and restrictions.</p>
    #          <ul>
    #             <li>
    #                <p>A version of a parameter can have a maximum of 10 labels.</p>
    #             </li>
    #             <li>
    #                <p>You can't attach the same label to different versions of the same parameter. For example,
    #      if version 1 has the label Production, then you can't attach Production to version 2.</p>
    #             </li>
    #             <li>
    #                <p>You can move a label from one version of a parameter to another.</p>
    #             </li>
    #             <li>
    #                <p>You can't create a label when you create a new parameter. You must attach a label to a
    #      specific version of a parameter.</p>
    #             </li>
    #             <li>
    #                <p>If you no longer want to use a parameter label, then you can either delete it or move it
    #      to a different version of a parameter.</p>
    #             </li>
    #             <li>
    #                <p>A label can have a maximum of 100 characters.</p>
    #             </li>
    #             <li>
    #                <p>Labels can contain letters (case sensitive), numbers, periods (.), hyphens (-), or
    #      underscores (_).</p>
    #             </li>
    #             <li>
    #                <p>Labels can't begin with a number, "<code>aws</code>" or "<code>ssm</code>" (not case
    #      sensitive). If a label fails to meet these requirements, then the label isn't associated with a
    #      parameter and the system displays it in the list of InvalidLabels.</p>
    #             </li>
    #             <li>
    #                <p>Parameter names can't contain spaces. The service removes any spaces specified for
    #      the beginning or end of a parameter name. If the specified name for a parameter contains spaces
    #      between characters, the request fails with a <code>ValidationException</code> error.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::LabelParameterVersionRequest] params
    # @option params [String] :name
    #   <p>The parameter name on which you want to attach one or more labels.</p>
    #            <note>
    #               <p>You can't enter the Amazon Resource Name (ARN) for a parameter, only the parameter name
    #       itself.</p>
    #            </note>
    # @option params [Integer] :parameter_version
    #   <p>The specific version of the parameter on which you want to attach one or more labels. If no
    #      version is specified, the system attaches the label to the latest version.</p>
    # @option params [Array<String>] :labels
    #   <p>One or more labels to attach to the specified parameter version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PSParameterName", # required
    #     parameter_version: 1,
    #     labels: ["ParameterLabel"], # required
    #   }
    #   options = {}
    #   response = client.label_parameter_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invalid_labels: ["ParameterLabel"],
    #     parameter_version: 1
    #   }
    # @return [Types::LabelParameterVersionResult]
    def label_parameter_version(params = {}, options = {})
      request = build_request(:label_parameter_version, params)
      request.send_request(options)
    end

    # <p>Retrieves all versions of an association for a specific association ID.</p>
    # @param [Hash, Types::ListAssociationVersionsRequest] params
    # @option params [String] :association_id
    #   <p>The association ID for which you want to view all versions.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     association_id: "AssociationId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_association_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association_versions: [
    #       {
    #         association_id: "AssociationId",
    #         association_version: "AssociationVersion",
    #         created_date: Time.now,
    #         name: "DocumentARN",
    #         document_version: "DocumentVersion",
    #         parameters: {
    #           "ParameterName" => ["ParameterValue"]
    #         },
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"]
    #           }
    #         ],
    #         schedule_expression: "ScheduleExpression",
    #         output_location: {
    #           s3_location: {
    #             output_s3_region: "S3Region",
    #             output_s3_bucket_name: "S3BucketName",
    #             output_s3_key_prefix: "S3KeyPrefix"
    #           }
    #         },
    #         association_name: "AssociationName",
    #         max_errors: "MaxErrors",
    #         max_concurrency: "MaxConcurrency",
    #         compliance_severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"],
    #         sync_compliance: "AUTO" # One of: ["AUTO", "MANUAL"],
    #         apply_only_at_cron_interval: false,
    #         calendar_names: ["CalendarNameOrARN"],
    #         target_locations: [
    #           {
    #             accounts: ["Account"],
    #             regions: ["Region"],
    #             target_location_max_concurrency: "MaxConcurrency",
    #             target_location_max_errors: "MaxErrors",
    #             execution_role_name: "ExecutionRoleName",
    #             target_location_alarm_configuration: {
    #               ignore_poll_alarm_failure: false,
    #               alarms: [ # required
    #                 {
    #                   name: "AlarmName", # required
    #                 }
    #               ]
    #             },
    #             include_child_organization_units: false,
    #             exclude_accounts: ["ExcludeAccount"],
    #             targets: [
    #               {
    #                 key: "TargetKey",
    #                 values: ["TargetValue"]
    #               }
    #             ],
    #             targets_max_concurrency: "MaxConcurrency",
    #             targets_max_errors: "MaxErrors"
    #           }
    #         ],
    #         schedule_offset: 1,
    #         duration: 1,
    #         target_maps: [
    #           {
    #             "TargetMapKey" => ["TargetMapValue"]
    #           }
    #         ],
    #         association_dispatch_assume_role: "AssociationDispatchAssumeRoleArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAssociationVersionsResult]
    def list_association_versions(params = {}, options = {})
      request = build_request(:list_association_versions, params)
      request.send_request(options)
    end

    # <p>Returns all State Manager associations in the current Amazon Web Services account and Amazon Web Services Region. You
    #    can limit the results to a specific State Manager association document or managed node by
    #    specifying a filter. State Manager is a tool in Amazon Web Services Systems Manager.</p>
    # @param [Hash, Types::ListAssociationsRequest] params
    # @option params [Array<Types::AssociationFilter>] :association_filter_list
    #   <p>One or more filters. Use a filter to return a more specific list of results.</p>
    #            <note>
    #               <p>Filtering associations using the <code>InstanceID</code> attribute only returns legacy
    #       associations created using the <code>InstanceID</code> attribute. Associations targeting the
    #       managed node that are part of the Target Attributes <code>ResourceGroup</code> or
    #        <code>Tags</code> aren't returned.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     association_filter_list: [
    #       {
    #         key: "InstanceId" # One of: ["InstanceId", "Name", "AssociationId", "AssociationStatusName", "LastExecutedBefore", "LastExecutedAfter", "AssociationName", "ResourceGroupName", "CloudConnectorId"], # required
    #         value: "AssociationFilterValue", # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     associations: [
    #       {
    #         name: "DocumentARN",
    #         instance_id: "InstanceId",
    #         association_id: "AssociationId",
    #         association_version: "AssociationVersion",
    #         document_version: "DocumentVersion",
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"]
    #           }
    #         ],
    #         last_execution_date: Time.now,
    #         overview: {
    #           status: "StatusName",
    #           detailed_status: "StatusName",
    #           association_status_aggregated_count: {
    #             "StatusName" => 1
    #           }
    #         },
    #         schedule_expression: "ScheduleExpression",
    #         association_name: "AssociationName",
    #         schedule_offset: 1,
    #         duration: 1,
    #         target_maps: [
    #           {
    #             "TargetMapKey" => ["TargetMapValue"]
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAssociationsResult]
    def list_associations(params = {}, options = {})
      request = build_request(:list_associations, params)
      request.send_request(options)
    end

    # <p>Returns a list of cloud connectors in the current Amazon Web Services account and Amazon Web Services Region.</p>
    # @param [Hash, Types::ListCloudConnectorsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @option params [Array<Types::CloudConnectorFilter>] :filters
    #   <p>One or more filters to limit the cloud connectors returned in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         filter_key: "SubscriptionId" # One of: ["SubscriptionId", "TenantId"],
    #         filter_values: ["CloudConnectorFilterValue"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_cloud_connectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cloud_connectors: [
    #       {
    #         cloud_connector_id: "CloudConnectorId",
    #         display_name: "DisplayName",
    #         description: "CloudConnectorDescription",
    #         role_arn: "CloudConnectorIamRoleArn",
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCloudConnectorsResult]
    def list_cloud_connectors(params = {}, options = {})
      request = build_request(:list_cloud_connectors, params)
      request.send_request(options)
    end

    # <p>An invocation is copy of a command sent to a specific managed node. A command can apply to
    #    one or more managed nodes. A command invocation applies to one managed node. For example, if a
    #    user runs <code>SendCommand</code> against three managed nodes, then a command invocation is
    #    created for each requested managed node ID. <code>ListCommandInvocations</code> provide status
    #    about command execution.</p>
    # @param [Hash, Types::ListCommandInvocationsRequest] params
    # @option params [String] :command_id
    #   <p>(Optional) The invocations for a specific command ID.</p>
    # @option params [String] :instance_id
    #   <p>(Optional) The command execution details for a specific managed node ID.</p>
    # @option params [Integer] :max_results
    #   <p>(Optional) The maximum number of items to return for this call. The call also returns a
    #      token that you can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>(Optional) The token for the next set of items to return. (You received this token from a
    #      previous call.)</p>
    # @option params [Array<Types::CommandFilter>] :filters
    #   <p>(Optional) One or more filters. Use a filter to return a more specific list of
    #      results.</p>
    # @option params [Boolean] :details
    #   <p>(Optional) If set this returns the response of the command executions and any command
    #      output. The default value is <code>false</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     command_id: "CommandId",
    #     instance_id: "InstanceId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         key: "InvokedAfter" # One of: ["InvokedAfter", "InvokedBefore", "Status", "ExecutionStage", "DocumentName"], # required
    #         value: "CommandFilterValue", # required
    #       }
    #     ],
    #     details: false
    #   }
    #   options = {}
    #   response = client.list_command_invocations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     command_invocations: [
    #       {
    #         command_id: "CommandId",
    #         instance_id: "InstanceId",
    #         instance_name: "InstanceTagName",
    #         comment: "Comment",
    #         document_name: "DocumentName",
    #         document_version: "DocumentVersion",
    #         requested_date_time: Time.now,
    #         status: "Pending" # One of: ["Pending", "InProgress", "Delayed", "Success", "Cancelled", "TimedOut", "Failed", "Cancelling"],
    #         status_details: "StatusDetails",
    #         trace_output: "InvocationTraceOutput",
    #         standard_output_url: "Url",
    #         standard_error_url: "Url",
    #         command_plugins: [
    #           {
    #             name: "CommandPluginName",
    #             status: "Pending" # One of: ["Pending", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"],
    #             status_details: "StatusDetails",
    #             response_code: 1,
    #             response_start_date_time: Time.now,
    #             response_finish_date_time: Time.now,
    #             output: "CommandPluginOutput",
    #             standard_output_url: "Url",
    #             standard_error_url: "Url",
    #             output_s3_region: "S3Region",
    #             output_s3_bucket_name: "S3BucketName",
    #             output_s3_key_prefix: "S3KeyPrefix"
    #           }
    #         ],
    #         service_role: "ServiceRole",
    #         notification_config: {
    #           notification_arn: "NotificationArn",
    #           notification_events: ["All" # One of: ["All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"]],
    #           notification_type: "Command" # One of: ["Command", "Invocation"]
    #         },
    #         cloud_watch_output_config: {
    #           cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #           cloud_watch_output_enabled: false
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCommandInvocationsResult]
    def list_command_invocations(params = {}, options = {})
      request = build_request(:list_command_invocations, params)
      request.send_request(options)
    end

    # <p>Lists the commands requested by users of the Amazon Web Services account.</p>
    # @param [Hash, Types::ListCommandsRequest] params
    # @option params [String] :command_id
    #   <p>(Optional) If provided, lists only the specified command.</p>
    # @option params [String] :instance_id
    #   <p>(Optional) Lists commands issued against this managed node ID.</p>
    #            <note>
    #               <p>You can't specify a managed node ID in the same command that you specify
    #        <code>Status</code> = <code>Pending</code>. This is because the command hasn't reached the
    #       managed node yet.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>(Optional) The maximum number of items to return for this call. The call also returns a
    #      token that you can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>(Optional) The token for the next set of items to return. (You received this token from a
    #      previous call.)</p>
    # @option params [Array<Types::CommandFilter>] :filters
    #   <p>(Optional) One or more filters. Use a filter to return a more specific list of results.
    #     </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     command_id: "CommandId",
    #     instance_id: "InstanceId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         key: "InvokedAfter" # One of: ["InvokedAfter", "InvokedBefore", "Status", "ExecutionStage", "DocumentName"], # required
    #         value: "CommandFilterValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_commands(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     commands: [
    #       {
    #         command_id: "CommandId",
    #         document_name: "DocumentName",
    #         document_version: "DocumentVersion",
    #         comment: "Comment",
    #         expires_after: Time.now,
    #         parameters: {
    #           "ParameterName" => ["ParameterValue"]
    #         },
    #         instance_ids: ["InstanceId"],
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"]
    #           }
    #         ],
    #         requested_date_time: Time.now,
    #         status: "Pending" # One of: ["Pending", "InProgress", "Success", "Cancelled", "Failed", "TimedOut", "Cancelling"],
    #         status_details: "StatusDetails",
    #         output_s3_region: "S3Region",
    #         output_s3_bucket_name: "S3BucketName",
    #         output_s3_key_prefix: "S3KeyPrefix",
    #         max_concurrency: "MaxConcurrency",
    #         max_errors: "MaxErrors",
    #         target_count: 1,
    #         completed_count: 1,
    #         error_count: 1,
    #         delivery_timed_out_count: 1,
    #         service_role: "ServiceRole",
    #         notification_config: {
    #           notification_arn: "NotificationArn",
    #           notification_events: ["All" # One of: ["All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"]],
    #           notification_type: "Command" # One of: ["Command", "Invocation"]
    #         },
    #         cloud_watch_output_config: {
    #           cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #           cloud_watch_output_enabled: false
    #         },
    #         timeout_seconds: 1,
    #         alarm_configuration: {
    #           ignore_poll_alarm_failure: false,
    #           alarms: [ # required
    #             {
    #               name: "AlarmName", # required
    #             }
    #           ]
    #         },
    #         triggered_alarms: [
    #           {
    #             name: "AlarmName", # required
    #             state: "UNKNOWN" # One of: ["UNKNOWN", "ALARM"], # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCommandsResult]
    def list_commands(params = {}, options = {})
      request = build_request(:list_commands, params)
      request.send_request(options)
    end

    # <p>For a specified resource ID, this API operation returns a list of compliance statuses for
    #    different resource types. Currently, you can only specify one resource ID per call. List results
    #    depend on the criteria specified in the filter.</p>
    # @param [Hash, Types::ListComplianceItemsRequest] params
    # @option params [Array<Types::ComplianceStringFilter>] :filters
    #   <p>One or more compliance filters. Use a filter to return a more specific list of
    #      results.</p>
    # @option params [Array<String>] :resource_ids
    #   <p>The ID for the resources from which to get compliance information. Currently, you can only
    #      specify one resource ID.</p>
    # @option params [Array<String>] :resource_types
    #   <p>The type of resource from which to get compliance information. Currently, the only supported
    #      resource type is <code>ManagedInstance</code>.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         key: "ComplianceStringFilterKey",
    #         values: ["ComplianceFilterValue"],
    #         type: "EQUAL" # One of: ["EQUAL", "NOT_EQUAL", "BEGIN_WITH", "LESS_THAN", "GREATER_THAN"]
    #       }
    #     ],
    #     resource_ids: ["ComplianceResourceId"],
    #     resource_types: ["ComplianceResourceType"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_compliance_items(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compliance_items: [
    #       {
    #         compliance_type: "ComplianceTypeName",
    #         resource_type: "ComplianceResourceType",
    #         resource_id: "ComplianceResourceId",
    #         id: "ComplianceItemId",
    #         title: "ComplianceItemTitle",
    #         status: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT"],
    #         severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"],
    #         execution_summary: {
    #           execution_time: Time.now, # required
    #           execution_id: "ComplianceExecutionId",
    #           execution_type: "ComplianceExecutionType"
    #         },
    #         details: {
    #           "AttributeName" => "AttributeValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListComplianceItemsResult]
    def list_compliance_items(params = {}, options = {})
      request = build_request(:list_compliance_items, params)
      request.send_request(options)
    end

    # <p>Returns a summary count of compliant and non-compliant resources for a compliance type. For
    #    example, this call can return State Manager associations, patches, or custom compliance types
    #    according to the filter criteria that you specify.</p>
    # @param [Hash, Types::ListComplianceSummariesRequest] params
    # @option params [Array<Types::ComplianceStringFilter>] :filters
    #   <p>One or more compliance or inventory filters. Use a filter to return a more specific list of
    #      results.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. Currently, you can specify null or 50.
    #      The call also returns a token that you can specify in a subsequent call to get the next set of
    #      results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         key: "ComplianceStringFilterKey",
    #         values: ["ComplianceFilterValue"],
    #         type: "EQUAL" # One of: ["EQUAL", "NOT_EQUAL", "BEGIN_WITH", "LESS_THAN", "GREATER_THAN"]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_compliance_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compliance_summary_items: [
    #       {
    #         compliance_type: "ComplianceTypeName",
    #         compliant_summary: {
    #           compliant_count: 1,
    #           severity_summary: {
    #             critical_count: 1,
    #             high_count: 1,
    #             medium_count: 1,
    #             low_count: 1,
    #             informational_count: 1,
    #             unspecified_count: 1
    #           }
    #         },
    #         non_compliant_summary: {
    #           non_compliant_count: 1,
    #           severity_summary: {
    #             critical_count: 1,
    #             high_count: 1,
    #             medium_count: 1,
    #             low_count: 1,
    #             informational_count: 1,
    #             unspecified_count: 1
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListComplianceSummariesResult]
    def list_compliance_summaries(params = {}, options = {})
      request = build_request(:list_compliance_summaries, params)
      request.send_request(options)
    end

    # <important>
    #             <p>Amazon Web Services Systems Manager Change Manager is no longer open to new customers. Existing customers can
    #   continue to use the service as normal. For more information, see
    # <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/change-manager-availability-change.html">Amazon Web Services Systems Manager Change Manager availability change</a>.</p>
    #          </important>
    #          <p>Information about approval reviews for a version of a change template in Change Manager.</p>
    # @param [Hash, Types::ListDocumentMetadataHistoryRequest] params
    # @option params [String] :name
    #   <p>The name of the change template.</p>
    # @option params [String] :document_version
    #   <p>The version of the change template.</p>
    # @option params [String] :metadata
    #   <p>The type of data for which details are being requested. Currently, the only supported value
    #      is <code>DocumentReviews</code>.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DocumentName", # required
    #     document_version: "DocumentVersion",
    #     metadata: "DocumentReviews" # One of: ["DocumentReviews"], # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_document_metadata_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "DocumentName",
    #     document_version: "DocumentVersion",
    #     author: "DocumentAuthor",
    #     metadata: {
    #       reviewer_response: [
    #         {
    #           create_time: Time.now,
    #           updated_time: Time.now,
    #           review_status: "APPROVED" # One of: ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"],
    #           comment: [
    #             {
    #               type: "Comment" # One of: ["Comment"],
    #               content: "DocumentReviewComment"
    #             }
    #           ],
    #           reviewer: "Reviewer"
    #         }
    #       ]
    #     },
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDocumentMetadataHistoryResponse]
    def list_document_metadata_history(params = {}, options = {})
      request = build_request(:list_document_metadata_history, params)
      request.send_request(options)
    end

    # <p>List all versions for a document.</p>
    # @param [Hash, Types::ListDocumentVersionsRequest] params
    # @option params [String] :name
    #   <p>The name of the document. You can specify an Amazon Resource Name (ARN).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DocumentARN", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_document_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_versions: [
    #       {
    #         name: "DocumentName",
    #         display_name: "DocumentDisplayName",
    #         document_version: "DocumentVersion",
    #         version_name: "DocumentVersionName",
    #         created_date: Time.now,
    #         is_default_version: false,
    #         document_format: "YAML" # One of: ["YAML", "JSON", "TEXT"],
    #         status: "Creating" # One of: ["Creating", "Active", "Updating", "Deleting", "Failed"],
    #         status_information: "DocumentStatusInformation",
    #         review_status: "APPROVED" # One of: ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDocumentVersionsResult]
    def list_document_versions(params = {}, options = {})
      request = build_request(:list_document_versions, params)
      request.send_request(options)
    end

    # <p>Returns all Systems Manager (SSM) documents in the current Amazon Web Services account and Amazon Web Services Region. You can
    #    limit the results of this request by using a filter.</p>
    # @param [Hash, Types::ListDocumentsRequest] params
    # @option params [Array<Types::DocumentFilter>] :document_filter_list
    #   <p>This data type is deprecated. Instead, use <code>Filters</code>.</p>
    # @option params [Array<Types::DocumentKeyValuesFilter>] :filters
    #   <p>One or more <code>DocumentKeyValuesFilter</code> objects. Use a filter to return a more
    #      specific list of results. For keys, you can specify one or more key-value pair tags that have
    #      been applied to a document. Other valid keys include <code>Owner</code>, <code>Name</code>,
    #       <code>PlatformTypes</code>, <code>DocumentType</code>, and <code>TargetType</code>. For example,
    #      to return documents you own use <code>Key=Owner,Values=Self</code>. To specify a custom key-value
    #      pair, use the format <code>Key=tag:tagName,Values=valueName</code>.</p>
    #            <note>
    #               <p>This API operation only supports filtering documents by using a single tag key and one or
    #       more tag values. For example: <code>Key=tag:tagName,Values=valueName1,valueName2</code>
    #               </p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     document_filter_list: [
    #       {
    #         key: "Name" # One of: ["Name", "Owner", "PlatformTypes", "DocumentType"], # required
    #         value: "DocumentFilterValue", # required
    #       }
    #     ],
    #     filters: [
    #       {
    #         key: "DocumentKeyValuesFilterKey",
    #         values: ["DocumentKeyValuesFilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_documents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_identifiers: [
    #       {
    #         name: "DocumentARN",
    #         created_date: Time.now,
    #         display_name: "DocumentDisplayName",
    #         owner: "DocumentOwner",
    #         version_name: "DocumentVersionName",
    #         platform_types: ["Windows" # One of: ["Windows", "Linux", "MacOS"]],
    #         document_version: "DocumentVersion",
    #         document_type: "Command" # One of: ["Command", "Policy", "Automation", "Session", "Package", "ApplicationConfiguration", "ApplicationConfigurationSchema", "DeploymentStrategy", "ChangeCalendar", "Automation.ChangeTemplate", "ProblemAnalysis", "ProblemAnalysisTemplate", "CloudFormation", "ConformancePackTemplate", "QuickSetup", "ManualApprovalPolicy", "AutoApprovalPolicy"],
    #         schema_version: "DocumentSchemaVersion",
    #         document_format: "YAML" # One of: ["YAML", "JSON", "TEXT"],
    #         target_type: "TargetType",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         requires: [
    #           {
    #             name: "DocumentARN", # required
    #             version: "DocumentVersion",
    #             require_type: "RequireType",
    #             version_name: "DocumentVersionName"
    #           }
    #         ],
    #         review_status: "APPROVED" # One of: ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"],
    #         author: "DocumentAuthor"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDocumentsResult]
    def list_documents(params = {}, options = {})
      request = build_request(:list_documents, params)
      request.send_request(options)
    end

    # <p>A list of inventory items returned by the request.</p>
    # @param [Hash, Types::ListInventoryEntriesRequest] params
    # @option params [String] :instance_id
    #   <p>The managed node ID for which you want inventory information.</p>
    # @option params [String] :type_name
    #   <p>The type of inventory item for which you want information.</p>
    # @option params [Array<Types::InventoryFilter>] :filters
    #   <p>One or more filters. Use a filter to return a more specific list of results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     type_name: "InventoryItemTypeName", # required
    #     filters: [
    #       {
    #         key: "InventoryFilterKey", # required
    #         values: ["InventoryFilterValue"], # required
    #         type: "Equal" # One of: ["Equal", "NotEqual", "BeginWith", "LessThan", "GreaterThan", "Exists"]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_inventory_entries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     type_name: "InventoryItemTypeName",
    #     instance_id: "InstanceId",
    #     schema_version: "InventoryItemSchemaVersion",
    #     capture_time: "InventoryItemCaptureTime",
    #     entries: [
    #       {
    #         "AttributeName" => "AttributeValue"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListInventoryEntriesResult]
    def list_inventory_entries(params = {}, options = {})
      request = build_request(:list_inventory_entries, params)
      request.send_request(options)
    end

    # <p>Takes in filters and returns a list of managed nodes matching the filter criteria.</p>
    # @param [Hash, Types::ListNodesRequest] params
    # @option params [String] :sync_name
    #   <p>The name of the Amazon Web Services managed resource data sync to retrieve information about.</p>
    #            <p>For cross-account/cross-Region configurations, this parameter is required, and the name of
    #      the supported resource data sync is <code>AWS-QuickSetup-ManagedNode</code>.</p>
    #            <p>For single account/single-Region configurations, the parameter is not required.</p>
    # @option params [Array<Types::NodeFilter>] :filters
    #   <p>One or more filters. Use a filter to return a more specific list of managed nodes.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sync_name: "ResourceDataSyncName",
    #     filters: [
    #       {
    #         key: "AgentType" # One of: ["AgentType", "AgentVersion", "ComputerName", "InstanceId", "InstanceStatus", "IpAddress", "ManagedStatus", "PlatformName", "PlatformType", "PlatformVersion", "ResourceType", "OrganizationalUnitId", "OrganizationalUnitPath", "Region", "AccountId", "SourceType", "SourceId", "SourceLocation", "AvailabilityZone", "AvailabilityZoneId"], # required
    #         values: ["NodeFilterValue"], # required
    #         type: "Equal" # One of: ["Equal", "NotEqual", "BeginWith"]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_nodes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     nodes: [
    #       {
    #         capture_time: Time.now,
    #         id: "NodeId",
    #         owner: {
    #           account_id: "NodeAccountId",
    #           organizational_unit_id: "NodeOrganizationalUnitId",
    #           organizational_unit_path: "NodeOrganizationalUnitPath"
    #         },
    #         region: "NodeRegion",
    #         node_type: {
    #           # One of:
    #           instance: {
    #             agent_type: "AgentType",
    #             agent_version: "AgentVersion",
    #             computer_name: "ComputerName",
    #             instance_status: "InstanceStatus",
    #             ip_address: "IPAddress",
    #             managed_status: "All" # One of: ["All", "Managed", "Unmanaged"],
    #             name: "NodeName",
    #             platform_type: "Windows" # One of: ["Windows", "Linux", "MacOS"],
    #             platform_name: "PlatformName",
    #             platform_version: "PlatformVersion",
    #             resource_type: "ManagedInstance" # One of: ["ManagedInstance", "EC2Instance"],
    #             source_type: "AWS::EC2::Instance" # One of: ["AWS::EC2::Instance", "AWS::IoT::Thing", "AWS::SSM::ManagedInstance", "Microsoft.Compute/virtualMachines"],
    #             source_id: "SourceId",
    #             source_location: "SourceLocation",
    #             availability_zone: "AvailabilityZone",
    #             availability_zone_id: "AvailabilityZoneId"
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListNodesResult]
    def list_nodes(params = {}, options = {})
      request = build_request(:list_nodes, params)
      request.send_request(options)
    end

    # <p>Generates a summary of managed instance/node metadata based on the filters and aggregators
    #    you specify. Results are grouped by the input aggregator you specify.</p>
    # @param [Hash, Types::ListNodesSummaryRequest] params
    # @option params [String] :sync_name
    #   <p>The name of the Amazon Web Services managed resource data sync to retrieve information about.</p>
    #            <p>For cross-account/cross-Region configurations, this parameter is required, and the name of
    #      the supported resource data sync is <code>AWS-QuickSetup-ManagedNode</code>.</p>
    #            <p>For single account/single-Region configurations, the parameter is not required.</p>
    # @option params [Array<Types::NodeFilter>] :filters
    #   <p>One or more filters. Use a filter to generate a summary that matches your specified filter
    #      criteria.</p>
    # @option params [Array<Types::NodeAggregator>] :aggregators
    #   <p>Specify one or more aggregators to return a count of managed nodes that match that
    #      expression. For example, a count of managed nodes by operating system.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.) The call also returns a token that you can specify in a subsequent call to get the next
    #      set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @example ListNodesSummary
    #   # This example illustrates one usage of ListNodesSummary
    #   params = {
    #     sync_name: "AWS-QuickSetup-ManagedNode",
    #     aggregators: [
    #       {
    #         aggregator_type: Count,
    #         type_name: Instance,
    #         attribute_name: Region
    #       }
    #     ],
    #     filters: [
    #       {
    #         key: InstanceStatus,
    #         values: [
    #           "Active"
    #         ],
    #         type: Equal
    #       }
    #     ],
    #     max_results: 2,
    #     next_token: "A9lT8CAxj9aDFRi+MNAoFq08I---EXAMPLE"
    #   }
    #   options = {}
    #   response = client.list_nodes_summary(params, options)
    #   response.to_h #=>
    #   {
    #     summary: [
    #       {
    #         "Count" => "26",
    #         "Region" => "us-east-1"
    #       },
    #       {
    #         "Count" => "7",
    #         "Region" => "us-east-2"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     sync_name: "ResourceDataSyncName",
    #     filters: [
    #       {
    #         key: "AgentType" # One of: ["AgentType", "AgentVersion", "ComputerName", "InstanceId", "InstanceStatus", "IpAddress", "ManagedStatus", "PlatformName", "PlatformType", "PlatformVersion", "ResourceType", "OrganizationalUnitId", "OrganizationalUnitPath", "Region", "AccountId", "SourceType", "SourceId", "SourceLocation", "AvailabilityZone", "AvailabilityZoneId"], # required
    #         values: ["NodeFilterValue"], # required
    #         type: "Equal" # One of: ["Equal", "NotEqual", "BeginWith"]
    #       }
    #     ],
    #     aggregators: [ # required
    #       {
    #         aggregator_type: "Count" # One of: ["Count"], # required
    #         type_name: "Instance" # One of: ["Instance"], # required
    #         attribute_name: "AgentVersion" # One of: ["AgentVersion", "PlatformName", "PlatformType", "PlatformVersion", "Region", "ResourceType", "SourceType", "AvailabilityZone"], # required
    #         aggregators: {
    #           # recursive NodeAggregatorList
    #         }
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_nodes_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary: [
    #       {
    #         "AttributeName" => "AttributeValue"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListNodesSummaryResult]
    def list_nodes_summary(params = {}, options = {})
      request = build_request(:list_nodes_summary, params)
      request.send_request(options)
    end

    # <p>Returns a list of all OpsItem events in the current Amazon Web Services Region and Amazon Web Services account. You can
    #    limit the results to events associated with specific OpsItems by specifying a filter.</p>
    # @param [Hash, Types::ListOpsItemEventsRequest] params
    # @option params [Array<Types::OpsItemEventFilter>] :filters
    #   <p>One or more OpsItem filters. Use a filter to return a more specific list of results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results. </p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         key: "OpsItemId" # One of: ["OpsItemId"], # required
    #         values: ["OpsItemEventFilterValue"], # required
    #         operator: "Equal" # One of: ["Equal"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_ops_item_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     summaries: [
    #       {
    #         ops_item_id: "String",
    #         event_id: "String",
    #         source: "String",
    #         detail_type: "String",
    #         detail: "String",
    #         created_by: {
    #           arn: "String"
    #         },
    #         created_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListOpsItemEventsResponse]
    def list_ops_item_events(params = {}, options = {})
      request = build_request(:list_ops_item_events, params)
      request.send_request(options)
    end

    # <p>Lists all related-item resources associated with a Systems Manager OpsCenter OpsItem. OpsCenter is a
    #    tool in Amazon Web Services Systems Manager.</p>
    # @param [Hash, Types::ListOpsItemRelatedItemsRequest] params
    # @option params [String] :ops_item_id
    #   <p>The ID of the OpsItem for which you want to list all related-item resources.</p>
    # @option params [Array<Types::OpsItemRelatedItemsFilter>] :filters
    #   <p>One or more OpsItem filters. Use a filter to return a more specific list of results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ops_item_id: "OpsItemId",
    #     filters: [
    #       {
    #         key: "ResourceType" # One of: ["ResourceType", "AssociationId", "ResourceUri"], # required
    #         values: ["OpsItemRelatedItemsFilterValue"], # required
    #         operator: "Equal" # One of: ["Equal"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_ops_item_related_items(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     summaries: [
    #       {
    #         ops_item_id: "OpsItemId",
    #         association_id: "OpsItemRelatedItemAssociationId",
    #         resource_type: "OpsItemRelatedItemAssociationResourceType",
    #         association_type: "OpsItemRelatedItemAssociationType",
    #         resource_uri: "OpsItemRelatedItemAssociationResourceUri",
    #         created_by: {
    #           arn: "String"
    #         },
    #         created_time: Time.now,
    #         last_modified_by: {
    #           arn: "String"
    #         },
    #         last_modified_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListOpsItemRelatedItemsResponse]
    def list_ops_item_related_items(params = {}, options = {})
      request = build_request(:list_ops_item_related_items, params)
      request.send_request(options)
    end

    # <p>Amazon Web Services Systems Manager calls this API operation when displaying all Application Manager OpsMetadata objects or
    #    blobs.</p>
    # @param [Hash, Types::ListOpsMetadataRequest] params
    # @option params [Array<Types::OpsMetadataFilter>] :filters
    #   <p>One or more filters to limit the number of OpsMetadata objects returned by the call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         key: "OpsMetadataFilterKey", # required
    #         values: ["OpsMetadataFilterValue"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_ops_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ops_metadata_list: [
    #       {
    #         resource_id: "OpsMetadataResourceId",
    #         ops_metadata_arn: "OpsMetadataArn",
    #         last_modified_date: Time.now,
    #         last_modified_user: "String",
    #         creation_date: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListOpsMetadataResult]
    def list_ops_metadata(params = {}, options = {})
      request = build_request(:list_ops_metadata, params)
      request.send_request(options)
    end

    # <p>Returns a resource-level summary count. The summary includes information about compliant and
    #    non-compliant statuses and detailed compliance-item severity counts, according to the filter
    #    criteria you specify.</p>
    # @param [Hash, Types::ListResourceComplianceSummariesRequest] params
    # @option params [Array<Types::ComplianceStringFilter>] :filters
    #   <p>One or more filters. Use a filter to return a more specific list of results.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         key: "ComplianceStringFilterKey",
    #         values: ["ComplianceFilterValue"],
    #         type: "EQUAL" # One of: ["EQUAL", "NOT_EQUAL", "BEGIN_WITH", "LESS_THAN", "GREATER_THAN"]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_resource_compliance_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_compliance_summary_items: [
    #       {
    #         compliance_type: "ComplianceTypeName",
    #         resource_type: "ComplianceResourceType",
    #         resource_id: "ComplianceResourceId",
    #         status: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT"],
    #         overall_severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"],
    #         execution_summary: {
    #           execution_time: Time.now, # required
    #           execution_id: "ComplianceExecutionId",
    #           execution_type: "ComplianceExecutionType"
    #         },
    #         compliant_summary: {
    #           compliant_count: 1,
    #           severity_summary: {
    #             critical_count: 1,
    #             high_count: 1,
    #             medium_count: 1,
    #             low_count: 1,
    #             informational_count: 1,
    #             unspecified_count: 1
    #           }
    #         },
    #         non_compliant_summary: {
    #           non_compliant_count: 1,
    #           severity_summary: {
    #             critical_count: 1,
    #             high_count: 1,
    #             medium_count: 1,
    #             low_count: 1,
    #             informational_count: 1,
    #             unspecified_count: 1
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResourceComplianceSummariesResult]
    def list_resource_compliance_summaries(params = {}, options = {})
      request = build_request(:list_resource_compliance_summaries, params)
      request.send_request(options)
    end

    # <p>Lists your resource data sync configurations. Includes information about the last time a
    #    sync attempted to start, the last sync status, and the last time a sync successfully
    #    completed.</p>
    #          <p>The number of sync configurations might be too large to return using a single call to
    #     <code>ListResourceDataSync</code>. You can limit the number of sync configurations returned by
    #    using the <code>MaxResults</code> parameter. To determine whether there are more sync
    #    configurations to list, check the value of <code>NextToken</code> in the output. If there are
    #    more sync configurations to list, you can request them by specifying the <code>NextToken</code>
    #    returned in the call to the parameter of a subsequent call. </p>
    # @param [Hash, Types::ListResourceDataSyncRequest] params
    # @option params [String] :sync_type
    #   <p>View a list of resource data syncs according to the sync type. Specify
    #       <code>SyncToDestination</code> to view resource data syncs that synchronize data to an Amazon S3 bucket. Specify <code>SyncFromSource</code> to view resource data syncs from Organizations
    #      or from multiple Amazon Web Services Regions.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you
    #      can specify in a subsequent call to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sync_type: "ResourceDataSyncType",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_resource_data_sync(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_data_sync_items: [
    #       {
    #         sync_name: "ResourceDataSyncName",
    #         sync_type: "ResourceDataSyncType",
    #         sync_source: {
    #           source_type: "ResourceDataSyncSourceType",
    #           aws_organizations_source: {
    #             organization_source_type: "ResourceDataSyncOrganizationSourceType", # required
    #             organizational_units: [
    #               {
    #                 organizational_unit_id: "ResourceDataSyncOrganizationalUnitId"
    #               }
    #             ]
    #           },
    #           source_regions: ["ResourceDataSyncSourceRegion"],
    #           include_future_regions: false,
    #           state: "ResourceDataSyncState",
    #           enable_all_ops_data_sources: false
    #         },
    #         s3_destination: {
    #           bucket_name: "ResourceDataSyncS3BucketName", # required
    #           prefix: "ResourceDataSyncS3Prefix",
    #           sync_format: "JsonSerDe" # One of: ["JsonSerDe"], # required
    #           region: "ResourceDataSyncS3Region", # required
    #           awskms_key_arn: "ResourceDataSyncAWSKMSKeyARN",
    #           destination_data_sharing: {
    #             destination_data_sharing_type: "ResourceDataSyncDestinationDataSharingType"
    #           }
    #         },
    #         last_sync_time: Time.now,
    #         last_successful_sync_time: Time.now,
    #         sync_last_modified_time: Time.now,
    #         last_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #         sync_created_time: Time.now,
    #         last_sync_status_message: "LastResourceDataSyncMessage"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResourceDataSyncResult]
    def list_resource_data_sync(params = {}, options = {})
      request = build_request(:list_resource_data_sync, params)
      request.send_request(options)
    end

    # <p>Returns a list of the tags assigned to the specified resource.</p>
    #          <p>For information about the ID format for each supported resource type, see <a>AddTagsToResource</a>.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_type
    #   <p>Returns a list of tags for a specific resource type.</p>
    # @option params [String] :resource_id
    #   <p>The resource ID for which you want to see a list of tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "Document" # One of: ["Document", "ManagedInstance", "MaintenanceWindow", "Parameter", "PatchBaseline", "OpsItem", "OpsMetadata", "Automation", "Association", "CloudConnector"], # required
    #     resource_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tag_list: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResult]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Shares a Amazon Web Services Systems Manager document (SSM document)publicly or privately. If you share a document
    #    privately, you must specify the Amazon Web Services user IDs for those people who can use the document. If
    #    you share a document publicly, you must specify <i>All</i> as the account
    #    ID.</p>
    # @param [Hash, Types::ModifyDocumentPermissionRequest] params
    # @option params [String] :name
    #   <p>The name of the document that you want to share.</p>
    # @option params [String] :permission_type
    #   <p>The permission type for the document. The permission type can be
    #      <i>Share</i>.</p>
    # @option params [Array<String>] :account_ids_to_add
    #   <p>The Amazon Web Services users that should have access to the document. The account IDs can either be a
    #      group of account IDs or <i>All</i>. You must specify a value for this parameter or
    #      the <code>AccountIdsToRemove</code> parameter.</p>
    # @option params [Array<String>] :account_ids_to_remove
    #   <p>The Amazon Web Services users that should no longer have access to the document. The Amazon Web Services user
    #      can either be a group of account IDs or <i>All</i>. This action has a higher
    #      priority than <code>AccountIdsToAdd</code>. If you specify an ID to add and the same ID to
    #      remove, the system removes access to the document. You must specify a value for this parameter or
    #      the <code>AccountIdsToAdd</code> parameter.</p>
    # @option params [String] :shared_document_version
    #   <p>(Optional) The version of the document to share. If it isn't specified, the system choose
    #      the <code>Default</code> version to share.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DocumentName", # required
    #     permission_type: "Share" # One of: ["Share"], # required
    #     account_ids_to_add: ["AccountId"],
    #     account_ids_to_remove: ["AccountId"],
    #     shared_document_version: "SharedDocumentVersion"
    #   }
    #   options = {}
    #   response = client.modify_document_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ModifyDocumentPermissionResponse]
    def modify_document_permission(params = {}, options = {})
      request = build_request(:modify_document_permission, params)
      request.send_request(options)
    end

    # <p>Registers a compliance type and other compliance details on a designated resource. This
    #    operation lets you register custom compliance details with a resource. This call overwrites
    #    existing compliance information on the resource, so you must provide a full list of compliance
    #    items each time that you send the request.</p>
    #          <p>ComplianceType can be one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>ExecutionId: The execution ID when the patch, association, or custom compliance item was
    #      applied.</p>
    #             </li>
    #             <li>
    #                <p>ExecutionType: Specify patch, association, or Custom:<code>string</code>.</p>
    #             </li>
    #             <li>
    #                <p>ExecutionTime. The time the patch, association, or custom compliance item was applied to
    #      the managed node.</p>
    #                <important>
    #                   <p>For State Manager associations, this represents the time when compliance status was
    #       captured by the Systems Manager service during its internal compliance aggregation workflow, not
    #       necessarily when the association was executed on the managed node. State Manager updates
    #       compliance information for all associations on an instance whenever any association executes,
    #       which may result in multiple associations showing the same execution time.</p>
    #                </important>
    #             </li>
    #             <li>
    #                <p>Id: The patch, association, or custom compliance ID.</p>
    #             </li>
    #             <li>
    #                <p>Title: A title.</p>
    #             </li>
    #             <li>
    #                <p>Status: The status of the compliance item. For example, <code>approved</code> for patches,
    #      or <code>Failed</code> for associations.</p>
    #             </li>
    #             <li>
    #                <p>Severity: A patch severity. For example, <code>Critical</code>.</p>
    #             </li>
    #             <li>
    #                <p>DocumentName: An SSM document name. For example, <code>AWS-RunPatchBaseline</code>.</p>
    #             </li>
    #             <li>
    #                <p>DocumentVersion: An SSM document version number. For example, 4.</p>
    #             </li>
    #             <li>
    #                <p>Classification: A patch classification. For example, <code>security updates</code>.</p>
    #             </li>
    #             <li>
    #                <p>PatchBaselineId: A patch baseline ID.</p>
    #             </li>
    #             <li>
    #                <p>PatchSeverity: A patch severity. For example, <code>Critical</code>.</p>
    #             </li>
    #             <li>
    #                <p>PatchState: A patch state. For example, <code>InstancesWithFailedPatches</code>.</p>
    #             </li>
    #             <li>
    #                <p>PatchGroup: The name of a patch group.</p>
    #             </li>
    #             <li>
    #                <p>InstalledTime: The time the association, patch, or custom compliance item was applied to
    #      the resource. Specify the time by using the following format:
    #       <code>yyyy-MM-dd'T'HH:mm:ss'Z'</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::PutComplianceItemsRequest] params
    # @option params [String] :resource_id
    #   <p>Specify an ID for this resource. For a managed node, this is the node ID.</p>
    # @option params [String] :resource_type
    #   <p>Specify the type of resource. <code>ManagedInstance</code> is currently the only supported
    #      resource type.</p>
    # @option params [String] :compliance_type
    #   <p>Specify the compliance type. For example, specify Association (for a State Manager
    #      association), Patch, or Custom:<code>string</code>.</p>
    # @option params [Types::ComplianceExecutionSummary] :execution_summary
    #   <p>A summary of the call execution that includes an execution ID, the type of execution (for
    #      example, <code>Command</code>), and the date/time of the execution using a datetime object that
    #      is saved in the following format: <code>yyyy-MM-dd'T'HH:mm:ss'Z'</code>
    #            </p>
    # @option params [Array<Types::ComplianceItemEntry>] :items
    #   <p>Information about the compliance as defined by the resource type. For example, for a patch
    #      compliance type, <code>Items</code> includes information about the PatchSeverity, Classification,
    #      and so on.</p>
    # @option params [String] :item_content_hash
    #   <p>MD5 or SHA-256 content hash. The content hash is used to determine if existing information
    #      should be overwritten or ignored. If the content hashes match, the request to put compliance
    #      information is ignored.</p>
    # @option params [String] :upload_type
    #   <p>The mode for uploading compliance items. You can specify <code>COMPLETE</code> or
    #       <code>PARTIAL</code>. In <code>COMPLETE</code> mode, the system overwrites all existing
    #      compliance information for the resource. You must provide a full list of compliance items each
    #      time you send the request.</p>
    #            <p>In <code>PARTIAL</code> mode, the system overwrites compliance information for a specific
    #      association. The association must be configured with <code>SyncCompliance</code> set to
    #       <code>MANUAL</code>. By default, all requests use <code>COMPLETE</code> mode.</p>
    #            <note>
    #               <p>This attribute is only valid for association compliance.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ComplianceResourceId", # required
    #     resource_type: "ComplianceResourceType", # required
    #     compliance_type: "ComplianceTypeName", # required
    #     execution_summary: { # required
    #       execution_time: Time.now, # required
    #       execution_id: "ComplianceExecutionId",
    #       execution_type: "ComplianceExecutionType"
    #     },
    #     items: [ # required
    #       {
    #         id: "ComplianceItemId",
    #         title: "ComplianceItemTitle",
    #         severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"], # required
    #         status: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT"], # required
    #         details: {
    #           "AttributeName" => "AttributeValue"
    #         }
    #       }
    #     ],
    #     item_content_hash: "ComplianceItemContentHash",
    #     upload_type: "COMPLETE" # One of: ["COMPLETE", "PARTIAL"]
    #   }
    #   options = {}
    #   response = client.put_compliance_items(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutComplianceItemsResult]
    def put_compliance_items(params = {}, options = {})
      request = build_request(:put_compliance_items, params)
      request.send_request(options)
    end

    # <p>Bulk update custom inventory items on one or more managed nodes. The request adds an
    #    inventory item, if it doesn't already exist, or updates an inventory item, if it does
    #    exist.</p>
    # @param [Hash, Types::PutInventoryRequest] params
    # @option params [String] :instance_id
    #   <p>An managed node ID where you want to add or update inventory items.</p>
    # @option params [Array<Types::InventoryItem>] :items
    #   <p>The inventory items that you want to add or update on managed nodes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     items: [ # required
    #       {
    #         type_name: "InventoryItemTypeName", # required
    #         schema_version: "InventoryItemSchemaVersion", # required
    #         capture_time: "InventoryItemCaptureTime", # required
    #         content_hash: "InventoryItemContentHash",
    #         content: [
    #           {
    #             "AttributeName" => "AttributeValue"
    #           }
    #         ],
    #         context: {
    #           "AttributeName" => "AttributeValue"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_inventory(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "PutInventoryMessage"
    #   }
    # @return [Types::PutInventoryResult]
    def put_inventory(params = {}, options = {})
      request = build_request(:put_inventory, params)
      request.send_request(options)
    end

    # <p>Create or update a parameter in Parameter Store.</p>
    #          <note>
    #             <p>Parameter Store throughput defines the number of API transactions per second (TPS) that
    #     Systems Manager can process. This applies to <code>GetParameter</code>,
    #     <code>GetParameters</code>, and <code>PutParameter</code> API calls for your Amazon Web Services account and
    #     Amazon Web Services Region. By default, Parameter Store is configured with a standard throughput quota suitable
    #     for low- to moderate-volume workloads. Applications that retrieve configuration data infrequently
    #     or operate at smaller scale can use this default setting without additional cost.</p>
    #             <p>For higher-volume workloads, you can enable higher throughput. This increases the maximum
    #     number of supported transactions per second for your account and Region. Increased throughput
    #     supports applications and workloads that need concurrent access to multiple parameters. If you
    #     experience <code>ThrottlingException: Rate exceeded</code> errors, enable higher throughput. For
    #     more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-throughput.html">Changing Parameter Store
    #      throughput</a>.</p>
    #          </note>
    # @param [Hash, Types::PutParameterRequest] params
    # @option params [String] :name
    #   <p>The fully qualified name of the parameter that you want to create or update.</p>
    #            <note>
    #               <p>You can't enter the Amazon Resource Name (ARN) for a parameter, only the parameter name
    #       itself.</p>
    #            </note>
    #            <p>The fully qualified name includes the complete hierarchy of the parameter path and name. For
    #      parameters in a hierarchy, you must include a leading forward slash character (/) when you create
    #      or reference a parameter. For example: <code>/Dev/DBServer/MySQL/db-string13</code>
    #            </p>
    #            <p>Naming Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Parameter names are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>A parameter name must be unique within an Amazon Web Services Region</p>
    #               </li>
    #               <li>
    #                  <p>A parameter name can't be prefixed with "<code>aws</code>" or "<code>ssm</code>"
    #        (case-insensitive).</p>
    #               </li>
    #               <li>
    #                  <p>Parameter names can include only the following symbols and letters:
    #         <code>a-zA-Z0-9_.-</code>
    #                  </p>
    #                  <p>In addition, the slash character ( / ) is used to delineate hierarchies in parameter
    #        names. For example: <code>/Dev/Production/East/Project-ABC/MyParameter</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Parameter names can't contain spaces. The service removes any spaces specified for
    #        the beginning or end of a parameter name. If the specified name for a parameter contains spaces
    #        between characters, the request fails with a <code>ValidationException</code> error.</p>
    #               </li>
    #               <li>
    #                  <p>Parameter hierarchies are limited to a maximum depth of fifteen levels.</p>
    #               </li>
    #            </ul>
    #            <p>For additional information about valid values for parameter names, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-su-create.html">Creating Systems Manager parameters</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            <note>
    #               <p>The reported maximum length of 2048 characters for a parameter name includes 1037
    #       characters that are reserved for internal use by Systems Manager. The maximum length for a parameter name
    #       that you specify is 1011 characters.</p>
    #               <p>This count of 1011 characters includes the characters in the ARN that precede the name you
    #       specify. This ARN length will vary depending on your partition and Region. For example, the
    #       following 45 characters count toward the 1011 character maximum for a parameter created in the
    #       US East (Ohio) Region: <code>arn:aws:ssm:us-east-2:111122223333:parameter/</code>.</p>
    #            </note>
    # @option params [String] :description
    #   <p>Information about the parameter that you want to add to the system. Optional but
    #      recommended.</p>
    #            <important>
    #               <p>Don't enter personally identifiable information in this field.</p>
    #            </important>
    # @option params [String] :value
    #   <p>The parameter value that you want to add to the system. Standard parameters have a value
    #      limit of 4 KB. Advanced parameters have a value limit of 8 KB.</p>
    #            <note>
    #               <p>Parameters can't be referenced or nested in the values of other parameters. You can't
    #       include values wrapped in double brackets <code>{{}}</code> or
    #         <code>{{ssm:<i>parameter-name</i>}}</code> in a parameter value.</p>
    #            </note>
    # @option params [String] :type
    #   <p>The type of parameter that you want to create.</p>
    #            <note>
    #               <p>
    #                  <code>SecureString</code> isn't currently supported for CloudFormation templates.</p>
    #            </note>
    #            <p>Items in a <code>StringList</code> must be separated by a comma (,). You can't
    #      use other punctuation or special character to escape items in the list. If you have a parameter
    #      value that requires a comma, then use the <code>String</code> data type.</p>
    #            <important>
    #               <p>Specifying a parameter type isn't required when updating a parameter. You must specify a
    #       parameter type when creating a parameter.</p>
    #            </important>
    # @option params [String] :key_id
    #   <p>The Key Management Service (KMS) ID that you want to use to encrypt a
    #      parameter. Use a custom key for better security. Required for parameters that use the <code>SecureString</code> data type.</p>
    #            <p>If you don't specify a key ID, the system uses the default key associated with your
    #      Amazon Web Services account, which is not as secure as using a custom key.</p>
    #            <ul>
    #               <li>
    #                  <p>To use a custom KMS key, choose the <code>SecureString</code>
    #        data type with the <code>Key ID</code> parameter.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :overwrite
    #   <p>Overwrite an existing parameter. The default value is <code>false</code>.</p>
    # @option params [String] :allowed_pattern
    #   <p>A regular expression used to validate the parameter value. For example, for String types
    #      with values restricted to numbers, you can specify the following: AllowedPattern=^\d+$ </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Optional metadata that you assign to a resource. Tags enable you to categorize a resource in
    #      different ways, such as by purpose, owner, or environment. For example, you might want to tag a
    #      Systems Manager parameter to identify the type of resource to which it applies, the environment, or the
    #      type of configuration data referenced by the parameter. In this case, you could specify the
    #      following key-value pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=Resource,Value=S3bucket</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=OS,Value=Windows</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=ParameterType,Value=LicenseKey</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>To add tags to an existing Systems Manager parameter, use the <a>AddTagsToResource</a>
    #       operation.</p>
    #            </note>
    # @option params [String] :tier
    #   <p>The parameter tier to assign to a parameter.</p>
    #            <p>Parameter Store offers a standard tier and an advanced tier for parameters. Standard
    #      parameters have a content size limit of 4 KB and can't be configured to use parameter policies.
    #      You can create a maximum of 10,000 standard parameters for each Region in an Amazon Web Services account.
    #      Standard parameters are offered at no additional cost. </p>
    #            <p>Advanced parameters have a content size limit of 8 KB and can be configured to use parameter
    #      policies. You can create a maximum of 100,000 advanced parameters for each Region in an
    #      Amazon Web Services account. Advanced parameters incur a charge. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html">Managing
    #       parameter tiers</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            <p>You can change a standard parameter to an advanced parameter any time. But you can't revert
    #      an advanced parameter to a standard parameter. Reverting an advanced parameter to a standard
    #      parameter would result in data loss because the system would truncate the size of the parameter
    #      from 8 KB to 4 KB. Reverting would also remove any policies attached to the parameter. Lastly,
    #      advanced parameters use a different form of encryption than standard parameters. </p>
    #            <p>If you no longer need an advanced parameter, or if you no longer want to incur charges for
    #      an advanced parameter, you must delete it and recreate it as a new standard parameter. </p>
    #            <p>
    #               <b>Using the Default Tier Configuration</b>
    #            </p>
    #            <p>In <code>PutParameter</code> requests, you can specify the tier to create the parameter in.
    #      Whenever you specify a tier in the request, Parameter Store creates or updates the parameter
    #      according to that request. However, if you don't specify a tier in a request, Parameter Store
    #      assigns the tier based on the current Parameter Store default tier configuration.</p>
    #            <p>The default tier when you begin using Parameter Store is the standard-parameter tier. If you
    #      use the advanced-parameter tier, you can specify one of the following as the default:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Advanced</b>: With this option, Parameter Store evaluates all
    #        requests as advanced parameters. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Intelligent-Tiering</b>: With this option, Parameter Store
    #        evaluates each request to determine if the parameter is standard or advanced. </p>
    #                  <p>If the request doesn't include any options that require an advanced parameter, the
    #        parameter is created in the standard-parameter tier. If one or more options requiring an
    #        advanced parameter are included in the request, Parameter Store create a parameter in the
    #        advanced-parameter tier.</p>
    #                  <p>This approach helps control your parameter-related costs by always creating standard
    #        parameters unless an advanced parameter is necessary. </p>
    #               </li>
    #            </ul>
    #            <p>Options that require an advanced parameter include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>The content size of the parameter is more than 4 KB.</p>
    #               </li>
    #               <li>
    #                  <p>The parameter uses a parameter policy.</p>
    #               </li>
    #               <li>
    #                  <p>More than 10,000 parameters already exist in your Amazon Web Services account in the current
    #        Amazon Web Services Region.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about configuring the default tier option, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html#ps-default-tier">Specifying a default parameter tier</a> in the
    #      <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [String] :policies
    #   <p>One or more policies to apply to a parameter. This operation takes a JSON array. Parameter
    #      Store, a tool in Amazon Web Services Systems Manager supports the following policy types:</p>
    #            <p>Expiration: This policy deletes the parameter after it expires. When you create the policy,
    #      you specify the expiration date. You can update the expiration date and time by updating the
    #      policy. Updating the <i>parameter</i> doesn't affect the expiration date and time.
    #      When the expiration time is reached, Parameter Store deletes the parameter.</p>
    #            <p>ExpirationNotification: This policy initiates an event in Amazon CloudWatch Events that
    #      notifies you about the expiration. By using this policy, you can receive notification before or
    #      after the expiration time is reached, in units of days or hours.</p>
    #            <p>NoChangeNotification: This policy initiates a CloudWatch Events event if a parameter hasn't
    #      been modified for a specified period of time. This policy type is useful when, for example, a
    #      secret needs to be changed within a period of time, but it hasn't been changed.</p>
    #            <p>All existing policies are preserved until you send new policies or an empty policy. For more
    #      information about parameter policies, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-policies.html">Assigning parameter
    #       policies</a>. </p>
    # @option params [String] :data_type
    #   <p>The data type for a <code>String</code> parameter. Supported data types include plain text
    #      and Amazon Machine Image (AMI) IDs.</p>
    #            <p>
    #               <b>The following data type values are supported.</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>text</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>aws:ec2:image</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>aws:ssm:integration</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>When you create a <code>String</code> parameter and specify <code>aws:ec2:image</code>,
    #      Amazon Web Services Systems Manager validates the parameter value is in the required format, such as
    #       <code>ami-12345abcdeEXAMPLE</code>, and that the specified AMI is available in your
    #      Amazon Web Services account.</p>
    #            <note>
    #               <p>If the action is successful, the service sends back an HTTP 200 response which indicates a
    #       successful <code>PutParameter</code> call for all cases except for data type
    #        <code>aws:ec2:image</code>. If you call <code>PutParameter</code> with
    #        <code>aws:ec2:image</code> data type, a successful HTTP 200 response does not guarantee that
    #       your parameter was successfully created or updated. The <code>aws:ec2:image</code> value is
    #       validated asynchronously, and the <code>PutParameter</code> call returns before the validation
    #       is complete. If you submit an invalid AMI value, the PutParameter operation will return success,
    #       but the asynchronous validation will fail and the parameter will not be created or updated. To
    #       monitor whether your <code>aws:ec2:image</code> parameters are created successfully, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-cwe.html">Setting
    #        up notifications or trigger actions based on Parameter Store events</a>. For more
    #       information about AMI format validation , see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-ec2-aliases.html">Native parameter
    #        support for Amazon Machine Image IDs</a>. </p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PSParameterName", # required
    #     description: "ParameterDescription",
    #     value: "PSParameterValue", # required
    #     type: "String" # One of: ["String", "StringList", "SecureString"],
    #     key_id: "ParameterKeyId",
    #     overwrite: false,
    #     allowed_pattern: "AllowedPattern",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     tier: "Standard" # One of: ["Standard", "Advanced", "Intelligent-Tiering"],
    #     policies: "ParameterPolicies",
    #     data_type: "ParameterDataType"
    #   }
    #   options = {}
    #   response = client.put_parameter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     version: 1,
    #     tier: "Standard" # One of: ["Standard", "Advanced", "Intelligent-Tiering"]
    #   }
    # @return [Types::PutParameterResult]
    def put_parameter(params = {}, options = {})
      request = build_request(:put_parameter, params)
      request.send_request(options)
    end

    # <p>Creates or updates a Systems Manager resource policy. A resource policy helps you to define the
    #     IAM entity (for example, an Amazon Web Services account) that can manage your Systems Manager resources.
    #    The following resources support Systems Manager resource policies.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>OpsItemGroup</code> - The resource policy for <code>OpsItemGroup</code> enables
    #      Amazon Web Services accounts to view and interact with OpsCenter operational work items (OpsItems).</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Parameter</code> - The resource policy is used to share a parameter with other
    #      accounts using Resource Access Manager (RAM). </p>
    #                <p>To share a parameter, it must be in the advanced parameter tier. For information about
    #      parameter tiers, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html">Managing
    #       parameter tiers</a>. For information about changing an existing standard parameter to an
    #      advanced parameter, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html#parameter-store-advanced-parameters-enabling">Changing a standard parameter to an advanced parameter</a>.</p>
    #                <p>To share a <code>SecureString</code> parameter, it must be encrypted with a customer managed key, and you must share the key separately through Key Management Service. Amazon Web Services managed keys cannot be shared. Parameters encrypted with the default Amazon Web Services managed key can be updated to use a customer managed key instead. For KMS key definitions, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html">KMS concepts</a> in the
    #        <i>Key Management Service Developer Guide</i>.</p>
    #                <important>
    #                   <p>While you can share a parameter using the Systems Manager <code>PutResourcePolicy</code> operation,
    #       we recommend using Resource Access Manager (RAM) instead. This is because using
    #        <code>PutResourcePolicy</code> requires the extra step of promoting the parameter to a
    #       standard RAM Resource Share using the RAM
    #       <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html">PromoteResourceShareCreatedFromPolicy</a> API operation. Otherwise, the parameter won't
    #       be returned by the Systems Manager <a href="https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_DescribeParameters.html">DescribeParameters</a> API operation using the <code>--shared</code> option.</p>
    #                   <p>For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-shared-parameters.html#share">Sharing a
    #        parameter</a> in the <i>Amazon Web Services Systems Manager User Guide</i>
    #                   </p>
    #                </important>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Document</code> – Shares the document using Resource Access Manager (RAM). For more information about sharing documents, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/documents-ssm-sharing.html">Sharing
    #       Systems Manager documents</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>While you can share a document using the Systems Manager <code>PutResourcePolicy</code> operation, we
    #     recommend using Resource Access Manager (RAM) instead. Using
    #      <code>PutResourcePolicy</code> requires an extra step. You must promote the document to a
    #     standard RAM Resource Share using the RAM <a href="https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html">PromoteResourceShareCreatedFromPolicy</a> API operation. Otherwise, the Systems Manager <a href="https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_ListDocuments.html">ListDocuments</a> API operation won't return the document when filtering for shared
    #     documents. The Amazon Web Services Config <a href="https://docs.aws.amazon.com/config/latest/APIReference/API_PutRemediationConfigurations.html">PutRemediationConfigurations</a> API operation also can't use the document.</p>
    #          </important>
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource to which you want to attach a policy.</p>
    # @option params [String] :policy
    #   <p>A policy you want to associate with a resource.</p>
    # @option params [String] :policy_id
    #   <p>The policy ID.</p>
    # @option params [String] :policy_hash
    #   <p>ID of the current policy version. The hash helps to prevent a situation where multiple users
    #      attempt to overwrite a policy. You must provide this hash when updating or deleting a
    #      policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArnString", # required
    #     policy: "Policy", # required
    #     policy_id: "PolicyId",
    #     policy_hash: "PolicyHash"
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_id: "PolicyId",
    #     policy_hash: "PolicyHash"
    #   }
    # @return [Types::PutResourcePolicyResponse]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Defines the default patch baseline for the relevant operating system.</p>
    #          <p>To reset the Amazon Web Services-predefined patch baseline as the default, specify the full patch baseline
    #    Amazon Resource Name (ARN) as the baseline ID value. For example, for CentOS, specify
    #     <code>arn:aws:ssm:us-east-2:733109147000:patchbaseline/pb-0574b43a65ea646ed</code> instead of
    #     <code>pb-0574b43a65ea646ed</code>.</p>
    # @param [Hash, Types::RegisterDefaultPatchBaselineRequest] params
    # @option params [String] :baseline_id
    #   <p>The ID of the patch baseline that should be the default patch baseline.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     baseline_id: "BaselineId", # required
    #   }
    #   options = {}
    #   response = client.register_default_patch_baseline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     baseline_id: "BaselineId"
    #   }
    # @return [Types::RegisterDefaultPatchBaselineResult]
    def register_default_patch_baseline(params = {}, options = {})
      request = build_request(:register_default_patch_baseline, params)
      request.send_request(options)
    end

    # <p>Registers a patch baseline for a patch group.</p>
    # @param [Hash, Types::RegisterPatchBaselineForPatchGroupRequest] params
    # @option params [String] :baseline_id
    #   <p>The ID of the patch baseline to register with the patch group.</p>
    # @option params [String] :patch_group
    #   <p>The name of the patch group to be registered with the patch baseline.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     baseline_id: "BaselineId", # required
    #     patch_group: "PatchGroup", # required
    #   }
    #   options = {}
    #   response = client.register_patch_baseline_for_patch_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     baseline_id: "BaselineId",
    #     patch_group: "PatchGroup"
    #   }
    # @return [Types::RegisterPatchBaselineForPatchGroupResult]
    def register_patch_baseline_for_patch_group(params = {}, options = {})
      request = build_request(:register_patch_baseline_for_patch_group, params)
      request.send_request(options)
    end

    # <p>Registers a target with a maintenance window.</p>
    # @param [Hash, Types::RegisterTargetWithMaintenanceWindowRequest] params
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window the target should be registered with.</p>
    # @option params [String] :resource_type
    #   <p>The type of target being registered with the maintenance window.</p>
    # @option params [Array<Types::Target>] :targets
    #   <p>The targets to register with the maintenance window. In other words, the managed nodes to
    #      run commands on when the maintenance window runs.</p>
    #            <note>
    #               <p>If a single maintenance window task is registered with multiple targets, its task
    #       invocations occur sequentially and not in parallel. If your task must run on multiple targets at
    #       the same time, register a task for each target individually and assign each task the same
    #       priority level.</p>
    #            </note>
    #            <p>You can specify targets using managed node IDs, resource group names, or tags that have been
    #      applied to managed nodes.</p>
    #            <p>
    #               <b>Example 1</b>: Specify managed node IDs</p>
    #            <p>
    #               <code>Key=InstanceIds,Values=<instance-id-1>,<instance-id-2>,<instance-id-3></code>
    #            </p>
    #            <p>
    #               <b>Example 2</b>: Use tag key-pairs applied to managed
    #      nodes</p>
    #            <p>
    #               <code>Key=tag:<my-tag-key>,Values=<my-tag-value-1>,<my-tag-value-2></code>
    #            </p>
    #            <p>
    #               <b>Example 3</b>: Use tag-keys applied to managed nodes</p>
    #            <p>
    #               <code>Key=tag-key,Values=<my-tag-key-1>,<my-tag-key-2></code>
    #            </p>
    #            <p>
    #               <b>Example 4</b>: Use resource group names</p>
    #            <p>
    #               <code>Key=resource-groups:Name,Values=<resource-group-name></code>
    #            </p>
    #            <p>
    #               <b>Example 5</b>: Use filters for resource group types</p>
    #            <p>
    #               <code>Key=resource-groups:ResourceTypeFilters,Values=<resource-type-1>,<resource-type-2></code>
    #            </p>
    #            <note>
    #               <p>For <code>Key=resource-groups:ResourceTypeFilters</code>, specify resource types in the
    #       following format</p>
    #               <p>
    #                  <code>Key=resource-groups:ResourceTypeFilters,Values=AWS::EC2::INSTANCE,AWS::EC2::VPC</code>
    #               </p>
    #            </note>
    #            <p>For more information about these examples formats, including the best use case for each one,
    #      see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/mw-cli-tutorial-targets-examples.html">Examples: Register
    #       targets with a maintenance window</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [String] :owner_information
    #   <p>User-provided value that will be included in any Amazon CloudWatch Events events raised while
    #      running tasks for these targets in this maintenance window.</p>
    # @option params [String] :name
    #   <p>An optional name for the target.</p>
    # @option params [String] :description
    #   <p>An optional description for the target.</p>
    # @option params [String] :client_token
    #   <p>User-provided idempotency token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     window_id: "MaintenanceWindowId", # required
    #     resource_type: "INSTANCE" # One of: ["INSTANCE", "RESOURCE_GROUP"], # required
    #     targets: [ # required
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"]
    #       }
    #     ],
    #     owner_information: "OwnerInformation",
    #     name: "MaintenanceWindowName",
    #     description: "MaintenanceWindowDescription",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.register_target_with_maintenance_window(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     window_target_id: "MaintenanceWindowTargetId"
    #   }
    # @return [Types::RegisterTargetWithMaintenanceWindowResult]
    def register_target_with_maintenance_window(params = {}, options = {})
      request = build_request(:register_target_with_maintenance_window, params)
      request.send_request(options)
    end

    # <p>Adds a new task to a maintenance window.</p>
    # @param [Hash, Types::RegisterTaskWithMaintenanceWindowRequest] params
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window the task should be added to.</p>
    # @option params [Array<Types::Target>] :targets
    #   <p>The targets (either managed nodes or maintenance window targets).</p>
    #            <note>
    #               <p>One or more targets must be specified for maintenance window Run Command-type tasks.
    #       Depending on the task, targets are optional for other maintenance window task types (Automation,
    #        Lambda, and Step Functions). For more information about running tasks
    #       that don't specify targets, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">Registering
    #        maintenance window tasks without targets</a> in the
    #       <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            </note>
    #            <p>Specify managed nodes using the following format: </p>
    #            <p>
    #               <code>Key=InstanceIds,Values=<instance-id-1>,<instance-id-2></code>
    #            </p>
    #            <p>Specify maintenance window targets using the following format:</p>
    #            <p>
    #               <code>Key=WindowTargetIds,Values=<window-target-id-1>,<window-target-id-2></code>
    #            </p>
    # @option params [String] :task_arn
    #   <p>The ARN of the task to run.</p>
    # @option params [String] :service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role for
    #                   Amazon Web Services Systems Manager to assume when running a maintenance window task. If you do not specify a
    #                   service role ARN, Systems Manager uses a service-linked role in your account. If no
    #                   appropriate service-linked role for Systems Manager exists in your account, it is created when
    #                   you run <code>RegisterTaskWithMaintenanceWindow</code>.</p>
    #            <p>However, for an improved security posture, we strongly recommend creating a custom
    #                   policy and custom service role for running your maintenance window tasks. The policy
    #                   can be crafted to provide only the permissions needed for your particular
    #                   maintenance window tasks. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html">Setting up Maintenance Windows</a> in the in the
    #                       <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [String] :task_type
    #   <p>The type of task being registered.</p>
    # @option params [Hash<String, Types::MaintenanceWindowTaskParameterValueExpression>] :task_parameters
    #   <p>The parameters that should be passed to the task when it is run.</p>
    #            <note>
    #               <p>
    #                  <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
    #         instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
    #         about how Systems Manager handles these options for the supported maintenance window task
    #         types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #            </note>
    # @option params [Types::MaintenanceWindowTaskInvocationParameters] :task_invocation_parameters
    #   <p>The parameters that the task should use during execution. Populate only the fields that
    #      match the task type. All other fields should be empty. </p>
    # @option params [Integer] :priority
    #   <p>The priority of the task in the maintenance window, the lower the number the higher the
    #      priority. Tasks in a maintenance window are scheduled in priority order with tasks that have the
    #      same priority scheduled in parallel.</p>
    # @option params [String] :max_concurrency
    #   <p>The maximum number of targets this task can be run for, in parallel.</p>
    #            <note>
    #               <p>Although this element is listed as "Required: No", a value can be omitted only when you are
    #       registering or updating a <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">targetless
    #        task</a> You must provide a value in all other cases.</p>
    #               <p>For maintenance window tasks without a target specified, you can't supply a value for this
    #       option. Instead, the system inserts a placeholder value of <code>1</code>. This value doesn't
    #       affect the running of your task.</p>
    #            </note>
    # @option params [String] :max_errors
    #   <p>The maximum number of errors allowed before this task stops being scheduled.</p>
    #            <note>
    #               <p>Although this element is listed as "Required: No", a value can be omitted only when you are
    #       registering or updating a <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">targetless
    #        task</a> You must provide a value in all other cases.</p>
    #               <p>For maintenance window tasks without a target specified, you can't supply a value for this
    #       option. Instead, the system inserts a placeholder value of <code>1</code>. This value doesn't
    #       affect the running of your task.</p>
    #            </note>
    # @option params [Types::LoggingInfo] :logging_info
    #   <p>A structure containing information about an Amazon Simple Storage Service (Amazon S3) bucket
    #      to write managed node-level logs to. </p>
    #            <note>
    #               <p>
    #                  <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
    #         <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
    #         For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
    #         window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #            </note>
    # @option params [String] :name
    #   <p>An optional name for the task.</p>
    # @option params [String] :description
    #   <p>An optional description for the task.</p>
    # @option params [String] :client_token
    #   <p>User-provided idempotency token.</p>
    # @option params [String] :cutoff_behavior
    #   <p>Indicates whether tasks should continue to run after the cutoff time specified in the
    #      maintenance windows is reached. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CONTINUE_TASK</code>: When the cutoff time is reached, any tasks that are running
    #        continue. The default value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCEL_TASK</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>For Automation, Lambda, Step Functions tasks: When the cutoff
    #          time is reached, any task invocations that are already running continue, but no new task
    #          invocations are started.</p>
    #                     </li>
    #                     <li>
    #                        <p>For Run Command tasks: When the cutoff time is reached, the system sends a <a>CancelCommand</a> operation that attempts to cancel the command associated with the
    #          task. However, there is no guarantee that the command will be terminated and the underlying
    #          process stopped.</p>
    #                     </li>
    #                  </ul>
    #                  <p>The status for tasks that are not completed is <code>TIMED_OUT</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Types::AlarmConfiguration] :alarm_configuration
    #   <p>The CloudWatch alarm you want to apply to your maintenance window task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     window_id: "MaintenanceWindowId", # required
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"]
    #       }
    #     ],
    #     task_arn: "MaintenanceWindowTaskArn", # required
    #     service_role_arn: "ServiceRole",
    #     task_type: "RUN_COMMAND" # One of: ["RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"], # required
    #     task_parameters: {
    #       "MaintenanceWindowTaskParameterName" => {
    #         values: ["MaintenanceWindowTaskParameterValue"]
    #       }
    #     },
    #     task_invocation_parameters: {
    #       run_command: {
    #         comment: "Comment",
    #         cloud_watch_output_config: {
    #           cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #           cloud_watch_output_enabled: false
    #         },
    #         document_hash: "DocumentHash",
    #         document_hash_type: "Sha256" # One of: ["Sha256", "Sha1"],
    #         document_version: "DocumentVersion",
    #         notification_config: {
    #           notification_arn: "NotificationArn",
    #           notification_events: ["All" # One of: ["All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"]],
    #           notification_type: "Command" # One of: ["Command", "Invocation"]
    #         },
    #         output_s3_bucket_name: "S3BucketName",
    #         output_s3_key_prefix: "S3KeyPrefix",
    #         parameters: {
    #           "ParameterName" => ["ParameterValue"]
    #         },
    #         service_role_arn: "ServiceRole",
    #         timeout_seconds: 1
    #       },
    #       automation: {
    #         document_version: "DocumentVersion",
    #         parameters: {
    #           "AutomationParameterKey" => ["AutomationParameterValue"]
    #         }
    #       },
    #       step_functions: {
    #         input: "MaintenanceWindowStepFunctionsInput",
    #         name: "MaintenanceWindowStepFunctionsName"
    #       },
    #       lambda: {
    #         client_context: "MaintenanceWindowLambdaClientContext",
    #         qualifier: "MaintenanceWindowLambdaQualifier",
    #         payload: "data"
    #       }
    #     },
    #     priority: 1,
    #     max_concurrency: "MaxConcurrency",
    #     max_errors: "MaxErrors",
    #     logging_info: {
    #       s3_bucket_name: "S3BucketName", # required
    #       s3_key_prefix: "S3KeyPrefix",
    #       s3_region: "S3Region", # required
    #     },
    #     name: "MaintenanceWindowName",
    #     description: "MaintenanceWindowDescription",
    #     client_token: "ClientToken",
    #     cutoff_behavior: "CONTINUE_TASK" # One of: ["CONTINUE_TASK", "CANCEL_TASK"],
    #     alarm_configuration: {
    #       ignore_poll_alarm_failure: false,
    #       alarms: [ # required
    #         {
    #           name: "AlarmName", # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.register_task_with_maintenance_window(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     window_task_id: "MaintenanceWindowTaskId"
    #   }
    # @return [Types::RegisterTaskWithMaintenanceWindowResult]
    def register_task_with_maintenance_window(params = {}, options = {})
      request = build_request(:register_task_with_maintenance_window, params)
      request.send_request(options)
    end

    # <p>Removes tag keys from the specified resource.</p>
    # @param [Hash, Types::RemoveTagsFromResourceRequest] params
    # @option params [String] :resource_type
    #   <p>The type of resource from which you want to remove a tag.</p>
    #            <note>
    #               <p>The <code>ManagedInstance</code> type for this API operation is only for on-premises
    #       managed nodes. Specify the name of the managed node in the following format:
    #         <code>mi-<i>ID_number</i>
    #                  </code>. For example,
    #       <code>mi-1a2b3c4d5e6f</code>.</p>
    #            </note>
    # @option params [String] :resource_id
    #   <p>The ID of the resource from which you want to remove tags. For example:</p>
    #            <p>ManagedInstance: mi-012345abcde</p>
    #            <p>MaintenanceWindow: mw-012345abcde</p>
    #            <p>
    #               <code>Automation</code>: <code>example-c160-4567-8519-012345abcde</code>
    #            </p>
    #            <p>PatchBaseline: pb-012345abcde</p>
    #            <p>OpsMetadata object: <code>ResourceID</code> for tagging is created from the Amazon Resource
    #      Name (ARN) for the object. Specifically, <code>ResourceID</code> is created from the strings that
    #      come after the word <code>opsmetadata</code> in the ARN. For example, an OpsMetadata object with
    #      an ARN of <code>arn:aws:ssm:us-east-2:1234567890:opsmetadata/aws/ssm/MyGroup/appmanager</code>
    #      has a <code>ResourceID</code> of either <code>aws/ssm/MyGroup/appmanager</code> or
    #       <code>/aws/ssm/MyGroup/appmanager</code>.</p>
    #            <p>For the Document and Parameter values, use the name of the resource.</p>
    #            <note>
    #               <p>The <code>ManagedInstance</code> type for this API operation is only for on-premises
    #       managed nodes. Specify the name of the managed node in the following format: mi-ID_number. For
    #       example, mi-1a2b3c4d5e6f.</p>
    #            </note>
    # @option params [Array<String>] :tag_keys
    #   <p>Tag keys that you want to remove from the specified resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "Document" # One of: ["Document", "ManagedInstance", "MaintenanceWindow", "Parameter", "PatchBaseline", "OpsItem", "OpsMetadata", "Automation", "Association", "CloudConnector"], # required
    #     resource_id: "ResourceId", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.remove_tags_from_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveTagsFromResourceResult]
    def remove_tags_from_resource(params = {}, options = {})
      request = build_request(:remove_tags_from_resource, params)
      request.send_request(options)
    end

    # <p>
    #             <code>ServiceSetting</code> is an account-level setting for an Amazon Web Services service. This setting
    #    defines how a user interacts with or uses a service or a feature of a service. For example, if an
    #    Amazon Web Services service charges money to the account based on feature or service usage, then the Amazon Web Services
    #    service team might create a default setting of "false". This means the user can't use this
    #    feature unless they change the setting to "true" and intentionally opt in for a paid
    #    feature.</p>
    #          <p>Services map a <code>SettingId</code> object to a setting value. Amazon Web Services services teams define
    #    the default value for a <code>SettingId</code>. You can't create a new <code>SettingId</code>,
    #    but you can overwrite the default value if you have the <code>ssm:UpdateServiceSetting</code>
    #    permission for the setting. Use the <a>GetServiceSetting</a> API operation to view the
    #    current value. Use the <a>UpdateServiceSetting</a> API operation to change the default
    #    setting. </p>
    #          <p>Reset the service setting for the account to the default value as provisioned by the Amazon Web Services
    #    service team. </p>
    # @param [Hash, Types::ResetServiceSettingRequest] params
    # @option params [String] :setting_id
    #   <p>The Amazon Resource Name (ARN) of the service setting to reset. The setting ID can be one of
    #      the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>/ssm/appmanager/appmanager-enabled</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-destination</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-group-name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>/ssm/automation/enable-adaptive-concurrency</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/documents/console/public-sharing-permission</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/managed-instance/activation-tier</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/managed-instance/default-ec2-instance-management-role</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/opsinsights/opscenter</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/default-parameter-tier</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/high-throughput-enabled</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     setting_id: "ServiceSettingId", # required
    #   }
    #   options = {}
    #   response = client.reset_service_setting(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_setting: {
    #       setting_id: "ServiceSettingId",
    #       setting_value: "ServiceSettingValue",
    #       last_modified_date: Time.now,
    #       last_modified_user: "String",
    #       arn: "String",
    #       status: "String"
    #     }
    #   }
    # @return [Types::ResetServiceSettingResult]
    def reset_service_setting(params = {}, options = {})
      request = build_request(:reset_service_setting, params)
      request.send_request(options)
    end

    # <p>Reconnects a session to a managed node after it has been disconnected. Connections can be
    #    resumed for disconnected sessions, but not terminated sessions.</p>
    #          <note>
    #             <p>This command is primarily for use by client machines to automatically reconnect during
    #     intermittent network issues. It isn't intended for any other use.</p>
    #          </note>
    # @param [Hash, Types::ResumeSessionRequest] params
    # @option params [String] :session_id
    #   <p>The ID of the disconnected session to resume.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "SessionId", # required
    #   }
    #   options = {}
    #   response = client.resume_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "SessionId",
    #     token_value: "TokenValue",
    #     stream_url: "StreamUrl"
    #   }
    # @return [Types::ResumeSessionResponse]
    def resume_session(params = {}, options = {})
      request = build_request(:resume_session, params)
      request.send_request(options)
    end

    # <p>Sends a signal to an Automation execution to change the current behavior or status of the
    #    execution. </p>
    # @param [Hash, Types::SendAutomationSignalRequest] params
    # @option params [String] :automation_execution_id
    #   <p>The unique identifier for an existing Automation execution that you want to send the signal
    #      to.</p>
    # @option params [String] :signal_type
    #   <p>The type of signal to send to an Automation execution. </p>
    # @option params [Hash<String, Array<String>>] :payload
    #   <p>The data sent with the signal. The data schema depends on the type of signal used in the
    #      request.</p>
    #            <p>For <code>Approve</code> and <code>Reject</code> signal types, the payload is an optional
    #      comment that you can send with the signal type. For example:</p>
    #            <p>
    #               <code>Comment="Looks good"</code>
    #            </p>
    #            <p>For <code>StartStep</code> and <code>Resume</code> signal types, you must send the name of
    #      the Automation step to start or resume as the payload. For example:</p>
    #            <p>
    #               <code>StepName="step1"</code>
    #            </p>
    #            <p>For the <code>StopStep</code> signal type, you must send the step execution ID as the
    #      payload. For example:</p>
    #            <p>
    #               <code>StepExecutionId="97fff367-fc5a-4299-aed8-0123456789ab"</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     automation_execution_id: "AutomationExecutionId", # required
    #     signal_type: "Approve" # One of: ["Approve", "Reject", "StartStep", "StopStep", "Resume", "Revoke"], # required
    #     payload: {
    #       "AutomationParameterKey" => ["AutomationParameterValue"]
    #     }
    #   }
    #   options = {}
    #   response = client.send_automation_signal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SendAutomationSignalResult]
    def send_automation_signal(params = {}, options = {})
      request = build_request(:send_automation_signal, params)
      request.send_request(options)
    end

    # <p>Runs commands on one or more managed nodes.</p>
    # @param [Hash, Types::SendCommandRequest] params
    # @option params [Array<String>] :instance_ids
    #   <p>The IDs of the managed nodes where the command should run. Specifying managed node IDs is
    #      most useful when you are targeting a limited number of managed nodes, though you can specify up
    #      to 50 IDs.</p>
    #            <p>To target a larger number of managed nodes, or if you prefer not to list individual node
    #      IDs, we recommend using the <code>Targets</code> option instead. Using <code>Targets</code>,
    #      which accepts tag key-value pairs to identify the managed nodes to send commands to, you can a
    #      send command to tens, hundreds, or thousands of nodes at once.</p>
    #            <p>For more information about how to use targets, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html">Run commands at scale</a>
    #      in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [Array<Types::Target>] :targets
    #   <p>An array of search criteria that targets managed nodes using a <code>Key,Value</code>
    #      combination that you specify. Specifying targets is most useful when you want to send a command
    #      to a large number of managed nodes at once. Using <code>Targets</code>, which accepts tag
    #      key-value pairs to identify managed nodes, you can send a command to tens, hundreds, or thousands
    #      of nodes at once.</p>
    #            <p>To send a command to a smaller number of managed nodes, you can use the
    #       <code>InstanceIds</code> option instead.</p>
    #            <p>For more information about how to use targets, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html">Run commands at scale</a>
    #      in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [String] :document_name
    #   <p>The name of the Amazon Web Services Systems Manager document (SSM document) to run. This can be a public document or a
    #      custom document. To run a shared document belonging to another account, specify the document
    #      Amazon Resource Name (ARN). For more information about how to use shared documents, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-using-shared.html">Sharing SSM
    #       documents</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            <note>
    #               <p>If you specify a document name or ARN that hasn't been shared with your account, you
    #       receive an <code>InvalidDocument</code> error. </p>
    #            </note>
    # @option params [String] :document_version
    #   <p>The SSM document version to use in the request. You can specify $DEFAULT, $LATEST, or a
    #      specific version number. If you run commands by using the Command Line Interface (Amazon Web Services CLI), then
    #      you must escape the first two options by using a backslash. If you specify a version number, then
    #      you don't need to use the backslash. For example:</p>
    #            <p>--document-version "\$DEFAULT"</p>
    #            <p>--document-version "\$LATEST"</p>
    #            <p>--document-version "3"</p>
    # @option params [String] :document_hash
    #   <p>The Sha256 or Sha1 hash created by the system when the document was created. </p>
    #            <note>
    #               <p>Sha1 hashes have been deprecated.</p>
    #            </note>
    # @option params [String] :document_hash_type
    #   <p>Sha256 or Sha1.</p>
    #            <note>
    #               <p>Sha1 hashes have been deprecated.</p>
    #            </note>
    # @option params [Integer] :timeout_seconds
    #   <p>If this time is reached and the command hasn't already started running, it won't run.</p>
    # @option params [String] :comment
    #   <p>User-specified information about the command, such as a brief description of what the
    #      command should do.</p>
    # @option params [Hash<String, Array<String>>] :parameters
    #   <p>The required and optional parameters specified in the document being run.</p>
    # @option params [String] :output_s3_region
    #   <p>(Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager
    #      automatically determines the Amazon Web Services Region of the S3 bucket.</p>
    # @option params [String] :output_s3_bucket_name
    #   <p>The name of the S3 bucket where command execution responses should be stored.</p>
    # @option params [String] :output_s3_key_prefix
    #   <p>The directory structure within the S3 bucket where the responses should be stored.</p>
    # @option params [String] :max_concurrency
    #   <p>(Optional) The maximum number of managed nodes that are allowed to run the command at the
    #      same time. You can specify a number such as 10 or a percentage such as 10%. The default value is
    #       <code>50</code>. For more information about how to use <code>MaxConcurrency</code>, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-velocity">Using
    #       concurrency controls</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [String] :max_errors
    #   <p>The maximum number of errors allowed without the command failing. When the command fails one
    #      more time beyond the value of <code>MaxErrors</code>, the systems stops sending the command to
    #      additional targets. You can specify a number like 10 or a percentage like 10%. The default value
    #      is <code>0</code>. For more information about how to use <code>MaxErrors</code>, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-maxerrors">Using
    #       error controls</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [String] :service_role_arn
    #   <p>The ARN of the Identity and Access Management (IAM) service role to use to publish
    #       Amazon Simple Notification Service (Amazon SNS) notifications for Run Command commands.</p>
    #            <p>This role must provide the <code>sns:Publish</code> permission for your notification topic.
    #      For information about creating and using this service role, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/monitoring-sns-notifications.html">Monitoring Systems Manager status changes using Amazon SNS notifications</a> in the
    #       <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [Types::NotificationConfig] :notification_config
    #   <p>Configurations for sending notifications.</p>
    # @option params [Types::CloudWatchOutputConfig] :cloud_watch_output_config
    #   <p>Enables Amazon Web Services Systems Manager to send Run Command output to Amazon CloudWatch Logs. Run Command is a
    #      tool in Amazon Web Services Systems Manager.</p>
    # @option params [Types::AlarmConfiguration] :alarm_configuration
    #   <p>The CloudWatch alarm you want to apply to your command.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_ids: ["InstanceId"],
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"]
    #       }
    #     ],
    #     document_name: "DocumentARN", # required
    #     document_version: "DocumentVersion",
    #     document_hash: "DocumentHash",
    #     document_hash_type: "Sha256" # One of: ["Sha256", "Sha1"],
    #     timeout_seconds: 1,
    #     comment: "Comment",
    #     parameters: {
    #       "ParameterName" => ["ParameterValue"]
    #     },
    #     output_s3_region: "S3Region",
    #     output_s3_bucket_name: "S3BucketName",
    #     output_s3_key_prefix: "S3KeyPrefix",
    #     max_concurrency: "MaxConcurrency",
    #     max_errors: "MaxErrors",
    #     service_role_arn: "ServiceRole",
    #     notification_config: {
    #       notification_arn: "NotificationArn",
    #       notification_events: ["All" # One of: ["All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"]],
    #       notification_type: "Command" # One of: ["Command", "Invocation"]
    #     },
    #     cloud_watch_output_config: {
    #       cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #       cloud_watch_output_enabled: false
    #     },
    #     alarm_configuration: {
    #       ignore_poll_alarm_failure: false,
    #       alarms: [ # required
    #         {
    #           name: "AlarmName", # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.send_command(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     command: {
    #       command_id: "CommandId",
    #       document_name: "DocumentName",
    #       document_version: "DocumentVersion",
    #       comment: "Comment",
    #       expires_after: Time.now,
    #       parameters: {
    #         "ParameterName" => ["ParameterValue"]
    #       },
    #       instance_ids: ["InstanceId"],
    #       targets: [
    #         {
    #           key: "TargetKey",
    #           values: ["TargetValue"]
    #         }
    #       ],
    #       requested_date_time: Time.now,
    #       status: "Pending" # One of: ["Pending", "InProgress", "Success", "Cancelled", "Failed", "TimedOut", "Cancelling"],
    #       status_details: "StatusDetails",
    #       output_s3_region: "S3Region",
    #       output_s3_bucket_name: "S3BucketName",
    #       output_s3_key_prefix: "S3KeyPrefix",
    #       max_concurrency: "MaxConcurrency",
    #       max_errors: "MaxErrors",
    #       target_count: 1,
    #       completed_count: 1,
    #       error_count: 1,
    #       delivery_timed_out_count: 1,
    #       service_role: "ServiceRole",
    #       notification_config: {
    #         notification_arn: "NotificationArn",
    #         notification_events: ["All" # One of: ["All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"]],
    #         notification_type: "Command" # One of: ["Command", "Invocation"]
    #       },
    #       cloud_watch_output_config: {
    #         cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #         cloud_watch_output_enabled: false
    #       },
    #       timeout_seconds: 1,
    #       alarm_configuration: {
    #         ignore_poll_alarm_failure: false,
    #         alarms: [ # required
    #           {
    #             name: "AlarmName", # required
    #           }
    #         ]
    #       },
    #       triggered_alarms: [
    #         {
    #           name: "AlarmName", # required
    #           state: "UNKNOWN" # One of: ["UNKNOWN", "ALARM"], # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::SendCommandResult]
    def send_command(params = {}, options = {})
      request = build_request(:send_command, params)
      request.send_request(options)
    end

    # <p>Starts the workflow for just-in-time node access sessions.</p>
    # @param [Hash, Types::StartAccessRequestRequest] params
    # @option params [String] :reason
    #   <p>A brief description explaining why you are requesting access to the node.</p>
    # @option params [Array<Types::Target>] :targets
    #   <p>The node you are requesting access to.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Key-value pairs of metadata you want to assign to the access request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reason: "String1to256", # required
    #     targets: [ # required
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"]
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_access_request(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_request_id: "AccessRequestId"
    #   }
    # @return [Types::StartAccessRequestResponse]
    def start_access_request(params = {}, options = {})
      request = build_request(:start_access_request, params)
      request.send_request(options)
    end

    # <p>Runs an association immediately and only one time. This operation can be helpful when
    #    troubleshooting associations.</p>
    # @param [Hash, Types::StartAssociationsOnceRequest] params
    # @option params [Array<String>] :association_ids
    #   <p>The association IDs that you want to run immediately and only one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     association_ids: ["AssociationId"], # required
    #   }
    #   options = {}
    #   response = client.start_associations_once(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartAssociationsOnceResult]
    def start_associations_once(params = {}, options = {})
      request = build_request(:start_associations_once, params)
      request.send_request(options)
    end

    # <p>Initiates execution of an Automation runbook.</p>
    # @param [Hash, Types::StartAutomationExecutionRequest] params
    # @option params [String] :document_name
    #   <p>The name of the SSM document to run. This can be a public document or a custom document. To
    #      run a shared document belonging to another account, specify the document ARN. For more
    #      information about how to use shared documents, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/documents-ssm-sharing.html">Sharing SSM documents</a>
    #      in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [String] :document_version
    #   <p>The version of the Automation runbook to use for this execution.</p>
    # @option params [Hash<String, Array<String>>] :parameters
    #   <p>A key-value map of execution parameters, which match the declared parameters in the
    #      Automation runbook.</p>
    # @option params [String] :client_token
    #   <p>User-provided idempotency token. The token must be unique, is case insensitive, enforces the
    #      UUID format, and can't be reused.</p>
    # @option params [String] :mode
    #   <p>The execution mode of the automation. Valid modes include the following: Auto and
    #      Interactive. The default mode is Auto.</p>
    # @option params [String] :target_parameter_name
    #   <p>The name of the parameter used as the target resource for the rate-controlled execution.
    #      Required if you specify targets.</p>
    # @option params [Array<Types::Target>] :targets
    #   <p>A key-value mapping to target resources. Required if you specify TargetParameterName.</p>
    #            <p>If both this parameter and the <code>TargetLocation:Targets</code> parameter are supplied,
    #       <code>TargetLocation:Targets</code> takes precedence.</p>
    # @option params [Array<Hash<String, Array<String>>>] :target_maps
    #   <p>A key-value mapping of document parameters to target resources. Both Targets and TargetMaps
    #      can't be specified together.</p>
    # @option params [String] :max_concurrency
    #   <p>The maximum number of targets allowed to run this task in parallel. You can specify a
    #      number, such as 10, or a percentage, such as 10%. The default value is <code>10</code>.</p>
    #            <p>If both this parameter and the <code>TargetLocation:TargetsMaxConcurrency</code> are
    #      supplied, <code>TargetLocation:TargetsMaxConcurrency</code> takes precedence.</p>
    # @option params [String] :max_errors
    #   <p>The number of errors that are allowed before the system stops running the automation on
    #      additional targets. You can specify either an absolute number of errors, for example 10, or a
    #      percentage of the target set, for example 10%. If you specify 3, for example, the system stops
    #      running the automation when the fourth error is received. If you specify 0, then the system stops
    #      running the automation on additional targets after the first error result is returned. If you run
    #      an automation on 50 resources and set max-errors to 10%, then the system stops running the
    #      automation on additional targets when the sixth error is received.</p>
    #            <p>Executions that are already running an automation when max-errors is reached are allowed to
    #      complete, but some of these executions may fail as well. If you need to ensure that there won't
    #      be more than max-errors failed executions, set max-concurrency to 1 so the executions proceed one
    #      at a time.</p>
    #            <p>If this parameter and the <code>TargetLocation:TargetsMaxErrors</code> parameter are both
    #      supplied, <code>TargetLocation:TargetsMaxErrors</code> takes precedence.</p>
    # @option params [Array<Types::TargetLocation>] :target_locations
    #   <p>A location is a combination of Amazon Web Services Regions and/or Amazon Web Services accounts where you want to run the
    #      automation. Use this operation to start an automation in multiple Amazon Web Services Regions and multiple
    #      Amazon Web Services accounts. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation-multiple-accounts-and-regions.html">Running automations in multiple Amazon Web Services Regions and accounts</a> in the
    #       <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Optional metadata that you assign to a resource. You can specify a maximum of five tags for
    #      an automation. Tags enable you to categorize a resource in different ways, such as by purpose,
    #      owner, or environment. For example, you might want to tag an automation to identify an
    #      environment or operating system. In this case, you could specify the following key-value
    #      pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=environment,Value=test</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=OS,Value=Windows</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>Array Members</code> maximum value is reported as 1000. This number includes
    #       capacity reserved for internal operations. When calling the
    #        <code>StartAutomationExecution</code> action, you can specify a maximum of 5 tags. You can,
    #       however, use the <a>AddTagsToResource</a> action to add up to a total of 50 tags to
    #       an existing automation configuration.</p>
    #            </note>
    # @option params [Types::AlarmConfiguration] :alarm_configuration
    #   <p>The CloudWatch alarm you want to apply to your automation.</p>
    # @option params [String] :target_locations_url
    #   <p>Specify a publicly accessible URL for a file that contains the <code>TargetLocations</code>
    #      body. Currently, only files in presigned Amazon S3 buckets are supported. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     document_name: "DocumentARN", # required
    #     document_version: "DocumentVersion",
    #     parameters: {
    #       "AutomationParameterKey" => ["AutomationParameterValue"]
    #     },
    #     client_token: "IdempotencyToken",
    #     mode: "Auto" # One of: ["Auto", "Interactive"],
    #     target_parameter_name: "AutomationParameterKey",
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"]
    #       }
    #     ],
    #     target_maps: [
    #       {
    #         "TargetMapKey" => ["TargetMapValue"]
    #       }
    #     ],
    #     max_concurrency: "MaxConcurrency",
    #     max_errors: "MaxErrors",
    #     target_locations: [
    #       {
    #         accounts: ["Account"],
    #         regions: ["Region"],
    #         target_location_max_concurrency: "MaxConcurrency",
    #         target_location_max_errors: "MaxErrors",
    #         execution_role_name: "ExecutionRoleName",
    #         target_location_alarm_configuration: {
    #           ignore_poll_alarm_failure: false,
    #           alarms: [ # required
    #             {
    #               name: "AlarmName", # required
    #             }
    #           ]
    #         },
    #         include_child_organization_units: false,
    #         exclude_accounts: ["ExcludeAccount"],
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"]
    #           }
    #         ],
    #         targets_max_concurrency: "MaxConcurrency",
    #         targets_max_errors: "MaxErrors"
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     alarm_configuration: {
    #       ignore_poll_alarm_failure: false,
    #       alarms: [ # required
    #         {
    #           name: "AlarmName", # required
    #         }
    #       ]
    #     },
    #     target_locations_url: "TargetLocationsURL"
    #   }
    #   options = {}
    #   response = client.start_automation_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     automation_execution_id: "AutomationExecutionId"
    #   }
    # @return [Types::StartAutomationExecutionResult]
    def start_automation_execution(params = {}, options = {})
      request = build_request(:start_automation_execution, params)
      request.send_request(options)
    end

    # <important>
    #             <p>Amazon Web Services Systems Manager Change Manager is no longer open to new customers. Existing customers can
    #   continue to use the service as normal. For more information, see
    # <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/change-manager-availability-change.html">Amazon Web Services Systems Manager Change Manager availability change</a>.</p>
    #          </important>
    #          <p>Creates a change request for Change Manager. The Automation runbooks specified in the
    #    change request run only after all required approvals for the change request have been
    #    received.</p>
    # @param [Hash, Types::StartChangeRequestExecutionRequest] params
    # @option params [Time] :scheduled_time
    #   <p>The date and time specified in the change request to run the Automation runbooks.</p>
    #            <note>
    #               <p>The Automation runbooks specified for the runbook workflow can't run until all required
    #       approvals for the change request have been received.</p>
    #            </note>
    # @option params [String] :document_name
    #   <p>The name of the change template document to run during the runbook workflow.</p>
    # @option params [String] :document_version
    #   <p>The version of the change template document to run during the runbook workflow.</p>
    # @option params [Hash<String, Array<String>>] :parameters
    #   <p>A key-value map of parameters that match the declared parameters in the change template
    #      document.</p>
    # @option params [String] :change_request_name
    #   <p>The name of the change request associated with the runbook workflow to be run.</p>
    # @option params [String] :client_token
    #   <p>The user-provided idempotency token. The token must be unique, is case insensitive, enforces
    #      the UUID format, and can't be reused.</p>
    # @option params [Boolean] :auto_approve
    #   <p>Indicates whether the change request can be approved automatically without the need for
    #      manual approvals.</p>
    #            <p>If <code>AutoApprovable</code> is enabled in a change template, then setting
    #       <code>AutoApprove</code> to <code>true</code> in <code>StartChangeRequestExecution</code>
    #      creates a change request that bypasses approver review.</p>
    #            <note>
    #               <p>Change Calendar restrictions are not bypassed in this scenario. If the state of an
    #       associated calendar is <code>CLOSED</code>, change freeze approvers must still grant permission
    #       for this change request to run. If they don't, the change won't be processed until the calendar
    #       state is again <code>OPEN</code>. </p>
    #            </note>
    # @option params [Array<Types::Runbook>] :runbooks
    #   <p>Information about the Automation runbooks that are run during the runbook workflow.</p>
    #            <note>
    #               <p>The Automation runbooks specified for the runbook workflow can't run until all required
    #       approvals for the change request have been received.</p>
    #            </note>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Optional metadata that you assign to a resource. You can specify a maximum of five tags for
    #      a change request. Tags enable you to categorize a resource in different ways, such as by
    #      purpose, owner, or environment. For example, you might want to tag a change request to identify
    #      an environment or target Amazon Web Services Region. In this case, you could specify the following key-value
    #      pairs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Key=Environment,Value=Production</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Key=Region,Value=us-east-2</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <code>Array Members</code> maximum value is reported as 1000. This number includes
    #       capacity reserved for internal operations. When calling the
    #        <code>StartChangeRequestExecution</code> action, you can specify a maximum of 5 tags. You can,
    #       however, use the <a>AddTagsToResource</a> action to add up to a total of 50 tags to
    #       an existing change request configuration.</p>
    #            </note>
    # @option params [Time] :scheduled_end_time
    #   <p>The time that the requester expects the runbook workflow related to the change request to
    #      complete. The time is an estimate only that the requester provides for reviewers.</p>
    # @option params [String] :change_details
    #   <p>User-provided details about the change. If no details are provided, content specified in the
    #       <b>Template information</b> section of the associated change template
    #      is added.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scheduled_time: Time.now,
    #     document_name: "DocumentARN", # required
    #     document_version: "DocumentVersion",
    #     parameters: {
    #       "AutomationParameterKey" => ["AutomationParameterValue"]
    #     },
    #     change_request_name: "ChangeRequestName",
    #     client_token: "IdempotencyToken",
    #     auto_approve: false,
    #     runbooks: [ # required
    #       {
    #         document_name: "DocumentARN", # required
    #         document_version: "DocumentVersion",
    #         parameters: {
    #           "AutomationParameterKey" => ["AutomationParameterValue"]
    #         },
    #         target_parameter_name: "AutomationParameterKey",
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"]
    #           }
    #         ],
    #         target_maps: [
    #           {
    #             "TargetMapKey" => ["TargetMapValue"]
    #           }
    #         ],
    #         max_concurrency: "MaxConcurrency",
    #         max_errors: "MaxErrors",
    #         target_locations: [
    #           {
    #             accounts: ["Account"],
    #             regions: ["Region"],
    #             target_location_max_concurrency: "MaxConcurrency",
    #             target_location_max_errors: "MaxErrors",
    #             execution_role_name: "ExecutionRoleName",
    #             target_location_alarm_configuration: {
    #               ignore_poll_alarm_failure: false,
    #               alarms: [ # required
    #                 {
    #                   name: "AlarmName", # required
    #                 }
    #               ]
    #             },
    #             include_child_organization_units: false,
    #             exclude_accounts: ["ExcludeAccount"],
    #             targets: [
    #               {
    #                 key: "TargetKey",
    #                 values: ["TargetValue"]
    #               }
    #             ],
    #             targets_max_concurrency: "MaxConcurrency",
    #             targets_max_errors: "MaxErrors"
    #           }
    #         ]
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     scheduled_end_time: Time.now,
    #     change_details: "ChangeDetailsValue"
    #   }
    #   options = {}
    #   response = client.start_change_request_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     automation_execution_id: "AutomationExecutionId"
    #   }
    # @return [Types::StartChangeRequestExecutionResult]
    def start_change_request_execution(params = {}, options = {})
      request = build_request(:start_change_request_execution, params)
      request.send_request(options)
    end

    # <p>Initiates the process of creating a preview showing the effects that running a specified
    #    Automation runbook would have on the targeted resources.</p>
    # @param [Hash, Types::StartExecutionPreviewRequest] params
    # @option params [String] :document_name
    #   <p>The name of the Automation runbook to run. The result of the execution preview indicates
    #      what the impact would be of running this runbook.</p>
    # @option params [String] :document_version
    #   <p>The version of the Automation runbook to run. The default value is
    #      <code>$DEFAULT</code>.</p>
    # @option params [Types::ExecutionInputs] :execution_inputs
    #   <p>Information about the inputs that can be specified for the preview operation.
    #      </p>
    # @example StartExecutionPreview
    #   # This example illustrates one usage of StartExecutionPreview
    #   params = {
    #     document_name: "AWS-StartEC2Instance"
    #   }
    #   options = {}
    #   response = client.start_execution_preview(params, options)
    #   response.to_h #=>
    #   {
    #     execution_preview_id: "2f27d6e5-9676-4708-b8bd-aef0ab47bb26"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     document_name: "DocumentName", # required
    #     document_version: "DocumentVersion",
    #     execution_inputs: {
    #       # One of:
    #       automation: {
    #         parameters: {
    #           "AutomationParameterKey" => ["AutomationParameterValue"]
    #         },
    #         target_parameter_name: "AutomationParameterKey",
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"]
    #           }
    #         ],
    #         target_maps: [
    #           {
    #             "TargetMapKey" => ["TargetMapValue"]
    #           }
    #         ],
    #         target_locations: [
    #           {
    #             accounts: ["Account"],
    #             regions: ["Region"],
    #             target_location_max_concurrency: "MaxConcurrency",
    #             target_location_max_errors: "MaxErrors",
    #             execution_role_name: "ExecutionRoleName",
    #             target_location_alarm_configuration: {
    #               ignore_poll_alarm_failure: false,
    #               alarms: [ # required
    #                 {
    #                   name: "AlarmName", # required
    #                 }
    #               ]
    #             },
    #             include_child_organization_units: false,
    #             exclude_accounts: ["ExcludeAccount"],
    #             targets: [
    #               {
    #                 key: "TargetKey",
    #                 values: ["TargetValue"]
    #               }
    #             ],
    #             targets_max_concurrency: "MaxConcurrency",
    #             targets_max_errors: "MaxErrors"
    #           }
    #         ],
    #         target_locations_url: "TargetLocationsURL"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_execution_preview(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_preview_id: "ExecutionPreviewId"
    #   }
    # @return [Types::StartExecutionPreviewResponse]
    def start_execution_preview(params = {}, options = {})
      request = build_request(:start_execution_preview, params)
      request.send_request(options)
    end

    # <p>Initiates a connection to a target (for example, a managed node) for a Session Manager session.
    #    Returns a URL and token that can be used to open a WebSocket connection for sending input and
    #    receiving outputs.</p>
    #          <note>
    #             <p>Amazon Web Services CLI usage: <code>start-session</code> is an interactive command that requires the Session Manager
    #     plugin to be installed on the client machine making the call. For information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html">Install
    #      the Session Manager plugin for the Amazon Web Services CLI</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #             <p>Amazon Web Services Tools for PowerShell usage: Start-SSMSession isn't currently supported by Amazon Web Services Tools
    #     for PowerShell on Windows local machines.</p>
    #          </note>
    # @param [Hash, Types::StartSessionRequest] params
    # @option params [String] :target
    #   <p>The managed node to connect to for the session.</p>
    # @option params [String] :document_name
    #   <p>The name of the SSM document you want to use to define the type of session, input
    #      parameters, or preferences for the session. For example, <code>SSM-SessionManagerRunShell</code>.
    #      You can call the <a>GetDocument</a> API to verify the document exists before
    #      attempting to start a session. If no document name is provided, a shell to the managed node is
    #      launched by default. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-sessions-start.html">Start a
    #       session</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [String] :reason
    #   <p>The reason for connecting to the instance. This value is included in the details for the
    #       Amazon CloudWatch Events event created when you start the session.</p>
    # @option params [Hash<String, Array<String>>] :parameters
    #   <p>The values you want to specify for the parameters defined in the Session document.
    #      For more information about these parameters, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/getting-started-create-preferences-cli.html">Create a
    #       Session Manager preferences document</a> in the
    #      <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target: "SessionTarget", # required
    #     document_name: "DocumentARN",
    #     reason: "SessionReason",
    #     parameters: {
    #       "SessionManagerParameterName" => ["SessionManagerParameterValue"]
    #     }
    #   }
    #   options = {}
    #   response = client.start_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "SessionId",
    #     token_value: "TokenValue",
    #     stream_url: "StreamUrl"
    #   }
    # @return [Types::StartSessionResponse]
    def start_session(params = {}, options = {})
      request = build_request(:start_session, params)
      request.send_request(options)
    end

    # <p>Stop an Automation that is currently running.</p>
    # @param [Hash, Types::StopAutomationExecutionRequest] params
    # @option params [String] :automation_execution_id
    #   <p>The execution ID of the Automation to stop.</p>
    # @option params [String] :type
    #   <p>The stop request type. Valid types include the following: Cancel and Complete. The default
    #      type is Cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     automation_execution_id: "AutomationExecutionId", # required
    #     type: "Complete" # One of: ["Complete", "Cancel"]
    #   }
    #   options = {}
    #   response = client.stop_automation_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopAutomationExecutionResult]
    def stop_automation_execution(params = {}, options = {})
      request = build_request(:stop_automation_execution, params)
      request.send_request(options)
    end

    # <p>Permanently ends a session and closes the data connection between the Session Manager client and
    #    SSM Agent on the managed node. A terminated session can't be resumed.</p>
    # @param [Hash, Types::TerminateSessionRequest] params
    # @option params [String] :session_id
    #   <p>The ID of the session to terminate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "SessionId", # required
    #   }
    #   options = {}
    #   response = client.terminate_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "SessionId"
    #   }
    # @return [Types::TerminateSessionResponse]
    def terminate_session(params = {}, options = {})
      request = build_request(:terminate_session, params)
      request.send_request(options)
    end

    # <p>Remove a label or labels from a parameter.</p>
    #          <p>Parameter names can't contain spaces. The service removes any spaces specified for the
    #    beginning or end of a parameter name. If the specified name for a parameter contains spaces
    #    between characters, the request fails with a <code>ValidationException</code> error.</p>
    # @param [Hash, Types::UnlabelParameterVersionRequest] params
    # @option params [String] :name
    #   <p>The name of the parameter from which you want to delete one or more labels.</p>
    #            <note>
    #               <p>You can't enter the Amazon Resource Name (ARN) for a parameter, only the parameter name
    #       itself.</p>
    #            </note>
    # @option params [Integer] :parameter_version
    #   <p>The specific version of the parameter which you want to delete one or more labels from. If
    #      it isn't present, the call will fail.</p>
    # @option params [Array<String>] :labels
    #   <p>One or more labels to delete from the specified parameter version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PSParameterName", # required
    #     parameter_version: 1, # required
    #     labels: ["ParameterLabel"], # required
    #   }
    #   options = {}
    #   response = client.unlabel_parameter_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     removed_labels: ["ParameterLabel"],
    #     invalid_labels: ["ParameterLabel"]
    #   }
    # @return [Types::UnlabelParameterVersionResult]
    def unlabel_parameter_version(params = {}, options = {})
      request = build_request(:unlabel_parameter_version, params)
      request.send_request(options)
    end

    # <p>Updates an association. You can update the association name and version, the document
    #    version, schedule, parameters, and Amazon Simple Storage Service (Amazon S3) output. When you
    #    call <code>UpdateAssociation</code>, the system removes all optional parameters from the request
    #    and overwrites the association with null values for those parameters. This is by design. You must
    #    specify all optional parameters in the call, even if you are not changing the parameters. This
    #    includes the <code>Name</code> parameter. Before calling this API action, we recommend that you
    #    call the <a>DescribeAssociation</a> API operation and make a note of all optional
    #    parameters required for your <code>UpdateAssociation</code> call.</p>
    #          <p>In order to call this API operation, a user, group, or role must be granted permission to
    #    call the <a>DescribeAssociation</a> API operation. If you don't have permission to
    #    call <code>DescribeAssociation</code>, then you receive the following error: <code>An error
    #     occurred (AccessDeniedException) when calling the UpdateAssociation operation: User:
    #     <user_arn> isn't authorized to perform: ssm:DescribeAssociation on resource:
    #     <resource_arn></code>
    #          </p>
    #          <important>
    #             <p>When you update an association, the association immediately runs against the specified
    #     targets. You can add the <code>ApplyOnlyAtCronInterval</code> parameter to run the association
    #     during the next schedule run.</p>
    #          </important>
    # @param [Hash, Types::UpdateAssociationRequest] params
    # @option params [String] :association_id
    #   <p>The ID of the association you want to update. </p>
    # @option params [Hash<String, Array<String>>] :parameters
    #   <p>The parameters you want to update for the association. If you create a parameter using
    #      Parameter Store, a tool in Amazon Web Services Systems Manager, you can reference the parameter using
    #       <code>{{ssm:parameter-name}}</code>.</p>
    # @option params [String] :document_version
    #   <p>The document version you want update for the association. </p>
    #            <important>
    #               <p>State Manager doesn't support running associations that use a new version of a document if
    #       that document is shared from another account. State Manager always runs the <code>default</code>
    #       version of a document if shared from another account, even though the Systems Manager console shows that a
    #       new version was processed. If you want to run an association using a new version of a document
    #       shared form another account, you must set the document version to <code>default</code>.</p>
    #            </important>
    # @option params [String] :schedule_expression
    #   <p>The cron expression used to schedule the association that you want to update.</p>
    # @option params [Types::InstanceAssociationOutputLocation] :output_location
    #   <p>An S3 bucket where you want to store the results of this request.</p>
    # @option params [String] :name
    #   <p>The name of the SSM Command document or Automation runbook that contains the configuration
    #      information for the managed node.</p>
    #            <p>You can specify Amazon Web Services-predefined documents, documents you created, or a document that is
    #      shared with you from another account.</p>
    #            <p>For Systems Manager document (SSM document) that are shared with you from other Amazon Web Services accounts, you
    #      must specify the complete SSM document ARN, in the following format:</p>
    #            <p>
    #               <code>arn:aws:ssm:<i>region</i>:<i>account-id</i>:document/<i>document-name</i>
    #               </code>
    #            </p>
    #            <p>For example:</p>
    #            <p>
    #               <code>arn:aws:ssm:us-east-2:12345678912:document/My-Shared-Document</code>
    #            </p>
    #            <p>For Amazon Web Services-predefined documents and SSM documents you created in your account, you only need
    #      to specify the document name. For example, <code>AWS-ApplyPatchBaseline</code> or
    #       <code>My-Document</code>.</p>
    # @option params [Array<Types::Target>] :targets
    #   <p>The targets of the association.</p>
    # @option params [String] :association_name
    #   <p>The name of the association that you want to update.</p>
    # @option params [String] :association_version
    #   <p>This parameter is provided for concurrency control purposes. You must specify the latest
    #      association version in the service. If you want to ensure that this request succeeds, either
    #      specify <code>$LATEST</code>, or omit this parameter.</p>
    # @option params [String] :automation_target_parameter_name
    #   <p>Choose the parameter that will define how your automation will branch out. This target is
    #      required for associations that use an Automation runbook and target resources by using rate
    #      controls. Automation is a tool in Amazon Web Services Systems Manager.</p>
    # @option params [String] :max_errors
    #   <p>The number of errors that are allowed before the system stops sending requests to run the
    #      association on additional targets. You can specify either an absolute number of errors, for
    #      example 10, or a percentage of the target set, for example 10%. If you specify 3, for example,
    #      the system stops sending requests when the fourth error is received. If you specify 0, then the
    #      system stops sending requests after the first error is returned. If you run an association on 50
    #      managed nodes and set <code>MaxError</code> to 10%, then the system stops sending the request
    #      when the sixth error is received.</p>
    #            <p>Executions that are already running an association when <code>MaxErrors</code> is reached
    #      are allowed to complete, but some of these executions may fail as well. If you need to ensure
    #      that there won't be more than max-errors failed executions, set <code>MaxConcurrency</code> to 1
    #      so that executions proceed one at a time.</p>
    # @option params [String] :max_concurrency
    #   <p>The maximum number of targets allowed to run the association at the same time. You can
    #      specify a number, for example 10, or a percentage of the target set, for example 10%. The default
    #      value is 100%, which means all targets run the association at the same time.</p>
    #            <p>If a new managed node starts and attempts to run an association while Systems Manager is running
    #       <code>MaxConcurrency</code> associations, the association is allowed to run. During the next
    #      association interval, the new managed node will process its association within the limit
    #      specified for <code>MaxConcurrency</code>.</p>
    # @option params [String] :compliance_severity
    #   <p>The severity level to assign to the association.</p>
    # @option params [String] :sync_compliance
    #   <p>The mode for generating association compliance. You can specify <code>AUTO</code> or
    #       <code>MANUAL</code>. In <code>AUTO</code> mode, the system uses the status of the association
    #      execution to determine the compliance status. If the association execution runs successfully,
    #      then the association is <code>COMPLIANT</code>. If the association execution doesn't run
    #      successfully, the association is <code>NON-COMPLIANT</code>.</p>
    #            <p>In <code>MANUAL</code> mode, you must specify the <code>AssociationId</code> as a parameter
    #      for the <a>PutComplianceItems</a> API operation. In this case, compliance data isn't
    #      managed by State Manager, a tool in Amazon Web Services Systems Manager. It is managed by your direct call to the <a>PutComplianceItems</a> API operation.</p>
    #            <p>By default, all associations use <code>AUTO</code> mode.</p>
    # @option params [Boolean] :apply_only_at_cron_interval
    #   <p>By default, when you update an association, the system runs it immediately after it is
    #      updated and then according to the schedule you specified. Specify <code>true</code> for
    #       <code>ApplyOnlyAtCronInterval</code> if you want the association to run only according to the
    #      schedule you specified.</p>
    #            <p>If you chose this option when you created an association and later you edit that association
    #      or you make changes to the Automation runbook or SSM document on which that association is based,
    #      State Manager applies the association at the next specified cron interval. For example, if you
    #      chose the <code>Latest</code> version of an SSM document when you created an association and you
    #      edit the association by choosing a different document version on the Documents page, State
    #      Manager applies the association at the next specified cron interval if you previously set
    #       <code>ApplyOnlyAtCronInterval</code> to <code>true</code>. If this option wasn't selected, State
    #      Manager immediately runs the association.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/state-manager-about.html#state-manager-about-scheduling">Understanding when associations are applied to resources</a> and <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/state-manager-about.html#runbook-target-updates">About
    #       target updates with Automation runbooks</a> in the
    #      <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            <p>This parameter isn't supported for rate expressions.</p>
    #            <p>You can reset this parameter. To do so, specify the
    #       <code>no-apply-only-at-cron-interval</code> parameter when you update the association from the
    #      command line. This parameter forces the association to run immediately after updating it and
    #      according to the interval specified.</p>
    # @option params [Array<String>] :calendar_names
    #   <p>The names or Amazon Resource Names (ARNs) of the Change Calendar type documents you want to
    #      gate your associations under. The associations only run when that change calendar is open. For
    #      more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar">Amazon Web Services Systems Manager Change
    #       Calendar</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [Array<Types::TargetLocation>] :target_locations
    #   <p>A location is a combination of Amazon Web Services Regions and Amazon Web Services accounts where you want to run the
    #      association. Use this action to update an association in multiple Regions and multiple
    #      accounts.</p>
    #            <note>
    #               <p>The <code>TargetLocationAlarmConfiguration</code> parameter is not supported by State
    #       Manager.</p>
    #            </note>
    # @option params [Integer] :schedule_offset
    #   <p>Number of days to wait after the scheduled day to run an association. For example, if you
    #      specified a cron schedule of <code>cron(0 0 ? * THU#2 *)</code>, you could specify an offset of 3
    #      to run the association each Sunday after the second Thursday of the month. For more information
    #      about cron schedules for associations, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html">Reference: Cron
    #       and rate expressions for Systems Manager</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    #            <note>
    #               <p>To use offsets, you must specify the <code>ApplyOnlyAtCronInterval</code> parameter. This
    #       option tells the system not to run an association immediately after you create it. </p>
    #            </note>
    # @option params [Integer] :duration
    #   <p>The number of hours the association can run before it is canceled. Duration applies to
    #      associations that are currently running, and any pending and in progress commands on all targets.
    #      If a target was taken offline for the association to run, it is made available again immediately,
    #      without a reboot. </p>
    #            <p>The <code>Duration</code> parameter applies only when both these conditions are true:</p>
    #            <ul>
    #               <li>
    #                  <p>The association for which you specify a duration is cancelable according to the parameters
    #        of the SSM command document or Automation runbook associated with this execution. </p>
    #               </li>
    #               <li>
    #                  <p>The command specifies the <code>
    #                        <a href="https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_UpdateAssociation.html#systemsmanager-UpdateAssociation-request-ApplyOnlyAtCronInterval">ApplyOnlyAtCronInterval</a>
    #                     </code> parameter, which means that the association doesn't
    #        run immediately after it is updated, but only according to the specified schedule.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Hash<String, Array<String>>>] :target_maps
    #   <p>A key-value mapping of document parameters to target resources. Both Targets and TargetMaps
    #      can't be specified together.</p>
    # @option params [Types::AlarmConfiguration] :alarm_configuration
    #   <p>The details for the CloudWatch alarm you want to apply to an automation or
    #      command.</p>
    # @option params [String] :association_dispatch_assume_role
    #   <p>A role used by association to take actions on your behalf.
    #      State Manager will assume this role and call required APIs when dispatching
    #      configurations to nodes. If not specified, <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html">
    #      service-linked role for Systems Manager</a> will be used by default.
    #     </p>
    #            <note>
    #               <p>It is recommended that you define a custom IAM role so that you have full control of
    #       the permissions that State Manager has when taking actions on your behalf.</p>
    #               <p>Service-linked role support in State Manager is being phased out. Associations
    #       relying on service-linked role may require updates in the future to continue
    #       functioning properly.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     association_id: "AssociationId", # required
    #     parameters: {
    #       "ParameterName" => ["ParameterValue"]
    #     },
    #     document_version: "DocumentVersion",
    #     schedule_expression: "ScheduleExpression",
    #     output_location: {
    #       s3_location: {
    #         output_s3_region: "S3Region",
    #         output_s3_bucket_name: "S3BucketName",
    #         output_s3_key_prefix: "S3KeyPrefix"
    #       }
    #     },
    #     name: "DocumentARN",
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"]
    #       }
    #     ],
    #     association_name: "AssociationName",
    #     association_version: "AssociationVersion",
    #     automation_target_parameter_name: "AutomationTargetParameterName",
    #     max_errors: "MaxErrors",
    #     max_concurrency: "MaxConcurrency",
    #     compliance_severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"],
    #     sync_compliance: "AUTO" # One of: ["AUTO", "MANUAL"],
    #     apply_only_at_cron_interval: false,
    #     calendar_names: ["CalendarNameOrARN"],
    #     target_locations: [
    #       {
    #         accounts: ["Account"],
    #         regions: ["Region"],
    #         target_location_max_concurrency: "MaxConcurrency",
    #         target_location_max_errors: "MaxErrors",
    #         execution_role_name: "ExecutionRoleName",
    #         target_location_alarm_configuration: {
    #           ignore_poll_alarm_failure: false,
    #           alarms: [ # required
    #             {
    #               name: "AlarmName", # required
    #             }
    #           ]
    #         },
    #         include_child_organization_units: false,
    #         exclude_accounts: ["ExcludeAccount"],
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"]
    #           }
    #         ],
    #         targets_max_concurrency: "MaxConcurrency",
    #         targets_max_errors: "MaxErrors"
    #       }
    #     ],
    #     schedule_offset: 1,
    #     duration: 1,
    #     target_maps: [
    #       {
    #         "TargetMapKey" => ["TargetMapValue"]
    #       }
    #     ],
    #     alarm_configuration: {
    #       ignore_poll_alarm_failure: false,
    #       alarms: [ # required
    #         {
    #           name: "AlarmName", # required
    #         }
    #       ]
    #     },
    #     association_dispatch_assume_role: "AssociationDispatchAssumeRoleArn"
    #   }
    #   options = {}
    #   response = client.update_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association_description: {
    #       name: "DocumentARN",
    #       instance_id: "InstanceId",
    #       association_version: "AssociationVersion",
    #       date: Time.now,
    #       last_update_association_date: Time.now,
    #       status: {
    #         date: Time.now, # required
    #         name: "Pending" # One of: ["Pending", "Success", "Failed"], # required
    #         message: "StatusMessage", # required
    #         additional_info: "StatusAdditionalInfo"
    #       },
    #       overview: {
    #         status: "StatusName",
    #         detailed_status: "StatusName",
    #         association_status_aggregated_count: {
    #           "StatusName" => 1
    #         }
    #       },
    #       document_version: "DocumentVersion",
    #       automation_target_parameter_name: "AutomationTargetParameterName",
    #       parameters: {
    #         "ParameterName" => ["ParameterValue"]
    #       },
    #       association_id: "AssociationId",
    #       targets: [
    #         {
    #           key: "TargetKey",
    #           values: ["TargetValue"]
    #         }
    #       ],
    #       schedule_expression: "ScheduleExpression",
    #       output_location: {
    #         s3_location: {
    #           output_s3_region: "S3Region",
    #           output_s3_bucket_name: "S3BucketName",
    #           output_s3_key_prefix: "S3KeyPrefix"
    #         }
    #       },
    #       last_execution_date: Time.now,
    #       last_successful_execution_date: Time.now,
    #       association_name: "AssociationName",
    #       max_errors: "MaxErrors",
    #       max_concurrency: "MaxConcurrency",
    #       compliance_severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"],
    #       sync_compliance: "AUTO" # One of: ["AUTO", "MANUAL"],
    #       apply_only_at_cron_interval: false,
    #       calendar_names: ["CalendarNameOrARN"],
    #       target_locations: [
    #         {
    #           accounts: ["Account"],
    #           regions: ["Region"],
    #           target_location_max_concurrency: "MaxConcurrency",
    #           target_location_max_errors: "MaxErrors",
    #           execution_role_name: "ExecutionRoleName",
    #           target_location_alarm_configuration: {
    #             ignore_poll_alarm_failure: false,
    #             alarms: [ # required
    #               {
    #                 name: "AlarmName", # required
    #               }
    #             ]
    #           },
    #           include_child_organization_units: false,
    #           exclude_accounts: ["ExcludeAccount"],
    #           targets: [
    #             {
    #               key: "TargetKey",
    #               values: ["TargetValue"]
    #             }
    #           ],
    #           targets_max_concurrency: "MaxConcurrency",
    #           targets_max_errors: "MaxErrors"
    #         }
    #       ],
    #       schedule_offset: 1,
    #       duration: 1,
    #       target_maps: [
    #         {
    #           "TargetMapKey" => ["TargetMapValue"]
    #         }
    #       ],
    #       alarm_configuration: {
    #         ignore_poll_alarm_failure: false,
    #         alarms: [ # required
    #           {
    #             name: "AlarmName", # required
    #           }
    #         ]
    #       },
    #       triggered_alarms: [
    #         {
    #           name: "AlarmName", # required
    #           state: "UNKNOWN" # One of: ["UNKNOWN", "ALARM"], # required
    #         }
    #       ],
    #       association_dispatch_assume_role: "AssociationDispatchAssumeRoleArn"
    #     }
    #   }
    # @return [Types::UpdateAssociationResult]
    def update_association(params = {}, options = {})
      request = build_request(:update_association, params)
      request.send_request(options)
    end

    # <p>Updates the status of the Amazon Web Services Systems Manager document (SSM document) associated with the specified
    #    managed node.</p>
    #          <p>
    #             <code>UpdateAssociationStatus</code> is primarily used by the Amazon Web Services Systems Manager Agent (SSM Agent) to
    #    report status updates about your associations and is only used for associations created with the
    #     <code>InstanceId</code> legacy parameter.</p>
    # @param [Hash, Types::UpdateAssociationStatusRequest] params
    # @option params [String] :name
    #   <p>The name of the SSM document.</p>
    # @option params [String] :instance_id
    #   <p>The managed node ID.</p>
    # @option params [Types::AssociationStatus] :association_status
    #   <p>The association status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DocumentARN", # required
    #     instance_id: "InstanceId", # required
    #     association_status: { # required
    #       date: Time.now, # required
    #       name: "Pending" # One of: ["Pending", "Success", "Failed"], # required
    #       message: "StatusMessage", # required
    #       additional_info: "StatusAdditionalInfo"
    #     }
    #   }
    #   options = {}
    #   response = client.update_association_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association_description: {
    #       name: "DocumentARN",
    #       instance_id: "InstanceId",
    #       association_version: "AssociationVersion",
    #       date: Time.now,
    #       last_update_association_date: Time.now,
    #       status: {
    #         date: Time.now, # required
    #         name: "Pending" # One of: ["Pending", "Success", "Failed"], # required
    #         message: "StatusMessage", # required
    #         additional_info: "StatusAdditionalInfo"
    #       },
    #       overview: {
    #         status: "StatusName",
    #         detailed_status: "StatusName",
    #         association_status_aggregated_count: {
    #           "StatusName" => 1
    #         }
    #       },
    #       document_version: "DocumentVersion",
    #       automation_target_parameter_name: "AutomationTargetParameterName",
    #       parameters: {
    #         "ParameterName" => ["ParameterValue"]
    #       },
    #       association_id: "AssociationId",
    #       targets: [
    #         {
    #           key: "TargetKey",
    #           values: ["TargetValue"]
    #         }
    #       ],
    #       schedule_expression: "ScheduleExpression",
    #       output_location: {
    #         s3_location: {
    #           output_s3_region: "S3Region",
    #           output_s3_bucket_name: "S3BucketName",
    #           output_s3_key_prefix: "S3KeyPrefix"
    #         }
    #       },
    #       last_execution_date: Time.now,
    #       last_successful_execution_date: Time.now,
    #       association_name: "AssociationName",
    #       max_errors: "MaxErrors",
    #       max_concurrency: "MaxConcurrency",
    #       compliance_severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "UNSPECIFIED"],
    #       sync_compliance: "AUTO" # One of: ["AUTO", "MANUAL"],
    #       apply_only_at_cron_interval: false,
    #       calendar_names: ["CalendarNameOrARN"],
    #       target_locations: [
    #         {
    #           accounts: ["Account"],
    #           regions: ["Region"],
    #           target_location_max_concurrency: "MaxConcurrency",
    #           target_location_max_errors: "MaxErrors",
    #           execution_role_name: "ExecutionRoleName",
    #           target_location_alarm_configuration: {
    #             ignore_poll_alarm_failure: false,
    #             alarms: [ # required
    #               {
    #                 name: "AlarmName", # required
    #               }
    #             ]
    #           },
    #           include_child_organization_units: false,
    #           exclude_accounts: ["ExcludeAccount"],
    #           targets: [
    #             {
    #               key: "TargetKey",
    #               values: ["TargetValue"]
    #             }
    #           ],
    #           targets_max_concurrency: "MaxConcurrency",
    #           targets_max_errors: "MaxErrors"
    #         }
    #       ],
    #       schedule_offset: 1,
    #       duration: 1,
    #       target_maps: [
    #         {
    #           "TargetMapKey" => ["TargetMapValue"]
    #         }
    #       ],
    #       alarm_configuration: {
    #         ignore_poll_alarm_failure: false,
    #         alarms: [ # required
    #           {
    #             name: "AlarmName", # required
    #           }
    #         ]
    #       },
    #       triggered_alarms: [
    #         {
    #           name: "AlarmName", # required
    #           state: "UNKNOWN" # One of: ["UNKNOWN", "ALARM"], # required
    #         }
    #       ],
    #       association_dispatch_assume_role: "AssociationDispatchAssumeRoleArn"
    #     }
    #   }
    # @return [Types::UpdateAssociationStatusResult]
    def update_association_status(params = {}, options = {})
      request = build_request(:update_association_status, params)
      request.send_request(options)
    end

    # <p>Updates an existing cloud connector with new configuration details.</p>
    # @param [Hash, Types::UpdateCloudConnectorRequest] params
    # @option params [String] :cloud_connector_id
    #   <p>The ID of the cloud connector to update.</p>
    # @option params [String] :display_name
    #   <p>A new friendly name for the cloud connector.</p>
    # @option params [Types::CloudConnectorConfiguration] :configuration
    #   <p>The updated configuration details for connecting to the third-party cloud
    #      environment.</p>
    # @option params [String] :description
    #   <p>A new description for the cloud connector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_connector_id: "CloudConnectorId", # required
    #     display_name: "DisplayName",
    #     configuration: {
    #       # One of:
    #       azure_configuration: {
    #         tenant_id: "AzureTenantId", # required
    #         tenant_display_name: "AzureTenantDisplayName",
    #         application_id: "AzureApplicationId", # required
    #         application_display_name: "AzureApplicationDisplayName",
    #         targets: {
    #           # One of:
    #           subscriptions: [
    #             {
    #               id: "AzureSubscriptionId", # required
    #               display_name: "AzureSubscriptionDisplayName"
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     description: "CloudConnectorDescription"
    #   }
    #   options = {}
    #   response = client.update_cloud_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cloud_connector_id: "CloudConnectorId"
    #   }
    # @return [Types::UpdateCloudConnectorResult]
    def update_cloud_connector(params = {}, options = {})
      request = build_request(:update_cloud_connector, params)
      request.send_request(options)
    end

    # <p>Updates one or more values for an SSM document.</p>
    # @param [Hash, Types::UpdateDocumentRequest] params
    # @option params [String] :content
    #   <p>A valid JSON or YAML string.</p>
    # @option params [Array<Types::AttachmentsSource>] :attachments
    #   <p>A list of key-value pairs that describe attachments to a version of a document.</p>
    # @option params [String] :name
    #   <p>The name of the SSM document that you want to update.</p>
    # @option params [String] :display_name
    #   <p>The friendly name of the SSM document that you want to update. This value can differ for
    #      each version of the document. If you don't specify a value for this parameter in your request,
    #      the existing value is applied to the new document version.</p>
    # @option params [String] :version_name
    #   <p>An optional field specifying the version of the artifact you are updating with the document.
    #      For example, 12.6. This value is unique across all versions of a document, and can't be
    #      changed.</p>
    # @option params [String] :document_version
    #   <p>The version of the document that you want to update. Currently, Systems Manager supports updating only
    #      the latest version of the document. You can specify the version number of the latest version or
    #      use the <code>$LATEST</code> variable.</p>
    #            <note>
    #               <p>If you change a document version for a State Manager association, Systems Manager immediately runs
    #       the association unless you previously specifed the <code>apply-only-at-cron-interval</code>
    #       parameter.</p>
    #            </note>
    # @option params [String] :document_format
    #   <p>Specify the document format for the new document version. The document format can be JSON,
    #      YAML, or TEXT. JSON is the default format.</p>
    # @option params [String] :target_type
    #   <p>Specify a new target type for the document.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     content: "DocumentContent", # required
    #     attachments: [
    #       {
    #         key: "SourceUrl" # One of: ["SourceUrl", "S3FileUrl", "AttachmentReference"],
    #         values: ["AttachmentsSourceValue"],
    #         name: "AttachmentIdentifier"
    #       }
    #     ],
    #     name: "DocumentName", # required
    #     display_name: "DocumentDisplayName",
    #     version_name: "DocumentVersionName",
    #     document_version: "DocumentVersion",
    #     document_format: "YAML" # One of: ["YAML", "JSON", "TEXT"],
    #     target_type: "TargetType"
    #   }
    #   options = {}
    #   response = client.update_document(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_description: {
    #       sha1: "DocumentSha1",
    #       hash: "DocumentHash",
    #       hash_type: "Sha256" # One of: ["Sha256", "Sha1"],
    #       name: "DocumentARN",
    #       display_name: "DocumentDisplayName",
    #       version_name: "DocumentVersionName",
    #       owner: "DocumentOwner",
    #       created_date: Time.now,
    #       status: "Creating" # One of: ["Creating", "Active", "Updating", "Deleting", "Failed"],
    #       status_information: "DocumentStatusInformation",
    #       document_version: "DocumentVersion",
    #       description: "DescriptionInDocument",
    #       parameters: [
    #         {
    #           name: "DocumentParameterName",
    #           type: "String" # One of: ["String", "StringList"],
    #           description: "DocumentParameterDescrption",
    #           default_value: "DocumentParameterDefaultValue"
    #         }
    #       ],
    #       platform_types: ["Windows" # One of: ["Windows", "Linux", "MacOS"]],
    #       document_type: "Command" # One of: ["Command", "Policy", "Automation", "Session", "Package", "ApplicationConfiguration", "ApplicationConfigurationSchema", "DeploymentStrategy", "ChangeCalendar", "Automation.ChangeTemplate", "ProblemAnalysis", "ProblemAnalysisTemplate", "CloudFormation", "ConformancePackTemplate", "QuickSetup", "ManualApprovalPolicy", "AutoApprovalPolicy"],
    #       schema_version: "DocumentSchemaVersion",
    #       latest_version: "DocumentVersion",
    #       default_version: "DocumentVersion",
    #       document_format: "YAML" # One of: ["YAML", "JSON", "TEXT"],
    #       target_type: "TargetType",
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       attachments_information: [
    #         {
    #           name: "AttachmentName"
    #         }
    #       ],
    #       requires: [
    #         {
    #           name: "DocumentARN", # required
    #           version: "DocumentVersion",
    #           require_type: "RequireType",
    #           version_name: "DocumentVersionName"
    #         }
    #       ],
    #       author: "DocumentAuthor",
    #       review_information: [
    #         {
    #           reviewed_time: Time.now,
    #           status: "APPROVED" # One of: ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"],
    #           reviewer: "Reviewer"
    #         }
    #       ],
    #       approved_version: "DocumentVersion",
    #       pending_review_version: "DocumentVersion",
    #       review_status: "APPROVED" # One of: ["APPROVED", "NOT_REVIEWED", "PENDING", "REJECTED"],
    #       category: ["Category"],
    #       category_enum: ["Category"]
    #     }
    #   }
    # @return [Types::UpdateDocumentResult]
    def update_document(params = {}, options = {})
      request = build_request(:update_document, params)
      request.send_request(options)
    end

    # <p>Set the default version of a document. </p>
    #          <note>
    #             <p>If you change a document version for a State Manager association, Systems Manager immediately runs
    #     the association unless you previously specifed the <code>apply-only-at-cron-interval</code>
    #     parameter.</p>
    #          </note>
    # @param [Hash, Types::UpdateDocumentDefaultVersionRequest] params
    # @option params [String] :name
    #   <p>The name of a custom document that you want to set as the default version.</p>
    # @option params [String] :document_version
    #   <p>The version of a custom document that you want to set as the default version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DocumentName", # required
    #     document_version: "DocumentVersionNumber", # required
    #   }
    #   options = {}
    #   response = client.update_document_default_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     description: {
    #       name: "DocumentName",
    #       default_version: "DocumentVersion",
    #       default_version_name: "DocumentVersionName"
    #     }
    #   }
    # @return [Types::UpdateDocumentDefaultVersionResult]
    def update_document_default_version(params = {}, options = {})
      request = build_request(:update_document_default_version, params)
      request.send_request(options)
    end

    # <important>
    #             <p>Amazon Web Services Systems Manager Change Manager is no longer open to new customers. Existing customers can
    #   continue to use the service as normal. For more information, see
    # <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/change-manager-availability-change.html">Amazon Web Services Systems Manager Change Manager availability change</a>.</p>
    #          </important>
    #          <p>Updates information related to approval reviews for a specific version of a change template
    #    in Change Manager.</p>
    # @param [Hash, Types::UpdateDocumentMetadataRequest] params
    # @option params [String] :name
    #   <p>The name of the change template for which a version's metadata is to be updated.</p>
    # @option params [String] :document_version
    #   <p>The version of a change template in which to update approval metadata.</p>
    # @option params [Types::DocumentReviews] :document_reviews
    #   <p>The change template review details to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DocumentName", # required
    #     document_version: "DocumentVersion",
    #     document_reviews: { # required
    #       action: "SendForReview" # One of: ["SendForReview", "UpdateReview", "Approve", "Reject"], # required
    #       comment: [
    #         {
    #           type: "Comment" # One of: ["Comment"],
    #           content: "DocumentReviewComment"
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_document_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDocumentMetadataResponse]
    def update_document_metadata(params = {}, options = {})
      request = build_request(:update_document_metadata, params)
      request.send_request(options)
    end

    # <p>Updates an existing maintenance window. Only specified parameters are modified.</p>
    #          <note>
    #             <p>The value you specify for <code>Duration</code> determines the specific end time for the
    #     maintenance window based on the time it begins. No maintenance window tasks are permitted to
    #     start after the resulting endtime minus the number of hours you specify for <code>Cutoff</code>.
    #     For example, if the maintenance window starts at 3 PM, the duration is three hours, and the
    #     value you specify for <code>Cutoff</code> is one hour, no maintenance window tasks can start
    #     after 5 PM.</p>
    #          </note>
    # @param [Hash, Types::UpdateMaintenanceWindowRequest] params
    # @option params [String] :window_id
    #   <p>The ID of the maintenance window to update.</p>
    # @option params [String] :name
    #   <p>The name of the maintenance window.</p>
    # @option params [String] :description
    #   <p>An optional description for the update request.</p>
    # @option params [String] :start_date
    #   <p>The date and time, in ISO-8601 Extended format, for when you want the maintenance window to
    #      become active. <code>StartDate</code> allows you to delay activation of the maintenance window
    #      until the specified future date.</p>
    #            <note>
    #               <p>When using a rate schedule, if you provide a start date that occurs in the past, the
    #       current date and time are used as the start date. </p>
    #            </note>
    # @option params [String] :end_date
    #   <p>The date and time, in ISO-8601 Extended format, for when you want the maintenance window to
    #      become inactive. <code>EndDate</code> allows you to set a date and time in the future when the
    #      maintenance window will no longer run.</p>
    # @option params [String] :schedule
    #   <p>The schedule of the maintenance window in the form of a cron or rate expression.</p>
    # @option params [String] :schedule_timezone
    #   <p>The time zone that the scheduled maintenance window executions are based on, in Internet
    #      Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or
    #      "Asia/Seoul". For more information, see the <a href="https://www.iana.org/time-zones">Time
    #       Zone Database</a> on the IANA website.</p>
    # @option params [Integer] :schedule_offset
    #   <p>The number of days to wait after the date and time specified by a cron expression before
    #      running the maintenance window.</p>
    #            <p>For example, the following cron expression schedules a maintenance window to run the third
    #      Tuesday of every month at 11:30 PM.</p>
    #            <p>
    #               <code>cron(30 23 ? * TUE#3 *)</code>
    #            </p>
    #            <p>If the schedule offset is <code>2</code>, the maintenance window won't run until two days
    #      later.</p>
    # @option params [Integer] :duration
    #   <p>The duration of the maintenance window in hours.</p>
    # @option params [Integer] :cutoff
    #   <p>The number of hours before the end of the maintenance window that Amazon Web Services Systems Manager stops scheduling
    #      new tasks for execution.</p>
    # @option params [Boolean] :allow_unassociated_targets
    #   <p>Whether targets must be registered with the maintenance window before tasks can be defined
    #      for those targets.</p>
    # @option params [Boolean] :enabled
    #   <p>Whether the maintenance window is enabled.</p>
    # @option params [Boolean] :replace
    #   <p>If <code>True</code>, then all fields that are required by the <a>CreateMaintenanceWindow</a> operation are also required for this API request. Optional
    #      fields that aren't specified are set to null. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     window_id: "MaintenanceWindowId", # required
    #     name: "MaintenanceWindowName",
    #     description: "MaintenanceWindowDescription",
    #     start_date: "MaintenanceWindowStringDateTime",
    #     end_date: "MaintenanceWindowStringDateTime",
    #     schedule: "MaintenanceWindowSchedule",
    #     schedule_timezone: "MaintenanceWindowTimezone",
    #     schedule_offset: 1,
    #     duration: 1,
    #     cutoff: 1,
    #     allow_unassociated_targets: false,
    #     enabled: false,
    #     replace: false
    #   }
    #   options = {}
    #   response = client.update_maintenance_window(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     window_id: "MaintenanceWindowId",
    #     name: "MaintenanceWindowName",
    #     description: "MaintenanceWindowDescription",
    #     start_date: "MaintenanceWindowStringDateTime",
    #     end_date: "MaintenanceWindowStringDateTime",
    #     schedule: "MaintenanceWindowSchedule",
    #     schedule_timezone: "MaintenanceWindowTimezone",
    #     schedule_offset: 1,
    #     duration: 1,
    #     cutoff: 1,
    #     allow_unassociated_targets: false,
    #     enabled: false
    #   }
    # @return [Types::UpdateMaintenanceWindowResult]
    def update_maintenance_window(params = {}, options = {})
      request = build_request(:update_maintenance_window, params)
      request.send_request(options)
    end

    # <p>Modifies the target of an existing maintenance window. You
    #    can change the following:</p>
    #          <ul>
    #             <li>
    #                <p>Name</p>
    #             </li>
    #             <li>
    #                <p>Description</p>
    #             </li>
    #             <li>
    #                <p>Owner</p>
    #             </li>
    #             <li>
    #                <p>IDs for an ID target</p>
    #             </li>
    #             <li>
    #                <p>Tags for a Tag target</p>
    #             </li>
    #             <li>
    #                <p>From any supported tag type to another. The three supported tag types are ID target, Tag
    #      target, and resource group. For more information, see <a>Target</a>.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>If a parameter is null, then the corresponding field isn't modified.</p>
    #          </note>
    # @param [Hash, Types::UpdateMaintenanceWindowTargetRequest] params
    # @option params [String] :window_id
    #   <p>The maintenance window ID with which to modify the target.</p>
    # @option params [String] :window_target_id
    #   <p>The target ID to modify.</p>
    # @option params [Array<Types::Target>] :targets
    #   <p>The targets to add or replace.</p>
    # @option params [String] :owner_information
    #   <p>User-provided value that will be included in any Amazon CloudWatch Events events raised while
    #      running tasks for these targets in this maintenance window.</p>
    # @option params [String] :name
    #   <p>A name for the update.</p>
    # @option params [String] :description
    #   <p>An optional description for the update.</p>
    # @option params [Boolean] :replace
    #   <p>If <code>True</code>, then all fields that are required by the <a>RegisterTargetWithMaintenanceWindow</a> operation are also required for this API
    #      request. Optional fields that aren't specified are set to null.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     window_id: "MaintenanceWindowId", # required
    #     window_target_id: "MaintenanceWindowTargetId", # required
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"]
    #       }
    #     ],
    #     owner_information: "OwnerInformation",
    #     name: "MaintenanceWindowName",
    #     description: "MaintenanceWindowDescription",
    #     replace: false
    #   }
    #   options = {}
    #   response = client.update_maintenance_window_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     window_id: "MaintenanceWindowId",
    #     window_target_id: "MaintenanceWindowTargetId",
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"]
    #       }
    #     ],
    #     owner_information: "OwnerInformation",
    #     name: "MaintenanceWindowName",
    #     description: "MaintenanceWindowDescription"
    #   }
    # @return [Types::UpdateMaintenanceWindowTargetResult]
    def update_maintenance_window_target(params = {}, options = {})
      request = build_request(:update_maintenance_window_target, params)
      request.send_request(options)
    end

    # <p>Modifies a task assigned to a maintenance window. You can't change the task type, but you
    #    can change the following values:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>TaskARN</code>. For example, you can change a <code>RUN_COMMAND</code> task from
    #       <code>AWS-RunPowerShellScript</code> to <code>AWS-RunShellScript</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ServiceRoleArn</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TaskInvocationParameters</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Priority</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MaxConcurrency</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MaxErrors</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>One or more targets must be specified for maintenance window Run Command-type tasks.
    #     Depending on the task, targets are optional for other maintenance window task types (Automation,
    #      Lambda, and Step Functions). For more information about running tasks
    #     that don't specify targets, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">Registering
    #      maintenance window tasks without targets</a> in the
    #     <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #          </note>
    #          <p>If the value for a parameter in <code>UpdateMaintenanceWindowTask</code> is null, then the
    #    corresponding field isn't modified. If you set <code>Replace</code> to true, then all fields
    #    required by the <a>RegisterTaskWithMaintenanceWindow</a> operation are required for
    #    this request. Optional fields that aren't specified are set to null.</p>
    #          <important>
    #             <p>When you update a maintenance window task that has options specified in
    #      <code>TaskInvocationParameters</code>, you must provide again all the
    #      <code>TaskInvocationParameters</code> values that you want to retain. The values you don't
    #     specify again are removed. For example, suppose that when you registered a Run Command task, you
    #     specified <code>TaskInvocationParameters</code> values for <code>Comment</code>,
    #      <code>NotificationConfig</code>, and <code>OutputS3BucketName</code>. If you update the
    #     maintenance window task and specify only a different <code>OutputS3BucketName</code> value, the
    #     values for <code>Comment</code> and <code>NotificationConfig</code> are removed.</p>
    #          </important>
    # @param [Hash, Types::UpdateMaintenanceWindowTaskRequest] params
    # @option params [String] :window_id
    #   <p>The maintenance window ID that contains the task to modify.</p>
    # @option params [String] :window_task_id
    #   <p>The task ID to modify.</p>
    # @option params [Array<Types::Target>] :targets
    #   <p>The targets (either managed nodes or tags) to modify. Managed nodes are specified using the
    #      format <code>Key=instanceids,Values=instanceID_1,instanceID_2</code>. Tags are specified using
    #      the format <code> Key=tag_name,Values=tag_value</code>. </p>
    #            <note>
    #               <p>One or more targets must be specified for maintenance window Run Command-type tasks.
    #       Depending on the task, targets are optional for other maintenance window task types (Automation,
    #        Lambda, and Step Functions). For more information about running tasks
    #       that don't specify targets, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">Registering
    #        maintenance window tasks without targets</a> in the
    #       <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            </note>
    # @option params [String] :task_arn
    #   <p>The task ARN to modify.</p>
    # @option params [String] :service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role for
    #                   Amazon Web Services Systems Manager to assume when running a maintenance window task. If you do not specify a
    #                   service role ARN, Systems Manager uses a service-linked role in your account. If no
    #                   appropriate service-linked role for Systems Manager exists in your account, it is created when
    #                   you run <code>RegisterTaskWithMaintenanceWindow</code>.</p>
    #            <p>However, for an improved security posture, we strongly recommend creating a custom
    #                   policy and custom service role for running your maintenance window tasks. The policy
    #                   can be crafted to provide only the permissions needed for your particular
    #                   maintenance window tasks. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html">Setting up Maintenance Windows</a> in the in the
    #                       <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [Hash<String, Types::MaintenanceWindowTaskParameterValueExpression>] :task_parameters
    #   <p>The parameters to modify.</p>
    #            <note>
    #               <p>
    #                  <code>TaskParameters</code> has been deprecated. To specify parameters to pass to a task when it runs,
    #         instead use the <code>Parameters</code> option in the <code>TaskInvocationParameters</code> structure. For information
    #         about how Systems Manager handles these options for the supported maintenance window task
    #         types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #            </note>
    #            <p>The map has the following format:</p>
    #            <p>Key: string, between 1 and 255 characters</p>
    #            <p>Value: an array of strings, each string is between 1 and 255 characters</p>
    # @option params [Types::MaintenanceWindowTaskInvocationParameters] :task_invocation_parameters
    #   <p>The parameters that the task should use during execution. Populate only the fields that
    #      match the task type. All other fields should be empty.</p>
    #            <important>
    #               <p>When you update a maintenance window task that has options specified in
    #        <code>TaskInvocationParameters</code>, you must provide again all the
    #        <code>TaskInvocationParameters</code> values that you want to retain. The values you don't
    #       specify again are removed. For example, suppose that when you registered a Run Command task, you
    #       specified <code>TaskInvocationParameters</code> values for <code>Comment</code>,
    #        <code>NotificationConfig</code>, and <code>OutputS3BucketName</code>. If you update the
    #       maintenance window task and specify only a different <code>OutputS3BucketName</code> value, the
    #       values for <code>Comment</code> and <code>NotificationConfig</code> are removed.</p>
    #            </important>
    # @option params [Integer] :priority
    #   <p>The new task priority to specify. The lower the number, the higher the priority. Tasks that
    #      have the same priority are scheduled in parallel.</p>
    # @option params [String] :max_concurrency
    #   <p>The new <code>MaxConcurrency</code> value you want to specify. <code>MaxConcurrency</code>
    #      is the number of targets that are allowed to run this task, in parallel.</p>
    #            <note>
    #               <p>Although this element is listed as "Required: No", a value can be omitted only when you are
    #       registering or updating a <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">targetless
    #        task</a> You must provide a value in all other cases.</p>
    #               <p>For maintenance window tasks without a target specified, you can't supply a value for this
    #       option. Instead, the system inserts a placeholder value of <code>1</code>. This value doesn't
    #       affect the running of your task.</p>
    #            </note>
    # @option params [String] :max_errors
    #   <p>The new <code>MaxErrors</code> value to specify. <code>MaxErrors</code> is the maximum
    #      number of errors that are allowed before the task stops being scheduled.</p>
    #            <note>
    #               <p>Although this element is listed as "Required: No", a value can be omitted only when you are
    #       registering or updating a <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/maintenance-windows-targetless-tasks.html">targetless
    #        task</a> You must provide a value in all other cases.</p>
    #               <p>For maintenance window tasks without a target specified, you can't supply a value for this
    #       option. Instead, the system inserts a placeholder value of <code>1</code>. This value doesn't
    #       affect the running of your task.</p>
    #            </note>
    # @option params [Types::LoggingInfo] :logging_info
    #   <p>The new logging location in Amazon S3 to specify.</p>
    #            <note>
    #               <p>
    #                  <code>LoggingInfo</code> has been deprecated. To specify an Amazon Simple Storage Service (Amazon S3) bucket to contain logs, instead use the
    #         <code>OutputS3BucketName</code> and <code>OutputS3KeyPrefix</code> options in the <code>TaskInvocationParameters</code> structure.
    #         For information about how Amazon Web Services Systems Manager handles these options for the supported maintenance
    #         window task types, see <a>MaintenanceWindowTaskInvocationParameters</a>.</p>
    #            </note>
    # @option params [String] :name
    #   <p>The new task name to specify.</p>
    # @option params [String] :description
    #   <p>The new task description to specify.</p>
    # @option params [Boolean] :replace
    #   <p>If True, then all fields that are required by the <a>RegisterTaskWithMaintenanceWindow</a> operation are also required for this API request.
    #      Optional fields that aren't specified are set to null.</p>
    # @option params [String] :cutoff_behavior
    #   <p>Indicates whether tasks should continue to run after the cutoff time specified in the
    #      maintenance windows is reached. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CONTINUE_TASK</code>: When the cutoff time is reached, any tasks that are running
    #        continue. The default value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCEL_TASK</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>For Automation, Lambda, Step Functions tasks: When the cutoff
    #          time is reached, any task invocations that are already running continue, but no new task
    #          invocations are started.</p>
    #                     </li>
    #                     <li>
    #                        <p>For Run Command tasks: When the cutoff time is reached, the system sends a <a>CancelCommand</a> operation that attempts to cancel the command associated with the
    #          task. However, there is no guarantee that the command will be terminated and the underlying
    #          process stopped.</p>
    #                     </li>
    #                  </ul>
    #                  <p>The status for tasks that are not completed is <code>TIMED_OUT</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Types::AlarmConfiguration] :alarm_configuration
    #   <p>The CloudWatch alarm you want to apply to your maintenance window task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     window_id: "MaintenanceWindowId", # required
    #     window_task_id: "MaintenanceWindowTaskId", # required
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"]
    #       }
    #     ],
    #     task_arn: "MaintenanceWindowTaskArn",
    #     service_role_arn: "ServiceRole",
    #     task_parameters: {
    #       "MaintenanceWindowTaskParameterName" => {
    #         values: ["MaintenanceWindowTaskParameterValue"]
    #       }
    #     },
    #     task_invocation_parameters: {
    #       run_command: {
    #         comment: "Comment",
    #         cloud_watch_output_config: {
    #           cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #           cloud_watch_output_enabled: false
    #         },
    #         document_hash: "DocumentHash",
    #         document_hash_type: "Sha256" # One of: ["Sha256", "Sha1"],
    #         document_version: "DocumentVersion",
    #         notification_config: {
    #           notification_arn: "NotificationArn",
    #           notification_events: ["All" # One of: ["All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"]],
    #           notification_type: "Command" # One of: ["Command", "Invocation"]
    #         },
    #         output_s3_bucket_name: "S3BucketName",
    #         output_s3_key_prefix: "S3KeyPrefix",
    #         parameters: {
    #           "ParameterName" => ["ParameterValue"]
    #         },
    #         service_role_arn: "ServiceRole",
    #         timeout_seconds: 1
    #       },
    #       automation: {
    #         document_version: "DocumentVersion",
    #         parameters: {
    #           "AutomationParameterKey" => ["AutomationParameterValue"]
    #         }
    #       },
    #       step_functions: {
    #         input: "MaintenanceWindowStepFunctionsInput",
    #         name: "MaintenanceWindowStepFunctionsName"
    #       },
    #       lambda: {
    #         client_context: "MaintenanceWindowLambdaClientContext",
    #         qualifier: "MaintenanceWindowLambdaQualifier",
    #         payload: "data"
    #       }
    #     },
    #     priority: 1,
    #     max_concurrency: "MaxConcurrency",
    #     max_errors: "MaxErrors",
    #     logging_info: {
    #       s3_bucket_name: "S3BucketName", # required
    #       s3_key_prefix: "S3KeyPrefix",
    #       s3_region: "S3Region", # required
    #     },
    #     name: "MaintenanceWindowName",
    #     description: "MaintenanceWindowDescription",
    #     replace: false,
    #     cutoff_behavior: "CONTINUE_TASK" # One of: ["CONTINUE_TASK", "CANCEL_TASK"],
    #     alarm_configuration: {
    #       ignore_poll_alarm_failure: false,
    #       alarms: [ # required
    #         {
    #           name: "AlarmName", # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_maintenance_window_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     window_id: "MaintenanceWindowId",
    #     window_task_id: "MaintenanceWindowTaskId",
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"]
    #       }
    #     ],
    #     task_arn: "MaintenanceWindowTaskArn",
    #     service_role_arn: "ServiceRole",
    #     task_parameters: {
    #       "MaintenanceWindowTaskParameterName" => {
    #         values: ["MaintenanceWindowTaskParameterValue"]
    #       }
    #     },
    #     task_invocation_parameters: {
    #       run_command: {
    #         comment: "Comment",
    #         cloud_watch_output_config: {
    #           cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #           cloud_watch_output_enabled: false
    #         },
    #         document_hash: "DocumentHash",
    #         document_hash_type: "Sha256" # One of: ["Sha256", "Sha1"],
    #         document_version: "DocumentVersion",
    #         notification_config: {
    #           notification_arn: "NotificationArn",
    #           notification_events: ["All" # One of: ["All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"]],
    #           notification_type: "Command" # One of: ["Command", "Invocation"]
    #         },
    #         output_s3_bucket_name: "S3BucketName",
    #         output_s3_key_prefix: "S3KeyPrefix",
    #         parameters: {
    #           "ParameterName" => ["ParameterValue"]
    #         },
    #         service_role_arn: "ServiceRole",
    #         timeout_seconds: 1
    #       },
    #       automation: {
    #         document_version: "DocumentVersion",
    #         parameters: {
    #           "AutomationParameterKey" => ["AutomationParameterValue"]
    #         }
    #       },
    #       step_functions: {
    #         input: "MaintenanceWindowStepFunctionsInput",
    #         name: "MaintenanceWindowStepFunctionsName"
    #       },
    #       lambda: {
    #         client_context: "MaintenanceWindowLambdaClientContext",
    #         qualifier: "MaintenanceWindowLambdaQualifier",
    #         payload: "data"
    #       }
    #     },
    #     priority: 1,
    #     max_concurrency: "MaxConcurrency",
    #     max_errors: "MaxErrors",
    #     logging_info: {
    #       s3_bucket_name: "S3BucketName", # required
    #       s3_key_prefix: "S3KeyPrefix",
    #       s3_region: "S3Region", # required
    #     },
    #     name: "MaintenanceWindowName",
    #     description: "MaintenanceWindowDescription",
    #     cutoff_behavior: "CONTINUE_TASK" # One of: ["CONTINUE_TASK", "CANCEL_TASK"],
    #     alarm_configuration: {
    #       ignore_poll_alarm_failure: false,
    #       alarms: [ # required
    #         {
    #           name: "AlarmName", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateMaintenanceWindowTaskResult]
    def update_maintenance_window_task(params = {}, options = {})
      request = build_request(:update_maintenance_window_task, params)
      request.send_request(options)
    end

    # <p>Changes the Identity and Access Management (IAM) role that is assigned to the
    #    on-premises server, edge device, or virtual machines (VM). IAM roles are first
    #    assigned to these hybrid nodes during the activation process. For more information, see <a>CreateActivation</a>.</p>
    # @param [Hash, Types::UpdateManagedInstanceRoleRequest] params
    # @option params [String] :instance_id
    #   <p>The ID of the managed node where you want to update the role.</p>
    # @option params [String] :iam_role
    #   <p>The name of the Identity and Access Management (IAM) role that you want to assign to
    #      the managed node. This IAM role must provide AssumeRole permissions for the
    #      Amazon Web Services Systems Manager service principal <code>ssm.amazonaws.com</code>. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/hybrid-multicloud-service-role.html">Create the IAM service role required for Systems Manager in hybrid and multicloud
    #       environments</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #            <note>
    #               <p>You can't specify an IAM service-linked role for this parameter. You must
    #       create a unique role.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "ManagedInstanceId", # required
    #     iam_role: "IamRole", # required
    #   }
    #   options = {}
    #   response = client.update_managed_instance_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateManagedInstanceRoleResult]
    def update_managed_instance_role(params = {}, options = {})
      request = build_request(:update_managed_instance_role, params)
      request.send_request(options)
    end

    # <p>Edit or change an OpsItem. You must have permission in Identity and Access Management (IAM) to update an OpsItem. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-setup.html">Set up OpsCenter</a> in the
    #     <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    #          <p>Operations engineers and IT professionals use Amazon Web Services Systems Manager OpsCenter to view, investigate, and
    #    remediate operational issues impacting the performance and health of their Amazon Web Services resources. For
    #    more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html">Amazon Web Services Systems Manager OpsCenter</a> in the
    #     <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    # @param [Hash, Types::UpdateOpsItemRequest] params
    # @option params [String] :description
    #   <p>User-defined text that contains information about the OpsItem, in Markdown format. </p>
    # @option params [Hash<String, Types::OpsItemDataValue>] :operational_data
    #   <p>Add new keys or edit existing key-value pairs of the OperationalData map in the OpsItem
    #      object.</p>
    #            <p>Operational data is custom data that provides useful reference details about the OpsItem.
    #      For example, you can specify log files, error strings, license keys, troubleshooting tips, or
    #      other relevant data. You enter operational data as key-value pairs. The key has a maximum length
    #      of 128 characters. The value has a maximum size of 20 KB.</p>
    #            <important>
    #               <p>Operational data keys <i>can't</i> begin with the following:
    #        <code>amazon</code>, <code>aws</code>, <code>amzn</code>, <code>ssm</code>,
    #        <code>/amazon</code>, <code>/aws</code>, <code>/amzn</code>, <code>/ssm</code>.</p>
    #            </important>
    #            <p>You can choose to make the data searchable by other users in the account or you can restrict
    #      search access. Searchable data means that all users with access to the OpsItem Overview page (as
    #      provided by the <a>DescribeOpsItems</a> API operation) can view and search on the
    #      specified data. Operational data that isn't searchable is only viewable by users who have access
    #      to the OpsItem (as provided by the <a>GetOpsItem</a> API operation).</p>
    #            <p>Use the <code>/aws/resources</code> key in OperationalData to specify a related resource in
    #      the request. Use the <code>/aws/automations</code> key in OperationalData to associate an
    #      Automation runbook with the OpsItem. To view Amazon Web Services CLI example commands that use these keys, see
    #       <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-manually-create-OpsItems.html">Creating OpsItems
    #       manually</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [Array<String>] :operational_data_to_delete
    #   <p>Keys that you want to remove from the OperationalData map.</p>
    # @option params [Array<Types::OpsItemNotification>] :notifications
    #   <p>The Amazon Resource Name (ARN) of an SNS topic where notifications are sent when this
    #      OpsItem is edited or changed.</p>
    # @option params [Integer] :priority
    #   <p>The importance of this OpsItem in relation to other OpsItems in the system.</p>
    # @option params [Array<Types::RelatedOpsItem>] :related_ops_items
    #   <p>One or more OpsItems that share something in common with the current OpsItems. For example,
    #      related OpsItems can include OpsItems with similar error messages, impacted resources, or
    #      statuses for the impacted resource.</p>
    # @option params [String] :status
    #   <p>The OpsItem status. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-working-with-OpsItems-editing-details.html">Editing OpsItem details</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [String] :ops_item_id
    #   <p>The ID of the OpsItem.</p>
    # @option params [String] :title
    #   <p>A short heading that describes the nature of the OpsItem and the impacted resource.</p>
    # @option params [String] :category
    #   <p>Specify a new category for an OpsItem.</p>
    # @option params [String] :severity
    #   <p>Specify a new severity for an OpsItem.</p>
    # @option params [Time] :actual_start_time
    #   <p>The time a runbook workflow started. Currently reported only for the OpsItem type
    #       <code>/aws/changerequest</code>.</p>
    # @option params [Time] :actual_end_time
    #   <p>The time a runbook workflow ended. Currently reported only for the OpsItem type
    #       <code>/aws/changerequest</code>.</p>
    # @option params [Time] :planned_start_time
    #   <p>The time specified in a change request for a runbook workflow to start. Currently supported
    #      only for the OpsItem type <code>/aws/changerequest</code>.</p>
    # @option params [Time] :planned_end_time
    #   <p>The time specified in a change request for a runbook workflow to end. Currently supported
    #      only for the OpsItem type <code>/aws/changerequest</code>.</p>
    # @option params [String] :ops_item_arn
    #   <p>The OpsItem Amazon Resource Name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "OpsItemDescription",
    #     operational_data: {
    #       "OpsItemDataKey" => {
    #         value: "OpsItemDataValueString",
    #         type: "SearchableString" # One of: ["SearchableString", "String"]
    #       }
    #     },
    #     operational_data_to_delete: ["String"],
    #     notifications: [
    #       {
    #         arn: "String"
    #       }
    #     ],
    #     priority: 1,
    #     related_ops_items: [
    #       {
    #         ops_item_id: "String", # required
    #       }
    #     ],
    #     status: "Open" # One of: ["Open", "InProgress", "Resolved", "Pending", "TimedOut", "Cancelling", "Cancelled", "Failed", "CompletedWithSuccess", "CompletedWithFailure", "Scheduled", "RunbookInProgress", "PendingChangeCalendarOverride", "ChangeCalendarOverrideApproved", "ChangeCalendarOverrideRejected", "PendingApproval", "Approved", "Revoked", "Rejected", "Closed"],
    #     ops_item_id: "OpsItemId", # required
    #     title: "OpsItemTitle",
    #     category: "OpsItemCategory",
    #     severity: "OpsItemSeverity",
    #     actual_start_time: Time.now,
    #     actual_end_time: Time.now,
    #     planned_start_time: Time.now,
    #     planned_end_time: Time.now,
    #     ops_item_arn: "OpsItemArn"
    #   }
    #   options = {}
    #   response = client.update_ops_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateOpsItemResponse]
    def update_ops_item(params = {}, options = {})
      request = build_request(:update_ops_item, params)
      request.send_request(options)
    end

    # <p>Amazon Web Services Systems Manager calls this API operation when you edit OpsMetadata in Application Manager.</p>
    # @param [Hash, Types::UpdateOpsMetadataRequest] params
    # @option params [String] :ops_metadata_arn
    #   <p>The Amazon Resource Name (ARN) of the OpsMetadata Object to update.</p>
    # @option params [Hash<String, Types::MetadataValue>] :metadata_to_update
    #   <p>Metadata to add to an OpsMetadata object.</p>
    # @option params [Array<String>] :keys_to_delete
    #   <p>The metadata keys to delete from the OpsMetadata object. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ops_metadata_arn: "OpsMetadataArn", # required
    #     metadata_to_update: {
    #       "MetadataKey" => {
    #         value: "MetadataValueString"
    #       }
    #     },
    #     keys_to_delete: ["MetadataKey"]
    #   }
    #   options = {}
    #   response = client.update_ops_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ops_metadata_arn: "OpsMetadataArn"
    #   }
    # @return [Types::UpdateOpsMetadataResult]
    def update_ops_metadata(params = {}, options = {})
      request = build_request(:update_ops_metadata, params)
      request.send_request(options)
    end

    # <p>Modifies an existing patch baseline. Fields not specified in the request are left
    #    unchanged.</p>
    #          <note>
    #             <p>For information about valid key-value pairs in <code>PatchFilters</code> for each supported
    #     operating system type, see <a>PatchFilter</a>.</p>
    #          </note>
    # @param [Hash, Types::UpdatePatchBaselineRequest] params
    # @option params [String] :baseline_id
    #   <p>The ID of the patch baseline to update.</p>
    # @option params [String] :name
    #   <p>The name of the patch baseline.</p>
    # @option params [Types::PatchFilterGroup] :global_filters
    #   <p>A set of global filters used to include patches in the baseline.</p>
    #            <important>
    #               <p>The <code>GlobalFilters</code> parameter can be configured only by using the CLI or an Amazon Web Services SDK. It can't be configured from the Patch Manager
    #       console, and its value isn't displayed in the console.</p>
    #            </important>
    # @option params [Types::PatchRuleGroup] :approval_rules
    #   <p>A set of rules used to include patches in the baseline.</p>
    # @option params [Array<String>] :approved_patches
    #   <p>A list of explicitly approved patches for the baseline.</p>
    #            <p>For information about accepted formats for lists of approved patches and rejected patches,
    #                           see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html">Package
    #                           name formats for approved and rejected patch lists</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [String] :approved_patches_compliance_level
    #   <p>Assigns a new compliance severity level to an existing patch baseline.</p>
    # @option params [Boolean] :approved_patches_enable_non_security
    #   <p>Indicates whether the list of approved patches includes non-security updates that should be
    #      applied to the managed nodes. The default value is <code>false</code>. Applies to Linux managed
    #      nodes only.</p>
    # @option params [Array<String>] :rejected_patches
    #   <p>A list of explicitly rejected patches for the baseline.</p>
    #            <p>For information about accepted formats for lists of approved patches and rejected patches,
    #                           see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html">Package
    #                           name formats for approved and rejected patch lists</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    # @option params [String] :rejected_patches_action
    #   <p>The action for Patch Manager to take on patches included in the
    #       <code>RejectedPackages</code> list.</p>
    #            <dl>
    #               <dt>ALLOW_AS_DEPENDENCY</dt>
    #               <dd>
    #                  <p>
    #                     <b>Linux and macOS</b>: A package in the rejected patches list
    #         is installed only if it is a dependency of another package. It is considered compliant with
    #         the patch baseline, and its status is reported as <code>INSTALLED_OTHER</code>. This is the
    #         default action if no option is specified.</p>
    #                  <p>
    #                     <b>Windows Server</b>: Windows Server doesn't support the
    #         concept of package dependencies. If a package in the rejected patches list and already
    #         installed on the node, its status is reported as <code>INSTALLED_OTHER</code>. Any package not
    #         already installed on the node is skipped. This is the default action if no option is
    #         specified.</p>
    #               </dd>
    #               <dt>BLOCK</dt>
    #               <dd>
    #                  <p>
    #                     <b>All OSs</b>: Packages in the rejected patches list, and
    #         packages that include them as dependencies, aren't installed by Patch Manager under any
    #         circumstances. </p>
    #                  <p>State value assignment for patch compliance:</p>
    #                  <ul>
    #                     <li>
    #                        <p>If a package was installed before it was added to the rejected patches list, or is
    #           installed outside of Patch Manager afterward, it's considered noncompliant with the patch
    #           baseline and its status is reported as <code>INSTALLED_REJECTED</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If an update attempts to install a dependency package that is now rejected by the
    #           baseline, when previous versions of the package were not rejected, the package being updated
    #           is reported as <code>MISSING</code> for <code>SCAN</code> operations and as
    #            <code>FAILED</code> for <code>INSTALL</code> operations.</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #            </dl>
    # @option params [String] :description
    #   <p>A description of the patch baseline.</p>
    # @option params [Array<Types::PatchSource>] :sources
    #   <p>Information about the patches to use to update the managed nodes, including target operating
    #      systems and source repositories. Applies to Linux managed nodes only.</p>
    # @option params [String] :available_security_updates_compliance_status
    #   <p>Indicates the status to be assigned to security patches that are available but not approved
    #      because they don't meet the installation criteria specified in the patch baseline.</p>
    #            <p>Example scenario: Security patches that you might want installed can be skipped if you have
    #      specified a long period to wait after a patch is released before installation. If an update to
    #      the patch is released during your specified waiting period, the waiting period for installing the
    #      patch starts over. If the waiting period is too long, multiple versions of the patch could be
    #      released but never installed.</p>
    #            <p>Supported for Windows Server managed nodes only.</p>
    # @option params [Boolean] :replace
    #   <p>If True, then all fields that are required by the <a>CreatePatchBaseline</a>
    #      operation are also required for this API request. Optional fields that aren't specified are set
    #      to null.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     baseline_id: "BaselineId", # required
    #     name: "BaselineName",
    #     global_filters: {
    #       patch_filters: [ # required
    #         {
    #           key: "ARCH" # One of: ["ARCH", "ADVISORY_ID", "BUGZILLA_ID", "PATCH_SET", "PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "CVE_ID", "EPOCH", "MSRC_SEVERITY", "NAME", "PATCH_ID", "SECTION", "PRIORITY", "REPOSITORY", "RELEASE", "SEVERITY", "SECURITY", "VERSION"], # required
    #           values: ["PatchFilterValue"], # required
    #         }
    #       ]
    #     },
    #     approval_rules: {
    #       patch_rules: [ # required
    #         {
    #           patch_filter_group: { # required
    #             patch_filters: [ # required
    #               {
    #                 key: "ARCH" # One of: ["ARCH", "ADVISORY_ID", "BUGZILLA_ID", "PATCH_SET", "PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "CVE_ID", "EPOCH", "MSRC_SEVERITY", "NAME", "PATCH_ID", "SECTION", "PRIORITY", "REPOSITORY", "RELEASE", "SEVERITY", "SECURITY", "VERSION"], # required
    #                 values: ["PatchFilterValue"], # required
    #               }
    #             ]
    #           },
    #           compliance_level: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"],
    #           approve_after_days: 1,
    #           approve_until_date: "PatchStringDateTime",
    #           enable_non_security: false
    #         }
    #       ]
    #     },
    #     approved_patches: ["PatchId"],
    #     approved_patches_compliance_level: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"],
    #     approved_patches_enable_non_security: false,
    #     rejected_patches: ["PatchId"],
    #     rejected_patches_action: "ALLOW_AS_DEPENDENCY" # One of: ["ALLOW_AS_DEPENDENCY", "BLOCK"],
    #     description: "BaselineDescription",
    #     sources: [
    #       {
    #         name: "PatchSourceName", # required
    #         products: ["PatchSourceProduct"], # required
    #         configuration: "PatchSourceConfiguration", # required
    #       }
    #     ],
    #     available_security_updates_compliance_status: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT"],
    #     replace: false
    #   }
    #   options = {}
    #   response = client.update_patch_baseline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     baseline_id: "BaselineId",
    #     name: "BaselineName",
    #     operating_system: "WINDOWS" # One of: ["WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "AMAZON_LINUX_2022", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS", "ORACLE_LINUX", "DEBIAN", "MACOS", "RASPBIAN", "ROCKY_LINUX", "ALMA_LINUX", "AMAZON_LINUX_2023"],
    #     global_filters: {
    #       patch_filters: [ # required
    #         {
    #           key: "ARCH" # One of: ["ARCH", "ADVISORY_ID", "BUGZILLA_ID", "PATCH_SET", "PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "CVE_ID", "EPOCH", "MSRC_SEVERITY", "NAME", "PATCH_ID", "SECTION", "PRIORITY", "REPOSITORY", "RELEASE", "SEVERITY", "SECURITY", "VERSION"], # required
    #           values: ["PatchFilterValue"], # required
    #         }
    #       ]
    #     },
    #     approval_rules: {
    #       patch_rules: [ # required
    #         {
    #           patch_filter_group: { # required
    #             patch_filters: [ # required
    #               {
    #                 key: "ARCH" # One of: ["ARCH", "ADVISORY_ID", "BUGZILLA_ID", "PATCH_SET", "PRODUCT", "PRODUCT_FAMILY", "CLASSIFICATION", "CVE_ID", "EPOCH", "MSRC_SEVERITY", "NAME", "PATCH_ID", "SECTION", "PRIORITY", "REPOSITORY", "RELEASE", "SEVERITY", "SECURITY", "VERSION"], # required
    #                 values: ["PatchFilterValue"], # required
    #               }
    #             ]
    #           },
    #           compliance_level: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"],
    #           approve_after_days: 1,
    #           approve_until_date: "PatchStringDateTime",
    #           enable_non_security: false
    #         }
    #       ]
    #     },
    #     approved_patches: ["PatchId"],
    #     approved_patches_compliance_level: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"],
    #     approved_patches_enable_non_security: false,
    #     rejected_patches: ["PatchId"],
    #     rejected_patches_action: "ALLOW_AS_DEPENDENCY" # One of: ["ALLOW_AS_DEPENDENCY", "BLOCK"],
    #     created_date: Time.now,
    #     modified_date: Time.now,
    #     description: "BaselineDescription",
    #     sources: [
    #       {
    #         name: "PatchSourceName", # required
    #         products: ["PatchSourceProduct"], # required
    #         configuration: "PatchSourceConfiguration", # required
    #       }
    #     ],
    #     available_security_updates_compliance_status: "COMPLIANT" # One of: ["COMPLIANT", "NON_COMPLIANT"]
    #   }
    # @return [Types::UpdatePatchBaselineResult]
    def update_patch_baseline(params = {}, options = {})
      request = build_request(:update_patch_baseline, params)
      request.send_request(options)
    end

    # <p>Update a resource data sync. After you create a resource data sync for a Region, you can't
    #    change the account options for that sync. For example, if you create a sync in the us-east-2
    #    (Ohio) Region and you choose the <code>Include only the current account</code> option, you can't
    #    edit that sync later and choose the <code>Include all accounts from my Organizations
    #     configuration</code> option. Instead, you must delete the first resource data sync, and create a
    #    new one.</p>
    #          <note>
    #             <p>This API operation only supports a resource data sync that was created with a
    #     SyncFromSource <code>SyncType</code>.</p>
    #          </note>
    # @param [Hash, Types::UpdateResourceDataSyncRequest] params
    # @option params [String] :sync_name
    #   <p>The name of the resource data sync you want to update.</p>
    # @option params [String] :sync_type
    #   <p>The type of resource data sync. The supported <code>SyncType</code> is
    #      SyncFromSource.</p>
    # @option params [Types::ResourceDataSyncSource] :sync_source
    #   <p>Specify information about the data sources to synchronize.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sync_name: "ResourceDataSyncName", # required
    #     sync_type: "ResourceDataSyncType", # required
    #     sync_source: { # required
    #       source_type: "ResourceDataSyncSourceType", # required
    #       aws_organizations_source: {
    #         organization_source_type: "ResourceDataSyncOrganizationSourceType", # required
    #         organizational_units: [
    #           {
    #             organizational_unit_id: "ResourceDataSyncOrganizationalUnitId"
    #           }
    #         ]
    #       },
    #       source_regions: ["ResourceDataSyncSourceRegion"], # required
    #       include_future_regions: false,
    #       enable_all_ops_data_sources: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_resource_data_sync(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateResourceDataSyncResult]
    def update_resource_data_sync(params = {}, options = {})
      request = build_request(:update_resource_data_sync, params)
      request.send_request(options)
    end

    # <p>
    #             <code>ServiceSetting</code> is an account-level setting for an Amazon Web Services service. This setting
    #    defines how a user interacts with or uses a service or a feature of a service. For example, if an
    #    Amazon Web Services service charges money to the account based on feature or service usage, then the Amazon Web Services
    #    service team might create a default setting of "false". This means the user can't use this
    #    feature unless they change the setting to "true" and intentionally opt in for a paid
    #    feature.</p>
    #          <p>Services map a <code>SettingId</code> object to a setting value. Amazon Web Services services teams define
    #    the default value for a <code>SettingId</code>. You can't create a new <code>SettingId</code>,
    #    but you can overwrite the default value if you have the <code>ssm:UpdateServiceSetting</code>
    #    permission for the setting. Use the <a>GetServiceSetting</a> API operation to view the
    #    current value. Or, use the <a>ResetServiceSetting</a> to change the value back to the
    #    original value defined by the Amazon Web Services service team.</p>
    #          <p>Update the service setting for the account. </p>
    # @param [Hash, Types::UpdateServiceSettingRequest] params
    # @option params [String] :setting_id
    #   <p>The Amazon Resource Name (ARN) of the service setting to update. For example,
    #       <code>arn:aws:ssm:us-east-1:111122223333:servicesetting/ssm/parameter-store/high-throughput-enabled</code>.
    #      The setting ID can be one of the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>/ssm/appmanager/appmanager-enabled</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-destination</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/automation/customer-script-log-group-name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>/ssm/automation/enable-adaptive-concurrency</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/documents/console/public-sharing-permission</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/managed-instance/activation-tier</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/managed-instance/default-ec2-instance-management-role</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/opsinsights/opscenter</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/default-parameter-tier</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>/ssm/parameter-store/high-throughput-enabled</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Permissions to update the
    #        <code>/ssm/managed-instance/default-ec2-instance-management-role</code> setting should only be
    #       provided to administrators. Implement least privilege access when allowing individuals to
    #       configure or modify the Default Host Management Configuration.</p>
    #            </note>
    # @option params [String] :setting_value
    #   <p>The new value to specify for the service setting. The following list specifies the available
    #      values for each setting.</p>
    #            <ul>
    #               <li>
    #                  <p>For <code>/ssm/appmanager/appmanager-enabled</code>, enter <code>True</code> or
    #         <code>False</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>/ssm/automation/customer-script-log-destination</code>, enter <code>CloudWatch</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>/ssm/automation/customer-script-log-group-name</code>, enter the name of an
    #         Amazon CloudWatch Logs log group.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>/ssm/documents/console/public-sharing-permission</code>, enter
    #         <code>Enable</code> or <code>Disable</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>/ssm/managed-instance/activation-tier</code>, enter <code>standard</code> or
    #         <code>advanced</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>/ssm/managed-instance/default-ec2-instance-management-role</code>, enter the
    #        name of an IAM role. </p>
    #               </li>
    #               <li>
    #                  <p> For <code>/ssm/opsinsights/opscenter</code>, enter <code>Enabled</code> or
    #         <code>Disabled</code>. </p>
    #               </li>
    #               <li>
    #                  <p>For <code>/ssm/parameter-store/default-parameter-tier</code>, enter <code>Standard</code>,
    #         <code>Advanced</code>, or <code>Intelligent-Tiering</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For <code>/ssm/parameter-store/high-throughput-enabled</code>, enter <code>true</code> or
    #         <code>false</code>.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     setting_id: "ServiceSettingId", # required
    #     setting_value: "ServiceSettingValue", # required
    #   }
    #   options = {}
    #   response = client.update_service_setting(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateServiceSettingResult]
    def update_service_setting(params = {}, options = {})
      request = build_request(:update_service_setting, params)
      request.send_request(options)
    end

    # <p>Validates the configuration and connectivity of a cloud connector.</p>
    # @param [Hash, Types::ValidateCloudConnectorRequest] params
    # @option params [String] :cloud_connector_id
    #   <p>The ID of the cloud connector to validate.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of validation findings to return.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous
    #      call.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_connector_id: "CloudConnectorId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.validate_cloud_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     validation_findings: [
    #       {
    #         type: "INFO" # One of: ["INFO", "WARN", "ERROR"],
    #         code: "TargetInaccessible" # One of: ["TargetInaccessible", "TargetUnusable", "TargetStateWarning", "AwsRoleAssumptionFailed", "WebIdentityTokenFailed", "OutboundWebIdentityFederationDisabled", "ProviderCredentialCreationFailed", "TenantSummary", "SubscriptionAccessible"],
    #         message: "String",
    #         provider_message: "String",
    #         scope: {
    #           type: "azure:tenant" # One of: ["azure:tenant", "azure:subscription"],
    #           id: "String"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ValidateCloudConnectorResult]
    def validate_cloud_connector(params = {}, options = {})
      request = build_request(:validate_cloud_connector, params)
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
      context[:gem_name] = 'aws-sdk-ssm'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        command_executed: Waiters::CommandExecuted
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
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
