# frozen_string_literal: true

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
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:appmesh)

module Aws::AppMesh
  # An API client for AppMesh.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::AppMesh::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
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
    add_plugin(Aws::Plugins::HttpChecksum)
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
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
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
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
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
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
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
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
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
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
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
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
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

    # Creates a gateway route.
    #
    # A gateway route is attached to a virtual gateway and routes traffic to
    # an existing virtual service. If a route matches a request, it can
    # distribute traffic to a target virtual service.
    #
    # For more information about gateway routes, see [Gateway routes][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/gateway-routes.html
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :gateway_route_name
    #   The name to use for the gateway route.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh to create the gateway route in.
    #
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then the account that you specify must share the mesh
    #   with your account before you can create the resource in the service
    #   mesh. For more information about mesh sharing, see [Working with
    #   shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #
    # @option params [required, Types::GatewayRouteSpec] :spec
    #   The gateway route specification to apply.
    #
    # @option params [Array<Types::TagRef>] :tags
    #   Optional metadata that you can apply to the gateway route to assist
    #   with categorization and organization. Each tag consists of a key and
    #   an optional value, both of which you define. Tag keys can have a
    #   maximum character length of 128 characters, and tag values can have a
    #   maximum length of 256 characters.
    #
    # @option params [required, String] :virtual_gateway_name
    #   The name of the virtual gateway to associate the gateway route with.
    #   If the virtual gateway is in a shared mesh, then you must be the owner
    #   of the virtual gateway resource.
    #
    # @return [Types::CreateGatewayRouteOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGatewayRouteOutput#gateway_route #gateway_route} => Types::GatewayRouteData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_gateway_route({
    #     client_token: "String",
    #     gateway_route_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId",
    #     spec: { # required
    #       grpc_route: {
    #         action: { # required
    #           target: { # required
    #             virtual_service: { # required
    #               virtual_service_name: "ResourceName", # required
    #             },
    #           },
    #         },
    #         match: { # required
    #           service_name: "ServiceName",
    #         },
    #       },
    #       http2_route: {
    #         action: { # required
    #           target: { # required
    #             virtual_service: { # required
    #               virtual_service_name: "ResourceName", # required
    #             },
    #           },
    #         },
    #         match: { # required
    #           prefix: "String", # required
    #         },
    #       },
    #       http_route: {
    #         action: { # required
    #           target: { # required
    #             virtual_service: { # required
    #               virtual_service_name: "ResourceName", # required
    #             },
    #           },
    #         },
    #         match: { # required
    #           prefix: "String", # required
    #         },
    #       },
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     virtual_gateway_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_route.gateway_route_name #=> String
    #   resp.gateway_route.mesh_name #=> String
    #   resp.gateway_route.metadata.arn #=> String
    #   resp.gateway_route.metadata.created_at #=> Time
    #   resp.gateway_route.metadata.last_updated_at #=> Time
    #   resp.gateway_route.metadata.mesh_owner #=> String
    #   resp.gateway_route.metadata.resource_owner #=> String
    #   resp.gateway_route.metadata.uid #=> String
    #   resp.gateway_route.metadata.version #=> Integer
    #   resp.gateway_route.spec.grpc_route.action.target.virtual_service.virtual_service_name #=> String
    #   resp.gateway_route.spec.grpc_route.match.service_name #=> String
    #   resp.gateway_route.spec.http2_route.action.target.virtual_service.virtual_service_name #=> String
    #   resp.gateway_route.spec.http2_route.match.prefix #=> String
    #   resp.gateway_route.spec.http_route.action.target.virtual_service.virtual_service_name #=> String
    #   resp.gateway_route.spec.http_route.match.prefix #=> String
    #   resp.gateway_route.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.gateway_route.virtual_gateway_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/CreateGatewayRoute AWS API Documentation
    #
    # @overload create_gateway_route(params = {})
    # @param [Hash] params ({})
    def create_gateway_route(params = {}, options = {})
      req = build_request(:create_gateway_route, params)
      req.send_request(options)
    end

    # Creates a service mesh.
    #
    # A service mesh is a logical boundary for network traffic between
    # services that are represented by resources within the mesh. After you
    # create your service mesh, you can create virtual services, virtual
    # nodes, virtual routers, and routes to distribute traffic between the
    # applications in your mesh.
    #
    # For more information about service meshes, see [Service meshes][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/meshes.html
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
    #   resp.mesh.metadata.mesh_owner #=> String
    #   resp.mesh.metadata.resource_owner #=> String
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
    # You can route several different protocols and define a retry policy
    # for a route. Traffic can be routed to one or more virtual nodes.
    #
    # For more information about routes, see [Routes][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/routes.html
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
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then the account that you specify must share the mesh
    #   with your account before you can create the resource in the service
    #   mesh. For more information about mesh sharing, see [Working with
    #   shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
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
    #   The name of the virtual router in which to create the route. If the
    #   virtual router is in a shared mesh, then you must be the owner of the
    #   virtual router resource.
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
    #     mesh_owner: "AccountId",
    #     route_name: "ResourceName", # required
    #     spec: { # required
    #       grpc_route: {
    #         action: { # required
    #           weighted_targets: [ # required
    #             {
    #               virtual_node: "ResourceName", # required
    #               weight: 1, # required
    #             },
    #           ],
    #         },
    #         match: { # required
    #           metadata: [
    #             {
    #               invert: false,
    #               match: {
    #                 exact: "HeaderMatch",
    #                 prefix: "HeaderMatch",
    #                 range: {
    #                   end: 1, # required
    #                   start: 1, # required
    #                 },
    #                 regex: "HeaderMatch",
    #                 suffix: "HeaderMatch",
    #               },
    #               name: "HeaderName", # required
    #             },
    #           ],
    #           method_name: "MethodName",
    #           service_name: "ServiceName",
    #         },
    #         retry_policy: {
    #           grpc_retry_events: ["cancelled"], # accepts cancelled, deadline-exceeded, internal, resource-exhausted, unavailable
    #           http_retry_events: ["HttpRetryPolicyEvent"],
    #           max_retries: 1, # required
    #           per_retry_timeout: { # required
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #           tcp_retry_events: ["connection-error"], # accepts connection-error
    #         },
    #         timeout: {
    #           idle: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #           per_request: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #         },
    #       },
    #       http2_route: {
    #         action: { # required
    #           weighted_targets: [ # required
    #             {
    #               virtual_node: "ResourceName", # required
    #               weight: 1, # required
    #             },
    #           ],
    #         },
    #         match: { # required
    #           headers: [
    #             {
    #               invert: false,
    #               match: {
    #                 exact: "HeaderMatch",
    #                 prefix: "HeaderMatch",
    #                 range: {
    #                   end: 1, # required
    #                   start: 1, # required
    #                 },
    #                 regex: "HeaderMatch",
    #                 suffix: "HeaderMatch",
    #               },
    #               name: "HeaderName", # required
    #             },
    #           ],
    #           method: "CONNECT", # accepts CONNECT, DELETE, GET, HEAD, OPTIONS, PATCH, POST, PUT, TRACE
    #           prefix: "String", # required
    #           scheme: "http", # accepts http, https
    #         },
    #         retry_policy: {
    #           http_retry_events: ["HttpRetryPolicyEvent"],
    #           max_retries: 1, # required
    #           per_retry_timeout: { # required
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #           tcp_retry_events: ["connection-error"], # accepts connection-error
    #         },
    #         timeout: {
    #           idle: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #           per_request: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #         },
    #       },
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
    #           headers: [
    #             {
    #               invert: false,
    #               match: {
    #                 exact: "HeaderMatch",
    #                 prefix: "HeaderMatch",
    #                 range: {
    #                   end: 1, # required
    #                   start: 1, # required
    #                 },
    #                 regex: "HeaderMatch",
    #                 suffix: "HeaderMatch",
    #               },
    #               name: "HeaderName", # required
    #             },
    #           ],
    #           method: "CONNECT", # accepts CONNECT, DELETE, GET, HEAD, OPTIONS, PATCH, POST, PUT, TRACE
    #           prefix: "String", # required
    #           scheme: "http", # accepts http, https
    #         },
    #         retry_policy: {
    #           http_retry_events: ["HttpRetryPolicyEvent"],
    #           max_retries: 1, # required
    #           per_retry_timeout: { # required
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #           tcp_retry_events: ["connection-error"], # accepts connection-error
    #         },
    #         timeout: {
    #           idle: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #           per_request: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #         },
    #       },
    #       priority: 1,
    #       tcp_route: {
    #         action: { # required
    #           weighted_targets: [ # required
    #             {
    #               virtual_node: "ResourceName", # required
    #               weight: 1, # required
    #             },
    #           ],
    #         },
    #         timeout: {
    #           idle: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
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
    #   resp.route.metadata.mesh_owner #=> String
    #   resp.route.metadata.resource_owner #=> String
    #   resp.route.metadata.uid #=> String
    #   resp.route.metadata.version #=> Integer
    #   resp.route.route_name #=> String
    #   resp.route.spec.grpc_route.action.weighted_targets #=> Array
    #   resp.route.spec.grpc_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.grpc_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.spec.grpc_route.match.metadata #=> Array
    #   resp.route.spec.grpc_route.match.metadata[0].invert #=> Boolean
    #   resp.route.spec.grpc_route.match.metadata[0].match.exact #=> String
    #   resp.route.spec.grpc_route.match.metadata[0].match.prefix #=> String
    #   resp.route.spec.grpc_route.match.metadata[0].match.range.end #=> Integer
    #   resp.route.spec.grpc_route.match.metadata[0].match.range.start #=> Integer
    #   resp.route.spec.grpc_route.match.metadata[0].match.regex #=> String
    #   resp.route.spec.grpc_route.match.metadata[0].match.suffix #=> String
    #   resp.route.spec.grpc_route.match.metadata[0].name #=> String
    #   resp.route.spec.grpc_route.match.method_name #=> String
    #   resp.route.spec.grpc_route.match.service_name #=> String
    #   resp.route.spec.grpc_route.retry_policy.grpc_retry_events #=> Array
    #   resp.route.spec.grpc_route.retry_policy.grpc_retry_events[0] #=> String, one of "cancelled", "deadline-exceeded", "internal", "resource-exhausted", "unavailable"
    #   resp.route.spec.grpc_route.retry_policy.http_retry_events #=> Array
    #   resp.route.spec.grpc_route.retry_policy.http_retry_events[0] #=> String
    #   resp.route.spec.grpc_route.retry_policy.max_retries #=> Integer
    #   resp.route.spec.grpc_route.retry_policy.per_retry_timeout.unit #=> String, one of "ms", "s"
    #   resp.route.spec.grpc_route.retry_policy.per_retry_timeout.value #=> Integer
    #   resp.route.spec.grpc_route.retry_policy.tcp_retry_events #=> Array
    #   resp.route.spec.grpc_route.retry_policy.tcp_retry_events[0] #=> String, one of "connection-error"
    #   resp.route.spec.grpc_route.timeout.idle.unit #=> String, one of "ms", "s"
    #   resp.route.spec.grpc_route.timeout.idle.value #=> Integer
    #   resp.route.spec.grpc_route.timeout.per_request.unit #=> String, one of "ms", "s"
    #   resp.route.spec.grpc_route.timeout.per_request.value #=> Integer
    #   resp.route.spec.http2_route.action.weighted_targets #=> Array
    #   resp.route.spec.http2_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.http2_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.spec.http2_route.match.headers #=> Array
    #   resp.route.spec.http2_route.match.headers[0].invert #=> Boolean
    #   resp.route.spec.http2_route.match.headers[0].match.exact #=> String
    #   resp.route.spec.http2_route.match.headers[0].match.prefix #=> String
    #   resp.route.spec.http2_route.match.headers[0].match.range.end #=> Integer
    #   resp.route.spec.http2_route.match.headers[0].match.range.start #=> Integer
    #   resp.route.spec.http2_route.match.headers[0].match.regex #=> String
    #   resp.route.spec.http2_route.match.headers[0].match.suffix #=> String
    #   resp.route.spec.http2_route.match.headers[0].name #=> String
    #   resp.route.spec.http2_route.match.method #=> String, one of "CONNECT", "DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT", "TRACE"
    #   resp.route.spec.http2_route.match.prefix #=> String
    #   resp.route.spec.http2_route.match.scheme #=> String, one of "http", "https"
    #   resp.route.spec.http2_route.retry_policy.http_retry_events #=> Array
    #   resp.route.spec.http2_route.retry_policy.http_retry_events[0] #=> String
    #   resp.route.spec.http2_route.retry_policy.max_retries #=> Integer
    #   resp.route.spec.http2_route.retry_policy.per_retry_timeout.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http2_route.retry_policy.per_retry_timeout.value #=> Integer
    #   resp.route.spec.http2_route.retry_policy.tcp_retry_events #=> Array
    #   resp.route.spec.http2_route.retry_policy.tcp_retry_events[0] #=> String, one of "connection-error"
    #   resp.route.spec.http2_route.timeout.idle.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http2_route.timeout.idle.value #=> Integer
    #   resp.route.spec.http2_route.timeout.per_request.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http2_route.timeout.per_request.value #=> Integer
    #   resp.route.spec.http_route.action.weighted_targets #=> Array
    #   resp.route.spec.http_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.http_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.spec.http_route.match.headers #=> Array
    #   resp.route.spec.http_route.match.headers[0].invert #=> Boolean
    #   resp.route.spec.http_route.match.headers[0].match.exact #=> String
    #   resp.route.spec.http_route.match.headers[0].match.prefix #=> String
    #   resp.route.spec.http_route.match.headers[0].match.range.end #=> Integer
    #   resp.route.spec.http_route.match.headers[0].match.range.start #=> Integer
    #   resp.route.spec.http_route.match.headers[0].match.regex #=> String
    #   resp.route.spec.http_route.match.headers[0].match.suffix #=> String
    #   resp.route.spec.http_route.match.headers[0].name #=> String
    #   resp.route.spec.http_route.match.method #=> String, one of "CONNECT", "DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT", "TRACE"
    #   resp.route.spec.http_route.match.prefix #=> String
    #   resp.route.spec.http_route.match.scheme #=> String, one of "http", "https"
    #   resp.route.spec.http_route.retry_policy.http_retry_events #=> Array
    #   resp.route.spec.http_route.retry_policy.http_retry_events[0] #=> String
    #   resp.route.spec.http_route.retry_policy.max_retries #=> Integer
    #   resp.route.spec.http_route.retry_policy.per_retry_timeout.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http_route.retry_policy.per_retry_timeout.value #=> Integer
    #   resp.route.spec.http_route.retry_policy.tcp_retry_events #=> Array
    #   resp.route.spec.http_route.retry_policy.tcp_retry_events[0] #=> String, one of "connection-error"
    #   resp.route.spec.http_route.timeout.idle.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http_route.timeout.idle.value #=> Integer
    #   resp.route.spec.http_route.timeout.per_request.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http_route.timeout.per_request.value #=> Integer
    #   resp.route.spec.priority #=> Integer
    #   resp.route.spec.tcp_route.action.weighted_targets #=> Array
    #   resp.route.spec.tcp_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.tcp_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.spec.tcp_route.timeout.idle.unit #=> String, one of "ms", "s"
    #   resp.route.spec.tcp_route.timeout.idle.value #=> Integer
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

    # Creates a virtual gateway.
    #
    # A virtual gateway allows resources outside your mesh to communicate to
    # resources that are inside your mesh. The virtual gateway represents an
    # Envoy proxy running in an Amazon ECS task, in a Kubernetes service, or
    # on an Amazon EC2 instance. Unlike a virtual node, which represents an
    # Envoy running with an application, a virtual gateway represents Envoy
    # deployed by itself.
    #
    # For more information about virtual gateways, see [Virtual
    # gateways][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_gateways.html
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
    #   The name of the service mesh to create the virtual gateway in.
    #
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then the account that you specify must share the mesh
    #   with your account before you can create the resource in the service
    #   mesh. For more information about mesh sharing, see [Working with
    #   shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #
    # @option params [required, Types::VirtualGatewaySpec] :spec
    #   The virtual gateway specification to apply.
    #
    # @option params [Array<Types::TagRef>] :tags
    #   Optional metadata that you can apply to the virtual gateway to assist
    #   with categorization and organization. Each tag consists of a key and
    #   an optional value, both of which you define. Tag keys can have a
    #   maximum character length of 128 characters, and tag values can have a
    #   maximum length of 256 characters.
    #
    # @option params [required, String] :virtual_gateway_name
    #   The name to use for the virtual gateway.
    #
    # @return [Types::CreateVirtualGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVirtualGatewayOutput#virtual_gateway #virtual_gateway} => Types::VirtualGatewayData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_virtual_gateway({
    #     client_token: "String",
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId",
    #     spec: { # required
    #       backend_defaults: {
    #         client_policy: {
    #           tls: {
    #             enforce: false,
    #             ports: [1],
    #             validation: { # required
    #               trust: { # required
    #                 acm: {
    #                   certificate_authority_arns: ["Arn"], # required
    #                 },
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                 },
    #               },
    #             },
    #           },
    #         },
    #       },
    #       listeners: [ # required
    #         {
    #           health_check: {
    #             healthy_threshold: 1, # required
    #             interval_millis: 1, # required
    #             path: "String",
    #             port: 1,
    #             protocol: "grpc", # required, accepts grpc, http, http2
    #             timeout_millis: 1, # required
    #             unhealthy_threshold: 1, # required
    #           },
    #           port_mapping: { # required
    #             port: 1, # required
    #             protocol: "grpc", # required, accepts grpc, http, http2
    #           },
    #           tls: {
    #             certificate: { # required
    #               acm: {
    #                 certificate_arn: "Arn", # required
    #               },
    #               file: {
    #                 certificate_chain: "FilePath", # required
    #                 private_key: "FilePath", # required
    #               },
    #             },
    #             mode: "DISABLED", # required, accepts DISABLED, PERMISSIVE, STRICT
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
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     virtual_gateway_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_gateway.mesh_name #=> String
    #   resp.virtual_gateway.metadata.arn #=> String
    #   resp.virtual_gateway.metadata.created_at #=> Time
    #   resp.virtual_gateway.metadata.last_updated_at #=> Time
    #   resp.virtual_gateway.metadata.mesh_owner #=> String
    #   resp.virtual_gateway.metadata.resource_owner #=> String
    #   resp.virtual_gateway.metadata.uid #=> String
    #   resp.virtual_gateway.metadata.version #=> Integer
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.enforce #=> Boolean
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.ports #=> Array
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.ports[0] #=> Integer
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.trust.acm.certificate_authority_arns #=> Array
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.trust.acm.certificate_authority_arns[0] #=> String
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.trust.file.certificate_chain #=> String
    #   resp.virtual_gateway.spec.listeners #=> Array
    #   resp.virtual_gateway.spec.listeners[0].health_check.healthy_threshold #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].health_check.interval_millis #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].health_check.path #=> String
    #   resp.virtual_gateway.spec.listeners[0].health_check.port #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].health_check.protocol #=> String, one of "grpc", "http", "http2"
    #   resp.virtual_gateway.spec.listeners[0].health_check.timeout_millis #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].health_check.unhealthy_threshold #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].port_mapping.protocol #=> String, one of "grpc", "http", "http2"
    #   resp.virtual_gateway.spec.listeners[0].tls.certificate.acm.certificate_arn #=> String
    #   resp.virtual_gateway.spec.listeners[0].tls.certificate.file.certificate_chain #=> String
    #   resp.virtual_gateway.spec.listeners[0].tls.certificate.file.private_key #=> String
    #   resp.virtual_gateway.spec.listeners[0].tls.mode #=> String, one of "DISABLED", "PERMISSIVE", "STRICT"
    #   resp.virtual_gateway.spec.logging.access_log.file.path #=> String
    #   resp.virtual_gateway.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.virtual_gateway.virtual_gateway_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/CreateVirtualGateway AWS API Documentation
    #
    # @overload create_virtual_gateway(params = {})
    # @param [Hash] params ({})
    def create_virtual_gateway(params = {}, options = {})
      req = build_request(:create_virtual_gateway, params)
      req.send_request(options)
    end

    # Creates a virtual node within a service mesh.
    #
    # A virtual node acts as a logical pointer to a particular task group,
    # such as an Amazon ECS service or a Kubernetes deployment. When you
    # create a virtual node, you can specify the service discovery
    # information for your task group, and whether the proxy running in a
    # task group will communicate with other proxies using Transport Layer
    # Security (TLS).
    #
    # You define a `listener` for any inbound traffic that your virtual node
    # expects. Any virtual service that your virtual node expects to
    # communicate to is specified as a `backend`.
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
    # For more information about virtual nodes, see [Virtual nodes][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_nodes.html
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
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then the account that you specify must share the mesh
    #   with your account before you can create the resource in the service
    #   mesh. For more information about mesh sharing, see [Working with
    #   shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
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
    #     mesh_owner: "AccountId",
    #     spec: { # required
    #       backend_defaults: {
    #         client_policy: {
    #           tls: {
    #             enforce: false,
    #             ports: [1],
    #             validation: { # required
    #               trust: { # required
    #                 acm: {
    #                   certificate_authority_arns: ["Arn"], # required
    #                 },
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                 },
    #               },
    #             },
    #           },
    #         },
    #       },
    #       backends: [
    #         {
    #           virtual_service: {
    #             client_policy: {
    #               tls: {
    #                 enforce: false,
    #                 ports: [1],
    #                 validation: { # required
    #                   trust: { # required
    #                     acm: {
    #                       certificate_authority_arns: ["Arn"], # required
    #                     },
    #                     file: {
    #                       certificate_chain: "FilePath", # required
    #                     },
    #                   },
    #                 },
    #               },
    #             },
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
    #             protocol: "grpc", # required, accepts grpc, http, http2, tcp
    #             timeout_millis: 1, # required
    #             unhealthy_threshold: 1, # required
    #           },
    #           port_mapping: { # required
    #             port: 1, # required
    #             protocol: "grpc", # required, accepts grpc, http, http2, tcp
    #           },
    #           timeout: {
    #             grpc: {
    #               idle: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #               per_request: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #             },
    #             http: {
    #               idle: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #               per_request: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #             },
    #             http2: {
    #               idle: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #               per_request: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #             },
    #             tcp: {
    #               idle: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #             },
    #           },
    #           tls: {
    #             certificate: { # required
    #               acm: {
    #                 certificate_arn: "Arn", # required
    #               },
    #               file: {
    #                 certificate_chain: "FilePath", # required
    #                 private_key: "FilePath", # required
    #               },
    #             },
    #             mode: "DISABLED", # required, accepts DISABLED, PERMISSIVE, STRICT
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
    #         aws_cloud_map: {
    #           attributes: [
    #             {
    #               key: "AwsCloudMapInstanceAttributeKey", # required
    #               value: "AwsCloudMapInstanceAttributeValue", # required
    #             },
    #           ],
    #           namespace_name: "AwsCloudMapName", # required
    #           service_name: "AwsCloudMapName", # required
    #         },
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
    #   resp.virtual_node.metadata.mesh_owner #=> String
    #   resp.virtual_node.metadata.resource_owner #=> String
    #   resp.virtual_node.metadata.uid #=> String
    #   resp.virtual_node.metadata.version #=> Integer
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.enforce #=> Boolean
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.ports #=> Array
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.ports[0] #=> Integer
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.validation.trust.acm.certificate_authority_arns #=> Array
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.validation.trust.acm.certificate_authority_arns[0] #=> String
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.validation.trust.file.certificate_chain #=> String
    #   resp.virtual_node.spec.backends #=> Array
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.enforce #=> Boolean
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.ports #=> Array
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.ports[0] #=> Integer
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.trust.acm.certificate_authority_arns #=> Array
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.trust.acm.certificate_authority_arns[0] #=> String
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.trust.file.certificate_chain #=> String
    #   resp.virtual_node.spec.backends[0].virtual_service.virtual_service_name #=> String
    #   resp.virtual_node.spec.listeners #=> Array
    #   resp.virtual_node.spec.listeners[0].health_check.healthy_threshold #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.interval_millis #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.path #=> String
    #   resp.virtual_node.spec.listeners[0].health_check.port #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.protocol #=> String, one of "grpc", "http", "http2", "tcp"
    #   resp.virtual_node.spec.listeners[0].health_check.timeout_millis #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.unhealthy_threshold #=> Integer
    #   resp.virtual_node.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.virtual_node.spec.listeners[0].port_mapping.protocol #=> String, one of "grpc", "http", "http2", "tcp"
    #   resp.virtual_node.spec.listeners[0].timeout.grpc.idle.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.grpc.idle.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.grpc.per_request.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.grpc.per_request.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.http.idle.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.http.idle.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.http.per_request.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.http.per_request.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.http2.idle.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.http2.idle.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.http2.per_request.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.http2.per_request.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.tcp.idle.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.tcp.idle.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].tls.certificate.acm.certificate_arn #=> String
    #   resp.virtual_node.spec.listeners[0].tls.certificate.file.certificate_chain #=> String
    #   resp.virtual_node.spec.listeners[0].tls.certificate.file.private_key #=> String
    #   resp.virtual_node.spec.listeners[0].tls.mode #=> String, one of "DISABLED", "PERMISSIVE", "STRICT"
    #   resp.virtual_node.spec.logging.access_log.file.path #=> String
    #   resp.virtual_node.spec.service_discovery.aws_cloud_map.attributes #=> Array
    #   resp.virtual_node.spec.service_discovery.aws_cloud_map.attributes[0].key #=> String
    #   resp.virtual_node.spec.service_discovery.aws_cloud_map.attributes[0].value #=> String
    #   resp.virtual_node.spec.service_discovery.aws_cloud_map.namespace_name #=> String
    #   resp.virtual_node.spec.service_discovery.aws_cloud_map.service_name #=> String
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
    # Specify a `listener` for any inbound traffic that your virtual router
    # receives. Create a virtual router for each protocol and port that you
    # need to route. Virtual routers handle traffic for one or more virtual
    # services within your mesh. After you create your virtual router,
    # create and associate routes for your virtual router that direct
    # incoming requests to different virtual nodes.
    #
    # For more information about virtual routers, see [Virtual routers][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_routers.html
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
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then the account that you specify must share the mesh
    #   with your account before you can create the resource in the service
    #   mesh. For more information about mesh sharing, see [Working with
    #   shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
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
    #     mesh_owner: "AccountId",
    #     spec: { # required
    #       listeners: [
    #         {
    #           port_mapping: { # required
    #             port: 1, # required
    #             protocol: "grpc", # required, accepts grpc, http, http2, tcp
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
    #   resp.virtual_router.metadata.mesh_owner #=> String
    #   resp.virtual_router.metadata.resource_owner #=> String
    #   resp.virtual_router.metadata.uid #=> String
    #   resp.virtual_router.metadata.version #=> Integer
    #   resp.virtual_router.spec.listeners #=> Array
    #   resp.virtual_router.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.virtual_router.spec.listeners[0].port_mapping.protocol #=> String, one of "grpc", "http", "http2", "tcp"
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
    # For more information about virtual services, see [Virtual
    # services][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_services.html
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
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then the account that you specify must share the mesh
    #   with your account before you can create the resource in the service
    #   mesh. For more information about mesh sharing, see [Working with
    #   shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
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
    #     mesh_owner: "AccountId",
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
    #   resp.virtual_service.metadata.mesh_owner #=> String
    #   resp.virtual_service.metadata.resource_owner #=> String
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

    # Deletes an existing gateway route.
    #
    # @option params [required, String] :gateway_route_name
    #   The name of the gateway route to delete.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh to delete the gateway route from.
    #
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #
    # @option params [required, String] :virtual_gateway_name
    #   The name of the virtual gateway to delete the route from.
    #
    # @return [Types::DeleteGatewayRouteOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGatewayRouteOutput#gateway_route #gateway_route} => Types::GatewayRouteData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gateway_route({
    #     gateway_route_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId",
    #     virtual_gateway_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_route.gateway_route_name #=> String
    #   resp.gateway_route.mesh_name #=> String
    #   resp.gateway_route.metadata.arn #=> String
    #   resp.gateway_route.metadata.created_at #=> Time
    #   resp.gateway_route.metadata.last_updated_at #=> Time
    #   resp.gateway_route.metadata.mesh_owner #=> String
    #   resp.gateway_route.metadata.resource_owner #=> String
    #   resp.gateway_route.metadata.uid #=> String
    #   resp.gateway_route.metadata.version #=> Integer
    #   resp.gateway_route.spec.grpc_route.action.target.virtual_service.virtual_service_name #=> String
    #   resp.gateway_route.spec.grpc_route.match.service_name #=> String
    #   resp.gateway_route.spec.http2_route.action.target.virtual_service.virtual_service_name #=> String
    #   resp.gateway_route.spec.http2_route.match.prefix #=> String
    #   resp.gateway_route.spec.http_route.action.target.virtual_service.virtual_service_name #=> String
    #   resp.gateway_route.spec.http_route.match.prefix #=> String
    #   resp.gateway_route.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.gateway_route.virtual_gateway_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DeleteGatewayRoute AWS API Documentation
    #
    # @overload delete_gateway_route(params = {})
    # @param [Hash] params ({})
    def delete_gateway_route(params = {}, options = {})
      req = build_request(:delete_gateway_route, params)
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
    #   resp.mesh.metadata.mesh_owner #=> String
    #   resp.mesh.metadata.resource_owner #=> String
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
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
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
    #     mesh_owner: "AccountId",
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
    #   resp.route.metadata.mesh_owner #=> String
    #   resp.route.metadata.resource_owner #=> String
    #   resp.route.metadata.uid #=> String
    #   resp.route.metadata.version #=> Integer
    #   resp.route.route_name #=> String
    #   resp.route.spec.grpc_route.action.weighted_targets #=> Array
    #   resp.route.spec.grpc_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.grpc_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.spec.grpc_route.match.metadata #=> Array
    #   resp.route.spec.grpc_route.match.metadata[0].invert #=> Boolean
    #   resp.route.spec.grpc_route.match.metadata[0].match.exact #=> String
    #   resp.route.spec.grpc_route.match.metadata[0].match.prefix #=> String
    #   resp.route.spec.grpc_route.match.metadata[0].match.range.end #=> Integer
    #   resp.route.spec.grpc_route.match.metadata[0].match.range.start #=> Integer
    #   resp.route.spec.grpc_route.match.metadata[0].match.regex #=> String
    #   resp.route.spec.grpc_route.match.metadata[0].match.suffix #=> String
    #   resp.route.spec.grpc_route.match.metadata[0].name #=> String
    #   resp.route.spec.grpc_route.match.method_name #=> String
    #   resp.route.spec.grpc_route.match.service_name #=> String
    #   resp.route.spec.grpc_route.retry_policy.grpc_retry_events #=> Array
    #   resp.route.spec.grpc_route.retry_policy.grpc_retry_events[0] #=> String, one of "cancelled", "deadline-exceeded", "internal", "resource-exhausted", "unavailable"
    #   resp.route.spec.grpc_route.retry_policy.http_retry_events #=> Array
    #   resp.route.spec.grpc_route.retry_policy.http_retry_events[0] #=> String
    #   resp.route.spec.grpc_route.retry_policy.max_retries #=> Integer
    #   resp.route.spec.grpc_route.retry_policy.per_retry_timeout.unit #=> String, one of "ms", "s"
    #   resp.route.spec.grpc_route.retry_policy.per_retry_timeout.value #=> Integer
    #   resp.route.spec.grpc_route.retry_policy.tcp_retry_events #=> Array
    #   resp.route.spec.grpc_route.retry_policy.tcp_retry_events[0] #=> String, one of "connection-error"
    #   resp.route.spec.grpc_route.timeout.idle.unit #=> String, one of "ms", "s"
    #   resp.route.spec.grpc_route.timeout.idle.value #=> Integer
    #   resp.route.spec.grpc_route.timeout.per_request.unit #=> String, one of "ms", "s"
    #   resp.route.spec.grpc_route.timeout.per_request.value #=> Integer
    #   resp.route.spec.http2_route.action.weighted_targets #=> Array
    #   resp.route.spec.http2_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.http2_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.spec.http2_route.match.headers #=> Array
    #   resp.route.spec.http2_route.match.headers[0].invert #=> Boolean
    #   resp.route.spec.http2_route.match.headers[0].match.exact #=> String
    #   resp.route.spec.http2_route.match.headers[0].match.prefix #=> String
    #   resp.route.spec.http2_route.match.headers[0].match.range.end #=> Integer
    #   resp.route.spec.http2_route.match.headers[0].match.range.start #=> Integer
    #   resp.route.spec.http2_route.match.headers[0].match.regex #=> String
    #   resp.route.spec.http2_route.match.headers[0].match.suffix #=> String
    #   resp.route.spec.http2_route.match.headers[0].name #=> String
    #   resp.route.spec.http2_route.match.method #=> String, one of "CONNECT", "DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT", "TRACE"
    #   resp.route.spec.http2_route.match.prefix #=> String
    #   resp.route.spec.http2_route.match.scheme #=> String, one of "http", "https"
    #   resp.route.spec.http2_route.retry_policy.http_retry_events #=> Array
    #   resp.route.spec.http2_route.retry_policy.http_retry_events[0] #=> String
    #   resp.route.spec.http2_route.retry_policy.max_retries #=> Integer
    #   resp.route.spec.http2_route.retry_policy.per_retry_timeout.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http2_route.retry_policy.per_retry_timeout.value #=> Integer
    #   resp.route.spec.http2_route.retry_policy.tcp_retry_events #=> Array
    #   resp.route.spec.http2_route.retry_policy.tcp_retry_events[0] #=> String, one of "connection-error"
    #   resp.route.spec.http2_route.timeout.idle.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http2_route.timeout.idle.value #=> Integer
    #   resp.route.spec.http2_route.timeout.per_request.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http2_route.timeout.per_request.value #=> Integer
    #   resp.route.spec.http_route.action.weighted_targets #=> Array
    #   resp.route.spec.http_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.http_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.spec.http_route.match.headers #=> Array
    #   resp.route.spec.http_route.match.headers[0].invert #=> Boolean
    #   resp.route.spec.http_route.match.headers[0].match.exact #=> String
    #   resp.route.spec.http_route.match.headers[0].match.prefix #=> String
    #   resp.route.spec.http_route.match.headers[0].match.range.end #=> Integer
    #   resp.route.spec.http_route.match.headers[0].match.range.start #=> Integer
    #   resp.route.spec.http_route.match.headers[0].match.regex #=> String
    #   resp.route.spec.http_route.match.headers[0].match.suffix #=> String
    #   resp.route.spec.http_route.match.headers[0].name #=> String
    #   resp.route.spec.http_route.match.method #=> String, one of "CONNECT", "DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT", "TRACE"
    #   resp.route.spec.http_route.match.prefix #=> String
    #   resp.route.spec.http_route.match.scheme #=> String, one of "http", "https"
    #   resp.route.spec.http_route.retry_policy.http_retry_events #=> Array
    #   resp.route.spec.http_route.retry_policy.http_retry_events[0] #=> String
    #   resp.route.spec.http_route.retry_policy.max_retries #=> Integer
    #   resp.route.spec.http_route.retry_policy.per_retry_timeout.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http_route.retry_policy.per_retry_timeout.value #=> Integer
    #   resp.route.spec.http_route.retry_policy.tcp_retry_events #=> Array
    #   resp.route.spec.http_route.retry_policy.tcp_retry_events[0] #=> String, one of "connection-error"
    #   resp.route.spec.http_route.timeout.idle.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http_route.timeout.idle.value #=> Integer
    #   resp.route.spec.http_route.timeout.per_request.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http_route.timeout.per_request.value #=> Integer
    #   resp.route.spec.priority #=> Integer
    #   resp.route.spec.tcp_route.action.weighted_targets #=> Array
    #   resp.route.spec.tcp_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.tcp_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.spec.tcp_route.timeout.idle.unit #=> String, one of "ms", "s"
    #   resp.route.spec.tcp_route.timeout.idle.value #=> Integer
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

    # Deletes an existing virtual gateway. You cannot delete a virtual
    # gateway if any gateway routes are associated to it.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh to delete the virtual gateway from.
    #
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #
    # @option params [required, String] :virtual_gateway_name
    #   The name of the virtual gateway to delete.
    #
    # @return [Types::DeleteVirtualGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVirtualGatewayOutput#virtual_gateway #virtual_gateway} => Types::VirtualGatewayData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_virtual_gateway({
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId",
    #     virtual_gateway_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_gateway.mesh_name #=> String
    #   resp.virtual_gateway.metadata.arn #=> String
    #   resp.virtual_gateway.metadata.created_at #=> Time
    #   resp.virtual_gateway.metadata.last_updated_at #=> Time
    #   resp.virtual_gateway.metadata.mesh_owner #=> String
    #   resp.virtual_gateway.metadata.resource_owner #=> String
    #   resp.virtual_gateway.metadata.uid #=> String
    #   resp.virtual_gateway.metadata.version #=> Integer
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.enforce #=> Boolean
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.ports #=> Array
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.ports[0] #=> Integer
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.trust.acm.certificate_authority_arns #=> Array
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.trust.acm.certificate_authority_arns[0] #=> String
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.trust.file.certificate_chain #=> String
    #   resp.virtual_gateway.spec.listeners #=> Array
    #   resp.virtual_gateway.spec.listeners[0].health_check.healthy_threshold #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].health_check.interval_millis #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].health_check.path #=> String
    #   resp.virtual_gateway.spec.listeners[0].health_check.port #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].health_check.protocol #=> String, one of "grpc", "http", "http2"
    #   resp.virtual_gateway.spec.listeners[0].health_check.timeout_millis #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].health_check.unhealthy_threshold #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].port_mapping.protocol #=> String, one of "grpc", "http", "http2"
    #   resp.virtual_gateway.spec.listeners[0].tls.certificate.acm.certificate_arn #=> String
    #   resp.virtual_gateway.spec.listeners[0].tls.certificate.file.certificate_chain #=> String
    #   resp.virtual_gateway.spec.listeners[0].tls.certificate.file.private_key #=> String
    #   resp.virtual_gateway.spec.listeners[0].tls.mode #=> String, one of "DISABLED", "PERMISSIVE", "STRICT"
    #   resp.virtual_gateway.spec.logging.access_log.file.path #=> String
    #   resp.virtual_gateway.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.virtual_gateway.virtual_gateway_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DeleteVirtualGateway AWS API Documentation
    #
    # @overload delete_virtual_gateway(params = {})
    # @param [Hash] params ({})
    def delete_virtual_gateway(params = {}, options = {})
      req = build_request(:delete_virtual_gateway, params)
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
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
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
    #     mesh_owner: "AccountId",
    #     virtual_node_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_node.mesh_name #=> String
    #   resp.virtual_node.metadata.arn #=> String
    #   resp.virtual_node.metadata.created_at #=> Time
    #   resp.virtual_node.metadata.last_updated_at #=> Time
    #   resp.virtual_node.metadata.mesh_owner #=> String
    #   resp.virtual_node.metadata.resource_owner #=> String
    #   resp.virtual_node.metadata.uid #=> String
    #   resp.virtual_node.metadata.version #=> Integer
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.enforce #=> Boolean
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.ports #=> Array
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.ports[0] #=> Integer
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.validation.trust.acm.certificate_authority_arns #=> Array
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.validation.trust.acm.certificate_authority_arns[0] #=> String
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.validation.trust.file.certificate_chain #=> String
    #   resp.virtual_node.spec.backends #=> Array
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.enforce #=> Boolean
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.ports #=> Array
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.ports[0] #=> Integer
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.trust.acm.certificate_authority_arns #=> Array
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.trust.acm.certificate_authority_arns[0] #=> String
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.trust.file.certificate_chain #=> String
    #   resp.virtual_node.spec.backends[0].virtual_service.virtual_service_name #=> String
    #   resp.virtual_node.spec.listeners #=> Array
    #   resp.virtual_node.spec.listeners[0].health_check.healthy_threshold #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.interval_millis #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.path #=> String
    #   resp.virtual_node.spec.listeners[0].health_check.port #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.protocol #=> String, one of "grpc", "http", "http2", "tcp"
    #   resp.virtual_node.spec.listeners[0].health_check.timeout_millis #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.unhealthy_threshold #=> Integer
    #   resp.virtual_node.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.virtual_node.spec.listeners[0].port_mapping.protocol #=> String, one of "grpc", "http", "http2", "tcp"
    #   resp.virtual_node.spec.listeners[0].timeout.grpc.idle.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.grpc.idle.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.grpc.per_request.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.grpc.per_request.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.http.idle.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.http.idle.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.http.per_request.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.http.per_request.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.http2.idle.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.http2.idle.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.http2.per_request.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.http2.per_request.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.tcp.idle.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.tcp.idle.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].tls.certificate.acm.certificate_arn #=> String
    #   resp.virtual_node.spec.listeners[0].tls.certificate.file.certificate_chain #=> String
    #   resp.virtual_node.spec.listeners[0].tls.certificate.file.private_key #=> String
    #   resp.virtual_node.spec.listeners[0].tls.mode #=> String, one of "DISABLED", "PERMISSIVE", "STRICT"
    #   resp.virtual_node.spec.logging.access_log.file.path #=> String
    #   resp.virtual_node.spec.service_discovery.aws_cloud_map.attributes #=> Array
    #   resp.virtual_node.spec.service_discovery.aws_cloud_map.attributes[0].key #=> String
    #   resp.virtual_node.spec.service_discovery.aws_cloud_map.attributes[0].value #=> String
    #   resp.virtual_node.spec.service_discovery.aws_cloud_map.namespace_name #=> String
    #   resp.virtual_node.spec.service_discovery.aws_cloud_map.service_name #=> String
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
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
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
    #     mesh_owner: "AccountId",
    #     virtual_router_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_router.mesh_name #=> String
    #   resp.virtual_router.metadata.arn #=> String
    #   resp.virtual_router.metadata.created_at #=> Time
    #   resp.virtual_router.metadata.last_updated_at #=> Time
    #   resp.virtual_router.metadata.mesh_owner #=> String
    #   resp.virtual_router.metadata.resource_owner #=> String
    #   resp.virtual_router.metadata.uid #=> String
    #   resp.virtual_router.metadata.version #=> Integer
    #   resp.virtual_router.spec.listeners #=> Array
    #   resp.virtual_router.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.virtual_router.spec.listeners[0].port_mapping.protocol #=> String, one of "grpc", "http", "http2", "tcp"
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
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
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
    #     mesh_owner: "AccountId",
    #     virtual_service_name: "ServiceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_service.mesh_name #=> String
    #   resp.virtual_service.metadata.arn #=> String
    #   resp.virtual_service.metadata.created_at #=> Time
    #   resp.virtual_service.metadata.last_updated_at #=> Time
    #   resp.virtual_service.metadata.mesh_owner #=> String
    #   resp.virtual_service.metadata.resource_owner #=> String
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

    # Describes an existing gateway route.
    #
    # @option params [required, String] :gateway_route_name
    #   The name of the gateway route to describe.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh that the gateway route resides in.
    #
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #
    # @option params [required, String] :virtual_gateway_name
    #   The name of the virtual gateway that the gateway route is associated
    #   with.
    #
    # @return [Types::DescribeGatewayRouteOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGatewayRouteOutput#gateway_route #gateway_route} => Types::GatewayRouteData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_gateway_route({
    #     gateway_route_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId",
    #     virtual_gateway_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_route.gateway_route_name #=> String
    #   resp.gateway_route.mesh_name #=> String
    #   resp.gateway_route.metadata.arn #=> String
    #   resp.gateway_route.metadata.created_at #=> Time
    #   resp.gateway_route.metadata.last_updated_at #=> Time
    #   resp.gateway_route.metadata.mesh_owner #=> String
    #   resp.gateway_route.metadata.resource_owner #=> String
    #   resp.gateway_route.metadata.uid #=> String
    #   resp.gateway_route.metadata.version #=> Integer
    #   resp.gateway_route.spec.grpc_route.action.target.virtual_service.virtual_service_name #=> String
    #   resp.gateway_route.spec.grpc_route.match.service_name #=> String
    #   resp.gateway_route.spec.http2_route.action.target.virtual_service.virtual_service_name #=> String
    #   resp.gateway_route.spec.http2_route.match.prefix #=> String
    #   resp.gateway_route.spec.http_route.action.target.virtual_service.virtual_service_name #=> String
    #   resp.gateway_route.spec.http_route.match.prefix #=> String
    #   resp.gateway_route.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.gateway_route.virtual_gateway_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DescribeGatewayRoute AWS API Documentation
    #
    # @overload describe_gateway_route(params = {})
    # @param [Hash] params ({})
    def describe_gateway_route(params = {}, options = {})
      req = build_request(:describe_gateway_route, params)
      req.send_request(options)
    end

    # Describes an existing service mesh.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh to describe.
    #
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #
    # @return [Types::DescribeMeshOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMeshOutput#mesh #mesh} => Types::MeshData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_mesh({
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.mesh.mesh_name #=> String
    #   resp.mesh.metadata.arn #=> String
    #   resp.mesh.metadata.created_at #=> Time
    #   resp.mesh.metadata.last_updated_at #=> Time
    #   resp.mesh.metadata.mesh_owner #=> String
    #   resp.mesh.metadata.resource_owner #=> String
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
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
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
    #     mesh_owner: "AccountId",
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
    #   resp.route.metadata.mesh_owner #=> String
    #   resp.route.metadata.resource_owner #=> String
    #   resp.route.metadata.uid #=> String
    #   resp.route.metadata.version #=> Integer
    #   resp.route.route_name #=> String
    #   resp.route.spec.grpc_route.action.weighted_targets #=> Array
    #   resp.route.spec.grpc_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.grpc_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.spec.grpc_route.match.metadata #=> Array
    #   resp.route.spec.grpc_route.match.metadata[0].invert #=> Boolean
    #   resp.route.spec.grpc_route.match.metadata[0].match.exact #=> String
    #   resp.route.spec.grpc_route.match.metadata[0].match.prefix #=> String
    #   resp.route.spec.grpc_route.match.metadata[0].match.range.end #=> Integer
    #   resp.route.spec.grpc_route.match.metadata[0].match.range.start #=> Integer
    #   resp.route.spec.grpc_route.match.metadata[0].match.regex #=> String
    #   resp.route.spec.grpc_route.match.metadata[0].match.suffix #=> String
    #   resp.route.spec.grpc_route.match.metadata[0].name #=> String
    #   resp.route.spec.grpc_route.match.method_name #=> String
    #   resp.route.spec.grpc_route.match.service_name #=> String
    #   resp.route.spec.grpc_route.retry_policy.grpc_retry_events #=> Array
    #   resp.route.spec.grpc_route.retry_policy.grpc_retry_events[0] #=> String, one of "cancelled", "deadline-exceeded", "internal", "resource-exhausted", "unavailable"
    #   resp.route.spec.grpc_route.retry_policy.http_retry_events #=> Array
    #   resp.route.spec.grpc_route.retry_policy.http_retry_events[0] #=> String
    #   resp.route.spec.grpc_route.retry_policy.max_retries #=> Integer
    #   resp.route.spec.grpc_route.retry_policy.per_retry_timeout.unit #=> String, one of "ms", "s"
    #   resp.route.spec.grpc_route.retry_policy.per_retry_timeout.value #=> Integer
    #   resp.route.spec.grpc_route.retry_policy.tcp_retry_events #=> Array
    #   resp.route.spec.grpc_route.retry_policy.tcp_retry_events[0] #=> String, one of "connection-error"
    #   resp.route.spec.grpc_route.timeout.idle.unit #=> String, one of "ms", "s"
    #   resp.route.spec.grpc_route.timeout.idle.value #=> Integer
    #   resp.route.spec.grpc_route.timeout.per_request.unit #=> String, one of "ms", "s"
    #   resp.route.spec.grpc_route.timeout.per_request.value #=> Integer
    #   resp.route.spec.http2_route.action.weighted_targets #=> Array
    #   resp.route.spec.http2_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.http2_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.spec.http2_route.match.headers #=> Array
    #   resp.route.spec.http2_route.match.headers[0].invert #=> Boolean
    #   resp.route.spec.http2_route.match.headers[0].match.exact #=> String
    #   resp.route.spec.http2_route.match.headers[0].match.prefix #=> String
    #   resp.route.spec.http2_route.match.headers[0].match.range.end #=> Integer
    #   resp.route.spec.http2_route.match.headers[0].match.range.start #=> Integer
    #   resp.route.spec.http2_route.match.headers[0].match.regex #=> String
    #   resp.route.spec.http2_route.match.headers[0].match.suffix #=> String
    #   resp.route.spec.http2_route.match.headers[0].name #=> String
    #   resp.route.spec.http2_route.match.method #=> String, one of "CONNECT", "DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT", "TRACE"
    #   resp.route.spec.http2_route.match.prefix #=> String
    #   resp.route.spec.http2_route.match.scheme #=> String, one of "http", "https"
    #   resp.route.spec.http2_route.retry_policy.http_retry_events #=> Array
    #   resp.route.spec.http2_route.retry_policy.http_retry_events[0] #=> String
    #   resp.route.spec.http2_route.retry_policy.max_retries #=> Integer
    #   resp.route.spec.http2_route.retry_policy.per_retry_timeout.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http2_route.retry_policy.per_retry_timeout.value #=> Integer
    #   resp.route.spec.http2_route.retry_policy.tcp_retry_events #=> Array
    #   resp.route.spec.http2_route.retry_policy.tcp_retry_events[0] #=> String, one of "connection-error"
    #   resp.route.spec.http2_route.timeout.idle.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http2_route.timeout.idle.value #=> Integer
    #   resp.route.spec.http2_route.timeout.per_request.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http2_route.timeout.per_request.value #=> Integer
    #   resp.route.spec.http_route.action.weighted_targets #=> Array
    #   resp.route.spec.http_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.http_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.spec.http_route.match.headers #=> Array
    #   resp.route.spec.http_route.match.headers[0].invert #=> Boolean
    #   resp.route.spec.http_route.match.headers[0].match.exact #=> String
    #   resp.route.spec.http_route.match.headers[0].match.prefix #=> String
    #   resp.route.spec.http_route.match.headers[0].match.range.end #=> Integer
    #   resp.route.spec.http_route.match.headers[0].match.range.start #=> Integer
    #   resp.route.spec.http_route.match.headers[0].match.regex #=> String
    #   resp.route.spec.http_route.match.headers[0].match.suffix #=> String
    #   resp.route.spec.http_route.match.headers[0].name #=> String
    #   resp.route.spec.http_route.match.method #=> String, one of "CONNECT", "DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT", "TRACE"
    #   resp.route.spec.http_route.match.prefix #=> String
    #   resp.route.spec.http_route.match.scheme #=> String, one of "http", "https"
    #   resp.route.spec.http_route.retry_policy.http_retry_events #=> Array
    #   resp.route.spec.http_route.retry_policy.http_retry_events[0] #=> String
    #   resp.route.spec.http_route.retry_policy.max_retries #=> Integer
    #   resp.route.spec.http_route.retry_policy.per_retry_timeout.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http_route.retry_policy.per_retry_timeout.value #=> Integer
    #   resp.route.spec.http_route.retry_policy.tcp_retry_events #=> Array
    #   resp.route.spec.http_route.retry_policy.tcp_retry_events[0] #=> String, one of "connection-error"
    #   resp.route.spec.http_route.timeout.idle.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http_route.timeout.idle.value #=> Integer
    #   resp.route.spec.http_route.timeout.per_request.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http_route.timeout.per_request.value #=> Integer
    #   resp.route.spec.priority #=> Integer
    #   resp.route.spec.tcp_route.action.weighted_targets #=> Array
    #   resp.route.spec.tcp_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.tcp_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.spec.tcp_route.timeout.idle.unit #=> String, one of "ms", "s"
    #   resp.route.spec.tcp_route.timeout.idle.value #=> Integer
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

    # Describes an existing virtual gateway.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh that the gateway route resides in.
    #
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #
    # @option params [required, String] :virtual_gateway_name
    #   The name of the virtual gateway to describe.
    #
    # @return [Types::DescribeVirtualGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVirtualGatewayOutput#virtual_gateway #virtual_gateway} => Types::VirtualGatewayData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_virtual_gateway({
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId",
    #     virtual_gateway_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_gateway.mesh_name #=> String
    #   resp.virtual_gateway.metadata.arn #=> String
    #   resp.virtual_gateway.metadata.created_at #=> Time
    #   resp.virtual_gateway.metadata.last_updated_at #=> Time
    #   resp.virtual_gateway.metadata.mesh_owner #=> String
    #   resp.virtual_gateway.metadata.resource_owner #=> String
    #   resp.virtual_gateway.metadata.uid #=> String
    #   resp.virtual_gateway.metadata.version #=> Integer
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.enforce #=> Boolean
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.ports #=> Array
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.ports[0] #=> Integer
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.trust.acm.certificate_authority_arns #=> Array
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.trust.acm.certificate_authority_arns[0] #=> String
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.trust.file.certificate_chain #=> String
    #   resp.virtual_gateway.spec.listeners #=> Array
    #   resp.virtual_gateway.spec.listeners[0].health_check.healthy_threshold #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].health_check.interval_millis #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].health_check.path #=> String
    #   resp.virtual_gateway.spec.listeners[0].health_check.port #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].health_check.protocol #=> String, one of "grpc", "http", "http2"
    #   resp.virtual_gateway.spec.listeners[0].health_check.timeout_millis #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].health_check.unhealthy_threshold #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].port_mapping.protocol #=> String, one of "grpc", "http", "http2"
    #   resp.virtual_gateway.spec.listeners[0].tls.certificate.acm.certificate_arn #=> String
    #   resp.virtual_gateway.spec.listeners[0].tls.certificate.file.certificate_chain #=> String
    #   resp.virtual_gateway.spec.listeners[0].tls.certificate.file.private_key #=> String
    #   resp.virtual_gateway.spec.listeners[0].tls.mode #=> String, one of "DISABLED", "PERMISSIVE", "STRICT"
    #   resp.virtual_gateway.spec.logging.access_log.file.path #=> String
    #   resp.virtual_gateway.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.virtual_gateway.virtual_gateway_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/DescribeVirtualGateway AWS API Documentation
    #
    # @overload describe_virtual_gateway(params = {})
    # @param [Hash] params ({})
    def describe_virtual_gateway(params = {}, options = {})
      req = build_request(:describe_virtual_gateway, params)
      req.send_request(options)
    end

    # Describes an existing virtual node.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh that the virtual node resides in.
    #
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
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
    #     mesh_owner: "AccountId",
    #     virtual_node_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_node.mesh_name #=> String
    #   resp.virtual_node.metadata.arn #=> String
    #   resp.virtual_node.metadata.created_at #=> Time
    #   resp.virtual_node.metadata.last_updated_at #=> Time
    #   resp.virtual_node.metadata.mesh_owner #=> String
    #   resp.virtual_node.metadata.resource_owner #=> String
    #   resp.virtual_node.metadata.uid #=> String
    #   resp.virtual_node.metadata.version #=> Integer
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.enforce #=> Boolean
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.ports #=> Array
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.ports[0] #=> Integer
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.validation.trust.acm.certificate_authority_arns #=> Array
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.validation.trust.acm.certificate_authority_arns[0] #=> String
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.validation.trust.file.certificate_chain #=> String
    #   resp.virtual_node.spec.backends #=> Array
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.enforce #=> Boolean
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.ports #=> Array
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.ports[0] #=> Integer
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.trust.acm.certificate_authority_arns #=> Array
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.trust.acm.certificate_authority_arns[0] #=> String
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.trust.file.certificate_chain #=> String
    #   resp.virtual_node.spec.backends[0].virtual_service.virtual_service_name #=> String
    #   resp.virtual_node.spec.listeners #=> Array
    #   resp.virtual_node.spec.listeners[0].health_check.healthy_threshold #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.interval_millis #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.path #=> String
    #   resp.virtual_node.spec.listeners[0].health_check.port #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.protocol #=> String, one of "grpc", "http", "http2", "tcp"
    #   resp.virtual_node.spec.listeners[0].health_check.timeout_millis #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.unhealthy_threshold #=> Integer
    #   resp.virtual_node.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.virtual_node.spec.listeners[0].port_mapping.protocol #=> String, one of "grpc", "http", "http2", "tcp"
    #   resp.virtual_node.spec.listeners[0].timeout.grpc.idle.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.grpc.idle.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.grpc.per_request.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.grpc.per_request.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.http.idle.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.http.idle.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.http.per_request.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.http.per_request.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.http2.idle.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.http2.idle.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.http2.per_request.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.http2.per_request.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.tcp.idle.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.tcp.idle.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].tls.certificate.acm.certificate_arn #=> String
    #   resp.virtual_node.spec.listeners[0].tls.certificate.file.certificate_chain #=> String
    #   resp.virtual_node.spec.listeners[0].tls.certificate.file.private_key #=> String
    #   resp.virtual_node.spec.listeners[0].tls.mode #=> String, one of "DISABLED", "PERMISSIVE", "STRICT"
    #   resp.virtual_node.spec.logging.access_log.file.path #=> String
    #   resp.virtual_node.spec.service_discovery.aws_cloud_map.attributes #=> Array
    #   resp.virtual_node.spec.service_discovery.aws_cloud_map.attributes[0].key #=> String
    #   resp.virtual_node.spec.service_discovery.aws_cloud_map.attributes[0].value #=> String
    #   resp.virtual_node.spec.service_discovery.aws_cloud_map.namespace_name #=> String
    #   resp.virtual_node.spec.service_discovery.aws_cloud_map.service_name #=> String
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
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
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
    #     mesh_owner: "AccountId",
    #     virtual_router_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_router.mesh_name #=> String
    #   resp.virtual_router.metadata.arn #=> String
    #   resp.virtual_router.metadata.created_at #=> Time
    #   resp.virtual_router.metadata.last_updated_at #=> Time
    #   resp.virtual_router.metadata.mesh_owner #=> String
    #   resp.virtual_router.metadata.resource_owner #=> String
    #   resp.virtual_router.metadata.uid #=> String
    #   resp.virtual_router.metadata.version #=> Integer
    #   resp.virtual_router.spec.listeners #=> Array
    #   resp.virtual_router.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.virtual_router.spec.listeners[0].port_mapping.protocol #=> String, one of "grpc", "http", "http2", "tcp"
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
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
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
    #     mesh_owner: "AccountId",
    #     virtual_service_name: "ServiceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_service.mesh_name #=> String
    #   resp.virtual_service.metadata.arn #=> String
    #   resp.virtual_service.metadata.created_at #=> Time
    #   resp.virtual_service.metadata.last_updated_at #=> Time
    #   resp.virtual_service.metadata.mesh_owner #=> String
    #   resp.virtual_service.metadata.resource_owner #=> String
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

    # Returns a list of existing gateway routes that are associated to a
    # virtual gateway.
    #
    # @option params [Integer] :limit
    #   The maximum number of results returned by `ListGatewayRoutes` in
    #   paginated output. When you use this parameter, `ListGatewayRoutes`
    #   returns only `limit` results in a single page along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another `ListGatewayRoutes` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   you don't use this parameter, `ListGatewayRoutes` returns up to 100
    #   results and a `nextToken` value if applicable.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh to list gateway routes in.
    #
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListGatewayRoutes` request where `limit` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    # @option params [required, String] :virtual_gateway_name
    #   The name of the virtual gateway to list gateway routes in.
    #
    # @return [Types::ListGatewayRoutesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGatewayRoutesOutput#gateway_routes #gateway_routes} => Array&lt;Types::GatewayRouteRef&gt;
    #   * {Types::ListGatewayRoutesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gateway_routes({
    #     limit: 1,
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId",
    #     next_token: "String",
    #     virtual_gateway_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_routes #=> Array
    #   resp.gateway_routes[0].arn #=> String
    #   resp.gateway_routes[0].created_at #=> Time
    #   resp.gateway_routes[0].gateway_route_name #=> String
    #   resp.gateway_routes[0].last_updated_at #=> Time
    #   resp.gateway_routes[0].mesh_name #=> String
    #   resp.gateway_routes[0].mesh_owner #=> String
    #   resp.gateway_routes[0].resource_owner #=> String
    #   resp.gateway_routes[0].version #=> Integer
    #   resp.gateway_routes[0].virtual_gateway_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListGatewayRoutes AWS API Documentation
    #
    # @overload list_gateway_routes(params = {})
    # @param [Hash] params ({})
    def list_gateway_routes(params = {}, options = {})
      req = build_request(:list_gateway_routes, params)
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   resp.meshes[0].created_at #=> Time
    #   resp.meshes[0].last_updated_at #=> Time
    #   resp.meshes[0].mesh_name #=> String
    #   resp.meshes[0].mesh_owner #=> String
    #   resp.meshes[0].resource_owner #=> String
    #   resp.meshes[0].version #=> Integer
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
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_routes({
    #     limit: 1,
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId",
    #     next_token: "String",
    #     virtual_router_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.routes #=> Array
    #   resp.routes[0].arn #=> String
    #   resp.routes[0].created_at #=> Time
    #   resp.routes[0].last_updated_at #=> Time
    #   resp.routes[0].mesh_name #=> String
    #   resp.routes[0].mesh_owner #=> String
    #   resp.routes[0].resource_owner #=> String
    #   resp.routes[0].route_name #=> String
    #   resp.routes[0].version #=> Integer
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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

    # Returns a list of existing virtual gateways in a service mesh.
    #
    # @option params [Integer] :limit
    #   The maximum number of results returned by `ListVirtualGateways` in
    #   paginated output. When you use this parameter, `ListVirtualGateways`
    #   returns only `limit` results in a single page along with a `nextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another `ListVirtualGateways` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   you don't use this parameter, `ListVirtualGateways` returns up to 100
    #   results and a `nextToken` value if applicable.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh to list virtual gateways in.
    #
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListVirtualGateways` request where `limit` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    # @return [Types::ListVirtualGatewaysOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVirtualGatewaysOutput#next_token #next_token} => String
    #   * {Types::ListVirtualGatewaysOutput#virtual_gateways #virtual_gateways} => Array&lt;Types::VirtualGatewayRef&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_virtual_gateways({
    #     limit: 1,
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId",
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.virtual_gateways #=> Array
    #   resp.virtual_gateways[0].arn #=> String
    #   resp.virtual_gateways[0].created_at #=> Time
    #   resp.virtual_gateways[0].last_updated_at #=> Time
    #   resp.virtual_gateways[0].mesh_name #=> String
    #   resp.virtual_gateways[0].mesh_owner #=> String
    #   resp.virtual_gateways[0].resource_owner #=> String
    #   resp.virtual_gateways[0].version #=> Integer
    #   resp.virtual_gateways[0].virtual_gateway_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/ListVirtualGateways AWS API Documentation
    #
    # @overload list_virtual_gateways(params = {})
    # @param [Hash] params ({})
    def list_virtual_gateways(params = {}, options = {})
      req = build_request(:list_virtual_gateways, params)
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
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_virtual_nodes({
    #     limit: 1,
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId",
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.virtual_nodes #=> Array
    #   resp.virtual_nodes[0].arn #=> String
    #   resp.virtual_nodes[0].created_at #=> Time
    #   resp.virtual_nodes[0].last_updated_at #=> Time
    #   resp.virtual_nodes[0].mesh_name #=> String
    #   resp.virtual_nodes[0].mesh_owner #=> String
    #   resp.virtual_nodes[0].resource_owner #=> String
    #   resp.virtual_nodes[0].version #=> Integer
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
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_virtual_routers({
    #     limit: 1,
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId",
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.virtual_routers #=> Array
    #   resp.virtual_routers[0].arn #=> String
    #   resp.virtual_routers[0].created_at #=> Time
    #   resp.virtual_routers[0].last_updated_at #=> Time
    #   resp.virtual_routers[0].mesh_name #=> String
    #   resp.virtual_routers[0].mesh_owner #=> String
    #   resp.virtual_routers[0].resource_owner #=> String
    #   resp.virtual_routers[0].version #=> Integer
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
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_virtual_services({
    #     limit: 1,
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId",
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.virtual_services #=> Array
    #   resp.virtual_services[0].arn #=> String
    #   resp.virtual_services[0].created_at #=> Time
    #   resp.virtual_services[0].last_updated_at #=> Time
    #   resp.virtual_services[0].mesh_name #=> String
    #   resp.virtual_services[0].mesh_owner #=> String
    #   resp.virtual_services[0].resource_owner #=> String
    #   resp.virtual_services[0].version #=> Integer
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

    # Updates an existing gateway route that is associated to a specified
    # virtual gateway in a service mesh.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :gateway_route_name
    #   The name of the gateway route to update.
    #
    # @option params [required, String] :mesh_name
    #   The name of the service mesh that the gateway route resides in.
    #
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #
    # @option params [required, Types::GatewayRouteSpec] :spec
    #   The new gateway route specification to apply. This overwrites the
    #   existing data.
    #
    # @option params [required, String] :virtual_gateway_name
    #   The name of the virtual gateway that the gateway route is associated
    #   with.
    #
    # @return [Types::UpdateGatewayRouteOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGatewayRouteOutput#gateway_route #gateway_route} => Types::GatewayRouteData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_route({
    #     client_token: "String",
    #     gateway_route_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId",
    #     spec: { # required
    #       grpc_route: {
    #         action: { # required
    #           target: { # required
    #             virtual_service: { # required
    #               virtual_service_name: "ResourceName", # required
    #             },
    #           },
    #         },
    #         match: { # required
    #           service_name: "ServiceName",
    #         },
    #       },
    #       http2_route: {
    #         action: { # required
    #           target: { # required
    #             virtual_service: { # required
    #               virtual_service_name: "ResourceName", # required
    #             },
    #           },
    #         },
    #         match: { # required
    #           prefix: "String", # required
    #         },
    #       },
    #       http_route: {
    #         action: { # required
    #           target: { # required
    #             virtual_service: { # required
    #               virtual_service_name: "ResourceName", # required
    #             },
    #           },
    #         },
    #         match: { # required
    #           prefix: "String", # required
    #         },
    #       },
    #     },
    #     virtual_gateway_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_route.gateway_route_name #=> String
    #   resp.gateway_route.mesh_name #=> String
    #   resp.gateway_route.metadata.arn #=> String
    #   resp.gateway_route.metadata.created_at #=> Time
    #   resp.gateway_route.metadata.last_updated_at #=> Time
    #   resp.gateway_route.metadata.mesh_owner #=> String
    #   resp.gateway_route.metadata.resource_owner #=> String
    #   resp.gateway_route.metadata.uid #=> String
    #   resp.gateway_route.metadata.version #=> Integer
    #   resp.gateway_route.spec.grpc_route.action.target.virtual_service.virtual_service_name #=> String
    #   resp.gateway_route.spec.grpc_route.match.service_name #=> String
    #   resp.gateway_route.spec.http2_route.action.target.virtual_service.virtual_service_name #=> String
    #   resp.gateway_route.spec.http2_route.match.prefix #=> String
    #   resp.gateway_route.spec.http_route.action.target.virtual_service.virtual_service_name #=> String
    #   resp.gateway_route.spec.http_route.match.prefix #=> String
    #   resp.gateway_route.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.gateway_route.virtual_gateway_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UpdateGatewayRoute AWS API Documentation
    #
    # @overload update_gateway_route(params = {})
    # @param [Hash] params ({})
    def update_gateway_route(params = {}, options = {})
      req = build_request(:update_gateway_route, params)
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
    #   resp.mesh.metadata.mesh_owner #=> String
    #   resp.mesh.metadata.resource_owner #=> String
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
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
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
    #     mesh_owner: "AccountId",
    #     route_name: "ResourceName", # required
    #     spec: { # required
    #       grpc_route: {
    #         action: { # required
    #           weighted_targets: [ # required
    #             {
    #               virtual_node: "ResourceName", # required
    #               weight: 1, # required
    #             },
    #           ],
    #         },
    #         match: { # required
    #           metadata: [
    #             {
    #               invert: false,
    #               match: {
    #                 exact: "HeaderMatch",
    #                 prefix: "HeaderMatch",
    #                 range: {
    #                   end: 1, # required
    #                   start: 1, # required
    #                 },
    #                 regex: "HeaderMatch",
    #                 suffix: "HeaderMatch",
    #               },
    #               name: "HeaderName", # required
    #             },
    #           ],
    #           method_name: "MethodName",
    #           service_name: "ServiceName",
    #         },
    #         retry_policy: {
    #           grpc_retry_events: ["cancelled"], # accepts cancelled, deadline-exceeded, internal, resource-exhausted, unavailable
    #           http_retry_events: ["HttpRetryPolicyEvent"],
    #           max_retries: 1, # required
    #           per_retry_timeout: { # required
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #           tcp_retry_events: ["connection-error"], # accepts connection-error
    #         },
    #         timeout: {
    #           idle: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #           per_request: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #         },
    #       },
    #       http2_route: {
    #         action: { # required
    #           weighted_targets: [ # required
    #             {
    #               virtual_node: "ResourceName", # required
    #               weight: 1, # required
    #             },
    #           ],
    #         },
    #         match: { # required
    #           headers: [
    #             {
    #               invert: false,
    #               match: {
    #                 exact: "HeaderMatch",
    #                 prefix: "HeaderMatch",
    #                 range: {
    #                   end: 1, # required
    #                   start: 1, # required
    #                 },
    #                 regex: "HeaderMatch",
    #                 suffix: "HeaderMatch",
    #               },
    #               name: "HeaderName", # required
    #             },
    #           ],
    #           method: "CONNECT", # accepts CONNECT, DELETE, GET, HEAD, OPTIONS, PATCH, POST, PUT, TRACE
    #           prefix: "String", # required
    #           scheme: "http", # accepts http, https
    #         },
    #         retry_policy: {
    #           http_retry_events: ["HttpRetryPolicyEvent"],
    #           max_retries: 1, # required
    #           per_retry_timeout: { # required
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #           tcp_retry_events: ["connection-error"], # accepts connection-error
    #         },
    #         timeout: {
    #           idle: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #           per_request: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #         },
    #       },
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
    #           headers: [
    #             {
    #               invert: false,
    #               match: {
    #                 exact: "HeaderMatch",
    #                 prefix: "HeaderMatch",
    #                 range: {
    #                   end: 1, # required
    #                   start: 1, # required
    #                 },
    #                 regex: "HeaderMatch",
    #                 suffix: "HeaderMatch",
    #               },
    #               name: "HeaderName", # required
    #             },
    #           ],
    #           method: "CONNECT", # accepts CONNECT, DELETE, GET, HEAD, OPTIONS, PATCH, POST, PUT, TRACE
    #           prefix: "String", # required
    #           scheme: "http", # accepts http, https
    #         },
    #         retry_policy: {
    #           http_retry_events: ["HttpRetryPolicyEvent"],
    #           max_retries: 1, # required
    #           per_retry_timeout: { # required
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #           tcp_retry_events: ["connection-error"], # accepts connection-error
    #         },
    #         timeout: {
    #           idle: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #           per_request: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
    #         },
    #       },
    #       priority: 1,
    #       tcp_route: {
    #         action: { # required
    #           weighted_targets: [ # required
    #             {
    #               virtual_node: "ResourceName", # required
    #               weight: 1, # required
    #             },
    #           ],
    #         },
    #         timeout: {
    #           idle: {
    #             unit: "ms", # accepts ms, s
    #             value: 1,
    #           },
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
    #   resp.route.metadata.mesh_owner #=> String
    #   resp.route.metadata.resource_owner #=> String
    #   resp.route.metadata.uid #=> String
    #   resp.route.metadata.version #=> Integer
    #   resp.route.route_name #=> String
    #   resp.route.spec.grpc_route.action.weighted_targets #=> Array
    #   resp.route.spec.grpc_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.grpc_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.spec.grpc_route.match.metadata #=> Array
    #   resp.route.spec.grpc_route.match.metadata[0].invert #=> Boolean
    #   resp.route.spec.grpc_route.match.metadata[0].match.exact #=> String
    #   resp.route.spec.grpc_route.match.metadata[0].match.prefix #=> String
    #   resp.route.spec.grpc_route.match.metadata[0].match.range.end #=> Integer
    #   resp.route.spec.grpc_route.match.metadata[0].match.range.start #=> Integer
    #   resp.route.spec.grpc_route.match.metadata[0].match.regex #=> String
    #   resp.route.spec.grpc_route.match.metadata[0].match.suffix #=> String
    #   resp.route.spec.grpc_route.match.metadata[0].name #=> String
    #   resp.route.spec.grpc_route.match.method_name #=> String
    #   resp.route.spec.grpc_route.match.service_name #=> String
    #   resp.route.spec.grpc_route.retry_policy.grpc_retry_events #=> Array
    #   resp.route.spec.grpc_route.retry_policy.grpc_retry_events[0] #=> String, one of "cancelled", "deadline-exceeded", "internal", "resource-exhausted", "unavailable"
    #   resp.route.spec.grpc_route.retry_policy.http_retry_events #=> Array
    #   resp.route.spec.grpc_route.retry_policy.http_retry_events[0] #=> String
    #   resp.route.spec.grpc_route.retry_policy.max_retries #=> Integer
    #   resp.route.spec.grpc_route.retry_policy.per_retry_timeout.unit #=> String, one of "ms", "s"
    #   resp.route.spec.grpc_route.retry_policy.per_retry_timeout.value #=> Integer
    #   resp.route.spec.grpc_route.retry_policy.tcp_retry_events #=> Array
    #   resp.route.spec.grpc_route.retry_policy.tcp_retry_events[0] #=> String, one of "connection-error"
    #   resp.route.spec.grpc_route.timeout.idle.unit #=> String, one of "ms", "s"
    #   resp.route.spec.grpc_route.timeout.idle.value #=> Integer
    #   resp.route.spec.grpc_route.timeout.per_request.unit #=> String, one of "ms", "s"
    #   resp.route.spec.grpc_route.timeout.per_request.value #=> Integer
    #   resp.route.spec.http2_route.action.weighted_targets #=> Array
    #   resp.route.spec.http2_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.http2_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.spec.http2_route.match.headers #=> Array
    #   resp.route.spec.http2_route.match.headers[0].invert #=> Boolean
    #   resp.route.spec.http2_route.match.headers[0].match.exact #=> String
    #   resp.route.spec.http2_route.match.headers[0].match.prefix #=> String
    #   resp.route.spec.http2_route.match.headers[0].match.range.end #=> Integer
    #   resp.route.spec.http2_route.match.headers[0].match.range.start #=> Integer
    #   resp.route.spec.http2_route.match.headers[0].match.regex #=> String
    #   resp.route.spec.http2_route.match.headers[0].match.suffix #=> String
    #   resp.route.spec.http2_route.match.headers[0].name #=> String
    #   resp.route.spec.http2_route.match.method #=> String, one of "CONNECT", "DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT", "TRACE"
    #   resp.route.spec.http2_route.match.prefix #=> String
    #   resp.route.spec.http2_route.match.scheme #=> String, one of "http", "https"
    #   resp.route.spec.http2_route.retry_policy.http_retry_events #=> Array
    #   resp.route.spec.http2_route.retry_policy.http_retry_events[0] #=> String
    #   resp.route.spec.http2_route.retry_policy.max_retries #=> Integer
    #   resp.route.spec.http2_route.retry_policy.per_retry_timeout.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http2_route.retry_policy.per_retry_timeout.value #=> Integer
    #   resp.route.spec.http2_route.retry_policy.tcp_retry_events #=> Array
    #   resp.route.spec.http2_route.retry_policy.tcp_retry_events[0] #=> String, one of "connection-error"
    #   resp.route.spec.http2_route.timeout.idle.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http2_route.timeout.idle.value #=> Integer
    #   resp.route.spec.http2_route.timeout.per_request.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http2_route.timeout.per_request.value #=> Integer
    #   resp.route.spec.http_route.action.weighted_targets #=> Array
    #   resp.route.spec.http_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.http_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.spec.http_route.match.headers #=> Array
    #   resp.route.spec.http_route.match.headers[0].invert #=> Boolean
    #   resp.route.spec.http_route.match.headers[0].match.exact #=> String
    #   resp.route.spec.http_route.match.headers[0].match.prefix #=> String
    #   resp.route.spec.http_route.match.headers[0].match.range.end #=> Integer
    #   resp.route.spec.http_route.match.headers[0].match.range.start #=> Integer
    #   resp.route.spec.http_route.match.headers[0].match.regex #=> String
    #   resp.route.spec.http_route.match.headers[0].match.suffix #=> String
    #   resp.route.spec.http_route.match.headers[0].name #=> String
    #   resp.route.spec.http_route.match.method #=> String, one of "CONNECT", "DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT", "TRACE"
    #   resp.route.spec.http_route.match.prefix #=> String
    #   resp.route.spec.http_route.match.scheme #=> String, one of "http", "https"
    #   resp.route.spec.http_route.retry_policy.http_retry_events #=> Array
    #   resp.route.spec.http_route.retry_policy.http_retry_events[0] #=> String
    #   resp.route.spec.http_route.retry_policy.max_retries #=> Integer
    #   resp.route.spec.http_route.retry_policy.per_retry_timeout.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http_route.retry_policy.per_retry_timeout.value #=> Integer
    #   resp.route.spec.http_route.retry_policy.tcp_retry_events #=> Array
    #   resp.route.spec.http_route.retry_policy.tcp_retry_events[0] #=> String, one of "connection-error"
    #   resp.route.spec.http_route.timeout.idle.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http_route.timeout.idle.value #=> Integer
    #   resp.route.spec.http_route.timeout.per_request.unit #=> String, one of "ms", "s"
    #   resp.route.spec.http_route.timeout.per_request.value #=> Integer
    #   resp.route.spec.priority #=> Integer
    #   resp.route.spec.tcp_route.action.weighted_targets #=> Array
    #   resp.route.spec.tcp_route.action.weighted_targets[0].virtual_node #=> String
    #   resp.route.spec.tcp_route.action.weighted_targets[0].weight #=> Integer
    #   resp.route.spec.tcp_route.timeout.idle.unit #=> String, one of "ms", "s"
    #   resp.route.spec.tcp_route.timeout.idle.value #=> Integer
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

    # Updates an existing virtual gateway in a specified service mesh.
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
    #   The name of the service mesh that the virtual gateway resides in.
    #
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
    #
    # @option params [required, Types::VirtualGatewaySpec] :spec
    #   The new virtual gateway specification to apply. This overwrites the
    #   existing data.
    #
    # @option params [required, String] :virtual_gateway_name
    #   The name of the virtual gateway to update.
    #
    # @return [Types::UpdateVirtualGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVirtualGatewayOutput#virtual_gateway #virtual_gateway} => Types::VirtualGatewayData
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_virtual_gateway({
    #     client_token: "String",
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId",
    #     spec: { # required
    #       backend_defaults: {
    #         client_policy: {
    #           tls: {
    #             enforce: false,
    #             ports: [1],
    #             validation: { # required
    #               trust: { # required
    #                 acm: {
    #                   certificate_authority_arns: ["Arn"], # required
    #                 },
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                 },
    #               },
    #             },
    #           },
    #         },
    #       },
    #       listeners: [ # required
    #         {
    #           health_check: {
    #             healthy_threshold: 1, # required
    #             interval_millis: 1, # required
    #             path: "String",
    #             port: 1,
    #             protocol: "grpc", # required, accepts grpc, http, http2
    #             timeout_millis: 1, # required
    #             unhealthy_threshold: 1, # required
    #           },
    #           port_mapping: { # required
    #             port: 1, # required
    #             protocol: "grpc", # required, accepts grpc, http, http2
    #           },
    #           tls: {
    #             certificate: { # required
    #               acm: {
    #                 certificate_arn: "Arn", # required
    #               },
    #               file: {
    #                 certificate_chain: "FilePath", # required
    #                 private_key: "FilePath", # required
    #               },
    #             },
    #             mode: "DISABLED", # required, accepts DISABLED, PERMISSIVE, STRICT
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
    #     },
    #     virtual_gateway_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.virtual_gateway.mesh_name #=> String
    #   resp.virtual_gateway.metadata.arn #=> String
    #   resp.virtual_gateway.metadata.created_at #=> Time
    #   resp.virtual_gateway.metadata.last_updated_at #=> Time
    #   resp.virtual_gateway.metadata.mesh_owner #=> String
    #   resp.virtual_gateway.metadata.resource_owner #=> String
    #   resp.virtual_gateway.metadata.uid #=> String
    #   resp.virtual_gateway.metadata.version #=> Integer
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.enforce #=> Boolean
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.ports #=> Array
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.ports[0] #=> Integer
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.trust.acm.certificate_authority_arns #=> Array
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.trust.acm.certificate_authority_arns[0] #=> String
    #   resp.virtual_gateway.spec.backend_defaults.client_policy.tls.validation.trust.file.certificate_chain #=> String
    #   resp.virtual_gateway.spec.listeners #=> Array
    #   resp.virtual_gateway.spec.listeners[0].health_check.healthy_threshold #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].health_check.interval_millis #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].health_check.path #=> String
    #   resp.virtual_gateway.spec.listeners[0].health_check.port #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].health_check.protocol #=> String, one of "grpc", "http", "http2"
    #   resp.virtual_gateway.spec.listeners[0].health_check.timeout_millis #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].health_check.unhealthy_threshold #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.virtual_gateway.spec.listeners[0].port_mapping.protocol #=> String, one of "grpc", "http", "http2"
    #   resp.virtual_gateway.spec.listeners[0].tls.certificate.acm.certificate_arn #=> String
    #   resp.virtual_gateway.spec.listeners[0].tls.certificate.file.certificate_chain #=> String
    #   resp.virtual_gateway.spec.listeners[0].tls.certificate.file.private_key #=> String
    #   resp.virtual_gateway.spec.listeners[0].tls.mode #=> String, one of "DISABLED", "PERMISSIVE", "STRICT"
    #   resp.virtual_gateway.spec.logging.access_log.file.path #=> String
    #   resp.virtual_gateway.status.status #=> String, one of "ACTIVE", "DELETED", "INACTIVE"
    #   resp.virtual_gateway.virtual_gateway_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25/UpdateVirtualGateway AWS API Documentation
    #
    # @overload update_virtual_gateway(params = {})
    # @param [Hash] params ({})
    def update_virtual_gateway(params = {}, options = {})
      req = build_request(:update_virtual_gateway, params)
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
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
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
    #     mesh_owner: "AccountId",
    #     spec: { # required
    #       backend_defaults: {
    #         client_policy: {
    #           tls: {
    #             enforce: false,
    #             ports: [1],
    #             validation: { # required
    #               trust: { # required
    #                 acm: {
    #                   certificate_authority_arns: ["Arn"], # required
    #                 },
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                 },
    #               },
    #             },
    #           },
    #         },
    #       },
    #       backends: [
    #         {
    #           virtual_service: {
    #             client_policy: {
    #               tls: {
    #                 enforce: false,
    #                 ports: [1],
    #                 validation: { # required
    #                   trust: { # required
    #                     acm: {
    #                       certificate_authority_arns: ["Arn"], # required
    #                     },
    #                     file: {
    #                       certificate_chain: "FilePath", # required
    #                     },
    #                   },
    #                 },
    #               },
    #             },
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
    #             protocol: "grpc", # required, accepts grpc, http, http2, tcp
    #             timeout_millis: 1, # required
    #             unhealthy_threshold: 1, # required
    #           },
    #           port_mapping: { # required
    #             port: 1, # required
    #             protocol: "grpc", # required, accepts grpc, http, http2, tcp
    #           },
    #           timeout: {
    #             grpc: {
    #               idle: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #               per_request: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #             },
    #             http: {
    #               idle: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #               per_request: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #             },
    #             http2: {
    #               idle: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #               per_request: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #             },
    #             tcp: {
    #               idle: {
    #                 unit: "ms", # accepts ms, s
    #                 value: 1,
    #               },
    #             },
    #           },
    #           tls: {
    #             certificate: { # required
    #               acm: {
    #                 certificate_arn: "Arn", # required
    #               },
    #               file: {
    #                 certificate_chain: "FilePath", # required
    #                 private_key: "FilePath", # required
    #               },
    #             },
    #             mode: "DISABLED", # required, accepts DISABLED, PERMISSIVE, STRICT
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
    #         aws_cloud_map: {
    #           attributes: [
    #             {
    #               key: "AwsCloudMapInstanceAttributeKey", # required
    #               value: "AwsCloudMapInstanceAttributeValue", # required
    #             },
    #           ],
    #           namespace_name: "AwsCloudMapName", # required
    #           service_name: "AwsCloudMapName", # required
    #         },
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
    #   resp.virtual_node.metadata.mesh_owner #=> String
    #   resp.virtual_node.metadata.resource_owner #=> String
    #   resp.virtual_node.metadata.uid #=> String
    #   resp.virtual_node.metadata.version #=> Integer
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.enforce #=> Boolean
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.ports #=> Array
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.ports[0] #=> Integer
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.validation.trust.acm.certificate_authority_arns #=> Array
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.validation.trust.acm.certificate_authority_arns[0] #=> String
    #   resp.virtual_node.spec.backend_defaults.client_policy.tls.validation.trust.file.certificate_chain #=> String
    #   resp.virtual_node.spec.backends #=> Array
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.enforce #=> Boolean
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.ports #=> Array
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.ports[0] #=> Integer
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.trust.acm.certificate_authority_arns #=> Array
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.trust.acm.certificate_authority_arns[0] #=> String
    #   resp.virtual_node.spec.backends[0].virtual_service.client_policy.tls.validation.trust.file.certificate_chain #=> String
    #   resp.virtual_node.spec.backends[0].virtual_service.virtual_service_name #=> String
    #   resp.virtual_node.spec.listeners #=> Array
    #   resp.virtual_node.spec.listeners[0].health_check.healthy_threshold #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.interval_millis #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.path #=> String
    #   resp.virtual_node.spec.listeners[0].health_check.port #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.protocol #=> String, one of "grpc", "http", "http2", "tcp"
    #   resp.virtual_node.spec.listeners[0].health_check.timeout_millis #=> Integer
    #   resp.virtual_node.spec.listeners[0].health_check.unhealthy_threshold #=> Integer
    #   resp.virtual_node.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.virtual_node.spec.listeners[0].port_mapping.protocol #=> String, one of "grpc", "http", "http2", "tcp"
    #   resp.virtual_node.spec.listeners[0].timeout.grpc.idle.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.grpc.idle.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.grpc.per_request.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.grpc.per_request.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.http.idle.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.http.idle.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.http.per_request.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.http.per_request.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.http2.idle.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.http2.idle.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.http2.per_request.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.http2.per_request.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].timeout.tcp.idle.unit #=> String, one of "ms", "s"
    #   resp.virtual_node.spec.listeners[0].timeout.tcp.idle.value #=> Integer
    #   resp.virtual_node.spec.listeners[0].tls.certificate.acm.certificate_arn #=> String
    #   resp.virtual_node.spec.listeners[0].tls.certificate.file.certificate_chain #=> String
    #   resp.virtual_node.spec.listeners[0].tls.certificate.file.private_key #=> String
    #   resp.virtual_node.spec.listeners[0].tls.mode #=> String, one of "DISABLED", "PERMISSIVE", "STRICT"
    #   resp.virtual_node.spec.logging.access_log.file.path #=> String
    #   resp.virtual_node.spec.service_discovery.aws_cloud_map.attributes #=> Array
    #   resp.virtual_node.spec.service_discovery.aws_cloud_map.attributes[0].key #=> String
    #   resp.virtual_node.spec.service_discovery.aws_cloud_map.attributes[0].value #=> String
    #   resp.virtual_node.spec.service_discovery.aws_cloud_map.namespace_name #=> String
    #   resp.virtual_node.spec.service_discovery.aws_cloud_map.service_name #=> String
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
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
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
    #     mesh_owner: "AccountId",
    #     spec: { # required
    #       listeners: [
    #         {
    #           port_mapping: { # required
    #             port: 1, # required
    #             protocol: "grpc", # required, accepts grpc, http, http2, tcp
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
    #   resp.virtual_router.metadata.mesh_owner #=> String
    #   resp.virtual_router.metadata.resource_owner #=> String
    #   resp.virtual_router.metadata.uid #=> String
    #   resp.virtual_router.metadata.version #=> Integer
    #   resp.virtual_router.spec.listeners #=> Array
    #   resp.virtual_router.spec.listeners[0].port_mapping.port #=> Integer
    #   resp.virtual_router.spec.listeners[0].port_mapping.protocol #=> String, one of "grpc", "http", "http2", "tcp"
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
    # @option params [String] :mesh_owner
    #   The AWS IAM account ID of the service mesh owner. If the account ID is
    #   not your own, then it's the ID of the account that shared the mesh
    #   with your account. For more information about mesh sharing, see
    #   [Working with shared meshes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html
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
    #     mesh_owner: "AccountId",
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
    #   resp.virtual_service.metadata.mesh_owner #=> String
    #   resp.virtual_service.metadata.resource_owner #=> String
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
      context[:gem_version] = '1.31.0'
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
