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
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:appmesh)

module Aws::AppMesh
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :appmesh

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
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates a service mesh. A service mesh is a logical boundary for
    # network traffic between the services that reside within it.
    #
    # After you create your service mesh, you can create virtual services,
    # virtual nodes, virtual routers, and routes to distribute traffic
    # between the applications in your mesh.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :mesh_name
    #   The name to use for the service mesh.
    #
    # @option params [Types::MeshSpec] :spec
    #   The service mesh specification to apply.
    #
    # @option params [Array<Types::TagRef>] :tags
    #   Optional metadata that you can apply to the service mesh to assist
    #   with categorization and organization. Each tag consists of a key and
    #   an optional value, both of which you define. Tag keys can have a
    #   maximum character length of 128 characters, and tag values can have a
    #   maximum length of 256 characters.
    #
    # @return [Types::CreateMeshOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMeshOutput#mesh #mesh} => Types::MeshData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_mesh({
    #     client_token: "String",
    #     mesh_name: "ResourceName", # required
    #     spec: {
    #       egress_filter: {
    #         type: "ALLOW_ALL", # required, accepts ALLOW_ALL, DROP_ALL
    #       },
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.mesh.mesh_name #=> String
    #   resp.mesh.metadata.arn #=> String
    #   resp.mesh.metadata.created_at #=> Time
    #   resp.mesh.metadata.last_updated_at #=> Time
    #   resp.mesh.metadata.uid #=> String
    #   resp.mesh.metadata.version #=> Integer
    #   resp.mesh.spec.egress_filter.type #=> String, one of "ALLOW_ALL", "DROP_ALL"
    #   resp.mesh.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/CreateMesh AWS API Documentation
    #
    # @overload create_mesh(params = {})
    # @param [Hash] params ({})
    def create_mesh(params = {}, options = {})
      req = build_request(:create_mesh, params)
      req.send_request(options)
    end

    # Creates a route that is associated with a virtual router.
    #
    # You can use the `prefix` parameter in your route specification for
    # path-based routing of requests. For example, if your virtual service
    # name is `my-service.local` and you want the route to match requests to
    # `my-service.local/metrics`, your prefix should be `/metrics`.
    #
    # If your route matches a request, you can distribute traffic to one or
    # more target virtual nodes with relative weighting.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh to create the route in.
    #
    # @option params [required, String] :route_name
    #   The name to use for the route.
    #
    # @option params [required, Types::RouteSpec] :spec
    #   The route specification to apply.
    #
    # @option params [Array<Types::TagRef>] :tags
    #   Optional metadata that you can apply to the route to assist with
    #   categorization and organization. Each tag consists of a key and an
    #   optional value, both of which you define. Tag keys can have a maximum
    #   character length of 128 characters, and tag values can have a maximum
    #   length of 256 characters.
    #
    # @option params [required, String] :virtual_router_name
    #   The name of the virtual router in which to create the route.
    #
    # @return [Types::CreateRouteOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRouteOutput#route #route} => Types::RouteData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_route({
    #     client_token: "String",
    #     mesh_name: "ResourceName", # required
    #     route_name: "ResourceName", # required
    #     spec: { # required
    #       http_route: {
    #         action: { # required
    #           weighted_targets: [ # required
    #             {
    #               virtual_node: "ResourceName", # required
    #               weight: 1, # required
    #             },
    #           ],
    #         },
    #         match: { # required
    #           prefix: "String", # required
    #         },
    #       },
    #       tcp_route: {
    #         action: { # required
    #           weighted_targets: [ # required
    #             {
    #               virtual_node: "ResourceName", # required
    #               weight: 1, # required
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     virtual_router_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.route.mesh_name #=> String
    #   resp.route.metadata.arn #=> String
    #   resp.route.metadata.created_at #=> Time
    #   resp.route.metadata.last_updated_at #=> Time
    #   resp.route.metadata.uid #=> String
    #   resp.route.metadata.version #=> Integer
    #   resp.route.route_name #=> String
    #   resp.route.spec.http_route.action.weighted_targets #=> Array
    #   resp.route.spec.http_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.http_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.spec.http_route.match.prefix #=> String
    #   resp.route.spec.tcp_route.action.weighted_targets #=> Array
    #   resp.route.spec.tcp_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.tcp_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.route.virtual_router_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/CreateRoute AWS API Documentation
    #
    # @overload create_route(params = {})
    # @param [Hash] params ({})
    def create_route(params = {}, options = {})
      req = build_request(:create_route, params)
      req.send_request(options)
    end

    # Creates a virtual node within a service mesh.
    #
    # A virtual node acts as a logical pointer to a particular task group,
    # such as an Amazon ECS service or a Kubernetes deployment. When you
    # create a virtual node, you must specify the DNS service discovery
    # hostname for your task group.
    #
    # Any inbound traffic that your virtual node expects should be specified
    # as a `listener`. Any outbound traffic that your virtual node expects
    # to reach should be specified as a `backend`.
    #
    # The response metadata for your new virtual node contains the `arn`
    # that is associated with the virtual node. Set this value (either the
    # full ARN or the truncated resource name: for example,
    # `mesh/default/virtualNode/simpleapp`) as the
    # `APPMESH_VIRTUAL_NODE_NAME` environment variable for your task
    # group's Envoy proxy container in your task definition or pod spec.
    # This is then mapped to the `node.id` and `node.cluster` Envoy
    # parameters.
    #
    # <note markdown="1"> If you require your Envoy stats or tracing to use a different name,
    # you can override the `node.cluster` value that is set by
    # `APPMESH_VIRTUAL_NODE_NAME` with the `APPMESH_VIRTUAL_NODE_CLUSTER`
    # environment variable.
    #
    #  </note>
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh to create the virtual node in.
    #
    # @option params [required, Types::VirtualNodeSpec] :spec
    #   The virtual node specification to apply.
    #
    # @option params [Array<Types::TagRef>] :tags
    #   Optional metadata that you can apply to the virtual node to assist
    #   with categorization and organization. Each tag consists of a key and
    #   an optional value, both of which you define. Tag keys can have a
    #   maximum character length of 128 characters, and tag values can have a
    #   maximum length of 256 characters.
    #
    # @option params [required, String] :virtual_node_name
    #   The name to use for the virtual node.
    #
    # @return [Types::CreateVirtualNodeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVirtualNodeOutput#virtual_node #virtual_node} => Types::VirtualNodeData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_virtual_node({
    #     client_token: "String",
    #     mesh_name: "ResourceName", # required
    #     spec: { # required
    #       backends: [
    #         {
    #           virtual_service: {
    #             virtual_service_name: "ServiceName", # required
    #           },
    #         },
    #       ],
    #       listeners: [
    #         {
    #           health_check: {
    #             healthy_threshold: 1, # required
    #             interval_millis: 1, # required
    #             path: "String",
    #             port: 1,
    #             protocol: "http", # required, accepts http, tcp
    #             timeout_millis: 1, # required
    #             unhealthy_threshold: 1, # required
    #           },
    #           port_mapping: { # required
    #             port: 1, # required
    #             protocol: "http", # required, accepts http, tcp
    #           },
    #         },
    #       ],
    #       logging: {
    #         access_log: {
    #           file: {
    #             path: "FilePath", # required
    #           },
    #         },
    #       },
    #       service_discovery: {
    #         dns: {
    #           hostname: "Hostname", # required
    #         },
    #       },
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     virtual_node_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_node.mesh_name #=> String
    #   resp.virtual_node.metadata.arn #=> String
    #   resp.virtual_node.metadata.created_at #=> Time
    #   resp.virtual_node.metadata.last_updated_at #=> Time
    #   resp.virtual_node.metadata.uid #=> String
    #   resp.virtual_node.metadata.version #=> Integer
    #   resp.virtual_node.spec.backends #=> Array
    #   resp.virtual_node.spec.backends[0].virtual_service.virtual_service_name #=> String
    #   resp.virtual_node.spec.listeners #=> Array
    #   resp.virtual_node.spec.listeners[0].health_check.healthy_threshold #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.interval_millis #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.path #=> String
    #   resp.virtual_node.spec.listeners[0].health_check.port #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.protocol #=> String, one of "http", "tcp"
    #   resp.virtual_node.spec.listeners[0].health_check.timeout_millis #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.unhealthy_threshold #=> Integer
    #   resp.virtual_node.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.virtual_node.spec.listeners[0].port_mapping.protocol #=> String, one of "http", "tcp"
    #   resp.virtual_node.spec.logging.access_log.file.path #=> String
    #   resp.virtual_node.spec.service_discovery.dns.hostname #=> String
    #   resp.virtual_node.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.virtual_node.virtual_node_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/CreateVirtualNode AWS API Documentation
    #
    # @overload create_virtual_node(params = {})
    # @param [Hash] params ({})
    def create_virtual_node(params = {}, options = {})
      req = build_request(:create_virtual_node, params)
      req.send_request(options)
    end

    # Creates a virtual router within a service mesh.
    #
    # Any inbound traffic that your virtual router expects should be
    # specified as a `listener`.
    #
    # Virtual routers handle traffic for one or more virtual services within
    # your mesh. After you create your virtual router, create and associate
    # routes for your virtual router that direct incoming requests to
    # different virtual nodes.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh to create the virtual router in.
    #
    # @option params [required, Types::VirtualRouterSpec] :spec
    #   The virtual router specification to apply.
    #
    # @option params [Array<Types::TagRef>] :tags
    #   Optional metadata that you can apply to the virtual router to assist
    #   with categorization and organization. Each tag consists of a key and
    #   an optional value, both of which you define. Tag keys can have a
    #   maximum character length of 128 characters, and tag values can have a
    #   maximum length of 256 characters.
    #
    # @option params [required, String] :virtual_router_name
    #   The name to use for the virtual router.
    #
    # @return [Types::CreateVirtualRouterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVirtualRouterOutput#virtual_router #virtual_router} => Types::VirtualRouterData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_virtual_router({
    #     client_token: "String",
    #     mesh_name: "ResourceName", # required
    #     spec: { # required
    #       listeners: [ # required
    #         {
    #           port_mapping: { # required
    #             port: 1, # required
    #             protocol: "http", # required, accepts http, tcp
    #           },
    #         },
    #       ],
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     virtual_router_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_router.mesh_name #=> String
    #   resp.virtual_router.metadata.arn #=> String
    #   resp.virtual_router.metadata.created_at #=> Time
    #   resp.virtual_router.metadata.last_updated_at #=> Time
    #   resp.virtual_router.metadata.uid #=> String
    #   resp.virtual_router.metadata.version #=> Integer
    #   resp.virtual_router.spec.listeners #=> Array
    #   resp.virtual_router.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.virtual_router.spec.listeners[0].port_mapping.protocol #=> String, one of "http", "tcp"
    #   resp.virtual_router.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.virtual_router.virtual_router_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/CreateVirtualRouter AWS API Documentation
    #
    # @overload create_virtual_router(params = {})
    # @param [Hash] params ({})
    def create_virtual_router(params = {}, options = {})
      req = build_request(:create_virtual_router, params)
      req.send_request(options)
    end

    # Creates a virtual service within a service mesh.
    #
    # A virtual service is an abstraction of a real service that is provided
    # by a virtual node directly or indirectly by means of a virtual router.
    # Dependent services call your virtual service by its
    # `virtualServiceName`, and those requests are routed to the virtual
    # node or virtual router that is specified as the provider for the
    # virtual service.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh to create the virtual service in.
    #
    # @option params [required, Types::VirtualServiceSpec] :spec
    #   The virtual service specification to apply.
    #
    # @option params [Array<Types::TagRef>] :tags
    #   Optional metadata that you can apply to the virtual service to assist
    #   with categorization and organization. Each tag consists of a key and
    #   an optional value, both of which you define. Tag keys can have a
    #   maximum character length of 128 characters, and tag values can have a
    #   maximum length of 256 characters.
    #
    # @option params [required, String] :virtual_service_name
    #   The name to use for the virtual service.
    #
    # @return [Types::CreateVirtualServiceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVirtualServiceOutput#virtual_service #virtual_service} => Types::VirtualServiceData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_virtual_service({
    #     client_token: "String",
    #     mesh_name: "ResourceName", # required
    #     spec: { # required
    #       provider: {
    #         virtual_node: {
    #           virtual_node_name: "ResourceName", # required
    #         },
    #         virtual_router: {
    #           virtual_router_name: "ResourceName", # required
    #         },
    #       },
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     virtual_service_name: "ServiceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_service.mesh_name #=> String
    #   resp.virtual_service.metadata.arn #=> String
    #   resp.virtual_service.metadata.created_at #=> Time
    #   resp.virtual_service.metadata.last_updated_at #=> Time
    #   resp.virtual_service.metadata.uid #=> String
    #   resp.virtual_service.metadata.version #=> Integer
    #   resp.virtual_service.spec.provider.virtual_node.virtual_node_name #=> String
    #   resp.virtual_service.spec.provider.virtual_router.virtual_router_name #=> String
    #   resp.virtual_service.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.virtual_service.virtual_service_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/CreateVirtualService AWS API Documentation
    #
    # @overload create_virtual_service(params = {})
    # @param [Hash] params ({})
    def create_virtual_service(params = {}, options = {})
      req = build_request(:create_virtual_service, params)
      req.send_request(options)
    end

    # Deletes an existing service mesh.
    #
    # You must delete all resources (virtual services, routes, virtual
    # routers, and virtual nodes) in the service mesh before you can delete
    # the mesh itself.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh to delete.
    #
    # @return [Types::DeleteMeshOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMeshOutput#mesh #mesh} => Types::MeshData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_mesh({
    #     mesh_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.mesh.mesh_name #=> String
    #   resp.mesh.metadata.arn #=> String
    #   resp.mesh.metadata.created_at #=> Time
    #   resp.mesh.metadata.last_updated_at #=> Time
    #   resp.mesh.metadata.uid #=> String
    #   resp.mesh.metadata.version #=> Integer
    #   resp.mesh.spec.egress_filter.type #=> String, one of "ALLOW_ALL", "DROP_ALL"
    #   resp.mesh.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DeleteMesh AWS API Documentation
    #
    # @overload delete_mesh(params = {})
    # @param [Hash] params ({})
    def delete_mesh(params = {}, options = {})
      req = build_request(:delete_mesh, params)
      req.send_request(options)
    end

    # Deletes an existing route.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh to delete the route in.
    #
    # @option params [required, String] :route_name
    #   The name of the route to delete.
    #
    # @option params [required, String] :virtual_router_name
    #   The name of the virtual router to delete the route in.
    #
    # @return [Types::DeleteRouteOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRouteOutput#route #route} => Types::RouteData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_route({
    #     mesh_name: "ResourceName", # required
    #     route_name: "ResourceName", # required
    #     virtual_router_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.route.mesh_name #=> String
    #   resp.route.metadata.arn #=> String
    #   resp.route.metadata.created_at #=> Time
    #   resp.route.metadata.last_updated_at #=> Time
    #   resp.route.metadata.uid #=> String
    #   resp.route.metadata.version #=> Integer
    #   resp.route.route_name #=> String
    #   resp.route.spec.http_route.action.weighted_targets #=> Array
    #   resp.route.spec.http_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.http_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.spec.http_route.match.prefix #=> String
    #   resp.route.spec.tcp_route.action.weighted_targets #=> Array
    #   resp.route.spec.tcp_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.tcp_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.route.virtual_router_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DeleteRoute AWS API Documentation
    #
    # @overload delete_route(params = {})
    # @param [Hash] params ({})
    def delete_route(params = {}, options = {})
      req = build_request(:delete_route, params)
      req.send_request(options)
    end

    # Deletes an existing virtual node.
    #
    # You must delete any virtual services that list a virtual node as a
    # service provider before you can delete the virtual node itself.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh to delete the virtual node in.
    #
    # @option params [required, String] :virtual_node_name
    #   The name of the virtual node to delete.
    #
    # @return [Types::DeleteVirtualNodeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVirtualNodeOutput#virtual_node #virtual_node} => Types::VirtualNodeData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_virtual_node({
    #     mesh_name: "ResourceName", # required
    #     virtual_node_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_node.mesh_name #=> String
    #   resp.virtual_node.metadata.arn #=> String
    #   resp.virtual_node.metadata.created_at #=> Time
    #   resp.virtual_node.metadata.last_updated_at #=> Time
    #   resp.virtual_node.metadata.uid #=> String
    #   resp.virtual_node.metadata.version #=> Integer
    #   resp.virtual_node.spec.backends #=> Array
    #   resp.virtual_node.spec.backends[0].virtual_service.virtual_service_name #=> String
    #   resp.virtual_node.spec.listeners #=> Array
    #   resp.virtual_node.spec.listeners[0].health_check.healthy_threshold #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.interval_millis #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.path #=> String
    #   resp.virtual_node.spec.listeners[0].health_check.port #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.protocol #=> String, one of "http", "tcp"
    #   resp.virtual_node.spec.listeners[0].health_check.timeout_millis #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.unhealthy_threshold #=> Integer
    #   resp.virtual_node.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.virtual_node.spec.listeners[0].port_mapping.protocol #=> String, one of "http", "tcp"
    #   resp.virtual_node.spec.logging.access_log.file.path #=> String
    #   resp.virtual_node.spec.service_discovery.dns.hostname #=> String
    #   resp.virtual_node.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.virtual_node.virtual_node_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DeleteVirtualNode AWS API Documentation
    #
    # @overload delete_virtual_node(params = {})
    # @param [Hash] params ({})
    def delete_virtual_node(params = {}, options = {})
      req = build_request(:delete_virtual_node, params)
      req.send_request(options)
    end

    # Deletes an existing virtual router.
    #
    # You must delete any routes associated with the virtual router before
    # you can delete the router itself.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh to delete the virtual router in.
    #
    # @option params [required, String] :virtual_router_name
    #   The name of the virtual router to delete.
    #
    # @return [Types::DeleteVirtualRouterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVirtualRouterOutput#virtual_router #virtual_router} => Types::VirtualRouterData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_virtual_router({
    #     mesh_name: "ResourceName", # required
    #     virtual_router_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_router.mesh_name #=> String
    #   resp.virtual_router.metadata.arn #=> String
    #   resp.virtual_router.metadata.created_at #=> Time
    #   resp.virtual_router.metadata.last_updated_at #=> Time
    #   resp.virtual_router.metadata.uid #=> String
    #   resp.virtual_router.metadata.version #=> Integer
    #   resp.virtual_router.spec.listeners #=> Array
    #   resp.virtual_router.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.virtual_router.spec.listeners[0].port_mapping.protocol #=> String, one of "http", "tcp"
    #   resp.virtual_router.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.virtual_router.virtual_router_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DeleteVirtualRouter AWS API Documentation
    #
    # @overload delete_virtual_router(params = {})
    # @param [Hash] params ({})
    def delete_virtual_router(params = {}, options = {})
      req = build_request(:delete_virtual_router, params)
      req.send_request(options)
    end

    # Deletes an existing virtual service.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh to delete the virtual service in.
    #
    # @option params [required, String] :virtual_service_name
    #   The name of the virtual service to delete.
    #
    # @return [Types::DeleteVirtualServiceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVirtualServiceOutput#virtual_service #virtual_service} => Types::VirtualServiceData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_virtual_service({
    #     mesh_name: "ResourceName", # required
    #     virtual_service_name: "ServiceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_service.mesh_name #=> String
    #   resp.virtual_service.metadata.arn #=> String
    #   resp.virtual_service.metadata.created_at #=> Time
    #   resp.virtual_service.metadata.last_updated_at #=> Time
    #   resp.virtual_service.metadata.uid #=> String
    #   resp.virtual_service.metadata.version #=> Integer
    #   resp.virtual_service.spec.provider.virtual_node.virtual_node_name #=> String
    #   resp.virtual_service.spec.provider.virtual_router.virtual_router_name #=> String
    #   resp.virtual_service.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.virtual_service.virtual_service_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DeleteVirtualService AWS API Documentation
    #
    # @overload delete_virtual_service(params = {})
    # @param [Hash] params ({})
    def delete_virtual_service(params = {}, options = {})
      req = build_request(:delete_virtual_service, params)
      req.send_request(options)
    end

    # Describes an existing service mesh.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh to describe.
    #
    # @return [Types::DescribeMeshOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMeshOutput#mesh #mesh} => Types::MeshData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_mesh({
    #     mesh_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.mesh.mesh_name #=> String
    #   resp.mesh.metadata.arn #=> String
    #   resp.mesh.metadata.created_at #=> Time
    #   resp.mesh.metadata.last_updated_at #=> Time
    #   resp.mesh.metadata.uid #=> String
    #   resp.mesh.metadata.version #=> Integer
    #   resp.mesh.spec.egress_filter.type #=> String, one of "ALLOW_ALL", "DROP_ALL"
    #   resp.mesh.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DescribeMesh AWS API Documentation
    #
    # @overload describe_mesh(params = {})
    # @param [Hash] params ({})
    def describe_mesh(params = {}, options = {})
      req = build_request(:describe_mesh, params)
      req.send_request(options)
    end

    # Describes an existing route.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh that the route resides in.
    #
    # @option params [required, String] :route_name
    #   The name of the route to describe.
    #
    # @option params [required, String] :virtual_router_name
    #   The name of the virtual router that the route is associated with.
    #
    # @return [Types::DescribeRouteOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRouteOutput#route #route} => Types::RouteData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_route({
    #     mesh_name: "ResourceName", # required
    #     route_name: "ResourceName", # required
    #     virtual_router_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.route.mesh_name #=> String
    #   resp.route.metadata.arn #=> String
    #   resp.route.metadata.created_at #=> Time
    #   resp.route.metadata.last_updated_at #=> Time
    #   resp.route.metadata.uid #=> String
    #   resp.route.metadata.version #=> Integer
    #   resp.route.route_name #=> String
    #   resp.route.spec.http_route.action.weighted_targets #=> Array
    #   resp.route.spec.http_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.http_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.spec.http_route.match.prefix #=> String
    #   resp.route.spec.tcp_route.action.weighted_targets #=> Array
    #   resp.route.spec.tcp_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.tcp_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.route.virtual_router_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DescribeRoute AWS API Documentation
    #
    # @overload describe_route(params = {})
    # @param [Hash] params ({})
    def describe_route(params = {}, options = {})
      req = build_request(:describe_route, params)
      req.send_request(options)
    end

    # Describes an existing virtual node.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh that the virtual node resides in.
    #
    # @option params [required, String] :virtual_node_name
    #   The name of the virtual node to describe.
    #
    # @return [Types::DescribeVirtualNodeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVirtualNodeOutput#virtual_node #virtual_node} => Types::VirtualNodeData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_virtual_node({
    #     mesh_name: "ResourceName", # required
    #     virtual_node_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_node.mesh_name #=> String
    #   resp.virtual_node.metadata.arn #=> String
    #   resp.virtual_node.metadata.created_at #=> Time
    #   resp.virtual_node.metadata.last_updated_at #=> Time
    #   resp.virtual_node.metadata.uid #=> String
    #   resp.virtual_node.metadata.version #=> Integer
    #   resp.virtual_node.spec.backends #=> Array
    #   resp.virtual_node.spec.backends[0].virtual_service.virtual_service_name #=> String
    #   resp.virtual_node.spec.listeners #=> Array
    #   resp.virtual_node.spec.listeners[0].health_check.healthy_threshold #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.interval_millis #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.path #=> String
    #   resp.virtual_node.spec.listeners[0].health_check.port #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.protocol #=> String, one of "http", "tcp"
    #   resp.virtual_node.spec.listeners[0].health_check.timeout_millis #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.unhealthy_threshold #=> Integer
    #   resp.virtual_node.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.virtual_node.spec.listeners[0].port_mapping.protocol #=> String, one of "http", "tcp"
    #   resp.virtual_node.spec.logging.access_log.file.path #=> String
    #   resp.virtual_node.spec.service_discovery.dns.hostname #=> String
    #   resp.virtual_node.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.virtual_node.virtual_node_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DescribeVirtualNode AWS API Documentation
    #
    # @overload describe_virtual_node(params = {})
    # @param [Hash] params ({})
    def describe_virtual_node(params = {}, options = {})
      req = build_request(:describe_virtual_node, params)
      req.send_request(options)
    end

    # Describes an existing virtual router.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh that the virtual router resides in.
    #
    # @option params [required, String] :virtual_router_name
    #   The name of the virtual router to describe.
    #
    # @return [Types::DescribeVirtualRouterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVirtualRouterOutput#virtual_router #virtual_router} => Types::VirtualRouterData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_virtual_router({
    #     mesh_name: "ResourceName", # required
    #     virtual_router_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_router.mesh_name #=> String
    #   resp.virtual_router.metadata.arn #=> String
    #   resp.virtual_router.metadata.created_at #=> Time
    #   resp.virtual_router.metadata.last_updated_at #=> Time
    #   resp.virtual_router.metadata.uid #=> String
    #   resp.virtual_router.metadata.version #=> Integer
    #   resp.virtual_router.spec.listeners #=> Array
    #   resp.virtual_router.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.virtual_router.spec.listeners[0].port_mapping.protocol #=> String, one of "http", "tcp"
    #   resp.virtual_router.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.virtual_router.virtual_router_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DescribeVirtualRouter AWS API Documentation
    #
    # @overload describe_virtual_router(params = {})
    # @param [Hash] params ({})
    def describe_virtual_router(params = {}, options = {})
      req = build_request(:describe_virtual_router, params)
      req.send_request(options)
    end

    # Describes an existing virtual service.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh that the virtual service resides in.
    #
    # @option params [required, String] :virtual_service_name
    #   The name of the virtual service to describe.
    #
    # @return [Types::DescribeVirtualServiceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVirtualServiceOutput#virtual_service #virtual_service} => Types::VirtualServiceData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_virtual_service({
    #     mesh_name: "ResourceName", # required
    #     virtual_service_name: "ServiceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_service.mesh_name #=> String
    #   resp.virtual_service.metadata.arn #=> String
    #   resp.virtual_service.metadata.created_at #=> Time
    #   resp.virtual_service.metadata.last_updated_at #=> Time
    #   resp.virtual_service.metadata.uid #=> String
    #   resp.virtual_service.metadata.version #=> Integer
    #   resp.virtual_service.spec.provider.virtual_node.virtual_node_name #=> String
    #   resp.virtual_service.spec.provider.virtual_router.virtual_router_name #=> String
    #   resp.virtual_service.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.virtual_service.virtual_service_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DescribeVirtualService AWS API Documentation
    #
    # @overload describe_virtual_service(params = {})
    # @param [Hash] params ({})
    def describe_virtual_service(params = {}, options = {})
      req = build_request(:describe_virtual_service, params)
      req.send_request(options)
    end

    # Returns a list of existing service meshes.
    #
    # @option params [Integer] :limit
    #   The maximum number of results returned by `ListMeshes` in paginated
    #   output. When you use this parameter, `ListMeshes` returns only `limit`
    #   results in a single page along with a `nextToken` response element.
    #   You can see the remaining results of the initial request by sending
    #   another `ListMeshes` request with the returned `nextToken` value. This
    #   value can be between 1 and 100. If you don't use this parameter,
    #   `ListMeshes` returns up to 100 results and a `nextToken` value if
    #   applicable.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated `ListMeshes`
    #   request where `limit` was used and the results exceeded the value of
    #   that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is used only
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @return [Types::ListMeshesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMeshesOutput#meshes #meshes} => Array&lt;Types::MeshRef&gt;
    #   * {Types::ListMeshesOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_meshes({
    #     limit: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.meshes #=> Array
    #   resp.meshes[0].arn #=> String
    #   resp.meshes[0].mesh_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListMeshes AWS API Documentation
    #
    # @overload list_meshes(params = {})
    # @param [Hash] params ({})
    def list_meshes(params = {}, options = {})
      req = build_request(:list_meshes, params)
      req.send_request(options)
    end

    # Returns a list of existing routes in a service mesh.
    #
    # @option params [Integer] :limit
    #   The maximum number of results returned by `ListRoutes` in paginated
    #   output. When you use this parameter, `ListRoutes` returns only `limit`
    #   results in a single page along with a `nextToken` response element.
    #   You can see the remaining results of the initial request by sending
    #   another `ListRoutes` request with the returned `nextToken` value. This
    #   value can be between 1 and 100. If you don't use this parameter,
    #   `ListRoutes` returns up to 100 results and a `nextToken` value if
    #   applicable.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh to list routes in.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated `ListRoutes`
    #   request where `limit` was used and the results exceeded the value of
    #   that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value.
    #
    # @option params [required, String] :virtual_router_name
    #   The name of the virtual router to list routes in.
    #
    # @return [Types::ListRoutesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRoutesOutput#next_token #next_token} => String
    #   * {Types::ListRoutesOutput#routes #routes} => Array&lt;Types::RouteRef&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_routes({
    #     limit: 1,
    #     mesh_name: "ResourceName", # required
    #     next_token: "String",
    #     virtual_router_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.routes #=> Array
    #   resp.routes[0].arn #=> String
    #   resp.routes[0].mesh_name #=> String
    #   resp.routes[0].route_name #=> String
    #   resp.routes[0].virtual_router_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListRoutes AWS API Documentation
    #
    # @overload list_routes(params = {})
    # @param [Hash] params ({})
    def list_routes(params = {}, options = {})
      req = build_request(:list_routes, params)
      req.send_request(options)
    end

    # List the tags for an App Mesh resource.
    #
    # @option params [Integer] :limit
    #   The maximum number of tag results returned by `ListTagsForResource` in
    #   paginated output. When this parameter is used, `ListTagsForResource`
    #   returns only `limit` results in a single page along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another `ListTagsForResource` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   you don't use this parameter, `ListTagsForResource` returns up to 100
    #   results and a `nextToken` value if applicable.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListTagsForResource` request where `limit` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource to list
    #   the tags for.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#next_token #next_token} => String
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Array&lt;Types::TagRef&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     limit: 1,
    #     next_token: "String",
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Returns a list of existing virtual nodes.
    #
    # @option params [Integer] :limit
    #   The maximum number of results returned by `ListVirtualNodes` in
    #   paginated output. When you use this parameter, `ListVirtualNodes`
    #   returns only `limit` results in a single page along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another `ListVirtualNodes` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   you don't use this parameter, `ListVirtualNodes` returns up to 100
    #   results and a `nextToken` value if applicable.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh to list virtual nodes in.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListVirtualNodes` request where `limit` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    # @return [Types::ListVirtualNodesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVirtualNodesOutput#next_token #next_token} => String
    #   * {Types::ListVirtualNodesOutput#virtual_nodes #virtual_nodes} => Array&lt;Types::VirtualNodeRef&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_virtual_nodes({
    #     limit: 1,
    #     mesh_name: "ResourceName", # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.virtual_nodes #=> Array
    #   resp.virtual_nodes[0].arn #=> String
    #   resp.virtual_nodes[0].mesh_name #=> String
    #   resp.virtual_nodes[0].virtual_node_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListVirtualNodes AWS API Documentation
    #
    # @overload list_virtual_nodes(params = {})
    # @param [Hash] params ({})
    def list_virtual_nodes(params = {}, options = {})
      req = build_request(:list_virtual_nodes, params)
      req.send_request(options)
    end

    # Returns a list of existing virtual routers in a service mesh.
    #
    # @option params [Integer] :limit
    #   The maximum number of results returned by `ListVirtualRouters` in
    #   paginated output. When you use this parameter, `ListVirtualRouters`
    #   returns only `limit` results in a single page along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another `ListVirtualRouters` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   you don't use this parameter, `ListVirtualRouters` returns up to 100
    #   results and a `nextToken` value if applicable.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh to list virtual routers in.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListVirtualRouters` request where `limit` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    # @return [Types::ListVirtualRoutersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVirtualRoutersOutput#next_token #next_token} => String
    #   * {Types::ListVirtualRoutersOutput#virtual_routers #virtual_routers} => Array&lt;Types::VirtualRouterRef&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_virtual_routers({
    #     limit: 1,
    #     mesh_name: "ResourceName", # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.virtual_routers #=> Array
    #   resp.virtual_routers[0].arn #=> String
    #   resp.virtual_routers[0].mesh_name #=> String
    #   resp.virtual_routers[0].virtual_router_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListVirtualRouters AWS API Documentation
    #
    # @overload list_virtual_routers(params = {})
    # @param [Hash] params ({})
    def list_virtual_routers(params = {}, options = {})
      req = build_request(:list_virtual_routers, params)
      req.send_request(options)
    end

    # Returns a list of existing virtual services in a service mesh.
    #
    # @option params [Integer] :limit
    #   The maximum number of results returned by `ListVirtualServices` in
    #   paginated output. When you use this parameter, `ListVirtualServices`
    #   returns only `limit` results in a single page along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another `ListVirtualServices` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   you don't use this parameter, `ListVirtualServices` returns up to 100
    #   results and a `nextToken` value if applicable.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh to list virtual services in.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListVirtualServices` request where `limit` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    # @return [Types::ListVirtualServicesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVirtualServicesOutput#next_token #next_token} => String
    #   * {Types::ListVirtualServicesOutput#virtual_services #virtual_services} => Array&lt;Types::VirtualServiceRef&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_virtual_services({
    #     limit: 1,
    #     mesh_name: "ResourceName", # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.virtual_services #=> Array
    #   resp.virtual_services[0].arn #=> String
    #   resp.virtual_services[0].mesh_name #=> String
    #   resp.virtual_services[0].virtual_service_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListVirtualServices AWS API Documentation
    #
    # @overload list_virtual_services(params = {})
    # @param [Hash] params ({})
    def list_virtual_services(params = {}, options = {})
      req = build_request(:list_virtual_services, params)
      req.send_request(options)
    end

    # Associates the specified tags to a resource with the specified
    # `resourceArn`. If existing tags on a resource aren't specified in the
    # request parameters, they aren't changed. When a resource is deleted,
    # the tags associated with that resource are also deleted.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to add tags to.
    #
    # @option params [required, Array<Types::TagRef>] :tags
    #   The tags to add to the resource. A tag is an array of key-value pairs.
    #   Tag keys can have a maximum character length of 128 characters, and
    #   tag values can have a maximum length of 256 characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes specified tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to delete tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing service mesh.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh to update.
    #
    # @option params [Types::MeshSpec] :spec
    #   The service mesh specification to apply.
    #
    # @return [Types::UpdateMeshOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMeshOutput#mesh #mesh} => Types::MeshData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_mesh({
    #     client_token: "String",
    #     mesh_name: "ResourceName", # required
    #     spec: {
    #       egress_filter: {
    #         type: "ALLOW_ALL", # required, accepts ALLOW_ALL, DROP_ALL
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.mesh.mesh_name #=> String
    #   resp.mesh.metadata.arn #=> String
    #   resp.mesh.metadata.created_at #=> Time
    #   resp.mesh.metadata.last_updated_at #=> Time
    #   resp.mesh.metadata.uid #=> String
    #   resp.mesh.metadata.version #=> Integer
    #   resp.mesh.spec.egress_filter.type #=> String, one of "ALLOW_ALL", "DROP_ALL"
    #   resp.mesh.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UpdateMesh AWS API Documentation
    #
    # @overload update_mesh(params = {})
    # @param [Hash] params ({})
    def update_mesh(params = {}, options = {})
      req = build_request(:update_mesh, params)
      req.send_request(options)
    end

    # Updates an existing route for a specified service mesh and virtual
    # router.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh that the route resides in.
    #
    # @option params [required, String] :route_name
    #   The name of the route to update.
    #
    # @option params [required, Types::RouteSpec] :spec
    #   The new route specification to apply. This overwrites the existing
    #   data.
    #
    # @option params [required, String] :virtual_router_name
    #   The name of the virtual router that the route is associated with.
    #
    # @return [Types::UpdateRouteOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRouteOutput#route #route} => Types::RouteData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_route({
    #     client_token: "String",
    #     mesh_name: "ResourceName", # required
    #     route_name: "ResourceName", # required
    #     spec: { # required
    #       http_route: {
    #         action: { # required
    #           weighted_targets: [ # required
    #             {
    #               virtual_node: "ResourceName", # required
    #               weight: 1, # required
    #             },
    #           ],
    #         },
    #         match: { # required
    #           prefix: "String", # required
    #         },
    #       },
    #       tcp_route: {
    #         action: { # required
    #           weighted_targets: [ # required
    #             {
    #               virtual_node: "ResourceName", # required
    #               weight: 1, # required
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     virtual_router_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.route.mesh_name #=> String
    #   resp.route.metadata.arn #=> String
    #   resp.route.metadata.created_at #=> Time
    #   resp.route.metadata.last_updated_at #=> Time
    #   resp.route.metadata.uid #=> String
    #   resp.route.metadata.version #=> Integer
    #   resp.route.route_name #=> String
    #   resp.route.spec.http_route.action.weighted_targets #=> Array
    #   resp.route.spec.http_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.http_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.spec.http_route.match.prefix #=> String
    #   resp.route.spec.tcp_route.action.weighted_targets #=> Array
    #   resp.route.spec.tcp_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.tcp_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.route.virtual_router_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UpdateRoute AWS API Documentation
    #
    # @overload update_route(params = {})
    # @param [Hash] params ({})
    def update_route(params = {}, options = {})
      req = build_request(:update_route, params)
      req.send_request(options)
    end

    # Updates an existing virtual node in a specified service mesh.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh that the virtual node resides in.
    #
    # @option params [required, Types::VirtualNodeSpec] :spec
    #   The new virtual node specification to apply. This overwrites the
    #   existing data.
    #
    # @option params [required, String] :virtual_node_name
    #   The name of the virtual node to update.
    #
    # @return [Types::UpdateVirtualNodeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVirtualNodeOutput#virtual_node #virtual_node} => Types::VirtualNodeData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_virtual_node({
    #     client_token: "String",
    #     mesh_name: "ResourceName", # required
    #     spec: { # required
    #       backends: [
    #         {
    #           virtual_service: {
    #             virtual_service_name: "ServiceName", # required
    #           },
    #         },
    #       ],
    #       listeners: [
    #         {
    #           health_check: {
    #             healthy_threshold: 1, # required
    #             interval_millis: 1, # required
    #             path: "String",
    #             port: 1,
    #             protocol: "http", # required, accepts http, tcp
    #             timeout_millis: 1, # required
    #             unhealthy_threshold: 1, # required
    #           },
    #           port_mapping: { # required
    #             port: 1, # required
    #             protocol: "http", # required, accepts http, tcp
    #           },
    #         },
    #       ],
    #       logging: {
    #         access_log: {
    #           file: {
    #             path: "FilePath", # required
    #           },
    #         },
    #       },
    #       service_discovery: {
    #         dns: {
    #           hostname: "Hostname", # required
    #         },
    #       },
    #     },
    #     virtual_node_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_node.mesh_name #=> String
    #   resp.virtual_node.metadata.arn #=> String
    #   resp.virtual_node.metadata.created_at #=> Time
    #   resp.virtual_node.metadata.last_updated_at #=> Time
    #   resp.virtual_node.metadata.uid #=> String
    #   resp.virtual_node.metadata.version #=> Integer
    #   resp.virtual_node.spec.backends #=> Array
    #   resp.virtual_node.spec.backends[0].virtual_service.virtual_service_name #=> String
    #   resp.virtual_node.spec.listeners #=> Array
    #   resp.virtual_node.spec.listeners[0].health_check.healthy_threshold #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.interval_millis #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.path #=> String
    #   resp.virtual_node.spec.listeners[0].health_check.port #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.protocol #=> String, one of "http", "tcp"
    #   resp.virtual_node.spec.listeners[0].health_check.timeout_millis #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.unhealthy_threshold #=> Integer
    #   resp.virtual_node.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.virtual_node.spec.listeners[0].port_mapping.protocol #=> String, one of "http", "tcp"
    #   resp.virtual_node.spec.logging.access_log.file.path #=> String
    #   resp.virtual_node.spec.service_discovery.dns.hostname #=> String
    #   resp.virtual_node.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.virtual_node.virtual_node_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UpdateVirtualNode AWS API Documentation
    #
    # @overload update_virtual_node(params = {})
    # @param [Hash] params ({})
    def update_virtual_node(params = {}, options = {})
      req = build_request(:update_virtual_node, params)
      req.send_request(options)
    end

    # Updates an existing virtual router in a specified service mesh.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh that the virtual router resides in.
    #
    # @option params [required, Types::VirtualRouterSpec] :spec
    #   The new virtual router specification to apply. This overwrites the
    #   existing data.
    #
    # @option params [required, String] :virtual_router_name
    #   The name of the virtual router to update.
    #
    # @return [Types::UpdateVirtualRouterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVirtualRouterOutput#virtual_router #virtual_router} => Types::VirtualRouterData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_virtual_router({
    #     client_token: "String",
    #     mesh_name: "ResourceName", # required
    #     spec: { # required
    #       listeners: [ # required
    #         {
    #           port_mapping: { # required
    #             port: 1, # required
    #             protocol: "http", # required, accepts http, tcp
    #           },
    #         },
    #       ],
    #     },
    #     virtual_router_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_router.mesh_name #=> String
    #   resp.virtual_router.metadata.arn #=> String
    #   resp.virtual_router.metadata.created_at #=> Time
    #   resp.virtual_router.metadata.last_updated_at #=> Time
    #   resp.virtual_router.metadata.uid #=> String
    #   resp.virtual_router.metadata.version #=> Integer
    #   resp.virtual_router.spec.listeners #=> Array
    #   resp.virtual_router.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.virtual_router.spec.listeners[0].port_mapping.protocol #=> String, one of "http", "tcp"
    #   resp.virtual_router.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.virtual_router.virtual_router_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UpdateVirtualRouter AWS API Documentation
    #
    # @overload update_virtual_router(params = {})
    # @param [Hash] params ({})
    def update_virtual_router(params = {}, options = {})
      req = build_request(:update_virtual_router, params)
      req.send_request(options)
    end

    # Updates an existing virtual service in a specified service mesh.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh that the virtual service resides in.
    #
    # @option params [required, Types::VirtualServiceSpec] :spec
    #   The new virtual service specification to apply. This overwrites the
    #   existing data.
    #
    # @option params [required, String] :virtual_service_name
    #   The name of the virtual service to update.
    #
    # @return [Types::UpdateVirtualServiceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVirtualServiceOutput#virtual_service #virtual_service} => Types::VirtualServiceData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_virtual_service({
    #     client_token: "String",
    #     mesh_name: "ResourceName", # required
    #     spec: { # required
    #       provider: {
    #         virtual_node: {
    #           virtual_node_name: "ResourceName", # required
    #         },
    #         virtual_router: {
    #           virtual_router_name: "ResourceName", # required
    #         },
    #       },
    #     },
    #     virtual_service_name: "ServiceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_service.mesh_name #=> String
    #   resp.virtual_service.metadata.arn #=> String
    #   resp.virtual_service.metadata.created_at #=> Time
    #   resp.virtual_service.metadata.last_updated_at #=> Time
    #   resp.virtual_service.metadata.uid #=> String
    #   resp.virtual_service.metadata.version #=> Integer
    #   resp.virtual_service.spec.provider.virtual_node.virtual_node_name #=> String
    #   resp.virtual_service.spec.provider.virtual_router.virtual_router_name #=> String
    #   resp.virtual_service.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.virtual_service.virtual_service_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UpdateVirtualService AWS API Documentation
    #
    # @overload update_virtual_service(params = {})
    # @param [Hash] params ({})
    def update_virtual_service(params = {}, options = {})
      req = build_request(:update_virtual_service, params)
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
      context[:gem_name] = 'aws-sdk-appmesh'
      context[:gem_version] = '1.9.0'
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
