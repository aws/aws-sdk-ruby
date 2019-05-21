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

Aws::Plugins::GlobalConfiguration.add_identifier(:amplify)

module Aws::Amplify
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :amplify

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

    # Creates a new Amplify App.
    #
    # @option params [required, String] :name
    #   Name for the Amplify App
    #
    # @option params [String] :description
    #   Description for an Amplify App
    #
    # @option params [required, String] :repository
    #   Repository for an Amplify App
    #
    # @option params [required, String] :platform
    #   Platform / framework for an Amplify App
    #
    # @option params [String] :iam_service_role_arn
    #   AWS IAM service role for an Amplify App
    #
    # @option params [required, String] :oauth_token
    #   OAuth token for 3rd party source control system for an Amplify App,
    #   used to create webhook and read-only deploy key. OAuth token is not
    #   stored.
    #
    # @option params [Hash<String,String>] :environment_variables
    #   Environment variables map for an Amplify App.
    #
    # @option params [Boolean] :enable_branch_auto_build
    #   Enable the auto building of branches for an Amplify App.
    #
    # @option params [Boolean] :enable_basic_auth
    #   Enable Basic Authorization for an Amplify App, this will apply to all
    #   branches part of this App.
    #
    # @option params [String] :basic_auth_credentials
    #   Credentials for Basic Authorization for an Amplify App.
    #
    # @option params [Array<Types::CustomRule>] :custom_rules
    #   Custom rewrite / redirect rules for an Amplify App.
    #
    # @option params [Hash<String,String>] :tags
    #   Tag for an Amplify App
    #
    # @option params [String] :build_spec
    #   BuildSpec for an Amplify App
    #
    # @return [Types::CreateAppResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppResult#app #app} => Types::App
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app({
    #     name: "Name", # required
    #     description: "Description",
    #     repository: "Repository", # required
    #     platform: "IOS", # required, accepts IOS, ANDROID, WEB, REACT_NATIVE
    #     iam_service_role_arn: "ServiceRoleArn",
    #     oauth_token: "OauthToken", # required
    #     environment_variables: {
    #       "EnvKey" => "EnvValue",
    #     },
    #     enable_branch_auto_build: false,
    #     enable_basic_auth: false,
    #     basic_auth_credentials: "BasicAuthCredentials",
    #     custom_rules: [
    #       {
    #         source: "Source", # required
    #         target: "Target", # required
    #         status: "Status",
    #         condition: "Condition",
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     build_spec: "BuildSpec",
    #   })
    #
    # @example Response structure
    #
    #   resp.app.app_id #=> String
    #   resp.app.app_arn #=> String
    #   resp.app.name #=> String
    #   resp.app.tags #=> Hash
    #   resp.app.tags["TagKey"] #=> String
    #   resp.app.description #=> String
    #   resp.app.repository #=> String
    #   resp.app.platform #=> String, one of "IOS", "ANDROID", "WEB", "REACT_NATIVE"
    #   resp.app.create_time #=> Time
    #   resp.app.update_time #=> Time
    #   resp.app.iam_service_role_arn #=> String
    #   resp.app.environment_variables #=> Hash
    #   resp.app.environment_variables["EnvKey"] #=> String
    #   resp.app.default_domain #=> String
    #   resp.app.enable_branch_auto_build #=> Boolean
    #   resp.app.enable_basic_auth #=> Boolean
    #   resp.app.basic_auth_credentials #=> String
    #   resp.app.custom_rules #=> Array
    #   resp.app.custom_rules[0].source #=> String
    #   resp.app.custom_rules[0].target #=> String
    #   resp.app.custom_rules[0].status #=> String
    #   resp.app.custom_rules[0].condition #=> String
    #   resp.app.production_branch.last_deploy_time #=> Time
    #   resp.app.production_branch.status #=> String
    #   resp.app.production_branch.thumbnail_url #=> String
    #   resp.app.production_branch.branch_name #=> String
    #   resp.app.build_spec #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateApp AWS API Documentation
    #
    # @overload create_app(params = {})
    # @param [Hash] params ({})
    def create_app(params = {}, options = {})
      req = build_request(:create_app, params)
      req.send_request(options)
    end

    # Creates a new Branch for an Amplify App.
    #
    # @option params [required, String] :app_id
    #   Unique Id for an Amplify App.
    #
    # @option params [required, String] :branch_name
    #   Name for the branch.
    #
    # @option params [String] :description
    #   Description for the branch.
    #
    # @option params [String] :stage
    #   Stage for the branch.
    #
    # @option params [String] :framework
    #   Framework for the branch.
    #
    # @option params [Boolean] :enable_notification
    #   Enables notifications for the branch.
    #
    # @option params [Boolean] :enable_auto_build
    #   Enables auto building for the branch.
    #
    # @option params [Hash<String,String>] :environment_variables
    #   Environment Variables for the branch.
    #
    # @option params [String] :basic_auth_credentials
    #   Basic Authorization credentials for the branch.
    #
    # @option params [Boolean] :enable_basic_auth
    #   Enables Basic Auth for the branch.
    #
    # @option params [Hash<String,String>] :tags
    #   Tag for the branch.
    #
    # @option params [String] :build_spec
    #   BuildSpec for the branch.
    #
    # @option params [String] :ttl
    #   The content TTL for the website in seconds.
    #
    # @return [Types::CreateBranchResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBranchResult#branch #branch} => Types::Branch
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_branch({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     description: "Description",
    #     stage: "PRODUCTION", # accepts PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL
    #     framework: "Framework",
    #     enable_notification: false,
    #     enable_auto_build: false,
    #     environment_variables: {
    #       "EnvKey" => "EnvValue",
    #     },
    #     basic_auth_credentials: "BasicAuthCredentials",
    #     enable_basic_auth: false,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     build_spec: "BuildSpec",
    #     ttl: "TTL",
    #   })
    #
    # @example Response structure
    #
    #   resp.branch.branch_arn #=> String
    #   resp.branch.branch_name #=> String
    #   resp.branch.description #=> String
    #   resp.branch.tags #=> Hash
    #   resp.branch.tags["TagKey"] #=> String
    #   resp.branch.stage #=> String, one of "PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL"
    #   resp.branch.display_name #=> String
    #   resp.branch.enable_notification #=> Boolean
    #   resp.branch.create_time #=> Time
    #   resp.branch.update_time #=> Time
    #   resp.branch.environment_variables #=> Hash
    #   resp.branch.environment_variables["EnvKey"] #=> String
    #   resp.branch.enable_auto_build #=> Boolean
    #   resp.branch.custom_domains #=> Array
    #   resp.branch.custom_domains[0] #=> String
    #   resp.branch.framework #=> String
    #   resp.branch.active_job_id #=> String
    #   resp.branch.total_number_of_jobs #=> String
    #   resp.branch.enable_basic_auth #=> Boolean
    #   resp.branch.thumbnail_url #=> String
    #   resp.branch.basic_auth_credentials #=> String
    #   resp.branch.build_spec #=> String
    #   resp.branch.ttl #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateBranch AWS API Documentation
    #
    # @overload create_branch(params = {})
    # @param [Hash] params ({})
    def create_branch(params = {}, options = {})
      req = build_request(:create_branch, params)
      req.send_request(options)
    end

    # Create a new DomainAssociation on an App
    #
    # @option params [required, String] :app_id
    #   Unique Id for an Amplify App.
    #
    # @option params [required, String] :domain_name
    #   Domain name for the Domain Association.
    #
    # @option params [Boolean] :enable_auto_sub_domain
    #   Enables automated creation of Subdomains for branches.
    #
    # @option params [required, Array<Types::SubDomainSetting>] :sub_domain_settings
    #   Setting structure for the Subdomain.
    #
    # @return [Types::CreateDomainAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainAssociationResult#domain_association #domain_association} => Types::DomainAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain_association({
    #     app_id: "AppId", # required
    #     domain_name: "DomainName", # required
    #     enable_auto_sub_domain: false,
    #     sub_domain_settings: [ # required
    #       {
    #         prefix: "DomainPrefix", # required
    #         branch_name: "BranchName", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_association.domain_association_arn #=> String
    #   resp.domain_association.domain_name #=> String
    #   resp.domain_association.enable_auto_sub_domain #=> Boolean
    #   resp.domain_association.domain_status #=> String, one of "PENDING_VERIFICATION", "IN_PROGRESS", "AVAILABLE", "PENDING_DEPLOYMENT", "FAILED"
    #   resp.domain_association.status_reason #=> String
    #   resp.domain_association.certificate_verification_dns_record #=> String
    #   resp.domain_association.sub_domains #=> Array
    #   resp.domain_association.sub_domains[0].sub_domain_setting.prefix #=> String
    #   resp.domain_association.sub_domains[0].sub_domain_setting.branch_name #=> String
    #   resp.domain_association.sub_domains[0].verified #=> Boolean
    #   resp.domain_association.sub_domains[0].dns_record #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateDomainAssociation AWS API Documentation
    #
    # @overload create_domain_association(params = {})
    # @param [Hash] params ({})
    def create_domain_association(params = {}, options = {})
      req = build_request(:create_domain_association, params)
      req.send_request(options)
    end

    # Delete an existing Amplify App by appId.
    #
    # @option params [required, String] :app_id
    #   Unique Id for an Amplify App.
    #
    # @return [Types::DeleteAppResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAppResult#app #app} => Types::App
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app({
    #     app_id: "AppId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app.app_id #=> String
    #   resp.app.app_arn #=> String
    #   resp.app.name #=> String
    #   resp.app.tags #=> Hash
    #   resp.app.tags["TagKey"] #=> String
    #   resp.app.description #=> String
    #   resp.app.repository #=> String
    #   resp.app.platform #=> String, one of "IOS", "ANDROID", "WEB", "REACT_NATIVE"
    #   resp.app.create_time #=> Time
    #   resp.app.update_time #=> Time
    #   resp.app.iam_service_role_arn #=> String
    #   resp.app.environment_variables #=> Hash
    #   resp.app.environment_variables["EnvKey"] #=> String
    #   resp.app.default_domain #=> String
    #   resp.app.enable_branch_auto_build #=> Boolean
    #   resp.app.enable_basic_auth #=> Boolean
    #   resp.app.basic_auth_credentials #=> String
    #   resp.app.custom_rules #=> Array
    #   resp.app.custom_rules[0].source #=> String
    #   resp.app.custom_rules[0].target #=> String
    #   resp.app.custom_rules[0].status #=> String
    #   resp.app.custom_rules[0].condition #=> String
    #   resp.app.production_branch.last_deploy_time #=> Time
    #   resp.app.production_branch.status #=> String
    #   resp.app.production_branch.thumbnail_url #=> String
    #   resp.app.production_branch.branch_name #=> String
    #   resp.app.build_spec #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteApp AWS API Documentation
    #
    # @overload delete_app(params = {})
    # @param [Hash] params ({})
    def delete_app(params = {}, options = {})
      req = build_request(:delete_app, params)
      req.send_request(options)
    end

    # Deletes a branch for an Amplify App.
    #
    # @option params [required, String] :app_id
    #   Unique Id for an Amplify App.
    #
    # @option params [required, String] :branch_name
    #   Name for the branch.
    #
    # @return [Types::DeleteBranchResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBranchResult#branch #branch} => Types::Branch
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_branch({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.branch.branch_arn #=> String
    #   resp.branch.branch_name #=> String
    #   resp.branch.description #=> String
    #   resp.branch.tags #=> Hash
    #   resp.branch.tags["TagKey"] #=> String
    #   resp.branch.stage #=> String, one of "PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL"
    #   resp.branch.display_name #=> String
    #   resp.branch.enable_notification #=> Boolean
    #   resp.branch.create_time #=> Time
    #   resp.branch.update_time #=> Time
    #   resp.branch.environment_variables #=> Hash
    #   resp.branch.environment_variables["EnvKey"] #=> String
    #   resp.branch.enable_auto_build #=> Boolean
    #   resp.branch.custom_domains #=> Array
    #   resp.branch.custom_domains[0] #=> String
    #   resp.branch.framework #=> String
    #   resp.branch.active_job_id #=> String
    #   resp.branch.total_number_of_jobs #=> String
    #   resp.branch.enable_basic_auth #=> Boolean
    #   resp.branch.thumbnail_url #=> String
    #   resp.branch.basic_auth_credentials #=> String
    #   resp.branch.build_spec #=> String
    #   resp.branch.ttl #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteBranch AWS API Documentation
    #
    # @overload delete_branch(params = {})
    # @param [Hash] params ({})
    def delete_branch(params = {}, options = {})
      req = build_request(:delete_branch, params)
      req.send_request(options)
    end

    # Deletes a DomainAssociation.
    #
    # @option params [required, String] :app_id
    #   Unique Id for an Amplify App.
    #
    # @option params [required, String] :domain_name
    #   Name of the domain.
    #
    # @return [Types::DeleteDomainAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDomainAssociationResult#domain_association #domain_association} => Types::DomainAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain_association({
    #     app_id: "AppId", # required
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_association.domain_association_arn #=> String
    #   resp.domain_association.domain_name #=> String
    #   resp.domain_association.enable_auto_sub_domain #=> Boolean
    #   resp.domain_association.domain_status #=> String, one of "PENDING_VERIFICATION", "IN_PROGRESS", "AVAILABLE", "PENDING_DEPLOYMENT", "FAILED"
    #   resp.domain_association.status_reason #=> String
    #   resp.domain_association.certificate_verification_dns_record #=> String
    #   resp.domain_association.sub_domains #=> Array
    #   resp.domain_association.sub_domains[0].sub_domain_setting.prefix #=> String
    #   resp.domain_association.sub_domains[0].sub_domain_setting.branch_name #=> String
    #   resp.domain_association.sub_domains[0].verified #=> Boolean
    #   resp.domain_association.sub_domains[0].dns_record #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteDomainAssociation AWS API Documentation
    #
    # @overload delete_domain_association(params = {})
    # @param [Hash] params ({})
    def delete_domain_association(params = {}, options = {})
      req = build_request(:delete_domain_association, params)
      req.send_request(options)
    end

    # Delete a job, for an Amplify branch, part of Amplify App.
    #
    # @option params [required, String] :app_id
    #   Unique Id for an Amplify App.
    #
    # @option params [required, String] :branch_name
    #   Name for the branch, for the Job.
    #
    # @option params [required, String] :job_id
    #   Unique Id for the Job.
    #
    # @return [Types::DeleteJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteJobResult#job_summary #job_summary} => Types::JobSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_summary.job_arn #=> String
    #   resp.job_summary.job_id #=> String
    #   resp.job_summary.commit_id #=> String
    #   resp.job_summary.commit_message #=> String
    #   resp.job_summary.commit_time #=> Time
    #   resp.job_summary.start_time #=> Time
    #   resp.job_summary.status #=> String, one of "PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"
    #   resp.job_summary.end_time #=> Time
    #   resp.job_summary.job_type #=> String, one of "RELEASE", "RETRY", "WEB_HOOK"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteJob AWS API Documentation
    #
    # @overload delete_job(params = {})
    # @param [Hash] params ({})
    def delete_job(params = {}, options = {})
      req = build_request(:delete_job, params)
      req.send_request(options)
    end

    # Retrieves an existing Amplify App by appId.
    #
    # @option params [required, String] :app_id
    #   Unique Id for an Amplify App.
    #
    # @return [Types::GetAppResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAppResult#app #app} => Types::App
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app({
    #     app_id: "AppId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app.app_id #=> String
    #   resp.app.app_arn #=> String
    #   resp.app.name #=> String
    #   resp.app.tags #=> Hash
    #   resp.app.tags["TagKey"] #=> String
    #   resp.app.description #=> String
    #   resp.app.repository #=> String
    #   resp.app.platform #=> String, one of "IOS", "ANDROID", "WEB", "REACT_NATIVE"
    #   resp.app.create_time #=> Time
    #   resp.app.update_time #=> Time
    #   resp.app.iam_service_role_arn #=> String
    #   resp.app.environment_variables #=> Hash
    #   resp.app.environment_variables["EnvKey"] #=> String
    #   resp.app.default_domain #=> String
    #   resp.app.enable_branch_auto_build #=> Boolean
    #   resp.app.enable_basic_auth #=> Boolean
    #   resp.app.basic_auth_credentials #=> String
    #   resp.app.custom_rules #=> Array
    #   resp.app.custom_rules[0].source #=> String
    #   resp.app.custom_rules[0].target #=> String
    #   resp.app.custom_rules[0].status #=> String
    #   resp.app.custom_rules[0].condition #=> String
    #   resp.app.production_branch.last_deploy_time #=> Time
    #   resp.app.production_branch.status #=> String
    #   resp.app.production_branch.thumbnail_url #=> String
    #   resp.app.production_branch.branch_name #=> String
    #   resp.app.build_spec #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetApp AWS API Documentation
    #
    # @overload get_app(params = {})
    # @param [Hash] params ({})
    def get_app(params = {}, options = {})
      req = build_request(:get_app, params)
      req.send_request(options)
    end

    # Retrieves a branch for an Amplify App.
    #
    # @option params [required, String] :app_id
    #   Unique Id for an Amplify App.
    #
    # @option params [required, String] :branch_name
    #   Name for the branch.
    #
    # @return [Types::GetBranchResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBranchResult#branch #branch} => Types::Branch
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_branch({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.branch.branch_arn #=> String
    #   resp.branch.branch_name #=> String
    #   resp.branch.description #=> String
    #   resp.branch.tags #=> Hash
    #   resp.branch.tags["TagKey"] #=> String
    #   resp.branch.stage #=> String, one of "PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL"
    #   resp.branch.display_name #=> String
    #   resp.branch.enable_notification #=> Boolean
    #   resp.branch.create_time #=> Time
    #   resp.branch.update_time #=> Time
    #   resp.branch.environment_variables #=> Hash
    #   resp.branch.environment_variables["EnvKey"] #=> String
    #   resp.branch.enable_auto_build #=> Boolean
    #   resp.branch.custom_domains #=> Array
    #   resp.branch.custom_domains[0] #=> String
    #   resp.branch.framework #=> String
    #   resp.branch.active_job_id #=> String
    #   resp.branch.total_number_of_jobs #=> String
    #   resp.branch.enable_basic_auth #=> Boolean
    #   resp.branch.thumbnail_url #=> String
    #   resp.branch.basic_auth_credentials #=> String
    #   resp.branch.build_spec #=> String
    #   resp.branch.ttl #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetBranch AWS API Documentation
    #
    # @overload get_branch(params = {})
    # @param [Hash] params ({})
    def get_branch(params = {}, options = {})
      req = build_request(:get_branch, params)
      req.send_request(options)
    end

    # Retrieves domain info that corresponds to an appId and domainName.
    #
    # @option params [required, String] :app_id
    #   Unique Id for an Amplify App.
    #
    # @option params [required, String] :domain_name
    #   Name of the domain.
    #
    # @return [Types::GetDomainAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainAssociationResult#domain_association #domain_association} => Types::DomainAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_association({
    #     app_id: "AppId", # required
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_association.domain_association_arn #=> String
    #   resp.domain_association.domain_name #=> String
    #   resp.domain_association.enable_auto_sub_domain #=> Boolean
    #   resp.domain_association.domain_status #=> String, one of "PENDING_VERIFICATION", "IN_PROGRESS", "AVAILABLE", "PENDING_DEPLOYMENT", "FAILED"
    #   resp.domain_association.status_reason #=> String
    #   resp.domain_association.certificate_verification_dns_record #=> String
    #   resp.domain_association.sub_domains #=> Array
    #   resp.domain_association.sub_domains[0].sub_domain_setting.prefix #=> String
    #   resp.domain_association.sub_domains[0].sub_domain_setting.branch_name #=> String
    #   resp.domain_association.sub_domains[0].verified #=> Boolean
    #   resp.domain_association.sub_domains[0].dns_record #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetDomainAssociation AWS API Documentation
    #
    # @overload get_domain_association(params = {})
    # @param [Hash] params ({})
    def get_domain_association(params = {}, options = {})
      req = build_request(:get_domain_association, params)
      req.send_request(options)
    end

    # Get a job for a branch, part of an Amplify App.
    #
    # @option params [required, String] :app_id
    #   Unique Id for an Amplify App.
    #
    # @option params [required, String] :branch_name
    #   Name for the branch, for the Job.
    #
    # @option params [required, String] :job_id
    #   Unique Id for the Job.
    #
    # @return [Types::GetJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobResult#job #job} => Types::Job
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job.summary.job_arn #=> String
    #   resp.job.summary.job_id #=> String
    #   resp.job.summary.commit_id #=> String
    #   resp.job.summary.commit_message #=> String
    #   resp.job.summary.commit_time #=> Time
    #   resp.job.summary.start_time #=> Time
    #   resp.job.summary.status #=> String, one of "PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"
    #   resp.job.summary.end_time #=> Time
    #   resp.job.summary.job_type #=> String, one of "RELEASE", "RETRY", "WEB_HOOK"
    #   resp.job.steps #=> Array
    #   resp.job.steps[0].step_name #=> String
    #   resp.job.steps[0].start_time #=> Time
    #   resp.job.steps[0].status #=> String, one of "PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"
    #   resp.job.steps[0].end_time #=> Time
    #   resp.job.steps[0].log_url #=> String
    #   resp.job.steps[0].artifacts_url #=> String
    #   resp.job.steps[0].screenshots #=> Hash
    #   resp.job.steps[0].screenshots["ThumbnailName"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetJob AWS API Documentation
    #
    # @overload get_job(params = {})
    # @param [Hash] params ({})
    def get_job(params = {}, options = {})
      req = build_request(:get_job, params)
      req.send_request(options)
    end

    # Lists existing Amplify Apps.
    #
    # @option params [String] :next_token
    #   Pagination token. If non-null pagination token is returned in a
    #   result, then pass its value in another request to fetch more entries.
    #
    # @option params [Integer] :max_results
    #   Maximum number of records to list in a single response.
    #
    # @return [Types::ListAppsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppsResult#apps #apps} => Array&lt;Types::App&gt;
    #   * {Types::ListAppsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_apps({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.apps #=> Array
    #   resp.apps[0].app_id #=> String
    #   resp.apps[0].app_arn #=> String
    #   resp.apps[0].name #=> String
    #   resp.apps[0].tags #=> Hash
    #   resp.apps[0].tags["TagKey"] #=> String
    #   resp.apps[0].description #=> String
    #   resp.apps[0].repository #=> String
    #   resp.apps[0].platform #=> String, one of "IOS", "ANDROID", "WEB", "REACT_NATIVE"
    #   resp.apps[0].create_time #=> Time
    #   resp.apps[0].update_time #=> Time
    #   resp.apps[0].iam_service_role_arn #=> String
    #   resp.apps[0].environment_variables #=> Hash
    #   resp.apps[0].environment_variables["EnvKey"] #=> String
    #   resp.apps[0].default_domain #=> String
    #   resp.apps[0].enable_branch_auto_build #=> Boolean
    #   resp.apps[0].enable_basic_auth #=> Boolean
    #   resp.apps[0].basic_auth_credentials #=> String
    #   resp.apps[0].custom_rules #=> Array
    #   resp.apps[0].custom_rules[0].source #=> String
    #   resp.apps[0].custom_rules[0].target #=> String
    #   resp.apps[0].custom_rules[0].status #=> String
    #   resp.apps[0].custom_rules[0].condition #=> String
    #   resp.apps[0].production_branch.last_deploy_time #=> Time
    #   resp.apps[0].production_branch.status #=> String
    #   resp.apps[0].production_branch.thumbnail_url #=> String
    #   resp.apps[0].production_branch.branch_name #=> String
    #   resp.apps[0].build_spec #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListApps AWS API Documentation
    #
    # @overload list_apps(params = {})
    # @param [Hash] params ({})
    def list_apps(params = {}, options = {})
      req = build_request(:list_apps, params)
      req.send_request(options)
    end

    # Lists branches for an Amplify App.
    #
    # @option params [required, String] :app_id
    #   Unique Id for an Amplify App.
    #
    # @option params [String] :next_token
    #   Pagination token. Set to null to start listing branches from start. If
    #   a non-null pagination token is returned in a result, then pass its
    #   value in here to list more branches.
    #
    # @option params [Integer] :max_results
    #   Maximum number of records to list in a single response.
    #
    # @return [Types::ListBranchesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBranchesResult#branches #branches} => Array&lt;Types::Branch&gt;
    #   * {Types::ListBranchesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_branches({
    #     app_id: "AppId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.branches #=> Array
    #   resp.branches[0].branch_arn #=> String
    #   resp.branches[0].branch_name #=> String
    #   resp.branches[0].description #=> String
    #   resp.branches[0].tags #=> Hash
    #   resp.branches[0].tags["TagKey"] #=> String
    #   resp.branches[0].stage #=> String, one of "PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL"
    #   resp.branches[0].display_name #=> String
    #   resp.branches[0].enable_notification #=> Boolean
    #   resp.branches[0].create_time #=> Time
    #   resp.branches[0].update_time #=> Time
    #   resp.branches[0].environment_variables #=> Hash
    #   resp.branches[0].environment_variables["EnvKey"] #=> String
    #   resp.branches[0].enable_auto_build #=> Boolean
    #   resp.branches[0].custom_domains #=> Array
    #   resp.branches[0].custom_domains[0] #=> String
    #   resp.branches[0].framework #=> String
    #   resp.branches[0].active_job_id #=> String
    #   resp.branches[0].total_number_of_jobs #=> String
    #   resp.branches[0].enable_basic_auth #=> Boolean
    #   resp.branches[0].thumbnail_url #=> String
    #   resp.branches[0].basic_auth_credentials #=> String
    #   resp.branches[0].build_spec #=> String
    #   resp.branches[0].ttl #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListBranches AWS API Documentation
    #
    # @overload list_branches(params = {})
    # @param [Hash] params ({})
    def list_branches(params = {}, options = {})
      req = build_request(:list_branches, params)
      req.send_request(options)
    end

    # List domains with an app
    #
    # @option params [required, String] :app_id
    #   Unique Id for an Amplify App.
    #
    # @option params [String] :next_token
    #   Pagination token. Set to null to start listing Apps from start. If
    #   non-null pagination token is returned in a result, then pass its value
    #   in here to list more projects.
    #
    # @option params [Integer] :max_results
    #   Maximum number of records to list in a single response.
    #
    # @return [Types::ListDomainAssociationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainAssociationsResult#domain_associations #domain_associations} => Array&lt;Types::DomainAssociation&gt;
    #   * {Types::ListDomainAssociationsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domain_associations({
    #     app_id: "AppId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_associations #=> Array
    #   resp.domain_associations[0].domain_association_arn #=> String
    #   resp.domain_associations[0].domain_name #=> String
    #   resp.domain_associations[0].enable_auto_sub_domain #=> Boolean
    #   resp.domain_associations[0].domain_status #=> String, one of "PENDING_VERIFICATION", "IN_PROGRESS", "AVAILABLE", "PENDING_DEPLOYMENT", "FAILED"
    #   resp.domain_associations[0].status_reason #=> String
    #   resp.domain_associations[0].certificate_verification_dns_record #=> String
    #   resp.domain_associations[0].sub_domains #=> Array
    #   resp.domain_associations[0].sub_domains[0].sub_domain_setting.prefix #=> String
    #   resp.domain_associations[0].sub_domains[0].sub_domain_setting.branch_name #=> String
    #   resp.domain_associations[0].sub_domains[0].verified #=> Boolean
    #   resp.domain_associations[0].sub_domains[0].dns_record #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListDomainAssociations AWS API Documentation
    #
    # @overload list_domain_associations(params = {})
    # @param [Hash] params ({})
    def list_domain_associations(params = {}, options = {})
      req = build_request(:list_domain_associations, params)
      req.send_request(options)
    end

    # List Jobs for a branch, part of an Amplify App.
    #
    # @option params [required, String] :app_id
    #   Unique Id for an Amplify App.
    #
    # @option params [required, String] :branch_name
    #   Name for a branch.
    #
    # @option params [String] :next_token
    #   Pagination token. Set to null to start listing steps from start. If a
    #   non-null pagination token is returned in a result, then pass its value
    #   in here to list more steps.
    #
    # @option params [Integer] :max_results
    #   Maximum number of records to list in a single response.
    #
    # @return [Types::ListJobsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsResult#job_summaries #job_summaries} => Array&lt;Types::JobSummary&gt;
    #   * {Types::ListJobsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_summaries #=> Array
    #   resp.job_summaries[0].job_arn #=> String
    #   resp.job_summaries[0].job_id #=> String
    #   resp.job_summaries[0].commit_id #=> String
    #   resp.job_summaries[0].commit_message #=> String
    #   resp.job_summaries[0].commit_time #=> Time
    #   resp.job_summaries[0].start_time #=> Time
    #   resp.job_summaries[0].status #=> String, one of "PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"
    #   resp.job_summaries[0].end_time #=> Time
    #   resp.job_summaries[0].job_type #=> String, one of "RELEASE", "RETRY", "WEB_HOOK"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListJobs AWS API Documentation
    #
    # @overload list_jobs(params = {})
    # @param [Hash] params ({})
    def list_jobs(params = {}, options = {})
      req = build_request(:list_jobs, params)
      req.send_request(options)
    end

    # Starts a new job for a branch, part of an Amplify App.
    #
    # @option params [required, String] :app_id
    #   Unique Id for an Amplify App.
    #
    # @option params [required, String] :branch_name
    #   Name for the branch, for the Job.
    #
    # @option params [String] :job_id
    #   Unique Id for the Job.
    #
    # @option params [required, String] :job_type
    #   Type for the Job.
    #
    # @option params [String] :job_reason
    #   Reason for the Job.
    #
    # @option params [String] :commit_id
    #   Commit Id from 3rd party repository provider for the Job.
    #
    # @option params [String] :commit_message
    #   Commit message from 3rd party repository provider for the Job.
    #
    # @option params [Time,DateTime,Date,Integer,String] :commit_time
    #   Commit date / time for the Job.
    #
    # @return [Types::StartJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartJobResult#job_summary #job_summary} => Types::JobSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_job({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     job_id: "JobId",
    #     job_type: "RELEASE", # required, accepts RELEASE, RETRY, WEB_HOOK
    #     job_reason: "JobReason",
    #     commit_id: "CommitId",
    #     commit_message: "CommitMessage",
    #     commit_time: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_summary.job_arn #=> String
    #   resp.job_summary.job_id #=> String
    #   resp.job_summary.commit_id #=> String
    #   resp.job_summary.commit_message #=> String
    #   resp.job_summary.commit_time #=> Time
    #   resp.job_summary.start_time #=> Time
    #   resp.job_summary.status #=> String, one of "PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"
    #   resp.job_summary.end_time #=> Time
    #   resp.job_summary.job_type #=> String, one of "RELEASE", "RETRY", "WEB_HOOK"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/StartJob AWS API Documentation
    #
    # @overload start_job(params = {})
    # @param [Hash] params ({})
    def start_job(params = {}, options = {})
      req = build_request(:start_job, params)
      req.send_request(options)
    end

    # Stop a job that is in progress, for an Amplify branch, part of Amplify
    # App.
    #
    # @option params [required, String] :app_id
    #   Unique Id for an Amplify App.
    #
    # @option params [required, String] :branch_name
    #   Name for the branch, for the Job.
    #
    # @option params [required, String] :job_id
    #   Unique Id for the Job.
    #
    # @return [Types::StopJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopJobResult#job_summary #job_summary} => Types::JobSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_job({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_summary.job_arn #=> String
    #   resp.job_summary.job_id #=> String
    #   resp.job_summary.commit_id #=> String
    #   resp.job_summary.commit_message #=> String
    #   resp.job_summary.commit_time #=> Time
    #   resp.job_summary.start_time #=> Time
    #   resp.job_summary.status #=> String, one of "PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"
    #   resp.job_summary.end_time #=> Time
    #   resp.job_summary.job_type #=> String, one of "RELEASE", "RETRY", "WEB_HOOK"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/StopJob AWS API Documentation
    #
    # @overload stop_job(params = {})
    # @param [Hash] params ({})
    def stop_job(params = {}, options = {})
      req = build_request(:stop_job, params)
      req.send_request(options)
    end

    # Updates an existing Amplify App.
    #
    # @option params [required, String] :app_id
    #   Unique Id for an Amplify App.
    #
    # @option params [String] :name
    #   Name for an Amplify App.
    #
    # @option params [String] :description
    #   Description for an Amplify App.
    #
    # @option params [String] :platform
    #   Platform for an Amplify App.
    #
    # @option params [String] :iam_service_role_arn
    #   IAM service role for an Amplify App.
    #
    # @option params [Hash<String,String>] :environment_variables
    #   Environment Variables for an Amplify App.
    #
    # @option params [Boolean] :enable_branch_auto_build
    #   Enables branch auto-building for an Amplify App.
    #
    # @option params [Boolean] :enable_basic_auth
    #   Enables Basic Authorization for an Amplify App.
    #
    # @option params [String] :basic_auth_credentials
    #   Basic Authorization credentials for an Amplify App.
    #
    # @option params [Array<Types::CustomRule>] :custom_rules
    #   Custom redirect / rewrite rules for an Amplify App.
    #
    # @option params [String] :build_spec
    #   BuildSpec for an Amplify App.
    #
    # @return [Types::UpdateAppResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAppResult#app #app} => Types::App
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app({
    #     app_id: "AppId", # required
    #     name: "Name",
    #     description: "Description",
    #     platform: "IOS", # accepts IOS, ANDROID, WEB, REACT_NATIVE
    #     iam_service_role_arn: "ServiceRoleArn",
    #     environment_variables: {
    #       "EnvKey" => "EnvValue",
    #     },
    #     enable_branch_auto_build: false,
    #     enable_basic_auth: false,
    #     basic_auth_credentials: "BasicAuthCredentials",
    #     custom_rules: [
    #       {
    #         source: "Source", # required
    #         target: "Target", # required
    #         status: "Status",
    #         condition: "Condition",
    #       },
    #     ],
    #     build_spec: "BuildSpec",
    #   })
    #
    # @example Response structure
    #
    #   resp.app.app_id #=> String
    #   resp.app.app_arn #=> String
    #   resp.app.name #=> String
    #   resp.app.tags #=> Hash
    #   resp.app.tags["TagKey"] #=> String
    #   resp.app.description #=> String
    #   resp.app.repository #=> String
    #   resp.app.platform #=> String, one of "IOS", "ANDROID", "WEB", "REACT_NATIVE"
    #   resp.app.create_time #=> Time
    #   resp.app.update_time #=> Time
    #   resp.app.iam_service_role_arn #=> String
    #   resp.app.environment_variables #=> Hash
    #   resp.app.environment_variables["EnvKey"] #=> String
    #   resp.app.default_domain #=> String
    #   resp.app.enable_branch_auto_build #=> Boolean
    #   resp.app.enable_basic_auth #=> Boolean
    #   resp.app.basic_auth_credentials #=> String
    #   resp.app.custom_rules #=> Array
    #   resp.app.custom_rules[0].source #=> String
    #   resp.app.custom_rules[0].target #=> String
    #   resp.app.custom_rules[0].status #=> String
    #   resp.app.custom_rules[0].condition #=> String
    #   resp.app.production_branch.last_deploy_time #=> Time
    #   resp.app.production_branch.status #=> String
    #   resp.app.production_branch.thumbnail_url #=> String
    #   resp.app.production_branch.branch_name #=> String
    #   resp.app.build_spec #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UpdateApp AWS API Documentation
    #
    # @overload update_app(params = {})
    # @param [Hash] params ({})
    def update_app(params = {}, options = {})
      req = build_request(:update_app, params)
      req.send_request(options)
    end

    # Updates a branch for an Amplify App.
    #
    # @option params [required, String] :app_id
    #   Unique Id for an Amplify App.
    #
    # @option params [required, String] :branch_name
    #   Name for the branch.
    #
    # @option params [String] :description
    #   Description for the branch.
    #
    # @option params [String] :framework
    #   Framework for the branch.
    #
    # @option params [String] :stage
    #   Stage for the branch.
    #
    # @option params [Boolean] :enable_notification
    #   Enables notifications for the branch.
    #
    # @option params [Boolean] :enable_auto_build
    #   Enables auto building for the branch.
    #
    # @option params [Hash<String,String>] :environment_variables
    #   Environment Variables for the branch.
    #
    # @option params [String] :basic_auth_credentials
    #   Basic Authorization credentials for the branch.
    #
    # @option params [Boolean] :enable_basic_auth
    #   Enables Basic Auth for the branch.
    #
    # @option params [String] :build_spec
    #   BuildSpec for the branch.
    #
    # @option params [String] :ttl
    #   The content TTL for the website in seconds.
    #
    # @return [Types::UpdateBranchResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBranchResult#branch #branch} => Types::Branch
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_branch({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     description: "Description",
    #     framework: "Framework",
    #     stage: "PRODUCTION", # accepts PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL
    #     enable_notification: false,
    #     enable_auto_build: false,
    #     environment_variables: {
    #       "EnvKey" => "EnvValue",
    #     },
    #     basic_auth_credentials: "BasicAuthCredentials",
    #     enable_basic_auth: false,
    #     build_spec: "BuildSpec",
    #     ttl: "TTL",
    #   })
    #
    # @example Response structure
    #
    #   resp.branch.branch_arn #=> String
    #   resp.branch.branch_name #=> String
    #   resp.branch.description #=> String
    #   resp.branch.tags #=> Hash
    #   resp.branch.tags["TagKey"] #=> String
    #   resp.branch.stage #=> String, one of "PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL"
    #   resp.branch.display_name #=> String
    #   resp.branch.enable_notification #=> Boolean
    #   resp.branch.create_time #=> Time
    #   resp.branch.update_time #=> Time
    #   resp.branch.environment_variables #=> Hash
    #   resp.branch.environment_variables["EnvKey"] #=> String
    #   resp.branch.enable_auto_build #=> Boolean
    #   resp.branch.custom_domains #=> Array
    #   resp.branch.custom_domains[0] #=> String
    #   resp.branch.framework #=> String
    #   resp.branch.active_job_id #=> String
    #   resp.branch.total_number_of_jobs #=> String
    #   resp.branch.enable_basic_auth #=> Boolean
    #   resp.branch.thumbnail_url #=> String
    #   resp.branch.basic_auth_credentials #=> String
    #   resp.branch.build_spec #=> String
    #   resp.branch.ttl #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UpdateBranch AWS API Documentation
    #
    # @overload update_branch(params = {})
    # @param [Hash] params ({})
    def update_branch(params = {}, options = {})
      req = build_request(:update_branch, params)
      req.send_request(options)
    end

    # Create a new DomainAssociation on an App
    #
    # @option params [required, String] :app_id
    #   Unique Id for an Amplify App.
    #
    # @option params [required, String] :domain_name
    #   Name of the domain.
    #
    # @option params [Boolean] :enable_auto_sub_domain
    #   Enables automated creation of Subdomains for branches.
    #
    # @option params [required, Array<Types::SubDomainSetting>] :sub_domain_settings
    #   Setting structure for the Subdomain.
    #
    # @return [Types::UpdateDomainAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainAssociationResult#domain_association #domain_association} => Types::DomainAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_association({
    #     app_id: "AppId", # required
    #     domain_name: "DomainName", # required
    #     enable_auto_sub_domain: false,
    #     sub_domain_settings: [ # required
    #       {
    #         prefix: "DomainPrefix", # required
    #         branch_name: "BranchName", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_association.domain_association_arn #=> String
    #   resp.domain_association.domain_name #=> String
    #   resp.domain_association.enable_auto_sub_domain #=> Boolean
    #   resp.domain_association.domain_status #=> String, one of "PENDING_VERIFICATION", "IN_PROGRESS", "AVAILABLE", "PENDING_DEPLOYMENT", "FAILED"
    #   resp.domain_association.status_reason #=> String
    #   resp.domain_association.certificate_verification_dns_record #=> String
    #   resp.domain_association.sub_domains #=> Array
    #   resp.domain_association.sub_domains[0].sub_domain_setting.prefix #=> String
    #   resp.domain_association.sub_domains[0].sub_domain_setting.branch_name #=> String
    #   resp.domain_association.sub_domains[0].verified #=> Boolean
    #   resp.domain_association.sub_domains[0].dns_record #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UpdateDomainAssociation AWS API Documentation
    #
    # @overload update_domain_association(params = {})
    # @param [Hash] params ({})
    def update_domain_association(params = {}, options = {})
      req = build_request(:update_domain_association, params)
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
      context[:gem_name] = 'aws-sdk-amplify'
      context[:gem_version] = '1.6.0'
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
