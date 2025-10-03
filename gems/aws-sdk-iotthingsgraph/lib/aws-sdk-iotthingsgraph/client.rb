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
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::IoTThingsGraph
  # An API client for Aws::IoTThingsGraph.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::IotThingsGraphFrontEndService

    add_plugin(::Aws::IoTThingsGraph::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::IoTThingsGraph::EndpointProvider)
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
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
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

    # <p>Associates a device with a concrete thing that is in the user's registry.</p>
    #          <p>A thing can be associated with only one device at a time. If you associate a thing with a new device id, its previous association will be removed.</p>
    # @param [Hash, Types::AssociateEntityToThingRequest] params
    # @option params [String] :thing_name
    #   <p>The name of the thing to which the entity is to be associated.</p>
    # @option params [String] :entity_id
    #   <p>The ID of the device to be associated with the thing.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME</code>
    #            </p>
    # @option params [Integer] :namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "ThingName", # required
    #     entity_id: "Urn", # required
    #     namespace_version: 1
    #   }
    #   options = {}
    #   response = client.associate_entity_to_thing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::AssociateEntityToThingResponse]
    def associate_entity_to_thing(params = {}, options = {})
      request = build_request(:associate_entity_to_thing, params)
      request.send_request(options)
    end

    # <p>Creates a workflow template. Workflows can be created only in the user's namespace. (The public namespace contains only 
    #          entities.) The workflow can contain only entities in the specified namespace. The workflow is validated against the entities in the 
    #       latest version of the user's namespace unless another namespace version is specified in the request.</p>
    # @param [Hash, Types::CreateFlowTemplateRequest] params
    # @option params [Types::DefinitionDocument] :definition
    #   <p>The workflow <code>DefinitionDocument</code>.</p>
    # @option params [Integer] :compatible_namespace_version
    #   <p>The namespace version in which the workflow is to be created.</p>
    #            <p>If no value is specified, the latest version is used by default.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     definition: { # required
    #       language: "GRAPHQL" # One of: ["GRAPHQL"], # required
    #       text: "DefinitionText", # required
    #     },
    #     compatible_namespace_version: 1
    #   }
    #   options = {}
    #   response = client.create_flow_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary: {
    #       id: "Urn",
    #       arn: "Arn",
    #       revision_number: 1,
    #       created_at: Time.now
    #     }
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::CreateFlowTemplateResponse]
    def create_flow_template(params = {}, options = {})
      request = build_request(:create_flow_template, params)
      request.send_request(options)
    end

    # <p>Creates a system instance. </p>
    #          <p>This action validates the system instance, prepares the deployment-related resources. For Greengrass deployments, it updates the Greengrass group that is 
    #             specified by the <code>greengrassGroupName</code> parameter. It also adds a file to the S3 bucket specified by the <code>s3BucketName</code> parameter. You need to 
    #             call <code>DeploySystemInstance</code> after running this action.</p>
    #          <p>For Greengrass deployments, since this action modifies and adds resources to a Greengrass group and an S3 bucket on the caller's behalf, the calling identity must have write permissions 
    #          to both the specified Greengrass group and S3 bucket. Otherwise, the call will fail with an authorization error.</p>
    #          <p>For cloud deployments, this action requires a <code>flowActionsRoleArn</code> value. This is an IAM role 
    #       that has permissions to access AWS services, such as AWS Lambda and AWS IoT, that the flow uses when it executes.</p>
    #          <p>If the definition document doesn't specify a version of the user's namespace, the latest version will be used by default.</p>
    # @param [Hash, Types::CreateSystemInstanceRequest] params
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata, consisting of key-value pairs, that can be used to categorize your system instances.</p>
    # @option params [Types::DefinitionDocument] :definition
    #   <p>A document that defines an entity. </p>
    # @option params [String] :target
    #   <p>The target type of the deployment. Valid values are <code>GREENGRASS</code> and <code>CLOUD</code>.</p>
    # @option params [String] :greengrass_group_name
    #   <p>The name of the Greengrass group where the system instance will be deployed. This value is required if 
    #         the value of the <code>target</code> parameter is <code>GREENGRASS</code>.</p>
    # @option params [String] :s3_bucket_name
    #   <p>The name of the Amazon Simple Storage Service bucket that will be used to store and deploy the system instance's resource file. This value is required if 
    #            the value of the <code>target</code> parameter is <code>GREENGRASS</code>.</p>
    # @option params [Types::MetricsConfiguration] :metrics_configuration
    #   <p>An object that specifies whether cloud metrics are collected in a deployment and, if so, what role is used to collect metrics.</p>
    # @option params [String] :flow_actions_role_arn
    #   <p>The ARN of the IAM role that AWS IoT Things Graph will assume when it executes the flow. This role must have 
    #         read and write access to AWS Lambda and AWS IoT and any other AWS services that the flow uses when it executes.  This 
    #         value is required if the value of the <code>target</code> parameter is <code>CLOUD</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     definition: { # required
    #       language: "GRAPHQL" # One of: ["GRAPHQL"], # required
    #       text: "DefinitionText", # required
    #     },
    #     target: "GREENGRASS" # One of: ["GREENGRASS", "CLOUD"], # required
    #     greengrass_group_name: "GroupName",
    #     s3_bucket_name: "S3BucketName",
    #     metrics_configuration: {
    #       cloud_metric_enabled: false,
    #       metric_rule_role_arn: "RoleArn"
    #     },
    #     flow_actions_role_arn: "RoleArn"
    #   }
    #   options = {}
    #   response = client.create_system_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary: {
    #       id: "Urn",
    #       arn: "Arn",
    #       status: "NOT_DEPLOYED" # One of: ["NOT_DEPLOYED", "BOOTSTRAP", "DEPLOY_IN_PROGRESS", "DEPLOYED_IN_TARGET", "UNDEPLOY_IN_PROGRESS", "FAILED", "PENDING_DELETE", "DELETED_IN_TARGET"],
    #       target: "GREENGRASS" # One of: ["GREENGRASS", "CLOUD"],
    #       greengrass_group_name: "GroupName",
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       greengrass_group_id: "GreengrassGroupId",
    #       greengrass_group_version_id: "GreengrassGroupVersionId"
    #     }
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::CreateSystemInstanceResponse]
    def create_system_instance(params = {}, options = {})
      request = build_request(:create_system_instance, params)
      request.send_request(options)
    end

    # <p>Creates a system. The system is validated against the entities in the 
    #          latest version of the user's namespace unless another namespace version is specified in the request.</p>
    # @param [Hash, Types::CreateSystemTemplateRequest] params
    # @option params [Types::DefinitionDocument] :definition
    #   <p>The <code>DefinitionDocument</code> used to create the system.</p>
    # @option params [Integer] :compatible_namespace_version
    #   <p>The namespace version in which the system is to be created.</p>
    #            <p>If no value is specified, the latest version is used by default.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     definition: { # required
    #       language: "GRAPHQL" # One of: ["GRAPHQL"], # required
    #       text: "DefinitionText", # required
    #     },
    #     compatible_namespace_version: 1
    #   }
    #   options = {}
    #   response = client.create_system_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary: {
    #       id: "Urn",
    #       arn: "Arn",
    #       revision_number: 1,
    #       created_at: Time.now
    #     }
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::CreateSystemTemplateResponse]
    def create_system_template(params = {}, options = {})
      request = build_request(:create_system_template, params)
      request.send_request(options)
    end

    # <p>Deletes a workflow. Any new system or deployment that contains this workflow will fail to update or deploy. 
    #          Existing deployments that contain the workflow will continue to run (since they use a snapshot of the workflow taken at the time of deployment).</p>
    # @param [Hash, Types::DeleteFlowTemplateRequest] params
    # @option params [String] :id
    #   <p>The ID of the workflow to be deleted.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Urn", # required
    #   }
    #   options = {}
    #   response = client.delete_flow_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::DeleteFlowTemplateResponse]
    def delete_flow_template(params = {}, options = {})
      request = build_request(:delete_flow_template, params)
      request.send_request(options)
    end

    # <p>Deletes the specified namespace. This action deletes all of the entities in the namespace. Delete the systems and flows that use entities in the namespace before performing this action. This action takes no 
    #       request parameters.</p>
    # @param [Hash, Types::DeleteNamespaceRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     namespace_arn: "Arn",
    #     namespace_name: "NamespaceName"
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::DeleteNamespaceResponse]
    def delete_namespace(params = {}, options = {})
      request = build_request(:delete_namespace, params)
      request.send_request(options)
    end

    # <p>Deletes a system instance. 
    #          Only system instances that have never been deployed, or that have been undeployed can be deleted.</p>
    #          <p>Users can create a new system instance that has the same ID as a deleted system instance.</p>
    # @param [Hash, Types::DeleteSystemInstanceRequest] params
    # @option params [String] :id
    #   <p>The ID of the system instance to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Urn"
    #   }
    #   options = {}
    #   response = client.delete_system_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::DeleteSystemInstanceResponse]
    def delete_system_instance(params = {}, options = {})
      request = build_request(:delete_system_instance, params)
      request.send_request(options)
    end

    # <p>Deletes a system. New deployments can't contain the system after its deletion. 
    #       Existing deployments that contain the system will continue to work because they use a snapshot of the system that is taken when it is deployed.</p>
    # @param [Hash, Types::DeleteSystemTemplateRequest] params
    # @option params [String] :id
    #   <p>The ID of the system to be deleted.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Urn", # required
    #   }
    #   options = {}
    #   response = client.delete_system_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::DeleteSystemTemplateResponse]
    def delete_system_template(params = {}, options = {})
      request = build_request(:delete_system_template, params)
      request.send_request(options)
    end

    # <p>
    #             <b>Greengrass and Cloud Deployments</b>
    #          </p>
    #          <p>Deploys the system instance to the target specified in <code>CreateSystemInstance</code>. </p>
    #          <p>
    #             <b>Greengrass Deployments</b>
    #          </p>
    #          <p>If the system or any workflows and entities have been updated before this action is called, then the deployment will create a new Amazon Simple Storage Service 
    #          resource file and then deploy it.</p>
    #          <p>Since this action creates a Greengrass deployment on the caller's behalf, the calling identity must have write permissions 
    #          to the specified Greengrass group. Otherwise, the call will fail with an authorization error.</p>
    #          <p>For information about the artifacts that get added to your Greengrass core device when you use this API, see <a href="https://docs.aws.amazon.com/thingsgraph/latest/ug/iot-tg-greengrass.html">AWS IoT Things Graph and AWS IoT Greengrass</a>.</p>
    # @param [Hash, Types::DeploySystemInstanceRequest] params
    # @option params [String] :id
    #   <p>The ID of the system instance. This value is returned by the <code>CreateSystemInstance</code> action.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Urn"
    #   }
    #   options = {}
    #   response = client.deploy_system_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary: { # required
    #       id: "Urn",
    #       arn: "Arn",
    #       status: "NOT_DEPLOYED" # One of: ["NOT_DEPLOYED", "BOOTSTRAP", "DEPLOY_IN_PROGRESS", "DEPLOYED_IN_TARGET", "UNDEPLOY_IN_PROGRESS", "FAILED", "PENDING_DELETE", "DELETED_IN_TARGET"],
    #       target: "GREENGRASS" # One of: ["GREENGRASS", "CLOUD"],
    #       greengrass_group_name: "GroupName",
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       greengrass_group_id: "GreengrassGroupId",
    #       greengrass_group_version_id: "GreengrassGroupVersionId"
    #     },
    #     greengrass_deployment_id: "GreengrassDeploymentId"
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::DeploySystemInstanceResponse]
    def deploy_system_instance(params = {}, options = {})
      request = build_request(:deploy_system_instance, params)
      request.send_request(options)
    end

    # <p>Deprecates the specified workflow. This action marks the workflow for deletion. Deprecated flows can't be deployed, but existing deployments will continue to run.</p>
    # @param [Hash, Types::DeprecateFlowTemplateRequest] params
    # @option params [String] :id
    #   <p>The ID of the workflow to be deleted.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Urn", # required
    #   }
    #   options = {}
    #   response = client.deprecate_flow_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::DeprecateFlowTemplateResponse]
    def deprecate_flow_template(params = {}, options = {})
      request = build_request(:deprecate_flow_template, params)
      request.send_request(options)
    end

    # <p>Deprecates the specified system.</p>
    # @param [Hash, Types::DeprecateSystemTemplateRequest] params
    # @option params [String] :id
    #   <p>The ID of the system to delete.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Urn", # required
    #   }
    #   options = {}
    #   response = client.deprecate_system_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::DeprecateSystemTemplateResponse]
    def deprecate_system_template(params = {}, options = {})
      request = build_request(:deprecate_system_template, params)
      request.send_request(options)
    end

    # <p>Gets the latest version of the user's namespace and the public version that it is tracking.</p>
    # @param [Hash, Types::DescribeNamespaceRequest] params
    # @option params [String] :namespace_name
    #   <p>The name of the user's namespace. Set this to <code>aws</code> to get the public namespace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     namespace_name: "NamespaceName"
    #   }
    #   options = {}
    #   response = client.describe_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     namespace_arn: "Arn",
    #     namespace_name: "NamespaceName",
    #     tracking_namespace_name: "NamespaceName",
    #     tracking_namespace_version: 1,
    #     namespace_version: 1
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::DescribeNamespaceResponse]
    def describe_namespace(params = {}, options = {})
      request = build_request(:describe_namespace, params)
      request.send_request(options)
    end

    # <p>Dissociates a device entity from a concrete thing. The action takes only the type of the entity that you need to dissociate because only 
    #          one entity of a particular type can be associated with a thing.</p>
    # @param [Hash, Types::DissociateEntityFromThingRequest] params
    # @option params [String] :thing_name
    #   <p>The name of the thing to disassociate.</p>
    # @option params [String] :entity_type
    #   <p>The entity type from which to disassociate the thing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "ThingName", # required
    #     entity_type: "DEVICE" # One of: ["DEVICE", "SERVICE", "DEVICE_MODEL", "CAPABILITY", "STATE", "ACTION", "EVENT", "PROPERTY", "MAPPING", "ENUM"], # required
    #   }
    #   options = {}
    #   response = client.dissociate_entity_from_thing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::DissociateEntityFromThingResponse]
    def dissociate_entity_from_thing(params = {}, options = {})
      request = build_request(:dissociate_entity_from_thing, params)
      request.send_request(options)
    end

    # <p>Gets definitions of the specified entities. Uses the latest version of the user's namespace by default. This API returns the 
    #       following TDM entities.</p>
    #          <ul>
    #             <li>
    #                <p>Properties</p>
    #             </li>
    #             <li>
    #                <p>States</p>
    #             </li>
    #             <li>
    #                <p>Events</p>
    #             </li>
    #             <li>
    #                <p>Actions</p>
    #             </li>
    #             <li>
    #                <p>Capabilities</p>
    #             </li>
    #             <li>
    #                <p>Mappings</p>
    #             </li>
    #             <li>
    #                <p>Devices</p>
    #             </li>
    #             <li>
    #                <p>Device Models</p>
    #             </li>
    #             <li>
    #                <p>Services</p>
    #             </li>
    #          </ul>
    #          <p>This action doesn't return definitions for systems, flows, and deployments.</p>
    # @param [Hash, Types::GetEntitiesRequest] params
    # @option params [Array<String>] :ids
    #   <p>An array of entity IDs.</p>
    #            <p>The IDs should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME</code>
    #            </p>
    # @option params [Integer] :namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ids: ["Urn"], # required
    #     namespace_version: 1
    #   }
    #   options = {}
    #   response = client.get_entities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     descriptions: [
    #       {
    #         id: "Urn",
    #         arn: "Arn",
    #         type: "DEVICE" # One of: ["DEVICE", "SERVICE", "DEVICE_MODEL", "CAPABILITY", "STATE", "ACTION", "EVENT", "PROPERTY", "MAPPING", "ENUM"],
    #         created_at: Time.now,
    #         definition: {
    #           language: "GRAPHQL" # One of: ["GRAPHQL"], # required
    #           text: "DefinitionText", # required
    #         }
    #       }
    #     ]
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::GetEntitiesResponse]
    def get_entities(params = {}, options = {})
      request = build_request(:get_entities, params)
      request.send_request(options)
    end

    # <p>Gets the latest version of the <code>DefinitionDocument</code> and <code>FlowTemplateSummary</code> for the specified workflow.</p>
    # @param [Hash, Types::GetFlowTemplateRequest] params
    # @option params [String] :id
    #   <p>The ID of the workflow.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
    #            </p>
    # @option params [Integer] :revision_number
    #   <p>The number of the workflow revision to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Urn", # required
    #     revision_number: 1
    #   }
    #   options = {}
    #   response = client.get_flow_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     description: {
    #       summary: {
    #         id: "Urn",
    #         arn: "Arn",
    #         revision_number: 1,
    #         created_at: Time.now
    #       },
    #       definition: {
    #         language: "GRAPHQL" # One of: ["GRAPHQL"], # required
    #         text: "DefinitionText", # required
    #       },
    #       validated_namespace_version: 1
    #     }
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::GetFlowTemplateResponse]
    def get_flow_template(params = {}, options = {})
      request = build_request(:get_flow_template, params)
      request.send_request(options)
    end

    # <p>Gets revisions of the specified workflow. Only the last 100 revisions are stored. If the workflow has been deprecated, 
    #       this action will return revisions that occurred before the deprecation. This action won't work for workflows that have been deleted.</p>
    # @param [Hash, Types::GetFlowTemplateRevisionsRequest] params
    # @option params [String] :id
    #   <p>The ID of the workflow.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Urn", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_flow_template_revisions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summaries: [
    #       {
    #         id: "Urn",
    #         arn: "Arn",
    #         revision_number: 1,
    #         created_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::GetFlowTemplateRevisionsResponse]
    def get_flow_template_revisions(params = {}, options = {})
      request = build_request(:get_flow_template_revisions, params)
      request.send_request(options)
    end

    # <p>Gets the status of a namespace deletion task.</p>
    # @param [Hash, Types::GetNamespaceDeletionStatusRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_namespace_deletion_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     namespace_arn: "Arn",
    #     namespace_name: "NamespaceName",
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"],
    #     error_code: "VALIDATION_FAILED" # One of: ["VALIDATION_FAILED"],
    #     error_message: "String"
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::GetNamespaceDeletionStatusResponse]
    def get_namespace_deletion_status(params = {}, options = {})
      request = build_request(:get_namespace_deletion_status, params)
      request.send_request(options)
    end

    # <p>Gets a system instance.</p>
    # @param [Hash, Types::GetSystemInstanceRequest] params
    # @option params [String] :id
    #   <p>The ID of the system deployment instance. This value is returned by <code>CreateSystemInstance</code>.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Urn", # required
    #   }
    #   options = {}
    #   response = client.get_system_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     description: {
    #       summary: {
    #         id: "Urn",
    #         arn: "Arn",
    #         status: "NOT_DEPLOYED" # One of: ["NOT_DEPLOYED", "BOOTSTRAP", "DEPLOY_IN_PROGRESS", "DEPLOYED_IN_TARGET", "UNDEPLOY_IN_PROGRESS", "FAILED", "PENDING_DELETE", "DELETED_IN_TARGET"],
    #         target: "GREENGRASS" # One of: ["GREENGRASS", "CLOUD"],
    #         greengrass_group_name: "GroupName",
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         greengrass_group_id: "GreengrassGroupId",
    #         greengrass_group_version_id: "GreengrassGroupVersionId"
    #       },
    #       definition: {
    #         language: "GRAPHQL" # One of: ["GRAPHQL"], # required
    #         text: "DefinitionText", # required
    #       },
    #       s3_bucket_name: "S3BucketName",
    #       metrics_configuration: {
    #         cloud_metric_enabled: false,
    #         metric_rule_role_arn: "RoleArn"
    #       },
    #       validated_namespace_version: 1,
    #       validated_dependency_revisions: [
    #         {
    #           id: "Urn",
    #           revision_number: 1
    #         }
    #       ],
    #       flow_actions_role_arn: "RoleArn"
    #     }
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::GetSystemInstanceResponse]
    def get_system_instance(params = {}, options = {})
      request = build_request(:get_system_instance, params)
      request.send_request(options)
    end

    # <p>Gets a system.</p>
    # @param [Hash, Types::GetSystemTemplateRequest] params
    # @option params [String] :id
    #   <p>The ID of the system to get. This ID must be in the user's namespace.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
    #            </p>
    # @option params [Integer] :revision_number
    #   <p>The number that specifies the revision of the system to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Urn", # required
    #     revision_number: 1
    #   }
    #   options = {}
    #   response = client.get_system_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     description: {
    #       summary: {
    #         id: "Urn",
    #         arn: "Arn",
    #         revision_number: 1,
    #         created_at: Time.now
    #       },
    #       definition: {
    #         language: "GRAPHQL" # One of: ["GRAPHQL"], # required
    #         text: "DefinitionText", # required
    #       },
    #       validated_namespace_version: 1
    #     }
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::GetSystemTemplateResponse]
    def get_system_template(params = {}, options = {})
      request = build_request(:get_system_template, params)
      request.send_request(options)
    end

    # <p>Gets revisions made to the specified system template. Only the previous 100 revisions are stored. If the system has been deprecated, this action will return 
    #       the revisions that occurred before its deprecation. This action won't work with systems that have been deleted.</p>
    # @param [Hash, Types::GetSystemTemplateRevisionsRequest] params
    # @option params [String] :id
    #   <p>The ID of the system template.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Urn", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_system_template_revisions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summaries: [
    #       {
    #         id: "Urn",
    #         arn: "Arn",
    #         revision_number: 1,
    #         created_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::GetSystemTemplateRevisionsResponse]
    def get_system_template_revisions(params = {}, options = {})
      request = build_request(:get_system_template_revisions, params)
      request.send_request(options)
    end

    # <p>Gets the status of the specified upload.</p>
    # @param [Hash, Types::GetUploadStatusRequest] params
    # @option params [String] :upload_id
    #   <p>The ID of the upload. This value is returned by the <code>UploadEntityDefinitions</code> action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     upload_id: "UploadId", # required
    #   }
    #   options = {}
    #   response = client.get_upload_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     upload_id: "UploadId", # required
    #     upload_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"], # required
    #     namespace_arn: "Arn",
    #     namespace_name: "NamespaceName",
    #     namespace_version: 1,
    #     failure_reason: ["String"],
    #     created_date: Time.now, # required
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::GetUploadStatusResponse]
    def get_upload_status(params = {}, options = {})
      request = build_request(:get_upload_status, params)
      request.send_request(options)
    end

    # <p>Returns a list of objects that contain information about events in a flow execution.</p>
    # @param [Hash, Types::ListFlowExecutionMessagesRequest] params
    # @option params [String] :flow_execution_id
    #   <p>The ID of the flow execution.</p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flow_execution_id: "FlowExecutionId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_flow_execution_messages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     messages: [
    #       {
    #         message_id: "FlowExecutionMessageId",
    #         event_type: "EXECUTION_STARTED" # One of: ["EXECUTION_STARTED", "EXECUTION_FAILED", "EXECUTION_ABORTED", "EXECUTION_SUCCEEDED", "STEP_STARTED", "STEP_FAILED", "STEP_SUCCEEDED", "ACTIVITY_SCHEDULED", "ACTIVITY_STARTED", "ACTIVITY_FAILED", "ACTIVITY_SUCCEEDED", "START_FLOW_EXECUTION_TASK", "SCHEDULE_NEXT_READY_STEPS_TASK", "THING_ACTION_TASK", "THING_ACTION_TASK_FAILED", "THING_ACTION_TASK_SUCCEEDED", "ACKNOWLEDGE_TASK_MESSAGE"],
    #         timestamp: Time.now,
    #         payload: "FlowExecutionMessagePayload"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::ListFlowExecutionMessagesResponse]
    def list_flow_execution_messages(params = {}, options = {})
      request = build_request(:list_flow_execution_messages, params)
      request.send_request(options)
    end

    # <p>Lists all tags on an AWS IoT Things Graph resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of tags to return.</p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags are to be returned.</p>
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     resource_arn: "ResourceArn", # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Searches for entities of the specified type. You can search for entities in your namespace and the public namespace that you're tracking.</p>
    # @param [Hash, Types::SearchEntitiesRequest] params
    # @option params [Array<String>] :entity_types
    #   <p>The entity types for which to search.</p>
    # @option params [Array<Types::EntityFilter>] :filters
    #   <p>Optional filter to apply to the search. Valid filters are <code>NAME</code>
    #               <code>NAMESPACE</code>, <code>SEMANTIC_TYPE_PATH</code> and <code>REFERENCED_ENTITY_ID</code>. 
    #            <code>REFERENCED_ENTITY_ID</code> filters on entities that are used by the entity in the result set. For example, 
    #         you can filter on the ID of a property that is used in a state.</p>
    #            <p>Multiple filters function as OR criteria in the query. Multiple values passed inside the filter function as AND criteria.</p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [Integer] :namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     entity_types: ["DEVICE" # One of: ["DEVICE", "SERVICE", "DEVICE_MODEL", "CAPABILITY", "STATE", "ACTION", "EVENT", "PROPERTY", "MAPPING", "ENUM"]], # required
    #     filters: [
    #       {
    #         name: "NAME" # One of: ["NAME", "NAMESPACE", "SEMANTIC_TYPE_PATH", "REFERENCED_ENTITY_ID"],
    #         value: ["EntityFilterValue"]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     namespace_version: 1
    #   }
    #   options = {}
    #   response = client.search_entities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     descriptions: [
    #       {
    #         id: "Urn",
    #         arn: "Arn",
    #         type: "DEVICE" # One of: ["DEVICE", "SERVICE", "DEVICE_MODEL", "CAPABILITY", "STATE", "ACTION", "EVENT", "PROPERTY", "MAPPING", "ENUM"],
    #         created_at: Time.now,
    #         definition: {
    #           language: "GRAPHQL" # One of: ["GRAPHQL"], # required
    #           text: "DefinitionText", # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::SearchEntitiesResponse]
    def search_entities(params = {}, options = {})
      request = build_request(:search_entities, params)
      request.send_request(options)
    end

    # <p>Searches for AWS IoT Things Graph workflow execution instances.</p>
    # @param [Hash, Types::SearchFlowExecutionsRequest] params
    # @option params [String] :system_instance_id
    #   <p>The ID of the system instance that contains the flow.</p>
    # @option params [String] :flow_execution_id
    #   <p>The ID of a flow execution.</p>
    # @option params [Time] :start_time
    #   <p>The date and time of the earliest flow execution to return.</p>
    # @option params [Time] :end_time
    #   <p>The date and time of the latest flow execution to return.</p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     system_instance_id: "Urn", # required
    #     flow_execution_id: "FlowExecutionId",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.search_flow_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summaries: [
    #       {
    #         flow_execution_id: "FlowExecutionId",
    #         status: "RUNNING" # One of: ["RUNNING", "ABORTED", "SUCCEEDED", "FAILED"],
    #         system_instance_id: "Urn",
    #         flow_template_id: "Urn",
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::SearchFlowExecutionsResponse]
    def search_flow_executions(params = {}, options = {})
      request = build_request(:search_flow_executions, params)
      request.send_request(options)
    end

    # <p>Searches for summary information about workflows.</p>
    # @param [Hash, Types::SearchFlowTemplatesRequest] params
    # @option params [Array<Types::FlowTemplateFilter>] :filters
    #   <p>An array of objects that limit the result set. The only valid filter is <code>DEVICE_MODEL_ID</code>.</p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "DEVICE_MODEL_ID" # One of: ["DEVICE_MODEL_ID"], # required
    #         value: ["FlowTemplateFilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.search_flow_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summaries: [
    #       {
    #         id: "Urn",
    #         arn: "Arn",
    #         revision_number: 1,
    #         created_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::SearchFlowTemplatesResponse]
    def search_flow_templates(params = {}, options = {})
      request = build_request(:search_flow_templates, params)
      request.send_request(options)
    end

    # <p>Searches for system instances in the user's account.</p>
    # @param [Hash, Types::SearchSystemInstancesRequest] params
    # @option params [Array<Types::SystemInstanceFilter>] :filters
    #   <p>Optional filter to apply to the search. Valid filters are <code>SYSTEM_TEMPLATE_ID</code>, <code>STATUS</code>, and 
    #            <code>GREENGRASS_GROUP_NAME</code>.</p>
    #            <p>Multiple filters function as OR criteria in the query. Multiple values passed inside the filter function as AND criteria.</p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "SYSTEM_TEMPLATE_ID" # One of: ["SYSTEM_TEMPLATE_ID", "STATUS", "GREENGRASS_GROUP_NAME"],
    #         value: ["SystemInstanceFilterValue"]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.search_system_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summaries: [
    #       {
    #         id: "Urn",
    #         arn: "Arn",
    #         status: "NOT_DEPLOYED" # One of: ["NOT_DEPLOYED", "BOOTSTRAP", "DEPLOY_IN_PROGRESS", "DEPLOYED_IN_TARGET", "UNDEPLOY_IN_PROGRESS", "FAILED", "PENDING_DELETE", "DELETED_IN_TARGET"],
    #         target: "GREENGRASS" # One of: ["GREENGRASS", "CLOUD"],
    #         greengrass_group_name: "GroupName",
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         greengrass_group_id: "GreengrassGroupId",
    #         greengrass_group_version_id: "GreengrassGroupVersionId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::SearchSystemInstancesResponse]
    def search_system_instances(params = {}, options = {})
      request = build_request(:search_system_instances, params)
      request.send_request(options)
    end

    # <p>Searches for summary information about systems in the user's account. You can filter by the ID of a workflow to return only systems that use the specified workflow.</p>
    # @param [Hash, Types::SearchSystemTemplatesRequest] params
    # @option params [Array<Types::SystemTemplateFilter>] :filters
    #   <p>An array of filters that limit the result set. The only valid filter is <code>FLOW_TEMPLATE_ID</code>.</p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "FLOW_TEMPLATE_ID" # One of: ["FLOW_TEMPLATE_ID"], # required
    #         value: ["SystemTemplateFilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.search_system_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summaries: [
    #       {
    #         id: "Urn",
    #         arn: "Arn",
    #         revision_number: 1,
    #         created_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::SearchSystemTemplatesResponse]
    def search_system_templates(params = {}, options = {})
      request = build_request(:search_system_templates, params)
      request.send_request(options)
    end

    # <p>Searches for things associated with the specified entity. You can search by both device and device model.</p>
    #          <p>For example, if two different devices, camera1 and camera2, implement the camera device model, the user can associate thing1 to camera1 and thing2 to camera2.
    #          <code>SearchThings(camera2)</code> will return only thing2, but <code>SearchThings(camera)</code> will return both thing1 and thing2.</p>
    #          <p>This action searches for exact matches and doesn't perform partial text matching.</p>
    # @param [Hash, Types::SearchThingsRequest] params
    # @option params [String] :entity_id
    #   <p>The ID of the entity to which the things are associated.</p>
    #            <p>The IDs should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME</code>
    #            </p>
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [Integer] :namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     entity_id: "Urn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     namespace_version: 1
    #   }
    #   options = {}
    #   response = client.search_things(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     things: [
    #       {
    #         thing_arn: "ThingArn",
    #         thing_name: "ThingName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::SearchThingsResponse]
    def search_things(params = {}, options = {})
      request = build_request(:search_things, params)
      request.send_request(options)
    end

    # <p>Creates a tag for the specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags are returned.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to add to the resource.></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes a system instance from its target (Cloud or Greengrass).</p>
    # @param [Hash, Types::UndeploySystemInstanceRequest] params
    # @option params [String] :id
    #   <p>The ID of the system instance to remove from its target.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Urn"
    #   }
    #   options = {}
    #   response = client.undeploy_system_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary: {
    #       id: "Urn",
    #       arn: "Arn",
    #       status: "NOT_DEPLOYED" # One of: ["NOT_DEPLOYED", "BOOTSTRAP", "DEPLOY_IN_PROGRESS", "DEPLOYED_IN_TARGET", "UNDEPLOY_IN_PROGRESS", "FAILED", "PENDING_DELETE", "DELETED_IN_TARGET"],
    #       target: "GREENGRASS" # One of: ["GREENGRASS", "CLOUD"],
    #       greengrass_group_name: "GroupName",
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       greengrass_group_id: "GreengrassGroupId",
    #       greengrass_group_version_id: "GreengrassGroupVersionId"
    #     }
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::UndeploySystemInstanceResponse]
    def undeploy_system_instance(params = {}, options = {})
      request = build_request(:undeploy_system_instance, params)
      request.send_request(options)
    end

    # <p>Removes a tag from the specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags are to be removed.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag key names to remove from the resource. You don't specify the value. Both the key and its associated value are removed. </p>
    #            <p>This parameter to the API requires a JSON text string argument. For information on how to format a JSON parameter for the various command line tool environments, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html#cli-using-param-json">Using JSON for Parameters</a> in the <i>AWS CLI User Guide</i>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the specified workflow. All deployed systems and system instances that use the workflow will see the changes in the flow when it is redeployed. If you don't want this 
    #          behavior, copy the workflow (creating a new workflow with a different ID), and update the copy. The workflow can contain only entities in the specified namespace. </p>
    # @param [Hash, Types::UpdateFlowTemplateRequest] params
    # @option params [String] :id
    #   <p>The ID of the workflow to be updated.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
    #            </p>
    # @option params [Types::DefinitionDocument] :definition
    #   <p>The <code>DefinitionDocument</code> that contains the updated workflow definition.</p>
    # @option params [Integer] :compatible_namespace_version
    #   <p>The version of the user's namespace.</p>
    #            <p>If no value is specified, the latest version is used by default. Use the <code>GetFlowTemplateRevisions</code> if you want to find earlier revisions of the flow 
    #         to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Urn", # required
    #     definition: { # required
    #       language: "GRAPHQL" # One of: ["GRAPHQL"], # required
    #       text: "DefinitionText", # required
    #     },
    #     compatible_namespace_version: 1
    #   }
    #   options = {}
    #   response = client.update_flow_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary: {
    #       id: "Urn",
    #       arn: "Arn",
    #       revision_number: 1,
    #       created_at: Time.now
    #     }
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::UpdateFlowTemplateResponse]
    def update_flow_template(params = {}, options = {})
      request = build_request(:update_flow_template, params)
      request.send_request(options)
    end

    # <p>Updates the specified system. You don't need to run this action after updating a workflow. Any deployment that uses the system will see the changes in the system when it is redeployed.</p>
    # @param [Hash, Types::UpdateSystemTemplateRequest] params
    # @option params [String] :id
    #   <p>The ID of the system to be updated.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
    #            </p>
    # @option params [Types::DefinitionDocument] :definition
    #   <p>The <code>DefinitionDocument</code> that contains the updated system definition.</p>
    # @option params [Integer] :compatible_namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    #            <p>If no value is specified, the latest version is used by default.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "Urn", # required
    #     definition: { # required
    #       language: "GRAPHQL" # One of: ["GRAPHQL"], # required
    #       text: "DefinitionText", # required
    #     },
    #     compatible_namespace_version: 1
    #   }
    #   options = {}
    #   response = client.update_system_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary: {
    #       id: "Urn",
    #       arn: "Arn",
    #       revision_number: 1,
    #       created_at: Time.now
    #     }
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::UpdateSystemTemplateResponse]
    def update_system_template(params = {}, options = {})
      request = build_request(:update_system_template, params)
      request.send_request(options)
    end

    # <p>Asynchronously uploads one or more entity definitions to the user's namespace. The <code>document</code> parameter is required if 
    #       <code>syncWithPublicNamespace</code> and <code>deleteExistingEntites</code> are false. If the <code>syncWithPublicNamespace</code> parameter  is set to 
    #          <code>true</code>, the user's namespace will synchronize with the latest version of the public namespace. If <code>deprecateExistingEntities</code> is set to true, 
    #       all entities in the latest version will be deleted before the new <code>DefinitionDocument</code> is uploaded.</p>
    #          <p>When a user uploads entity definitions for the first time, the service creates a new namespace for the user. The new namespace tracks the public namespace. Currently users 
    #       can have only one namespace. The namespace version increments whenever a user uploads entity definitions that are backwards-incompatible and whenever a user sets the 
    #          <code>syncWithPublicNamespace</code> parameter or the <code>deprecateExistingEntities</code> parameter to <code>true</code>.</p>
    #          <p>The IDs for all of the entities should be in URN format. Each entity must be in the user's namespace. Users can't create entities in the public namespace, but entity definitions can refer to entities in the public namespace.</p>
    #          <p>Valid entities are <code>Device</code>, <code>DeviceModel</code>, <code>Service</code>, <code>Capability</code>, <code>State</code>, <code>Action</code>, <code>Event</code>, <code>Property</code>, 
    #          <code>Mapping</code>, <code>Enum</code>.
    #          </p>
    # @param [Hash, Types::UploadEntityDefinitionsRequest] params
    # @option params [Types::DefinitionDocument] :document
    #   <p>The <code>DefinitionDocument</code> that defines the updated entities.</p>
    # @option params [Boolean] :sync_with_public_namespace
    #   <p>A Boolean that specifies whether to synchronize with the latest version of the public namespace. If set to <code>true</code>, the upload will create a new namespace version.</p>
    # @option params [Boolean] :deprecate_existing_entities
    #   <p>A Boolean that specifies whether to deprecate all entities in the latest version before uploading the new <code>DefinitionDocument</code>. 
    #            If set to <code>true</code>, the upload will create a new namespace version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     document: {
    #       language: "GRAPHQL" # One of: ["GRAPHQL"], # required
    #       text: "DefinitionText", # required
    #     },
    #     sync_with_public_namespace: false,
    #     deprecate_existing_entities: false
    #   }
    #   options = {}
    #   response = client.upload_entity_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     upload_id: "UploadId", # required
    #   }
    # @deprecated
    #   since: 2022-08-30
    # @return [Types::UploadEntityDefinitionsResponse]
    def upload_entity_definitions(params = {}, options = {})
      request = build_request(:upload_entity_definitions, params)
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
      context[:gem_name] = 'aws-sdk-iotthingsgraph'
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
    end
  end
end
