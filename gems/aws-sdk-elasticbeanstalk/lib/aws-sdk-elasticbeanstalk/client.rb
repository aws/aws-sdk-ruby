# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
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
require 'aws-sdk-core/plugins/query_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:elasticbeanstalk)

module Aws::ElasticBeanstalk
  # An API client for Aws::ElasticBeanstalk.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSElasticBeanstalkService
    @identifier = :elasticbeanstalk

    add_plugin(::Aws::ElasticBeanstalk::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
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
    add_plugin(Aws::Core::Plugins::QueryProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ElasticBeanstalk::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
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
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
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
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
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

    # <p>Cancels in-progress environment configuration update or application version
    #       deployment.</p>
    # @param [Hash, Types::AbortEnvironmentUpdateMessage] params
    # @option params [String] :environment_id
    #   <p>This specifies the ID of the environment with the in-progress update that you want to
    #         cancel.</p>
    # @option params [String] :environment_name
    #   <p>This specifies the name of the environment with the in-progress update that you want to
    #         cancel.</p>
    # @example To abort a deployment
    #   # The following code aborts a running application version deployment for an environment named my-env:
    #   params = {
    #     environment_name: "my-env"
    #   }
    #   options = {}
    #   response = client.abort_environment_update(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId",
    #     environment_name: "EnvironmentName"
    #   }
    #   options = {}
    #   response = client.abort_environment_update(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def abort_environment_update(params = {}, options = {})
      request = build_request(:abort_environment_update, params)
      request.send_request(options)
    end

    # <p>Applies a scheduled managed action immediately. A managed action can be applied only if
    #       its status is <code>Scheduled</code>. Get the status and action ID of a managed action with
    #         <a>DescribeEnvironmentManagedActions</a>.</p>
    # @param [Hash, Types::ApplyEnvironmentManagedActionRequest] params
    # @option params [String] :environment_name
    #   <p>The name of the target environment.</p>
    # @option params [String] :environment_id
    #   <p>The environment ID of the target environment.</p>
    # @option params [String] :action_id
    #   <p>The action ID of the scheduled managed action to execute.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_name: "String",
    #     environment_id: "String",
    #     action_id: "String", # required
    #   }
    #   options = {}
    #   response = client.apply_environment_managed_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action_id: "String",
    #     action_description: "String",
    #     action_type: "InstanceRefresh" # One of: ["InstanceRefresh", "PlatformUpdate", "Unknown"],
    #     status: "String"
    #   }
    # @return [Types::ApplyEnvironmentManagedActionResult]
    def apply_environment_managed_action(params = {}, options = {})
      request = build_request(:apply_environment_managed_action, params)
      request.send_request(options)
    end

    # <p>Add or change the operations role used by an environment. After this call is made, Elastic Beanstalk
    #       uses the associated operations role for permissions to downstream services during subsequent
    #       calls acting on this environment. For more information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html">Operations roles</a> in the
    #         <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    # @param [Hash, Types::AssociateEnvironmentOperationsRoleMessage] params
    # @option params [String] :environment_name
    #   <p>The name of the environment to which to set the operations role.</p>
    # @option params [String] :operations_role
    #   <p>The Amazon Resource Name (ARN) of an existing IAM role to be used as the environment's
    #         operations role.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_name: "EnvironmentName", # required
    #     operations_role: "OperationsRole", # required
    #   }
    #   options = {}
    #   response = client.associate_environment_operations_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_environment_operations_role(params = {}, options = {})
      request = build_request(:associate_environment_operations_role, params)
      request.send_request(options)
    end

    # <p>Checks if the specified CNAME is available.</p>
    # @param [Hash, Types::CheckDNSAvailabilityMessage] params
    # @option params [String] :cname_prefix
    #   <p>The prefix used when this CNAME is reserved.</p>
    # @example To check the availability of a CNAME
    #   # The following operation checks the availability of the subdomain my-cname:
    #   params = {
    #     cname_prefix: "my-cname"
    #   }
    #   options = {}
    #   response = client.check_dns_availability(params, options)
    #   response.to_h #=>
    #   {
    #     available: true,
    #     fully_qualified_cname: "my-cname.us-west-2.elasticbeanstalk.com"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cname_prefix: "DNSCnamePrefix", # required
    #   }
    #   options = {}
    #   response = client.check_dns_availability(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     available: false,
    #     fully_qualified_cname: "DNSCname"
    #   }
    # @return [Types::CheckDNSAvailabilityResultMessage]
    def check_dns_availability(params = {}, options = {})
      request = build_request(:check_dns_availability, params)
      request.send_request(options)
    end

    # <p>Create or update a group of environments that each run a separate component of a single
    #       application. Takes a list of version labels that specify application source bundles for each
    #       of the environments to create or update. The name of each environment and other required
    #       information must be included in the source bundles in an environment manifest named
    #       <code>env.yaml</code>. See <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-mgmt-compose.html">Compose Environments</a>
    #       for details.</p>
    # @param [Hash, Types::ComposeEnvironmentsMessage] params
    # @option params [String] :application_name
    #   <p>The name of the application to which the specified source bundles belong.</p>
    # @option params [String] :group_name
    #   <p>The name of the group to which the target environments belong. Specify a group name
    #         only if the environment name defined in each target environment's manifest ends with a +
    #         (plus) character. See <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment Manifest
    #           (env.yaml)</a> for details.</p>
    # @option params [Array<String>] :version_labels
    #   <p>A list of version labels, specifying one or more application source bundles that belong
    #         to the target application. Each source bundle must include an environment manifest that
    #         specifies the name of the environment and the name of the solution stack to use, and
    #         optionally can specify environment links to create.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName",
    #     group_name: "GroupName",
    #     version_labels: ["VersionLabel"]
    #   }
    #   options = {}
    #   response = client.compose_environments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environments: [
    #       {
    #         environment_name: "EnvironmentName",
    #         environment_id: "EnvironmentId",
    #         application_name: "ApplicationName",
    #         version_label: "VersionLabel",
    #         solution_stack_name: "SolutionStackName",
    #         platform_arn: "PlatformArn",
    #         template_name: "ConfigurationTemplateName",
    #         description: "Description",
    #         endpoint_url: "EndpointURL",
    #         cname: "DNSCname",
    #         date_created: Time.now,
    #         date_updated: Time.now,
    #         status: "Aborting" # One of: ["Aborting", "Launching", "Updating", "LinkingFrom", "LinkingTo", "Ready", "Terminating", "Terminated"],
    #         abortable_operation_in_progress: false,
    #         health: "Green" # One of: ["Green", "Yellow", "Red", "Grey"],
    #         health_status: "NoData" # One of: ["NoData", "Unknown", "Pending", "Ok", "Info", "Warning", "Degraded", "Severe", "Suspended"],
    #         resources: {
    #           load_balancer: {
    #             load_balancer_name: "String",
    #             domain: "String",
    #             listeners: [
    #               {
    #                 protocol: "String",
    #                 port: 1
    #               }
    #             ]
    #           }
    #         },
    #         tier: {
    #           name: "String",
    #           type: "String",
    #           version: "String"
    #         },
    #         environment_links: [
    #           {
    #             link_name: "String",
    #             environment_name: "String"
    #           }
    #         ],
    #         environment_arn: "EnvironmentArn",
    #         operations_role: "OperationsRole"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ComposeEnvironmentsOutput]
    def compose_environments(params = {}, options = {})
      request = build_request(:compose_environments, params)
      request.send_request(options)
    end

    # <p>Creates an application that has one configuration template named <code>default</code>
    #       and no application versions.</p>
    # @param [Hash, Types::CreateApplicationMessage] params
    # @option params [String] :application_name
    #   <p>The name of the application. Must be unique within your account.</p>
    # @option params [String] :description
    #   <p>Your description of the application.</p>
    # @option params [Types::ApplicationResourceLifecycleConfig] :resource_lifecycle_config
    #   <p>Specifies an application resource lifecycle configuration to prevent your application
    #         from accumulating too many versions.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Specifies the tags applied to the application.</p>
    #            <p>Elastic Beanstalk applies these tags only to the application. Environments that you create in the
    #         application don't inherit the tags.</p>
    # @example To create a new application
    #   # The following operation creates a new application named my-app:
    #   params = {
    #     application_name: "my-app",
    #     description: "my application"
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    #   response.to_h #=>
    #   {
    #     application: {
    #       application_name: "my-app",
    #       configuration_templates: [
    #       ],
    #       date_updated: Time.parse("2015-02-12T18:32:21.181Z"),
    #       description: "my application",
    #       date_created: Time.parse("2015-02-12T18:32:21.181Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     description: "Description",
    #     resource_lifecycle_config: {
    #       service_role: "String",
    #       version_lifecycle_config: {
    #         max_count_rule: {
    #           enabled: false, # required
    #           max_count: 1,
    #           delete_source_from_s3: false
    #         },
    #         max_age_rule: {
    #           enabled: false, # required
    #           max_age_in_days: 1,
    #           delete_source_from_s3: false
    #         }
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application: {
    #       application_arn: "ApplicationArn",
    #       application_name: "ApplicationName",
    #       description: "Description",
    #       date_created: Time.now,
    #       date_updated: Time.now,
    #       versions: ["VersionLabel"],
    #       configuration_templates: ["ConfigurationTemplateName"],
    #       resource_lifecycle_config: {
    #         service_role: "String",
    #         version_lifecycle_config: {
    #           max_count_rule: {
    #             enabled: false, # required
    #             max_count: 1,
    #             delete_source_from_s3: false
    #           },
    #           max_age_rule: {
    #             enabled: false, # required
    #             max_age_in_days: 1,
    #             delete_source_from_s3: false
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreateApplicationOutput]
    def create_application(params = {}, options = {})
      request = build_request(:create_application, params)
      request.send_request(options)
    end

    # <p>Creates an application version for the specified application. You can create an
    #       application version from a source bundle in Amazon S3, a commit in AWS CodeCommit, or the
    #       output of an AWS CodeBuild build as follows:</p>
    #          <p>Specify a commit in an AWS CodeCommit repository with
    #         <code>SourceBuildInformation</code>.</p>
    #          <p>Specify a build in an AWS CodeBuild with <code>SourceBuildInformation</code> and
    #         <code>BuildConfiguration</code>.</p>
    #          <p>Specify a source bundle in S3 with <code>SourceBundle</code>
    #          </p>
    #          <p>Omit both <code>SourceBuildInformation</code> and <code>SourceBundle</code> to use the
    #       default sample application.</p>
    #          <note>
    #             <p>After you create an application version with a specified Amazon S3 bucket and key
    #         location, you can't change that Amazon S3 location. If you change the Amazon S3 location,
    #         you receive an exception when you attempt to launch an environment from the application
    #         version.</p>
    #          </note>
    # @param [Hash, Types::CreateApplicationVersionMessage] params
    # @option params [String] :application_name
    #   <p> The name of the application. If no application is found with this name, and
    #           <code>AutoCreateApplication</code> is <code>false</code>, returns an
    #           <code>InvalidParameterValue</code> error. </p>
    # @option params [String] :version_label
    #   <p>A label identifying this version.</p>
    #            <p>Constraint: Must be unique per application. If an application version already exists
    #         with this label for the specified application, AWS Elastic Beanstalk returns an
    #           <code>InvalidParameterValue</code> error. </p>
    # @option params [String] :description
    #   <p>A description of this application version.</p>
    # @option params [Types::SourceBuildInformation] :source_build_information
    #   <p>Specify a commit in an AWS CodeCommit Git repository to use as the source code for the
    #         application version.</p>
    # @option params [Types::S3Location] :source_bundle
    #   <p>The Amazon S3 bucket and key that identify the location of the source bundle for this
    #         version.</p>
    #            <note>
    #               <p>The Amazon S3 bucket must be in the same region as the
    #         environment.</p>
    #            </note>
    #            <p>Specify a source bundle in S3 or a commit in an AWS CodeCommit repository (with
    #           <code>SourceBuildInformation</code>), but not both. If neither <code>SourceBundle</code> nor
    #           <code>SourceBuildInformation</code> are provided, Elastic Beanstalk uses a sample
    #         application.</p>
    # @option params [Types::BuildConfiguration] :build_configuration
    #   <p>Settings for an AWS CodeBuild build.</p>
    # @option params [Boolean] :auto_create_application
    #   <p>Set to <code>true</code> to create an application with the specified name if it doesn't
    #         already exist.</p>
    # @option params [Boolean] :process
    #   <p>Pre-processes and validates the environment manifest (<code>env.yaml</code>) and
    #         configuration files (<code>*.config</code> files in the <code>.ebextensions</code> folder) in
    #         the source bundle. Validating configuration files can identify issues prior to deploying the
    #         application version to an environment.</p>
    #            <p>You must turn processing on for application versions that you create using AWS
    #         CodeBuild or AWS CodeCommit. For application versions built from a source bundle in Amazon S3,
    #         processing is optional.</p>
    #            <note>
    #               <p>The <code>Process</code> option validates Elastic Beanstalk configuration files. It
    #         doesn't validate your application's configuration files, like proxy server or Docker
    #         configuration.</p>
    #            </note>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Specifies the tags applied to the application version.</p>
    #            <p>Elastic Beanstalk applies these tags only to the application version. Environments that use the
    #         application version don't inherit the tags.</p>
    # @example To create a new application
    #   # The following operation creates a new version (v1) of an application named my-app:
    #   params = {
    #     application_name: "my-app",
    #     version_label: "v1",
    #     description: "my-app-v1",
    #     source_bundle: {
    #       s3_bucket: "my-bucket",
    #       s3_key: "sample.war"
    #     },
    #     auto_create_application: true,
    #     process: true
    #   }
    #   options = {}
    #   response = client.create_application_version(params, options)
    #   response.to_h #=>
    #   {
    #     application_version: {
    #       application_name: "my-app",
    #       version_label: "v1",
    #       description: "my-app-v1",
    #       date_created: Time.parse("2015-02-03T23:01:25.412Z"),
    #       date_updated: Time.parse("2015-02-03T23:01:25.412Z"),
    #       source_bundle: {
    #         s3_bucket: "my-bucket",
    #         s3_key: "sample.war"
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     version_label: "VersionLabel", # required
    #     description: "Description",
    #     source_build_information: {
    #       source_type: "Git" # One of: ["Git", "Zip"], # required
    #       source_repository: "CodeCommit" # One of: ["CodeCommit", "S3"], # required
    #       source_location: "SourceLocation", # required
    #     },
    #     source_bundle: {
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key"
    #     },
    #     build_configuration: {
    #       artifact_name: "String",
    #       code_build_service_role: "NonEmptyString", # required
    #       compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE"],
    #       image: "NonEmptyString", # required
    #       timeout_in_minutes: 1
    #     },
    #     auto_create_application: false,
    #     process: false,
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_application_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_version: {
    #       application_version_arn: "ApplicationVersionArn",
    #       application_name: "ApplicationName",
    #       description: "Description",
    #       version_label: "VersionLabel",
    #       source_build_information: {
    #         source_type: "Git" # One of: ["Git", "Zip"], # required
    #         source_repository: "CodeCommit" # One of: ["CodeCommit", "S3"], # required
    #         source_location: "SourceLocation", # required
    #       },
    #       build_arn: "String",
    #       source_bundle: {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key"
    #       },
    #       date_created: Time.now,
    #       date_updated: Time.now,
    #       status: "Processed" # One of: ["Processed", "Unprocessed", "Failed", "Processing", "Building"]
    #     }
    #   }
    # @return [Types::CreateApplicationVersionOutput]
    def create_application_version(params = {}, options = {})
      request = build_request(:create_application_version, params)
      request.send_request(options)
    end

    # <p>Creates an AWS Elastic Beanstalk configuration template, associated with a specific Elastic Beanstalk
    #       application. You define application configuration settings in a configuration template. You
    #       can then use the configuration template to deploy different versions of the application with
    #       the same configuration settings.</p>
    #          <p>Templates aren't associated with any environment. The <code>EnvironmentName</code>
    #       response element is always <code>null</code>.</p>
    #          <p>Related Topics</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DescribeConfigurationOptions</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeConfigurationSettings</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListAvailableSolutionStacks</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateConfigurationTemplateMessage] params
    # @option params [String] :application_name
    #   <p>The name of the Elastic Beanstalk application to associate with this configuration
    #         template.</p>
    # @option params [String] :template_name
    #   <p>The name of the configuration template.</p>
    #            <p>Constraint: This name must be unique per application.</p>
    # @option params [String] :solution_stack_name
    #   <p>The name of an Elastic Beanstalk solution stack (platform version) that this configuration uses. For
    #         example, <code>64bit Amazon Linux 2013.09 running Tomcat 7 Java 7</code>. A solution stack
    #         specifies the operating system, runtime, and application server for a configuration template.
    #         It also determines the set of configuration options as well as the possible and default
    #         values. For more information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html">Supported Platforms</a> in the
    #           <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    #            <p>You must specify <code>SolutionStackName</code> if you don't specify
    #           <code>PlatformArn</code>, <code>EnvironmentId</code>, or
    #         <code>SourceConfiguration</code>.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/api/API_ListAvailableSolutionStacks.html">
    #                  <code>ListAvailableSolutionStacks</code>
    #               </a> API to obtain a list of available
    #         solution stacks.</p>
    # @option params [String] :platform_arn
    #   <p>The Amazon Resource Name (ARN) of the custom platform. For more information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/custom-platforms.html"> Custom
    #           Platforms</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    #            <note>
    #               <p>If you specify <code>PlatformArn</code>, then don't specify
    #             <code>SolutionStackName</code>.</p>
    #            </note>
    # @option params [Types::SourceConfiguration] :source_configuration
    #   <p>An Elastic Beanstalk configuration template to base this one on. If specified, Elastic Beanstalk uses the configuration values from the specified
    #         configuration template to create a new configuration.</p>
    #            <p>Values specified in <code>OptionSettings</code> override any values obtained from the
    #           <code>SourceConfiguration</code>.</p>
    #            <p>You must specify <code>SourceConfiguration</code> if you don't specify
    #           <code>PlatformArn</code>, <code>EnvironmentId</code>, or
    #         <code>SolutionStackName</code>.</p>
    #            <p>Constraint: If both solution stack name and source configuration are specified, the
    #         solution stack of the source configuration template must match the specified solution stack
    #         name.</p>
    # @option params [String] :environment_id
    #   <p>The ID of an environment whose settings you want to use to create the configuration
    #         template. You must specify <code>EnvironmentId</code> if you don't specify
    #           <code>PlatformArn</code>, <code>SolutionStackName</code>, or
    #           <code>SourceConfiguration</code>.</p>
    # @option params [String] :description
    #   <p>An optional description for this configuration.</p>
    # @option params [Array<Types::ConfigurationOptionSetting>] :option_settings
    #   <p>Option values for the Elastic Beanstalk configuration, such as the instance type. If specified, these
    #         values override the values obtained from the solution stack or the source configuration
    #         template. For a complete list of Elastic Beanstalk configuration options, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html">Option Values</a> in the
    #           <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Specifies the tags applied to the configuration template.</p>
    # @example To create a configuration template
    #   # The following operation creates a configuration template named my-app-v1 from the settings applied to an environment with the id e-rpqsewtp2j:
    #   params = {
    #     application_name: "my-app",
    #     template_name: "my-app-v1",
    #     environment_id: "e-rpqsewtp2j"
    #   }
    #   options = {}
    #   response = client.create_configuration_template(params, options)
    #   response.to_h #=>
    #   {
    #     application_name: "my-app",
    #     template_name: "my-app-v1",
    #     date_created: Time.parse("2015-08-12T18:40:39Z"),
    #     date_updated: Time.parse("2015-08-12T18:40:39Z"),
    #     solution_stack_name: "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     template_name: "ConfigurationTemplateName", # required
    #     solution_stack_name: "SolutionStackName",
    #     platform_arn: "PlatformArn",
    #     source_configuration: {
    #       application_name: "ApplicationName",
    #       template_name: "ConfigurationTemplateName"
    #     },
    #     environment_id: "EnvironmentId",
    #     description: "Description",
    #     option_settings: [
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName",
    #         value: "ConfigurationOptionValue"
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_configuration_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     solution_stack_name: "SolutionStackName",
    #     platform_arn: "PlatformArn",
    #     application_name: "ApplicationName",
    #     template_name: "ConfigurationTemplateName",
    #     description: "Description",
    #     environment_name: "EnvironmentName",
    #     deployment_status: "deployed" # One of: ["deployed", "pending", "failed"],
    #     date_created: Time.now,
    #     date_updated: Time.now,
    #     option_settings: [
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName",
    #         value: "ConfigurationOptionValue"
    #       }
    #     ]
    #   }
    # @return [Types::CreateConfigurationTemplateOutput]
    def create_configuration_template(params = {}, options = {})
      request = build_request(:create_configuration_template, params)
      request.send_request(options)
    end

    # <p>Launches an AWS Elastic Beanstalk environment for the specified application using the specified
    #       configuration.</p>
    # @param [Hash, Types::CreateEnvironmentMessage] params
    # @option params [String] :application_name
    #   <p>The name of the application that is associated with this environment.</p>
    # @option params [String] :environment_name
    #   <p>A unique name for the environment.</p>
    #            <p>Constraint: Must be from 4 to 40 characters in length. The name can contain only
    #         letters, numbers, and hyphens. It can't start or end with a hyphen. This name must be unique
    #         within a region in your account. If the specified name already exists in the region, Elastic Beanstalk returns an
    #           <code>InvalidParameterValue</code> error. </p>
    #            <p>If you don't specify the <code>CNAMEPrefix</code> parameter, the environment name becomes part of
    #         the CNAME, and therefore part of the visible URL for your application.</p>
    # @option params [String] :group_name
    #   <p>The name of the group to which the target environment belongs. Specify a group name
    #         only if the environment's name is specified in an environment manifest and not with the
    #         environment name parameter. See <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment Manifest
    #           (env.yaml)</a> for details.</p>
    # @option params [String] :description
    #   <p>Your description for this environment.</p>
    # @option params [String] :cname_prefix
    #   <p>If specified, the environment attempts to use this value as the prefix for the CNAME in
    #         your Elastic Beanstalk environment URL. If not specified, the CNAME is generated automatically by
    #         appending a random alphanumeric string to the environment name.</p>
    # @option params [Types::EnvironmentTier] :tier
    #   <p>Specifies the tier to use in creating this environment. The environment tier that you
    #         choose determines whether Elastic Beanstalk provisions resources to support a web application that handles
    #         HTTP(S) requests or a web application that handles background-processing tasks.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Specifies the tags applied to resources in the environment.</p>
    # @option params [String] :version_label
    #   <p>The name of the application version to deploy.</p>
    #            <p>Default: If not specified, Elastic Beanstalk attempts to deploy the sample application.</p>
    # @option params [String] :template_name
    #   <p>The name of the Elastic Beanstalk configuration template to use with the environment.</p>
    #            <note>
    #               <p>If you specify <code>TemplateName</code>, then don't specify 
    #             <code>SolutionStackName</code>.</p>
    #            </note>
    # @option params [String] :solution_stack_name
    #   <p>The name of an Elastic Beanstalk solution stack (platform version) to use with the environment. If
    #         specified, Elastic Beanstalk sets the configuration values to the default values associated with the
    #         specified solution stack. For a list of current solution stacks, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/platforms/platforms-supported.html">Elastic Beanstalk Supported Platforms</a> in the <i>AWS Elastic Beanstalk
    #           Platforms</i> guide.</p>
    #            <note>
    #               <p>If you specify <code>SolutionStackName</code>, don't specify <code>PlatformArn</code> or
    #             <code>TemplateName</code>.</p>
    #            </note>
    # @option params [String] :platform_arn
    #   <p>The Amazon Resource Name (ARN) of the custom platform to use with the environment. For
    #         more information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/custom-platforms.html">Custom Platforms</a> in the
    #           <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    #            <note>
    #               <p>If you specify <code>PlatformArn</code>, don't specify
    #           <code>SolutionStackName</code>.</p>
    #            </note>
    # @option params [Array<Types::ConfigurationOptionSetting>] :option_settings
    #   <p>If specified, AWS Elastic Beanstalk sets the specified configuration options to the
    #         requested value in the configuration set for the new environment. These override the values
    #         obtained from the solution stack or the configuration template.</p>
    # @option params [Array<Types::OptionSpecification>] :options_to_remove
    #   <p>A list of custom user-defined configuration options to remove from the configuration
    #         set for this new environment.</p>
    # @option params [String] :operations_role
    #   <p>The Amazon Resource Name (ARN) of an existing IAM role to be used as the environment's
    #         operations role. If specified, Elastic Beanstalk uses the operations role for permissions to downstream
    #         services during this call and during subsequent calls acting on this environment. To specify
    #         an operations role, you must have the <code>iam:PassRole</code> permission for the role. For
    #         more information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html">Operations roles</a> in the
    #           <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    # @example To create a new environment for an application
    #   # The following operation creates a new environment for version v1 of a java application named my-app:
    #   params = {
    #     application_name: "my-app",
    #     environment_name: "my-env",
    #     cname_prefix: "my-app",
    #     version_label: "v1",
    #     solution_stack_name: "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8"
    #   }
    #   options = {}
    #   response = client.create_environment(params, options)
    #   response.to_h #=>
    #   {
    #     application_name: "my-app",
    #     environment_name: "my-env",
    #     version_label: "v1",
    #     status: Launching,
    #     environment_id: "e-izqpassy4h",
    #     solution_stack_name: "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8",
    #     cname: "my-app.elasticbeanstalk.com",
    #     health: Grey,
    #     tier: {
    #       type: "Standard",
    #       name: "WebServer",
    #       version: " "
    #     },
    #     date_updated: Time.parse("2015-02-03T23:04:54.479Z"),
    #     date_created: Time.parse("2015-02-03T23:04:54.479Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     environment_name: "EnvironmentName",
    #     group_name: "GroupName",
    #     description: "Description",
    #     cname_prefix: "DNSCnamePrefix",
    #     tier: {
    #       name: "String",
    #       type: "String",
    #       version: "String"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     version_label: "VersionLabel",
    #     template_name: "ConfigurationTemplateName",
    #     solution_stack_name: "SolutionStackName",
    #     platform_arn: "PlatformArn",
    #     option_settings: [
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName",
    #         value: "ConfigurationOptionValue"
    #       }
    #     ],
    #     options_to_remove: [
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName"
    #       }
    #     ],
    #     operations_role: "OperationsRole"
    #   }
    #   options = {}
    #   response = client.create_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_name: "EnvironmentName",
    #     environment_id: "EnvironmentId",
    #     application_name: "ApplicationName",
    #     version_label: "VersionLabel",
    #     solution_stack_name: "SolutionStackName",
    #     platform_arn: "PlatformArn",
    #     template_name: "ConfigurationTemplateName",
    #     description: "Description",
    #     endpoint_url: "EndpointURL",
    #     cname: "DNSCname",
    #     date_created: Time.now,
    #     date_updated: Time.now,
    #     status: "Aborting" # One of: ["Aborting", "Launching", "Updating", "LinkingFrom", "LinkingTo", "Ready", "Terminating", "Terminated"],
    #     abortable_operation_in_progress: false,
    #     health: "Green" # One of: ["Green", "Yellow", "Red", "Grey"],
    #     health_status: "NoData" # One of: ["NoData", "Unknown", "Pending", "Ok", "Info", "Warning", "Degraded", "Severe", "Suspended"],
    #     resources: {
    #       load_balancer: {
    #         load_balancer_name: "String",
    #         domain: "String",
    #         listeners: [
    #           {
    #             protocol: "String",
    #             port: 1
    #           }
    #         ]
    #       }
    #     },
    #     tier: {
    #       name: "String",
    #       type: "String",
    #       version: "String"
    #     },
    #     environment_links: [
    #       {
    #         link_name: "String",
    #         environment_name: "String"
    #       }
    #     ],
    #     environment_arn: "EnvironmentArn",
    #     operations_role: "OperationsRole"
    #   }
    # @return [Types::CreateEnvironmentOutput]
    def create_environment(params = {}, options = {})
      request = build_request(:create_environment, params)
      request.send_request(options)
    end

    # <p>Create a new version of your custom platform.</p>
    # @param [Hash, Types::CreatePlatformVersionRequest] params
    # @option params [String] :platform_name
    #   <p>The name of your custom platform.</p>
    # @option params [String] :platform_version
    #   <p>The number, such as 1.0.2, for the new platform version.</p>
    # @option params [Types::S3Location] :platform_definition_bundle
    #   <p>The location of the platform definition archive in Amazon S3.</p>
    # @option params [String] :environment_name
    #   <p>The name of the builder environment.</p>
    # @option params [Array<Types::ConfigurationOptionSetting>] :option_settings
    #   <p>The configuration option settings to apply to the builder environment.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Specifies the tags applied to the new platform version.</p>
    #            <p>Elastic Beanstalk applies these tags only to the platform version. Environments that you create using
    #         the platform version don't inherit the tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     platform_name: "PlatformName", # required
    #     platform_version: "PlatformVersion", # required
    #     platform_definition_bundle: { # required
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key"
    #     },
    #     environment_name: "EnvironmentName",
    #     option_settings: [
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName",
    #         value: "ConfigurationOptionValue"
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_platform_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     platform_summary: {
    #       platform_arn: "PlatformArn",
    #       platform_owner: "PlatformOwner",
    #       platform_status: "Creating" # One of: ["Creating", "Failed", "Ready", "Deleting", "Deleted"],
    #       platform_category: "PlatformCategory",
    #       operating_system_name: "OperatingSystemName",
    #       operating_system_version: "OperatingSystemVersion",
    #       supported_tier_list: ["SupportedTier"],
    #       supported_addon_list: ["SupportedAddon"],
    #       platform_lifecycle_state: "PlatformLifecycleState",
    #       platform_version: "PlatformVersion",
    #       platform_branch_name: "BranchName",
    #       platform_branch_lifecycle_state: "PlatformBranchLifecycleState"
    #     },
    #     builder: {
    #       arn: "ARN"
    #     }
    #   }
    # @return [Types::CreatePlatformVersionResult]
    def create_platform_version(params = {}, options = {})
      request = build_request(:create_platform_version, params)
      request.send_request(options)
    end

    # <p>Creates a bucket in Amazon S3 to store application versions, logs, and other files used
    #       by Elastic Beanstalk environments. The Elastic Beanstalk console and EB CLI call this API the
    #       first time you create an environment in a region. If the storage location already exists,
    #         <code>CreateStorageLocation</code> still returns the bucket name but does not create a new
    #       bucket.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example To create a new environment for an application
    #   # The following operation creates a new environment for version v1 of a java application named my-app:
    #   params = {}
    #   options = {}
    #   response = client.create_storage_location(params, options)
    #   response.to_h #=>
    #   {
    #     s3_bucket: "elasticbeanstalk-us-west-2-0123456789012"
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.create_storage_location(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     s3_bucket: "S3Bucket"
    #   }
    # @return [Types::CreateStorageLocationResultMessage]
    def create_storage_location(params = {}, options = {})
      request = build_request(:create_storage_location, params)
      request.send_request(options)
    end

    # <p>Deletes the specified application along with all associated versions and
    #       configurations. The application versions will not be deleted from your Amazon S3
    #       bucket.</p>
    #          <note>
    #             <p>You cannot delete an application that has a running environment.</p>
    #          </note>
    # @param [Hash, Types::DeleteApplicationMessage] params
    # @option params [String] :application_name
    #   <p>The name of the application to delete.</p>
    # @option params [Boolean] :terminate_env_by_force
    #   <p>When set to true, running environments will be terminated before deleting the
    #         application.</p>
    # @example To delete an application
    #   # The following operation deletes an application named my-app:
    #   params = {
    #     application_name: "my-app"
    #   }
    #   options = {}
    #   response = client.delete_application(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     terminate_env_by_force: false
    #   }
    #   options = {}
    #   response = client.delete_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_application(params = {}, options = {})
      request = build_request(:delete_application, params)
      request.send_request(options)
    end

    # <p>Deletes the specified version from the specified application.</p>
    #          <note>
    #             <p>You cannot delete an application version that is associated with a running
    #         environment.</p>
    #          </note>
    # @param [Hash, Types::DeleteApplicationVersionMessage] params
    # @option params [String] :application_name
    #   <p>The name of the application to which the version belongs.</p>
    # @option params [String] :version_label
    #   <p>The label of the version to delete.</p>
    # @option params [Boolean] :delete_source_bundle
    #   <p>Set to <code>true</code> to delete the source bundle from your storage bucket.
    #         Otherwise, the application version is deleted only from Elastic Beanstalk and the source
    #         bundle remains in Amazon S3.</p>
    # @example To delete an application version
    #   # The following operation deletes an application version named 22a0-stage-150819_182129 for an application named my-app:
    #   params = {
    #     application_name: "my-app",
    #     version_label: "22a0-stage-150819_182129",
    #     delete_source_bundle: true
    #   }
    #   options = {}
    #   response = client.delete_application_version(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     version_label: "VersionLabel", # required
    #     delete_source_bundle: false
    #   }
    #   options = {}
    #   response = client.delete_application_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_application_version(params = {}, options = {})
      request = build_request(:delete_application_version, params)
      request.send_request(options)
    end

    # <p>Deletes the specified configuration template.</p>
    #          <note>
    #             <p>When you launch an environment using a configuration template, the environment gets a
    #         copy of the template. You can delete or modify the environment's copy of the template
    #         without affecting the running environment.</p>
    #          </note>
    # @param [Hash, Types::DeleteConfigurationTemplateMessage] params
    # @option params [String] :application_name
    #   <p>The name of the application to delete the configuration template from.</p>
    # @option params [String] :template_name
    #   <p>The name of the configuration template to delete.</p>
    # @example To delete a configuration template
    #   # The following operation deletes a configuration template named my-template for an application named my-app:
    #   params = {
    #     application_name: "my-app",
    #     template_name: "my-template"
    #   }
    #   options = {}
    #   response = client.delete_configuration_template(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     template_name: "ConfigurationTemplateName", # required
    #   }
    #   options = {}
    #   response = client.delete_configuration_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_configuration_template(params = {}, options = {})
      request = build_request(:delete_configuration_template, params)
      request.send_request(options)
    end

    # <p>Deletes the draft configuration associated with the running environment.</p>
    #          <p>Updating a running environment with any configuration changes creates a draft
    #       configuration set. You can get the draft configuration using <a>DescribeConfigurationSettings</a> while the update is in progress or if the update
    #       fails. The <code>DeploymentStatus</code> for the draft configuration indicates whether the
    #       deployment is in process or has failed. The draft configuration remains in existence until it
    #       is deleted with this action.</p>
    # @param [Hash, Types::DeleteEnvironmentConfigurationMessage] params
    # @option params [String] :application_name
    #   <p>The name of the application the environment is associated with.</p>
    # @option params [String] :environment_name
    #   <p>The name of the environment to delete the draft configuration from.</p>
    # @example To delete a draft configuration
    #   # The following operation deletes a draft configuration for an environment named my-env:
    #   params = {
    #     application_name: "my-app",
    #     environment_name: "my-env"
    #   }
    #   options = {}
    #   response = client.delete_environment_configuration(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     environment_name: "EnvironmentName", # required
    #   }
    #   options = {}
    #   response = client.delete_environment_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_environment_configuration(params = {}, options = {})
      request = build_request(:delete_environment_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the specified version of a custom platform.</p>
    # @param [Hash, Types::DeletePlatformVersionRequest] params
    # @option params [String] :platform_arn
    #   <p>The ARN of the version of the custom platform.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     platform_arn: "PlatformArn"
    #   }
    #   options = {}
    #   response = client.delete_platform_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     platform_summary: {
    #       platform_arn: "PlatformArn",
    #       platform_owner: "PlatformOwner",
    #       platform_status: "Creating" # One of: ["Creating", "Failed", "Ready", "Deleting", "Deleted"],
    #       platform_category: "PlatformCategory",
    #       operating_system_name: "OperatingSystemName",
    #       operating_system_version: "OperatingSystemVersion",
    #       supported_tier_list: ["SupportedTier"],
    #       supported_addon_list: ["SupportedAddon"],
    #       platform_lifecycle_state: "PlatformLifecycleState",
    #       platform_version: "PlatformVersion",
    #       platform_branch_name: "BranchName",
    #       platform_branch_lifecycle_state: "PlatformBranchLifecycleState"
    #     }
    #   }
    # @return [Types::DeletePlatformVersionResult]
    def delete_platform_version(params = {}, options = {})
      request = build_request(:delete_platform_version, params)
      request.send_request(options)
    end

    # <p>Returns attributes related to AWS Elastic Beanstalk that are associated with the calling AWS
    #       account.</p>
    #          <p>The result currently has one set of attributes—resource quotas.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_account_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_quotas: {
    #       application_quota: {
    #         maximum: 1
    #       },
    #       application_version_quota: {
    #         maximum: 1
    #       },
    #       environment_quota: {
    #         maximum: 1
    #       },
    #       configuration_template_quota: {
    #         maximum: 1
    #       },
    #       custom_platform_quota: {
    #         maximum: 1
    #       }
    #     }
    #   }
    # @return [Types::DescribeAccountAttributesResult]
    def describe_account_attributes(params = {}, options = {})
      request = build_request(:describe_account_attributes, params)
      request.send_request(options)
    end

    # <p>Retrieve a list of application versions.</p>
    # @param [Hash, Types::DescribeApplicationVersionsMessage] params
    # @option params [String] :application_name
    #   <p>Specify an application name to show only application versions for that
    #         application.</p>
    # @option params [Array<String>] :version_labels
    #   <p>Specify a version label to show a specific application version.</p>
    # @option params [Integer] :max_records
    #   <p>For a paginated request. Specify a maximum number of application versions to include in
    #         each response.</p>
    #            <p>If no <code>MaxRecords</code> is specified, all available application versions are
    #         retrieved in a single response.</p>
    # @option params [String] :next_token
    #   <p>For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other
    #         parameter values must be identical to the ones specified in the initial request.</p>
    #            <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>
    # @example To view information about an application version
    #   # The following operation retrieves information about an application version labeled v2:
    #   params = {
    #     application_name: "my-app",
    #     version_labels: [
    #       "v2"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_application_versions(params, options)
    #   response.to_h #=>
    #   {
    #     application_versions: [
    #       {
    #         application_name: "my-app",
    #         version_label: "v2",
    #         description: "update cover page",
    #         date_created: Time.parse("2015-07-23T01:32:26.079Z"),
    #         date_updated: Time.parse("2015-07-23T01:32:26.079Z"),
    #         source_bundle: {
    #           s3_bucket: "elasticbeanstalk-us-west-2-015321684451",
    #           s3_key: "my-app/5026-stage-150723_224258.war"
    #         }
    #       },
    #       {
    #         application_name: "my-app",
    #         version_label: "v1",
    #         description: "initial version",
    #         date_created: Time.parse("2015-07-23T22:26:10.816Z"),
    #         date_updated: Time.parse("2015-07-23T22:26:10.816Z"),
    #         source_bundle: {
    #           s3_bucket: "elasticbeanstalk-us-west-2-015321684451",
    #           s3_key: "my-app/5026-stage-150723_222618.war"
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName",
    #     version_labels: ["VersionLabel"],
    #     max_records: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.describe_application_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_versions: [
    #       {
    #         application_version_arn: "ApplicationVersionArn",
    #         application_name: "ApplicationName",
    #         description: "Description",
    #         version_label: "VersionLabel",
    #         source_build_information: {
    #           source_type: "Git" # One of: ["Git", "Zip"], # required
    #           source_repository: "CodeCommit" # One of: ["CodeCommit", "S3"], # required
    #           source_location: "SourceLocation", # required
    #         },
    #         build_arn: "String",
    #         source_bundle: {
    #           s3_bucket: "S3Bucket",
    #           s3_key: "S3Key"
    #         },
    #         date_created: Time.now,
    #         date_updated: Time.now,
    #         status: "Processed" # One of: ["Processed", "Unprocessed", "Failed", "Processing", "Building"]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ApplicationVersionDescriptionsMessage]
    def describe_application_versions(params = {}, options = {})
      request = build_request(:describe_application_versions, params)
      request.send_request(options)
    end

    # <p>Returns the descriptions of existing applications.</p>
    # @param [Hash, Types::DescribeApplicationsMessage] params
    # @option params [Array<String>] :application_names
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to only include
    #         those with the specified names.</p>
    # @example To view a list of applications
    #   # The following operation retrieves information about applications in the current region:
    #   params = {}
    #   options = {}
    #   response = client.describe_applications(params, options)
    #   response.to_h #=>
    #   {
    #     applications: [
    #       {
    #         application_name: "ruby",
    #         configuration_templates: [
    #         ],
    #         date_updated: Time.parse("2015-08-13T21:05:44.376Z"),
    #         versions: [
    #           "Sample Application"
    #         ],
    #         date_created: Time.parse("2015-08-13T21:05:44.376Z")
    #       },
    #       {
    #         application_name: "pythonsample",
    #         description: "Application created from the EB CLI using \"eb init\"",
    #         versions: [
    #           "Sample Application"
    #         ],
    #         date_created: Time.parse("2015-08-13T19:05:43.637Z"),
    #         configuration_templates: [
    #         ],
    #         date_updated: Time.parse("2015-08-13T19:05:43.637Z")
    #       },
    #       {
    #         application_name: "nodejs-example",
    #         configuration_templates: [
    #         ],
    #         date_updated: Time.parse("2015-08-06T17:50:02.486Z"),
    #         versions: [
    #           "add elasticache",
    #           "First Release"
    #         ],
    #         date_created: Time.parse("2015-08-06T17:50:02.486Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_names: ["ApplicationName"]
    #   }
    #   options = {}
    #   response = client.describe_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     applications: [
    #       {
    #         application_arn: "ApplicationArn",
    #         application_name: "ApplicationName",
    #         description: "Description",
    #         date_created: Time.now,
    #         date_updated: Time.now,
    #         versions: ["VersionLabel"],
    #         configuration_templates: ["ConfigurationTemplateName"],
    #         resource_lifecycle_config: {
    #           service_role: "String",
    #           version_lifecycle_config: {
    #             max_count_rule: {
    #               enabled: false, # required
    #               max_count: 1,
    #               delete_source_from_s3: false
    #             },
    #             max_age_rule: {
    #               enabled: false, # required
    #               max_age_in_days: 1,
    #               delete_source_from_s3: false
    #             }
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ApplicationDescriptionsMessage]
    def describe_applications(params = {}, options = {})
      request = build_request(:describe_applications, params)
      request.send_request(options)
    end

    # <p>Describes the configuration options that are used in a particular configuration
    #       template or environment, or that a specified solution stack defines. The description includes
    #       the values the options, their default values, and an indication of the required action on a
    #       running environment if an option value is changed.</p>
    # @param [Hash, Types::DescribeConfigurationOptionsMessage] params
    # @option params [String] :application_name
    #   <p>The name of the application associated with the configuration template or environment.
    #         Only needed if you want to describe the configuration options associated with either the
    #         configuration template or environment.</p>
    # @option params [String] :template_name
    #   <p>The name of the configuration template whose configuration options you want to
    #         describe.</p>
    # @option params [String] :environment_name
    #   <p>The name of the environment whose configuration options you want to describe.</p>
    # @option params [String] :solution_stack_name
    #   <p>The name of the solution stack whose configuration options you want to
    #         describe.</p>
    # @option params [String] :platform_arn
    #   <p>The ARN of the custom platform.</p>
    # @option params [Array<Types::OptionSpecification>] :options
    #   <p>If specified, restricts the descriptions to only the specified options.</p>
    # @example To view configuration options for an environment
    #   # The following operation retrieves descriptions of all available configuration options for an environment named my-env:
    #   params = {
    #     application_name: "my-app",
    #     environment_name: "my-env"
    #   }
    #   options = {}
    #   response = client.describe_configuration_options(params, options)
    #   response.to_h #=>
    #   {
    #     options: [
    #       {
    #         name: "Interval",
    #         user_defined: false,
    #         default_value: "30",
    #         change_severity: "NoInterruption",
    #         namespace: "aws:elb:healthcheck",
    #         max_value: 300,
    #         min_value: 5,
    #         value_type: Scalar
    #       },
    #       {
    #         name: "LowerThreshold",
    #         user_defined: false,
    #         default_value: "2000000",
    #         change_severity: "NoInterruption",
    #         namespace: "aws:autoscaling:trigger",
    #         min_value: 0,
    #         value_type: Scalar
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName",
    #     template_name: "ConfigurationTemplateName",
    #     environment_name: "EnvironmentName",
    #     solution_stack_name: "SolutionStackName",
    #     platform_arn: "PlatformArn",
    #     options: [
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_configuration_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     solution_stack_name: "SolutionStackName",
    #     platform_arn: "PlatformArn",
    #     options: [
    #       {
    #         namespace: "OptionNamespace",
    #         name: "ConfigurationOptionName",
    #         default_value: "ConfigurationOptionDefaultValue",
    #         change_severity: "ConfigurationOptionSeverity",
    #         user_defined: false,
    #         value_type: "Scalar" # One of: ["Scalar", "List"],
    #         value_options: ["ConfigurationOptionPossibleValue"],
    #         min_value: 1,
    #         max_value: 1,
    #         max_length: 1,
    #         regex: {
    #           pattern: "RegexPattern",
    #           label: "RegexLabel"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeConfigurationOptionsOutput]
    def describe_configuration_options(params = {}, options = {})
      request = build_request(:describe_configuration_options, params)
      request.send_request(options)
    end

    # <p>Returns a description of the settings for the specified configuration set, that is,
    #       either a configuration template or the configuration set associated with a running
    #       environment.</p>
    #          <p>When describing the settings for the configuration set associated with a running
    #       environment, it is possible to receive two sets of setting descriptions. One is the deployed
    #       configuration set, and the other is a draft configuration of an environment that is either in
    #       the process of deployment or that failed to deploy.</p>
    #          <p>Related Topics</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DeleteEnvironmentConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DescribeConfigurationSettingsMessage] params
    # @option params [String] :application_name
    #   <p>The application for the environment or configuration template.</p>
    # @option params [String] :template_name
    #   <p>The name of the configuration template to describe.</p>
    #            <p> Conditional: You must specify either this parameter or an EnvironmentName, but not
    #         both. If you specify both, AWS Elastic Beanstalk returns an
    #           <code>InvalidParameterCombination</code> error. If you do not specify either, AWS Elastic
    #         Beanstalk returns a <code>MissingRequiredParameter</code> error. </p>
    # @option params [String] :environment_name
    #   <p>The name of the environment to describe.</p>
    #            <p> Condition: You must specify either this or a TemplateName, but not both. If you
    #         specify both, AWS Elastic Beanstalk returns an <code>InvalidParameterCombination</code> error.
    #         If you do not specify either, AWS Elastic Beanstalk returns
    #           <code>MissingRequiredParameter</code> error. </p>
    # @example To view configurations settings for an environment
    #   # The following operation retrieves configuration settings for an environment named my-env:
    #   params = {
    #     application_name: "my-app",
    #     environment_name: "my-env"
    #   }
    #   options = {}
    #   response = client.describe_configuration_settings(params, options)
    #   response.to_h #=>
    #   {
    #     configuration_settings: [
    #       {
    #         application_name: "my-app",
    #         environment_name: "my-env",
    #         description: "Environment created from the EB CLI using \"eb create\"",
    #         deployment_status: deployed,
    #         date_created: Time.parse("2015-08-13T19:16:25Z"),
    #         option_settings: [
    #           {
    #             option_name: "Availability Zones",
    #             resource_name: "AWSEBAutoScalingGroup",
    #             namespace: "aws:autoscaling:asg",
    #             value: "Any"
    #           },
    #           {
    #             option_name: "Cooldown",
    #             resource_name: "AWSEBAutoScalingGroup",
    #             namespace: "aws:autoscaling:asg",
    #             value: "360"
    #           },
    #           {
    #             option_name: "ConnectionDrainingTimeout",
    #             resource_name: "AWSEBLoadBalancer",
    #             namespace: "aws:elb:policies",
    #             value: "20"
    #           },
    #           {
    #             option_name: "ConnectionSettingIdleTimeout",
    #             resource_name: "AWSEBLoadBalancer",
    #             namespace: "aws:elb:policies",
    #             value: "60"
    #           }
    #         ],
    #         date_updated: Time.parse("2015-08-13T23:30:07Z"),
    #         solution_stack_name: "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     template_name: "ConfigurationTemplateName",
    #     environment_name: "EnvironmentName"
    #   }
    #   options = {}
    #   response = client.describe_configuration_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_settings: [
    #       {
    #         solution_stack_name: "SolutionStackName",
    #         platform_arn: "PlatformArn",
    #         application_name: "ApplicationName",
    #         template_name: "ConfigurationTemplateName",
    #         description: "Description",
    #         environment_name: "EnvironmentName",
    #         deployment_status: "deployed" # One of: ["deployed", "pending", "failed"],
    #         date_created: Time.now,
    #         date_updated: Time.now,
    #         option_settings: [
    #           {
    #             resource_name: "ResourceName",
    #             namespace: "OptionNamespace",
    #             option_name: "ConfigurationOptionName",
    #             value: "ConfigurationOptionValue"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeConfigurationSettingsOutput]
    def describe_configuration_settings(params = {}, options = {})
      request = build_request(:describe_configuration_settings, params)
      request.send_request(options)
    end

    # <p>Returns information about the overall health of the specified environment. The
    #         <b>DescribeEnvironmentHealth</b> operation is only available with
    #       AWS Elastic Beanstalk Enhanced Health.</p>
    # @param [Hash, Types::DescribeEnvironmentHealthRequest] params
    # @option params [String] :environment_name
    #   <p>Specify the environment by name.</p>
    #            <p>You must specify either this or an EnvironmentName, or both.</p>
    # @option params [String] :environment_id
    #   <p>Specify the environment by ID.</p>
    #            <p>You must specify either this or an EnvironmentName, or both.</p>
    # @option params [Array<String>] :attribute_names
    #   <p>Specify the response elements to return. To retrieve all attributes, set to
    #           <code>All</code>. If no attribute names are specified, returns the name of the
    #         environment.</p>
    # @example To view environment health
    #   # The following operation retrieves overall health information for an environment named my-env:
    #   params = {
    #     environment_name: "my-env",
    #     attribute_names: [
    #       All
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_environment_health(params, options)
    #   response.to_h #=>
    #   {
    #     environment_name: "my-env",
    #     color: "Green",
    #     application_metrics: {
    #       duration: 10,
    #       latency: {
    #         p99: 0.004,
    #         p75: 0.002,
    #         p90: 0.003,
    #         p95: 0.004,
    #         p85: 0.003,
    #         p10: 0.001,
    #         p999: 0.004,
    #         p50: 0.001
    #       },
    #       request_count: 45,
    #       status_codes: {
    #         status3xx: 0,
    #         status2xx: 45,
    #         status5xx: 0,
    #         status4xx: 0
    #       }
    #     },
    #     refreshed_at: Time.parse("2015-08-20T21:09:18Z"),
    #     health_status: "Ok",
    #     instances_health: {
    #       info: 0,
    #       ok: 1,
    #       unknown: 0,
    #       severe: 0,
    #       warning: 0,
    #       degraded: 0,
    #       no_data: 0,
    #       pending: 0
    #     },
    #     causes: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_name: "EnvironmentName",
    #     environment_id: "EnvironmentId",
    #     attribute_names: ["Status" # One of: ["Status", "Color", "Causes", "ApplicationMetrics", "InstancesHealth", "All", "HealthStatus", "RefreshedAt"]]
    #   }
    #   options = {}
    #   response = client.describe_environment_health(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_name: "EnvironmentName",
    #     health_status: "String",
    #     status: "Green" # One of: ["Green", "Yellow", "Red", "Grey"],
    #     color: "String",
    #     causes: ["Cause"],
    #     application_metrics: {
    #       duration: 1,
    #       request_count: 1,
    #       status_codes: {
    #         status2xx: 1,
    #         status3xx: 1,
    #         status4xx: 1,
    #         status5xx: 1
    #       },
    #       latency: {
    #         p999: 1.0,
    #         p99: 1.0,
    #         p95: 1.0,
    #         p90: 1.0,
    #         p85: 1.0,
    #         p75: 1.0,
    #         p50: 1.0,
    #         p10: 1.0
    #       }
    #     },
    #     instances_health: {
    #       no_data: 1,
    #       unknown: 1,
    #       pending: 1,
    #       ok: 1,
    #       info: 1,
    #       warning: 1,
    #       degraded: 1,
    #       severe: 1
    #     },
    #     refreshed_at: Time.now
    #   }
    # @return [Types::DescribeEnvironmentHealthResult]
    def describe_environment_health(params = {}, options = {})
      request = build_request(:describe_environment_health, params)
      request.send_request(options)
    end

    # <p>Lists an environment's completed and failed managed actions.</p>
    # @param [Hash, Types::DescribeEnvironmentManagedActionHistoryRequest] params
    # @option params [String] :environment_id
    #   <p>The environment ID of the target environment.</p>
    # @option params [String] :environment_name
    #   <p>The name of the target environment.</p>
    # @option params [String] :next_token
    #   <p>The pagination token returned by a previous request.</p>
    # @option params [Integer] :max_items
    #   <p>The maximum number of items to return for a single request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId",
    #     environment_name: "EnvironmentName",
    #     next_token: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   response = client.describe_environment_managed_action_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_action_history_items: [
    #       {
    #         action_id: "String",
    #         action_type: "InstanceRefresh" # One of: ["InstanceRefresh", "PlatformUpdate", "Unknown"],
    #         action_description: "String",
    #         failure_type: "UpdateCancelled" # One of: ["UpdateCancelled", "CancellationFailed", "RollbackFailed", "RollbackSuccessful", "InternalFailure", "InvalidEnvironmentState", "PermissionsError"],
    #         status: "Completed" # One of: ["Completed", "Failed", "Unknown"],
    #         failure_description: "String",
    #         executed_time: Time.now,
    #         finished_time: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeEnvironmentManagedActionHistoryResult]
    def describe_environment_managed_action_history(params = {}, options = {})
      request = build_request(:describe_environment_managed_action_history, params)
      request.send_request(options)
    end

    # <p>Lists an environment's upcoming and in-progress managed actions.</p>
    # @param [Hash, Types::DescribeEnvironmentManagedActionsRequest] params
    # @option params [String] :environment_name
    #   <p>The name of the target environment.</p>
    # @option params [String] :environment_id
    #   <p>The environment ID of the target environment.</p>
    # @option params [String] :status
    #   <p>To show only actions with a particular status, specify a status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_name: "String",
    #     environment_id: "String",
    #     status: "Scheduled" # One of: ["Scheduled", "Pending", "Running", "Unknown"]
    #   }
    #   options = {}
    #   response = client.describe_environment_managed_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_actions: [
    #       {
    #         action_id: "String",
    #         action_description: "String",
    #         action_type: "InstanceRefresh" # One of: ["InstanceRefresh", "PlatformUpdate", "Unknown"],
    #         status: "Scheduled" # One of: ["Scheduled", "Pending", "Running", "Unknown"],
    #         window_start_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::DescribeEnvironmentManagedActionsResult]
    def describe_environment_managed_actions(params = {}, options = {})
      request = build_request(:describe_environment_managed_actions, params)
      request.send_request(options)
    end

    # <p>Returns AWS resources for this environment.</p>
    # @param [Hash, Types::DescribeEnvironmentResourcesMessage] params
    # @option params [String] :environment_id
    #   <p>The ID of the environment to retrieve AWS resource usage data.</p>
    #            <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    # @option params [String] :environment_name
    #   <p>The name of the environment to retrieve AWS resource usage data.</p>
    #            <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    # @example To view information about the AWS resources in your environment
    #   # The following operation retrieves information about resources in an environment named my-env:
    #   params = {
    #     environment_name: "my-env"
    #   }
    #   options = {}
    #   response = client.describe_environment_resources(params, options)
    #   response.to_h #=>
    #   {
    #     environment_resources: {
    #       environment_name: "my-env",
    #       auto_scaling_groups: [
    #         {
    #           name: "awseb-e-qu3fyyjyjs-stack-AWSEBAutoScalingGroup-QSB2ZO88SXZT"
    #         }
    #       ],
    #       triggers: [
    #       ],
    #       load_balancers: [
    #         {
    #           name: "awseb-e-q-AWSEBLoa-1EEPZ0K98BIF0"
    #         }
    #       ],
    #       queues: [
    #       ],
    #       instances: [
    #         {
    #           id: "i-0c91c786"
    #         }
    #       ],
    #       launch_configurations: [
    #         {
    #           name: "awseb-e-qu3fyyjyjs-stack-AWSEBAutoScalingLaunchConfiguration-1UUVQIBC96TQ2"
    #         }
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId",
    #     environment_name: "EnvironmentName"
    #   }
    #   options = {}
    #   response = client.describe_environment_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_resources: {
    #       environment_name: "EnvironmentName",
    #       auto_scaling_groups: [
    #         {
    #           name: "ResourceId"
    #         }
    #       ],
    #       instances: [
    #         {
    #           id: "ResourceId"
    #         }
    #       ],
    #       launch_configurations: [
    #         {
    #           name: "ResourceId"
    #         }
    #       ],
    #       launch_templates: [
    #         {
    #           id: "ResourceId"
    #         }
    #       ],
    #       load_balancers: [
    #         {
    #           name: "ResourceId"
    #         }
    #       ],
    #       triggers: [
    #         {
    #           name: "ResourceId"
    #         }
    #       ],
    #       queues: [
    #         {
    #           name: "String",
    #           url: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::EnvironmentResourceDescriptionsMessage]
    def describe_environment_resources(params = {}, options = {})
      request = build_request(:describe_environment_resources, params)
      request.send_request(options)
    end

    # <p>Returns descriptions for existing environments.</p>
    # @param [Hash, Types::DescribeEnvironmentsMessage] params
    # @option params [String] :application_name
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only
    #         those that are associated with this application.</p>
    # @option params [String] :version_label
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only
    #         those that are associated with this application version.</p>
    # @option params [Array<String>] :environment_ids
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only
    #         those that have the specified IDs.</p>
    # @option params [Array<String>] :environment_names
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only
    #         those that have the specified names.</p>
    # @option params [Boolean] :include_deleted
    #   <p>Indicates whether to include deleted environments:</p>
    #            <p>
    #               <code>true</code>: Environments that have been deleted after
    #         <code>IncludedDeletedBackTo</code> are displayed.</p>
    #            <p>
    #               <code>false</code>: Do not include deleted environments.</p>
    # @option params [Time] :included_deleted_back_to
    #   <p> If specified when <code>IncludeDeleted</code> is set to <code>true</code>, then
    #         environments deleted after this date are displayed. </p>
    # @option params [Integer] :max_records
    #   <p>For a paginated request. Specify a maximum number of environments to include in
    #         each response.</p>
    #            <p>If no <code>MaxRecords</code> is specified, all available environments are
    #         retrieved in a single response.</p>
    # @option params [String] :next_token
    #   <p>For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other
    #         parameter values must be identical to the ones specified in the initial request.</p>
    #            <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>
    # @example To view information about an environment
    #   # The following operation retrieves information about an environment named my-env:
    #   params = {
    #     environment_names: [
    #       "my-env"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_environments(params, options)
    #   response.to_h #=>
    #   {
    #     environments: [
    #       {
    #         application_name: "my-app",
    #         environment_name: "my-env",
    #         version_label: "7f58-stage-150812_025409",
    #         status: Ready,
    #         environment_id: "e-rpqsewtp2j",
    #         endpoint_url: "awseb-e-w-AWSEBLoa-1483140XB0Q4L-109QXY8121.us-west-2.elb.amazonaws.com",
    #         solution_stack_name: "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8",
    #         cname: "my-env.elasticbeanstalk.com",
    #         health: Green,
    #         abortable_operation_in_progress: false,
    #         tier: {
    #           version: " ",
    #           type: "Standard",
    #           name: "WebServer"
    #         },
    #         date_updated: Time.parse("2015-08-12T18:16:55.019Z"),
    #         date_created: Time.parse("2015-08-07T20:48:49.599Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName",
    #     version_label: "VersionLabel",
    #     environment_ids: ["EnvironmentId"],
    #     environment_names: ["EnvironmentName"],
    #     include_deleted: false,
    #     included_deleted_back_to: Time.now,
    #     max_records: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.describe_environments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environments: [
    #       {
    #         environment_name: "EnvironmentName",
    #         environment_id: "EnvironmentId",
    #         application_name: "ApplicationName",
    #         version_label: "VersionLabel",
    #         solution_stack_name: "SolutionStackName",
    #         platform_arn: "PlatformArn",
    #         template_name: "ConfigurationTemplateName",
    #         description: "Description",
    #         endpoint_url: "EndpointURL",
    #         cname: "DNSCname",
    #         date_created: Time.now,
    #         date_updated: Time.now,
    #         status: "Aborting" # One of: ["Aborting", "Launching", "Updating", "LinkingFrom", "LinkingTo", "Ready", "Terminating", "Terminated"],
    #         abortable_operation_in_progress: false,
    #         health: "Green" # One of: ["Green", "Yellow", "Red", "Grey"],
    #         health_status: "NoData" # One of: ["NoData", "Unknown", "Pending", "Ok", "Info", "Warning", "Degraded", "Severe", "Suspended"],
    #         resources: {
    #           load_balancer: {
    #             load_balancer_name: "String",
    #             domain: "String",
    #             listeners: [
    #               {
    #                 protocol: "String",
    #                 port: 1
    #               }
    #             ]
    #           }
    #         },
    #         tier: {
    #           name: "String",
    #           type: "String",
    #           version: "String"
    #         },
    #         environment_links: [
    #           {
    #             link_name: "String",
    #             environment_name: "String"
    #           }
    #         ],
    #         environment_arn: "EnvironmentArn",
    #         operations_role: "OperationsRole"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::DescribeEnvironmentsOutput]
    def describe_environments(params = {}, options = {})
      request = build_request(:describe_environments, params)
      request.send_request(options)
    end

    # <p>Returns list of event descriptions matching criteria up to the last 6 weeks.</p>
    #          <note>
    #             <p>This action returns the most recent 1,000 events from the specified
    #           <code>NextToken</code>.</p>
    #          </note>
    # @param [Hash, Types::DescribeEventsMessage] params
    # @option params [String] :application_name
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only
    #         those associated with this application.</p>
    # @option params [String] :version_label
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those
    #         associated with this application version.</p>
    # @option params [String] :template_name
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that
    #         are associated with this environment configuration.</p>
    # @option params [String] :environment_id
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those
    #         associated with this environment.</p>
    # @option params [String] :environment_name
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those
    #         associated with this environment.</p>
    # @option params [String] :platform_arn
    #   <p>The ARN of a custom platform version. If specified, AWS Elastic Beanstalk restricts the
    #         returned descriptions to those associated with this custom platform version.</p>
    # @option params [String] :request_id
    #   <p>If specified, AWS Elastic Beanstalk restricts the described events to include only
    #         those associated with this request ID.</p>
    # @option params [String] :severity
    #   <p>If specified, limits the events returned from this call to include only those with the
    #         specified severity or higher.</p>
    # @option params [Time] :start_time
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that
    #         occur on or after this time.</p>
    # @option params [Time] :end_time
    #   <p> If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that
    #         occur up to, but not including, the <code>EndTime</code>. </p>
    # @option params [Integer] :max_records
    #   <p>Specifies the maximum number of events that can be returned, beginning with the most
    #         recent event.</p>
    # @option params [String] :next_token
    #   <p>Pagination token. If specified, the events return the next batch of results.</p>
    # @example To view events for an environment
    #   # The following operation retrieves events for an environment named my-env:
    #   params = {
    #     environment_name: "my-env"
    #   }
    #   options = {}
    #   response = client.describe_events(params, options)
    #   response.to_h #=>
    #   {
    #     events: [
    #       {
    #         application_name: "my-app",
    #         environment_name: "my-env",
    #         message: "Environment health has transitioned from Info to Ok.",
    #         event_date: Time.parse("2015-08-20T07:06:53.535Z"),
    #         severity: INFO
    #       },
    #       {
    #         application_name: "my-app",
    #         environment_name: "my-env",
    #         severity: INFO,
    #         request_id: "b7f3960b-4709-11e5-ba1e-07e16200da41",
    #         message: "Environment update completed successfully.",
    #         event_date: Time.parse("2015-08-20T07:06:02.049Z")
    #       },
    #       {
    #         application_name: "my-app",
    #         environment_name: "my-env",
    #         severity: INFO,
    #         request_id: "ca8dfbf6-41ef-11e5-988b-651aa638f46b",
    #         message: "Using elasticbeanstalk-us-west-2-012445113685 as Amazon S3 storage bucket for environment data.",
    #         event_date: Time.parse("2015-08-13T19:16:27.561Z")
    #       },
    #       {
    #         application_name: "my-app",
    #         environment_name: "my-env",
    #         severity: INFO,
    #         request_id: "cdfba8f6-41ef-11e5-988b-65638f41aa6b",
    #         message: "createEnvironment is starting.",
    #         event_date: Time.parse("2015-08-13T19:16:26.581Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName",
    #     version_label: "VersionLabel",
    #     template_name: "ConfigurationTemplateName",
    #     environment_id: "EnvironmentId",
    #     environment_name: "EnvironmentName",
    #     platform_arn: "PlatformArn",
    #     request_id: "RequestId",
    #     severity: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     max_records: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.describe_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: [
    #       {
    #         event_date: Time.now,
    #         message: "EventMessage",
    #         application_name: "ApplicationName",
    #         version_label: "VersionLabel",
    #         template_name: "ConfigurationTemplateName",
    #         environment_name: "EnvironmentName",
    #         platform_arn: "PlatformArn",
    #         request_id: "RequestId",
    #         severity: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::EventDescriptionsMessage]
    def describe_events(params = {}, options = {})
      request = build_request(:describe_events, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about the health of instances in your AWS Elastic
    #       Beanstalk. This operation requires <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced.html">enhanced health
    #       reporting</a>.</p>
    # @param [Hash, Types::DescribeInstancesHealthRequest] params
    # @option params [String] :environment_name
    #   <p>Specify the AWS Elastic Beanstalk environment by name.</p>
    # @option params [String] :environment_id
    #   <p>Specify the AWS Elastic Beanstalk environment by ID.</p>
    # @option params [Array<String>] :attribute_names
    #   <p>Specifies the response elements you wish to receive. To retrieve all attributes, set to
    #           <code>All</code>. If no attribute names are specified, returns a list of
    #         instances.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token returned by a previous call.</p>
    # @example To view environment health
    #   # The following operation retrieves health information for instances in an environment named my-env:
    #   params = {
    #     environment_name: "my-env",
    #     attribute_names: [
    #       All
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_instances_health(params, options)
    #   response.to_h #=>
    #   {
    #     instance_health_list: [
    #       {
    #         instance_id: "i-08691cc7",
    #         application_metrics: {
    #           duration: 10,
    #           latency: {
    #             p99: 0.006,
    #             p75: 0.002,
    #             p90: 0.004,
    #             p95: 0.005,
    #             p85: 0.003,
    #             p10: 0,
    #             p999: 0.006,
    #             p50: 0.001
    #           },
    #           request_count: 48,
    #           status_codes: {
    #             status3xx: 0,
    #             status2xx: 47,
    #             status5xx: 0,
    #             status4xx: 1
    #           }
    #         },
    #         system: {
    #           load_average: [
    #             0,
    #             0.02,
    #             0.05
    #           ],
    #           cpu_utilization: {
    #             soft_irq: 0.1,
    #             io_wait: 0.2,
    #             system: 0.3,
    #             idle: 97.8,
    #             user: 1.5,
    #             irq: 0,
    #             nice: 0.1
    #           }
    #         },
    #         color: "Green",
    #         health_status: "Ok",
    #         launched_at: Time.parse("2015-08-13T19:17:09Z"),
    #         causes: [
    #         ]
    #       }
    #     ],
    #     refreshed_at: Time.parse("2015-08-20T21:09:08Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_name: "EnvironmentName",
    #     environment_id: "EnvironmentId",
    #     attribute_names: ["HealthStatus" # One of: ["HealthStatus", "Color", "Causes", "ApplicationMetrics", "RefreshedAt", "LaunchedAt", "System", "Deployment", "AvailabilityZone", "InstanceType", "All"]],
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_instances_health(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_health_list: [
    #       {
    #         instance_id: "InstanceId",
    #         health_status: "String",
    #         color: "String",
    #         causes: ["Cause"],
    #         launched_at: Time.now,
    #         application_metrics: {
    #           duration: 1,
    #           request_count: 1,
    #           status_codes: {
    #             status2xx: 1,
    #             status3xx: 1,
    #             status4xx: 1,
    #             status5xx: 1
    #           },
    #           latency: {
    #             p999: 1.0,
    #             p99: 1.0,
    #             p95: 1.0,
    #             p90: 1.0,
    #             p85: 1.0,
    #             p75: 1.0,
    #             p50: 1.0,
    #             p10: 1.0
    #           }
    #         },
    #         system: {
    #           cpu_utilization: {
    #             user: 1.0,
    #             nice: 1.0,
    #             system: 1.0,
    #             idle: 1.0,
    #             io_wait: 1.0,
    #             irq: 1.0,
    #             soft_irq: 1.0,
    #             privileged: 1.0
    #           },
    #           load_average: [1.0]
    #         },
    #         deployment: {
    #           version_label: "String",
    #           deployment_id: 1,
    #           status: "String",
    #           deployment_time: Time.now
    #         },
    #         availability_zone: "String",
    #         instance_type: "String"
    #       }
    #     ],
    #     refreshed_at: Time.now,
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeInstancesHealthResult]
    def describe_instances_health(params = {}, options = {})
      request = build_request(:describe_instances_health, params)
      request.send_request(options)
    end

    # <p>Describes a platform version. Provides full details. Compare to <a>ListPlatformVersions</a>, which provides summary information about a list of
    #       platform versions.</p>
    #          <p>For definitions of platform version and other platform-related terms, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html">AWS Elastic Beanstalk
    #         Platforms Glossary</a>.</p>
    # @param [Hash, Types::DescribePlatformVersionRequest] params
    # @option params [String] :platform_arn
    #   <p>The ARN of the platform version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     platform_arn: "PlatformArn"
    #   }
    #   options = {}
    #   response = client.describe_platform_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     platform_description: {
    #       platform_arn: "PlatformArn",
    #       platform_owner: "PlatformOwner",
    #       platform_name: "PlatformName",
    #       platform_version: "PlatformVersion",
    #       solution_stack_name: "SolutionStackName",
    #       platform_status: "Creating" # One of: ["Creating", "Failed", "Ready", "Deleting", "Deleted"],
    #       date_created: Time.now,
    #       date_updated: Time.now,
    #       platform_category: "PlatformCategory",
    #       description: "Description",
    #       maintainer: "Maintainer",
    #       operating_system_name: "OperatingSystemName",
    #       operating_system_version: "OperatingSystemVersion",
    #       programming_languages: [
    #         {
    #           name: "String",
    #           version: "String"
    #         }
    #       ],
    #       frameworks: [
    #         {
    #           name: "String",
    #           version: "String"
    #         }
    #       ],
    #       custom_ami_list: [
    #         {
    #           virtualization_type: "VirtualizationType",
    #           image_id: "ImageId"
    #         }
    #       ],
    #       supported_tier_list: ["SupportedTier"],
    #       supported_addon_list: ["SupportedAddon"],
    #       platform_lifecycle_state: "PlatformLifecycleState",
    #       platform_branch_name: "BranchName",
    #       platform_branch_lifecycle_state: "PlatformBranchLifecycleState"
    #     }
    #   }
    # @return [Types::DescribePlatformVersionResult]
    def describe_platform_version(params = {}, options = {})
      request = build_request(:describe_platform_version, params)
      request.send_request(options)
    end

    # <p>Disassociate the operations role from an environment. After this call is made, Elastic Beanstalk uses
    #       the caller's permissions for permissions to downstream services during subsequent calls acting
    #       on this environment. For more information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html">Operations roles</a> in the
    #         <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    # @param [Hash, Types::DisassociateEnvironmentOperationsRoleMessage] params
    # @option params [String] :environment_name
    #   <p>The name of the environment from which to disassociate the operations role.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_name: "EnvironmentName", # required
    #   }
    #   options = {}
    #   response = client.disassociate_environment_operations_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_environment_operations_role(params = {}, options = {})
      request = build_request(:disassociate_environment_operations_role, params)
      request.send_request(options)
    end

    # <p>Returns a list of the available solution stack names, with the public version first and
    #       then in reverse chronological order.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example To view solution stacks
    #   # The following operation lists solution stacks for all currently available platform configurations and any that you have used in the past:
    #   params = {}
    #   options = {}
    #   response = client.list_available_solution_stacks(params, options)
    #   response.to_h #=>
    #   {
    #     solution_stacks: [
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Node.js",
    #       "64bit Amazon Linux 2015.03 v2.0.0 running PHP 5.6",
    #       "64bit Amazon Linux 2015.03 v2.0.0 running PHP 5.5",
    #       "64bit Amazon Linux 2015.03 v2.0.0 running PHP 5.4",
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Python 3.4",
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Python 2.7",
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Python",
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.2 (Puma)",
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.2 (Passenger Standalone)",
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.1 (Puma)",
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.1 (Passenger Standalone)",
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.0 (Puma)",
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 2.0 (Passenger Standalone)",
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Ruby 1.9.3",
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8",
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 7 Java 7",
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 7 Java 6",
    #       "64bit Windows Server Core 2012 R2 running IIS 8.5",
    #       "64bit Windows Server 2012 R2 running IIS 8.5",
    #       "64bit Windows Server 2012 running IIS 8",
    #       "64bit Windows Server 2008 R2 running IIS 7.5",
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Docker 1.6.2",
    #       "64bit Amazon Linux 2015.03 v2.0.0 running Multi-container Docker 1.6.2 (Generic)",
    #       "64bit Debian jessie v2.0.0 running GlassFish 4.1 Java 8 (Preconfigured - Docker)",
    #       "64bit Debian jessie v2.0.0 running GlassFish 4.0 Java 7 (Preconfigured - Docker)",
    #       "64bit Debian jessie v2.0.0 running Go 1.4 (Preconfigured - Docker)",
    #       "64bit Debian jessie v2.0.0 running Go 1.3 (Preconfigured - Docker)",
    #       "64bit Debian jessie v2.0.0 running Python 3.4 (Preconfigured - Docker)"
    #     ],
    #     solution_stack_details: [
    #       {
    #         permitted_file_types: [
    #           "zip"
    #         ],
    #         solution_stack_name: "64bit Amazon Linux 2015.03 v2.0.0 running Node.js"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.list_available_solution_stacks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     solution_stacks: ["SolutionStackName"],
    #     solution_stack_details: [
    #       {
    #         solution_stack_name: "SolutionStackName",
    #         permitted_file_types: ["FileTypeExtension"]
    #       }
    #     ]
    #   }
    # @return [Types::ListAvailableSolutionStacksResultMessage]
    def list_available_solution_stacks(params = {}, options = {})
      request = build_request(:list_available_solution_stacks, params)
      request.send_request(options)
    end

    # <p>Lists the platform branches available for your account in an AWS Region. Provides
    #       summary information about each platform branch.</p>
    #          <p>For definitions of platform branch and other platform-related terms, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html">AWS Elastic Beanstalk
    #         Platforms Glossary</a>.</p>
    # @param [Hash, Types::ListPlatformBranchesRequest] params
    # @option params [Array<Types::SearchFilter>] :filters
    #   <p>Criteria for restricting the resulting list of platform branches. The filter is evaluated
    #         as a logical conjunction (AND) of the separate <code>SearchFilter</code> terms.</p>
    #            <p>The following list shows valid attribute values for each of the <code>SearchFilter</code>
    #         terms. Most operators take a single value. The <code>in</code> and <code>not_in</code>
    #         operators can take multiple values.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Attribute = BranchName</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Operator</code>: <code>=</code> | <code>!=</code> | <code>begins_with</code>
    #                 | <code>ends_with</code> | <code>contains</code> | <code>in</code> |
    #                   <code>not_in</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Attribute = LifecycleState</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Operator</code>: <code>=</code> | <code>!=</code> | <code>in</code> |
    #                   <code>not_in</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Values</code>: <code>beta</code> | <code>supported</code> |
    #                   <code>deprecated</code> | <code>retired</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Attribute = PlatformName</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Operator</code>: <code>=</code> | <code>!=</code> | <code>begins_with</code>
    #                 | <code>ends_with</code> | <code>contains</code> | <code>in</code> |
    #                 <code>not_in</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Attribute = TierType</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Operator</code>: <code>=</code> | <code>!=</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Values</code>: <code>WebServer/Standard</code> | <code>Worker/SQS/HTTP</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p>Array size: limited to 10 <code>SearchFilter</code> objects.</p>
    #            <p>Within each <code>SearchFilter</code> item, the <code>Values</code> array is limited to 10
    #         items.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of platform branch values returned in one call.</p>
    # @option params [String] :next_token
    #   <p>For a paginated request. Specify a token from a previous response page to retrieve the
    #         next response page. All other parameter values must be identical to the ones specified in the
    #         initial request.</p>
    #            <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         attribute: "SearchFilterAttribute",
    #         operator: "SearchFilterOperator",
    #         values: ["SearchFilterValue"]
    #       }
    #     ],
    #     max_records: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_platform_branches(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     platform_branch_summary_list: [
    #       {
    #         platform_name: "PlatformName",
    #         branch_name: "BranchName",
    #         lifecycle_state: "PlatformBranchLifecycleState",
    #         branch_order: 1,
    #         supported_tier_list: ["SupportedTier"]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListPlatformBranchesResult]
    def list_platform_branches(params = {}, options = {})
      request = build_request(:list_platform_branches, params)
      request.send_request(options)
    end

    # <p>Lists the platform versions available for your account in an AWS Region. Provides
    #       summary information about each platform version. Compare to <a>DescribePlatformVersion</a>, which provides full details about a single platform
    #       version.</p>
    #          <p>For definitions of platform version and other platform-related terms, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html">AWS Elastic Beanstalk
    #         Platforms Glossary</a>.</p>
    # @param [Hash, Types::ListPlatformVersionsRequest] params
    # @option params [Array<Types::PlatformFilter>] :filters
    #   <p>Criteria for restricting the resulting list of platform versions. The filter is
    #         interpreted as a logical conjunction (AND) of the separate <code>PlatformFilter</code>
    #         terms.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of platform version values returned in one call.</p>
    # @option params [String] :next_token
    #   <p>For a paginated request. Specify a token from a previous response page to retrieve the
    #         next response page. All other parameter values must be identical to the ones specified in the
    #         initial request.</p>
    #            <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         type: "PlatformFilterType",
    #         operator: "PlatformFilterOperator",
    #         values: ["PlatformFilterValue"]
    #       }
    #     ],
    #     max_records: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_platform_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     platform_summary_list: [
    #       {
    #         platform_arn: "PlatformArn",
    #         platform_owner: "PlatformOwner",
    #         platform_status: "Creating" # One of: ["Creating", "Failed", "Ready", "Deleting", "Deleted"],
    #         platform_category: "PlatformCategory",
    #         operating_system_name: "OperatingSystemName",
    #         operating_system_version: "OperatingSystemVersion",
    #         supported_tier_list: ["SupportedTier"],
    #         supported_addon_list: ["SupportedAddon"],
    #         platform_lifecycle_state: "PlatformLifecycleState",
    #         platform_version: "PlatformVersion",
    #         platform_branch_name: "BranchName",
    #         platform_branch_lifecycle_state: "PlatformBranchLifecycleState"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListPlatformVersionsResult]
    def list_platform_versions(params = {}, options = {})
      request = build_request(:list_platform_versions, params)
      request.send_request(options)
    end

    # <p>Return the tags applied to an AWS Elastic Beanstalk resource. The response contains a list of tag key-value pairs.</p>
    #          <p>Elastic Beanstalk supports tagging of all of its resources. For details about resource tagging, see
    #         <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-tagging-resources.html">Tagging Application
    #         Resources</a>.</p>
    # @param [Hash, Types::ListTagsForResourceMessage] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resouce for which a tag list is requested.</p>
    #            <p>Must be the ARN of an Elastic Beanstalk resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "ResourceArn",
    #     resource_tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::ResourceTagsDescriptionMessage]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Deletes and recreates all of the AWS resources (for example: the Auto Scaling group,
    #       load balancer, etc.) for a specified environment and forces a restart.</p>
    # @param [Hash, Types::RebuildEnvironmentMessage] params
    # @option params [String] :environment_id
    #   <p>The ID of the environment to rebuild.</p>
    #            <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    # @option params [String] :environment_name
    #   <p>The name of the environment to rebuild.</p>
    #            <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    # @example To rebuild an environment
    #   # The following operation terminates and recreates the resources in an environment named my-env:
    #   params = {
    #     environment_name: "my-env"
    #   }
    #   options = {}
    #   response = client.rebuild_environment(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId",
    #     environment_name: "EnvironmentName"
    #   }
    #   options = {}
    #   response = client.rebuild_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def rebuild_environment(params = {}, options = {})
      request = build_request(:rebuild_environment, params)
      request.send_request(options)
    end

    # <p>Initiates a request to compile the specified type of information of the deployed
    #       environment.</p>
    #          <p> Setting the <code>InfoType</code> to <code>tail</code> compiles the last lines from
    #       the application server log files of every Amazon EC2 instance in your environment. </p>
    #          <p> Setting the <code>InfoType</code> to <code>bundle</code> compresses the application
    #       server log files for every Amazon EC2 instance into a <code>.zip</code> file. Legacy and .NET
    #       containers do not support bundle logs. </p>
    #          <p> Use <a>RetrieveEnvironmentInfo</a> to obtain the set of logs. </p>
    #          <p>Related Topics</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>RetrieveEnvironmentInfo</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::RequestEnvironmentInfoMessage] params
    # @option params [String] :environment_id
    #   <p>The ID of the environment of the requested data.</p>
    #            <p>If no such environment is found, <code>RequestEnvironmentInfo</code> returns an
    #         <code>InvalidParameterValue</code> error. </p>
    #            <p>Condition: You must specify either this or an EnvironmentName, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    # @option params [String] :environment_name
    #   <p>The name of the environment of the requested data.</p>
    #            <p>If no such environment is found, <code>RequestEnvironmentInfo</code> returns an
    #         <code>InvalidParameterValue</code> error. </p>
    #            <p>Condition: You must specify either this or an EnvironmentId, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    # @option params [String] :info_type
    #   <p>The type of information to request.</p>
    # @example To request tailed logs
    #   # The following operation requests logs from an environment named my-env:
    #   params = {
    #     environment_name: "my-env",
    #     info_type: tail
    #   }
    #   options = {}
    #   response = client.request_environment_info(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId",
    #     environment_name: "EnvironmentName",
    #     info_type: "tail" # One of: ["tail", "bundle"], # required
    #   }
    #   options = {}
    #   response = client.request_environment_info(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def request_environment_info(params = {}, options = {})
      request = build_request(:request_environment_info, params)
      request.send_request(options)
    end

    # <p>Causes the environment to restart the application container server running on each
    #       Amazon EC2 instance.</p>
    # @param [Hash, Types::RestartAppServerMessage] params
    # @option params [String] :environment_id
    #   <p>The ID of the environment to restart the server for.</p>
    #            <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    # @option params [String] :environment_name
    #   <p>The name of the environment to restart the server for.</p>
    #            <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    # @example To restart application servers
    #   # The following operation restarts application servers on all instances in an environment named my-env:
    #   params = {
    #     environment_name: "my-env"
    #   }
    #   options = {}
    #   response = client.restart_app_server(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId",
    #     environment_name: "EnvironmentName"
    #   }
    #   options = {}
    #   response = client.restart_app_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def restart_app_server(params = {}, options = {})
      request = build_request(:restart_app_server, params)
      request.send_request(options)
    end

    # <p>Retrieves the compiled information from a <a>RequestEnvironmentInfo</a>
    #       request.</p>
    #          <p>Related Topics</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>RequestEnvironmentInfo</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::RetrieveEnvironmentInfoMessage] params
    # @option params [String] :environment_id
    #   <p>The ID of the data's environment.</p>
    #            <p>If no such environment is found, returns an <code>InvalidParameterValue</code>
    #         error.</p>
    #            <p>Condition: You must specify either this or an EnvironmentName, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code>
    #         error.</p>
    # @option params [String] :environment_name
    #   <p>The name of the data's environment.</p>
    #            <p> If no such environment is found, returns an <code>InvalidParameterValue</code> error. </p>
    #            <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    # @option params [String] :info_type
    #   <p>The type of information to retrieve.</p>
    # @example To retrieve tailed logs
    #   # The following operation retrieves a link to logs from an environment named my-env:
    #   params = {
    #     environment_name: "my-env",
    #     info_type: tail
    #   }
    #   options = {}
    #   response = client.retrieve_environment_info(params, options)
    #   response.to_h #=>
    #   {
    #     environment_info: [
    #       {
    #         sample_timestamp: Time.parse("2015-08-20T22:23:17.703Z"),
    #         message: "https://elasticbeanstalk-us-west-2-0123456789012.s3.amazonaws.com/resources/environments/logs/tail/e-fyqyju3yjs/i-09c1c867/TailLogs-1440109397703.out?AWSAccessKeyId=AKGPT4J56IAJ2EUBL5CQ&Expires=1440195891&Signature=n%2BEalOV6A2HIOx4Rcfb7LT16bBM%3D",
    #         info_type: tail,
    #         ec2_instance_id: "i-09c1c867"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId",
    #     environment_name: "EnvironmentName",
    #     info_type: "tail" # One of: ["tail", "bundle"], # required
    #   }
    #   options = {}
    #   response = client.retrieve_environment_info(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_info: [
    #       {
    #         info_type: "tail" # One of: ["tail", "bundle"],
    #         ec2_instance_id: "Ec2InstanceId",
    #         sample_timestamp: Time.now,
    #         message: "Message"
    #       }
    #     ]
    #   }
    # @return [Types::RetrieveEnvironmentInfoResultMessage]
    def retrieve_environment_info(params = {}, options = {})
      request = build_request(:retrieve_environment_info, params)
      request.send_request(options)
    end

    # <p>Swaps the CNAMEs of two environments.</p>
    # @param [Hash, Types::SwapEnvironmentCNAMEsMessage] params
    # @option params [String] :source_environment_id
    #   <p>The ID of the source environment.</p>
    #            <p> Condition: You must specify at least the <code>SourceEnvironmentID</code> or the
    #         <code>SourceEnvironmentName</code>. You may also specify both. If you specify the
    #         <code>SourceEnvironmentId</code>, you must specify the
    #         <code>DestinationEnvironmentId</code>. </p>
    # @option params [String] :source_environment_name
    #   <p>The name of the source environment.</p>
    #            <p> Condition: You must specify at least the <code>SourceEnvironmentID</code> or the
    #         <code>SourceEnvironmentName</code>. You may also specify both. If you specify the
    #         <code>SourceEnvironmentName</code>, you must specify the
    #         <code>DestinationEnvironmentName</code>. </p>
    # @option params [String] :destination_environment_id
    #   <p>The ID of the destination environment.</p>
    #            <p> Condition: You must specify at least the <code>DestinationEnvironmentID</code> or the
    #         <code>DestinationEnvironmentName</code>. You may also specify both. You must specify the
    #         <code>SourceEnvironmentId</code> with the <code>DestinationEnvironmentId</code>. </p>
    # @option params [String] :destination_environment_name
    #   <p>The name of the destination environment.</p>
    #            <p> Condition: You must specify at least the <code>DestinationEnvironmentID</code> or the
    #         <code>DestinationEnvironmentName</code>. You may also specify both. You must specify the
    #         <code>SourceEnvironmentName</code> with the <code>DestinationEnvironmentName</code>.
    #       </p>
    # @example To swap environment CNAMES
    #   # The following operation swaps the assigned subdomains of two environments:
    #   params = {
    #     source_environment_name: "my-env-blue",
    #     destination_environment_name: "my-env-green"
    #   }
    #   options = {}
    #   response = client.swap_environment_cnam_es(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     source_environment_id: "EnvironmentId",
    #     source_environment_name: "EnvironmentName",
    #     destination_environment_id: "EnvironmentId",
    #     destination_environment_name: "EnvironmentName"
    #   }
    #   options = {}
    #   response = client.swap_environment_cnam_es(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def swap_environment_cnam_es(params = {}, options = {})
      request = build_request(:swap_environment_cnam_es, params)
      request.send_request(options)
    end

    # <p>Terminates the specified environment.</p>
    # @param [Hash, Types::TerminateEnvironmentMessage] params
    # @option params [String] :environment_id
    #   <p>The ID of the environment to terminate.</p>
    #            <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    # @option params [String] :environment_name
    #   <p>The name of the environment to terminate.</p>
    #            <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    # @option params [Boolean] :terminate_resources
    #   <p>Indicates whether the associated AWS resources should shut down when the environment is
    #         terminated:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>true</code>: The specified environment as well as the associated AWS resources, such
    #             as Auto Scaling group and LoadBalancer, are terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>false</code>: AWS Elastic Beanstalk resource management is removed from the
    #             environment, but the AWS resources continue to operate.</p>
    #               </li>
    #            </ul>
    #            <p> For more information, see the <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/ug/"> AWS Elastic Beanstalk User Guide. </a>
    #            </p>
    #            <p> Default: <code>true</code>
    #            </p>
    #            <p> Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    # @option params [Boolean] :force_terminate
    #   <p>Terminates the target environment even if another environment in the same group is
    #         dependent on it.</p>
    # @example To terminate an environment
    #   # The following operation terminates an Elastic Beanstalk environment named my-env:
    #   params = {
    #     environment_name: "my-env"
    #   }
    #   options = {}
    #   response = client.terminate_environment(params, options)
    #   response.to_h #=>
    #   {
    #     application_name: "my-app",
    #     environment_name: "my-env",
    #     status: Terminating,
    #     environment_id: "e-fh2eravpns",
    #     endpoint_url: "awseb-e-f-AWSEBLoa-1I9XUMP4-8492WNUP202574.us-west-2.elb.amazonaws.com",
    #     solution_stack_name: "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8",
    #     cname: "my-env.elasticbeanstalk.com",
    #     health: Grey,
    #     abortable_operation_in_progress: false,
    #     tier: {
    #       version: " ",
    #       type: "Standard",
    #       name: "WebServer"
    #     },
    #     date_updated: Time.parse("2015-08-12T19:05:54.744Z"),
    #     date_created: Time.parse("2015-08-12T18:52:53.622Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId",
    #     environment_name: "EnvironmentName",
    #     terminate_resources: false,
    #     force_terminate: false
    #   }
    #   options = {}
    #   response = client.terminate_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_name: "EnvironmentName",
    #     environment_id: "EnvironmentId",
    #     application_name: "ApplicationName",
    #     version_label: "VersionLabel",
    #     solution_stack_name: "SolutionStackName",
    #     platform_arn: "PlatformArn",
    #     template_name: "ConfigurationTemplateName",
    #     description: "Description",
    #     endpoint_url: "EndpointURL",
    #     cname: "DNSCname",
    #     date_created: Time.now,
    #     date_updated: Time.now,
    #     status: "Aborting" # One of: ["Aborting", "Launching", "Updating", "LinkingFrom", "LinkingTo", "Ready", "Terminating", "Terminated"],
    #     abortable_operation_in_progress: false,
    #     health: "Green" # One of: ["Green", "Yellow", "Red", "Grey"],
    #     health_status: "NoData" # One of: ["NoData", "Unknown", "Pending", "Ok", "Info", "Warning", "Degraded", "Severe", "Suspended"],
    #     resources: {
    #       load_balancer: {
    #         load_balancer_name: "String",
    #         domain: "String",
    #         listeners: [
    #           {
    #             protocol: "String",
    #             port: 1
    #           }
    #         ]
    #       }
    #     },
    #     tier: {
    #       name: "String",
    #       type: "String",
    #       version: "String"
    #     },
    #     environment_links: [
    #       {
    #         link_name: "String",
    #         environment_name: "String"
    #       }
    #     ],
    #     environment_arn: "EnvironmentArn",
    #     operations_role: "OperationsRole"
    #   }
    # @return [Types::TerminateEnvironmentOutput]
    def terminate_environment(params = {}, options = {})
      request = build_request(:terminate_environment, params)
      request.send_request(options)
    end

    # <p>Updates the specified application to have the specified properties.</p>
    #          <note>
    #             <p>If a property (for example, <code>description</code>) is not provided, the value
    #         remains unchanged. To clear these properties, specify an empty string.</p>
    #          </note>
    # @param [Hash, Types::UpdateApplicationMessage] params
    # @option params [String] :application_name
    #   <p>The name of the application to update. If no such application is found,
    #           <code>UpdateApplication</code> returns an <code>InvalidParameterValue</code> error.
    #       </p>
    # @option params [String] :description
    #   <p>A new description for the application.</p>
    #            <p>Default: If not specified, AWS Elastic Beanstalk does not update the
    #         description.</p>
    # @example To change an application's description
    #   # The following operation updates the description of an application named my-app:
    #   params = {
    #     application_name: "my-app",
    #     description: "my Elastic Beanstalk application"
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    #   response.to_h #=>
    #   {
    #     application: {
    #       application_name: "my-app",
    #       description: "my Elastic Beanstalk application",
    #       versions: [
    #         "2fba-stage-150819_234450",
    #         "bf07-stage-150820_214945",
    #         "93f8",
    #         "fd7c-stage-150820_000431",
    #         "22a0-stage-150819_185942"
    #       ],
    #       date_created: Time.parse("2015-08-13T19:15:50.449Z"),
    #       configuration_templates: [
    #       ],
    #       date_updated: Time.parse("2015-08-20T22:34:56.195Z")
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application: {
    #       application_arn: "ApplicationArn",
    #       application_name: "ApplicationName",
    #       description: "Description",
    #       date_created: Time.now,
    #       date_updated: Time.now,
    #       versions: ["VersionLabel"],
    #       configuration_templates: ["ConfigurationTemplateName"],
    #       resource_lifecycle_config: {
    #         service_role: "String",
    #         version_lifecycle_config: {
    #           max_count_rule: {
    #             enabled: false, # required
    #             max_count: 1,
    #             delete_source_from_s3: false
    #           },
    #           max_age_rule: {
    #             enabled: false, # required
    #             max_age_in_days: 1,
    #             delete_source_from_s3: false
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::UpdateApplicationOutput]
    def update_application(params = {}, options = {})
      request = build_request(:update_application, params)
      request.send_request(options)
    end

    # <p>Modifies lifecycle settings for an application.</p>
    # @param [Hash, Types::UpdateApplicationResourceLifecycleMessage] params
    # @option params [String] :application_name
    #   <p>The name of the application.</p>
    # @option params [Types::ApplicationResourceLifecycleConfig] :resource_lifecycle_config
    #   <p>The lifecycle configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     resource_lifecycle_config: { # required
    #       service_role: "String",
    #       version_lifecycle_config: {
    #         max_count_rule: {
    #           enabled: false, # required
    #           max_count: 1,
    #           delete_source_from_s3: false
    #         },
    #         max_age_rule: {
    #           enabled: false, # required
    #           max_age_in_days: 1,
    #           delete_source_from_s3: false
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_application_resource_lifecycle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_name: "ApplicationName",
    #     resource_lifecycle_config: {
    #       service_role: "String",
    #       version_lifecycle_config: {
    #         max_count_rule: {
    #           enabled: false, # required
    #           max_count: 1,
    #           delete_source_from_s3: false
    #         },
    #         max_age_rule: {
    #           enabled: false, # required
    #           max_age_in_days: 1,
    #           delete_source_from_s3: false
    #         }
    #       }
    #     }
    #   }
    # @return [Types::ApplicationResourceLifecycleDescriptionMessage]
    def update_application_resource_lifecycle(params = {}, options = {})
      request = build_request(:update_application_resource_lifecycle, params)
      request.send_request(options)
    end

    # <p>Updates the specified application version to have the specified properties.</p>
    #          <note>
    #             <p>If a property (for example, <code>description</code>) is not provided, the value
    #         remains unchanged. To clear properties, specify an empty string.</p>
    #          </note>
    # @param [Hash, Types::UpdateApplicationVersionMessage] params
    # @option params [String] :application_name
    #   <p>The name of the application associated with this version.</p>
    #            <p> If no application is found with this name, <code>UpdateApplication</code> returns an
    #           <code>InvalidParameterValue</code> error.</p>
    # @option params [String] :version_label
    #   <p>The name of the version to update.</p>
    #            <p>If no application version is found with this label, <code>UpdateApplication</code>
    #         returns an <code>InvalidParameterValue</code> error. </p>
    # @option params [String] :description
    #   <p>A new description for this version.</p>
    # @example To change an application version's description
    #   # The following operation updates the description of an application version named 22a0-stage-150819_185942:
    #   params = {
    #     application_name: "my-app",
    #     version_label: "22a0-stage-150819_185942",
    #     description: "new description"
    #   }
    #   options = {}
    #   response = client.update_application_version(params, options)
    #   response.to_h #=>
    #   {
    #     application_version: {
    #       application_name: "my-app",
    #       version_label: "22a0-stage-150819_185942",
    #       description: "new description",
    #       date_created: Time.parse("2015-08-19T18:59:17.646Z"),
    #       date_updated: Time.parse("2015-08-20T22:53:28.871Z"),
    #       source_bundle: {
    #         s3_bucket: "elasticbeanstalk-us-west-2-0123456789012",
    #         s3_key: "my-app/22a0-stage-150819_185942.war"
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     version_label: "VersionLabel", # required
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_application_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_version: {
    #       application_version_arn: "ApplicationVersionArn",
    #       application_name: "ApplicationName",
    #       description: "Description",
    #       version_label: "VersionLabel",
    #       source_build_information: {
    #         source_type: "Git" # One of: ["Git", "Zip"], # required
    #         source_repository: "CodeCommit" # One of: ["CodeCommit", "S3"], # required
    #         source_location: "SourceLocation", # required
    #       },
    #       build_arn: "String",
    #       source_bundle: {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key"
    #       },
    #       date_created: Time.now,
    #       date_updated: Time.now,
    #       status: "Processed" # One of: ["Processed", "Unprocessed", "Failed", "Processing", "Building"]
    #     }
    #   }
    # @return [Types::UpdateApplicationVersionOutput]
    def update_application_version(params = {}, options = {})
      request = build_request(:update_application_version, params)
      request.send_request(options)
    end

    # <p>Updates the specified configuration template to have the specified properties or
    #       configuration option values.</p>
    #          <note>
    #             <p>If a property (for example, <code>ApplicationName</code>) is not provided, its value
    #         remains unchanged. To clear such properties, specify an empty string.</p>
    #          </note>
    #          <p>Related Topics</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DescribeConfigurationOptions</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateConfigurationTemplateMessage] params
    # @option params [String] :application_name
    #   <p>The name of the application associated with the configuration template to
    #         update.</p>
    #            <p> If no application is found with this name, <code>UpdateConfigurationTemplate</code>
    #         returns an <code>InvalidParameterValue</code> error. </p>
    # @option params [String] :template_name
    #   <p>The name of the configuration template to update.</p>
    #            <p> If no configuration template is found with this name,
    #           <code>UpdateConfigurationTemplate</code> returns an <code>InvalidParameterValue</code>
    #         error. </p>
    # @option params [String] :description
    #   <p>A new description for the configuration.</p>
    # @option params [Array<Types::ConfigurationOptionSetting>] :option_settings
    #   <p>A list of configuration option settings to update with the new specified option
    #         value.</p>
    # @option params [Array<Types::OptionSpecification>] :options_to_remove
    #   <p>A list of configuration options to remove from the configuration set.</p>
    #            <p> Constraint: You can remove only <code>UserDefined</code> configuration options.
    #       </p>
    # @example To update a configuration template
    #   # The following operation removes the configured CloudWatch custom health metrics configuration ConfigDocument from a saved configuration template named my-template:
    #   params = {
    #     application_name: "my-app",
    #     template_name: "my-template",
    #     options_to_remove: [
    #       {
    #         namespace: "aws:elasticbeanstalk:healthreporting:system",
    #         option_name: "ConfigDocument"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_configuration_template(params, options)
    #   response.to_h #=>
    #   {
    #     application_name: "my-app",
    #     template_name: "my-template",
    #     date_created: Time.parse("2015-08-20T22:39:31Z"),
    #     date_updated: Time.parse("2015-08-20T22:43:11Z"),
    #     solution_stack_name: "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     template_name: "ConfigurationTemplateName", # required
    #     description: "Description",
    #     option_settings: [
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName",
    #         value: "ConfigurationOptionValue"
    #       }
    #     ],
    #     options_to_remove: [
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_configuration_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     solution_stack_name: "SolutionStackName",
    #     platform_arn: "PlatformArn",
    #     application_name: "ApplicationName",
    #     template_name: "ConfigurationTemplateName",
    #     description: "Description",
    #     environment_name: "EnvironmentName",
    #     deployment_status: "deployed" # One of: ["deployed", "pending", "failed"],
    #     date_created: Time.now,
    #     date_updated: Time.now,
    #     option_settings: [
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName",
    #         value: "ConfigurationOptionValue"
    #       }
    #     ]
    #   }
    # @return [Types::UpdateConfigurationTemplateOutput]
    def update_configuration_template(params = {}, options = {})
      request = build_request(:update_configuration_template, params)
      request.send_request(options)
    end

    # <p>Updates the environment description, deploys a new application version, updates the
    #       configuration settings to an entirely new configuration template, or updates select
    #       configuration option values in the running environment.</p>
    #          <p> Attempting to update both the release and configuration is not allowed and AWS Elastic
    #       Beanstalk returns an <code>InvalidParameterCombination</code> error. </p>
    #          <p> When updating the configuration settings to a new template or individual settings, a
    #       draft configuration is created and <a>DescribeConfigurationSettings</a> for this
    #       environment returns two setting descriptions with different <code>DeploymentStatus</code>
    #       values. </p>
    # @param [Hash, Types::UpdateEnvironmentMessage] params
    # @option params [String] :application_name
    #   <p>The name of the application with which the environment is associated.</p>
    # @option params [String] :environment_id
    #   <p>The ID of the environment to update.</p>
    #            <p>If no environment with this ID exists, AWS Elastic Beanstalk returns an
    #           <code>InvalidParameterValue</code> error.</p>
    #            <p>Condition: You must specify either this or an EnvironmentName, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    # @option params [String] :environment_name
    #   <p>The name of the environment to update. If no environment with this name exists, AWS
    #         Elastic Beanstalk returns an <code>InvalidParameterValue</code> error. </p>
    #            <p>Condition: You must specify either this or an EnvironmentId, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    # @option params [String] :group_name
    #   <p>The name of the group to which the target environment belongs. Specify a group name
    #         only if the environment's name is specified in an environment manifest and not with the
    #         environment name or environment ID parameters. See <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment Manifest
    #           (env.yaml)</a> for details.</p>
    # @option params [String] :description
    #   <p>If this parameter is specified, AWS Elastic Beanstalk updates the description of this
    #         environment.</p>
    # @option params [Types::EnvironmentTier] :tier
    #   <p>This specifies the tier to use to update the environment.</p>
    #            <p>Condition: At this time, if you change the tier version, name, or type, AWS Elastic
    #         Beanstalk returns <code>InvalidParameterValue</code> error. </p>
    # @option params [String] :version_label
    #   <p>If this parameter is specified, AWS Elastic Beanstalk deploys the named application
    #         version to the environment. If no such application version is found, returns an
    #           <code>InvalidParameterValue</code> error. </p>
    # @option params [String] :template_name
    #   <p>If this parameter is specified, AWS Elastic Beanstalk deploys this configuration
    #         template to the environment. If no such configuration template is found, AWS Elastic Beanstalk
    #         returns an <code>InvalidParameterValue</code> error. </p>
    # @option params [String] :solution_stack_name
    #   <p>This specifies the platform version that the environment will run after the environment
    #         is updated.</p>
    # @option params [String] :platform_arn
    #   <p>The ARN of the platform, if used.</p>
    # @option params [Array<Types::ConfigurationOptionSetting>] :option_settings
    #   <p>If specified, AWS Elastic Beanstalk updates the configuration set associated with the
    #         running environment and sets the specified configuration options to the requested
    #         value.</p>
    # @option params [Array<Types::OptionSpecification>] :options_to_remove
    #   <p>A list of custom user-defined configuration options to remove from the configuration
    #         set for this environment.</p>
    # @example To configure option settings
    #   # The following operation configures several options in the aws:elb:loadbalancer namespace:
    #   params = {
    #     environment_name: "my-env",
    #     option_settings: [
    #       {
    #         namespace: "aws:elb:healthcheck",
    #         option_name: "Interval",
    #         value: "15"
    #       },
    #       {
    #         namespace: "aws:elb:healthcheck",
    #         option_name: "Timeout",
    #         value: "8"
    #       },
    #       {
    #         namespace: "aws:elb:healthcheck",
    #         option_name: "HealthyThreshold",
    #         value: "2"
    #       },
    #       {
    #         namespace: "aws:elb:healthcheck",
    #         option_name: "UnhealthyThreshold",
    #         value: "3"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_environment(params, options)
    #   response.to_h #=>
    #   {
    #     application_name: "my-app",
    #     environment_name: "my-env",
    #     version_label: "7f58-stage-150812_025409",
    #     status: Updating,
    #     environment_id: "e-wtp2rpqsej",
    #     endpoint_url: "awseb-e-w-AWSEBLoa-14XB83101Q4L-104QXY80921.sa-east-1.elb.amazonaws.com",
    #     solution_stack_name: "64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8",
    #     cname: "my-env.elasticbeanstalk.com",
    #     health: Grey,
    #     abortable_operation_in_progress: true,
    #     tier: {
    #       version: " ",
    #       type: "Standard",
    #       name: "WebServer"
    #     },
    #     date_updated: Time.parse("2015-08-12T18:15:23.804Z"),
    #     date_created: Time.parse("2015-08-07T20:48:49.599Z")
    #   }
    # @example To update an environment to a new version
    #   # The following operation updates an environment named "my-env" to version "v2" of the application to which it belongs:
    #   params = {
    #     environment_name: "my-env",
    #     version_label: "v2"
    #   }
    #   options = {}
    #   response = client.update_environment(params, options)
    #   response.to_h #=>
    #   {
    #     application_name: "my-app",
    #     environment_name: "my-env",
    #     version_label: "v2",
    #     status: Updating,
    #     environment_id: "e-szqipays4h",
    #     endpoint_url: "awseb-e-i-AWSEBLoa-1RDLX6TC9VUAO-0123456789.us-west-2.elb.amazonaws.com",
    #     solution_stack_name: "64bit Amazon Linux running Tomcat 7",
    #     cname: "my-env.elasticbeanstalk.com",
    #     health: Grey,
    #     tier: {
    #       version: " ",
    #       type: "Standard",
    #       name: "WebServer"
    #     },
    #     date_updated: Time.parse("2015-02-03T23:12:29.119Z"),
    #     date_created: Time.parse("2015-02-03T23:04:54.453Z")
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName",
    #     environment_id: "EnvironmentId",
    #     environment_name: "EnvironmentName",
    #     group_name: "GroupName",
    #     description: "Description",
    #     tier: {
    #       name: "String",
    #       type: "String",
    #       version: "String"
    #     },
    #     version_label: "VersionLabel",
    #     template_name: "ConfigurationTemplateName",
    #     solution_stack_name: "SolutionStackName",
    #     platform_arn: "PlatformArn",
    #     option_settings: [
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName",
    #         value: "ConfigurationOptionValue"
    #       }
    #     ],
    #     options_to_remove: [
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_name: "EnvironmentName",
    #     environment_id: "EnvironmentId",
    #     application_name: "ApplicationName",
    #     version_label: "VersionLabel",
    #     solution_stack_name: "SolutionStackName",
    #     platform_arn: "PlatformArn",
    #     template_name: "ConfigurationTemplateName",
    #     description: "Description",
    #     endpoint_url: "EndpointURL",
    #     cname: "DNSCname",
    #     date_created: Time.now,
    #     date_updated: Time.now,
    #     status: "Aborting" # One of: ["Aborting", "Launching", "Updating", "LinkingFrom", "LinkingTo", "Ready", "Terminating", "Terminated"],
    #     abortable_operation_in_progress: false,
    #     health: "Green" # One of: ["Green", "Yellow", "Red", "Grey"],
    #     health_status: "NoData" # One of: ["NoData", "Unknown", "Pending", "Ok", "Info", "Warning", "Degraded", "Severe", "Suspended"],
    #     resources: {
    #       load_balancer: {
    #         load_balancer_name: "String",
    #         domain: "String",
    #         listeners: [
    #           {
    #             protocol: "String",
    #             port: 1
    #           }
    #         ]
    #       }
    #     },
    #     tier: {
    #       name: "String",
    #       type: "String",
    #       version: "String"
    #     },
    #     environment_links: [
    #       {
    #         link_name: "String",
    #         environment_name: "String"
    #       }
    #     ],
    #     environment_arn: "EnvironmentArn",
    #     operations_role: "OperationsRole"
    #   }
    # @return [Types::UpdateEnvironmentOutput]
    def update_environment(params = {}, options = {})
      request = build_request(:update_environment, params)
      request.send_request(options)
    end

    # <p>Update the list of tags applied to an AWS Elastic Beanstalk resource. Two lists can be passed: <code>TagsToAdd</code>
    #       for tags to add or update, and <code>TagsToRemove</code>.</p>
    #          <p>Elastic Beanstalk supports tagging of all of its resources. For details about resource tagging, see
    #       <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-tagging-resources.html">Tagging Application
    #         Resources</a>.</p>
    #          <p>If you create a custom IAM user policy to control permission to this operation, specify
    #       one of the following two virtual actions (or both) instead of the API operation name:</p>
    #          <dl>
    #             <dt>elasticbeanstalk:AddTags</dt>
    #             <dd>
    #                <p>Controls permission to call <code>UpdateTagsForResource</code> and pass a list of tags to add in the <code>TagsToAdd</code>
    #           parameter.</p>
    #             </dd>
    #             <dt>elasticbeanstalk:RemoveTags</dt>
    #             <dd>
    #                <p>Controls permission to call <code>UpdateTagsForResource</code> and pass a list of tag keys to remove in the <code>TagsToRemove</code>
    #           parameter.</p>
    #             </dd>
    #          </dl>
    #          <p>For details about creating a custom user policy, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/AWSHowTo.iam.managed-policies.html#AWSHowTo.iam.policies">Creating a Custom User Policy</a>.</p>
    # @param [Hash, Types::UpdateTagsForResourceMessage] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resouce to be updated.</p>
    #            <p>Must be the ARN of an Elastic Beanstalk resource.</p>
    # @option params [Array<Types::Tag>] :tags_to_add
    #   <p>A list of tags to add or update. If a key of an existing tag is added, the tag's value is
    #         updated.</p>
    #            <p>Specify at least one of these parameters: <code>TagsToAdd</code>,
    #           <code>TagsToRemove</code>.</p>
    # @option params [Array<String>] :tags_to_remove
    #   <p>A list of tag keys to remove. If a tag key doesn't exist, it is silently ignored.</p>
    #            <p>Specify at least one of these parameters: <code>TagsToAdd</code>,
    #         <code>TagsToRemove</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tags_to_add: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     tags_to_remove: ["TagKey"]
    #   }
    #   options = {}
    #   response = client.update_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_tags_for_resource(params = {}, options = {})
      request = build_request(:update_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Takes a set of configuration settings and either a configuration template or
    #       environment, and determines whether those values are valid.</p>
    #          <p>This action returns a list of messages indicating any errors or warnings associated
    #       with the selection of option values.</p>
    # @param [Hash, Types::ValidateConfigurationSettingsMessage] params
    # @option params [String] :application_name
    #   <p>The name of the application that the configuration template or environment belongs
    #         to.</p>
    # @option params [String] :template_name
    #   <p>The name of the configuration template to validate the settings against.</p>
    #            <p>Condition: You cannot specify both this and an environment name.</p>
    # @option params [String] :environment_name
    #   <p>The name of the environment to validate the settings against.</p>
    #            <p>Condition: You cannot specify both this and a configuration template name.</p>
    # @option params [Array<Types::ConfigurationOptionSetting>] :option_settings
    #   <p>A list of the options and desired values to evaluate.</p>
    # @example To validate configuration settings
    #   # The following operation validates a CloudWatch custom metrics config document:
    #   params = {
    #     application_name: "my-app",
    #     environment_name: "my-env",
    #     option_settings: [
    #       {
    #         namespace: "aws:elasticbeanstalk:healthreporting:system",
    #         option_name: "ConfigDocument",
    #         value: "{\"CloudWatchMetrics\": {\"Environment\": {\"ApplicationLatencyP99.9\": null,\"InstancesSevere\": 60,\"ApplicationLatencyP90\": 60,\"ApplicationLatencyP99\": null,\"ApplicationLatencyP95\": 60,\"InstancesUnknown\": 60,\"ApplicationLatencyP85\": 60,\"InstancesInfo\": null,\"ApplicationRequests2xx\": null,\"InstancesDegraded\": null,\"InstancesWarning\": 60,\"ApplicationLatencyP50\": 60,\"ApplicationRequestsTotal\": null,\"InstancesNoData\": null,\"InstancesPending\": 60,\"ApplicationLatencyP10\": null,\"ApplicationRequests5xx\": null,\"ApplicationLatencyP75\": null,\"InstancesOk\": 60,\"ApplicationRequests3xx\": null,\"ApplicationRequests4xx\": null},\"Instance\": {\"ApplicationLatencyP99.9\": null,\"ApplicationLatencyP90\": 60,\"ApplicationLatencyP99\": null,\"ApplicationLatencyP95\": null,\"ApplicationLatencyP85\": null,\"CPUUser\": 60,\"ApplicationRequests2xx\": null,\"CPUIdle\": null,\"ApplicationLatencyP50\": null,\"ApplicationRequestsTotal\": 60,\"RootFilesystemUtil\": null,\"LoadAverage1min\": null,\"CPUIrq\": null,\"CPUNice\": 60,\"CPUIowait\": 60,\"ApplicationLatencyP10\": null,\"LoadAverage5min\": null,\"ApplicationRequests5xx\": null,\"ApplicationLatencyP75\": 60,\"CPUSystem\": 60,\"ApplicationRequests3xx\": 60,\"ApplicationRequests4xx\": null,\"InstanceHealth\": null,\"CPUSoftirq\": 60}},\"Version\": 1}"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.validate_configuration_settings(params, options)
    #   response.to_h #=>
    #   {
    #     messages: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     template_name: "ConfigurationTemplateName",
    #     environment_name: "EnvironmentName",
    #     option_settings: [ # required
    #       {
    #         resource_name: "ResourceName",
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName",
    #         value: "ConfigurationOptionValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.validate_configuration_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     messages: [
    #       {
    #         message: "ValidationMessageString",
    #         severity: "error" # One of: ["error", "warning"],
    #         namespace: "OptionNamespace",
    #         option_name: "ConfigurationOptionName"
    #       }
    #     ]
    #   }
    # @return [Types::ValidateConfigurationSettingsOutput]
    def validate_configuration_settings(params = {}, options = {})
      request = build_request(:validate_configuration_settings, params)
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
      context[:gem_name] = 'aws-sdk-elasticbeanstalk'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        environment_exists: Waiters::EnvironmentExists,
        environment_terminated: Waiters::EnvironmentTerminated,
        environment_updated: Waiters::EnvironmentUpdated
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
    end
  end
end
