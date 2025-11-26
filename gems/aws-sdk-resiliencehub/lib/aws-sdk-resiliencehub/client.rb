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
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:resiliencehub)

module Aws::Resiliencehub
  # An API client for Aws::Resiliencehub.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AwsResilienceHub
    @identifier = :resiliencehub

    add_plugin(::Aws::Resiliencehub::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Resiliencehub::EndpointProvider)
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
    # @option options [#call(attempts)] :retry_backoff (Smithy::Client::Retry::ExponentialBackoff.new)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_base_delay (2)
    #  The base delay, in seconds, used to calculate the exponential backoff for
    #  retry attempts. This option is ignored if a custom `retry_backoff` is provided.
    #  Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_max_delay (20)
    #  The maximum delay, in seconds, between retry attempts. This option is ignored
    #  if a custom `retry_backoff` is provided. Used in the `standard` and `adaptive`
    #  retry strategies.
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

    # <p>Accepts the resource grouping recommendations suggested by Resilience Hub for your application.</p>
    # @param [Hash, Types::AcceptResourceGroupingRecommendationsRequest] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [Array<Types::AcceptGroupingRecommendationEntry>] :entries
    #   <p>List of resource grouping recommendations you want to include in your application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     entries: [ # required
    #       {
    #         grouping_recommendation_id: "String255", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.accept_resource_grouping_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     failed_entries: [ # required
    #       {
    #         grouping_recommendation_id: "String255", # required
    #         error_message: "ErrorMessage", # required
    #       }
    #     ]
    #   }
    # @return [Types::AcceptResourceGroupingRecommendationsResponse]
    def accept_resource_grouping_recommendations(params = {}, options = {})
      request = build_request(:accept_resource_grouping_recommendations, params)
      request.send_request(options)
    end

    # <p>Adds the source of resource-maps to the draft version of an application. During
    #       assessment, Resilience Hub will use these resource-maps to resolve the latest physical
    #       ID for each resource in the application template. For more information about different types
    #       of resources supported by Resilience Hub and how to add them in your application, see
    #         <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/how-app-manage.html">Step
    #         2: How is your application managed?</a> in the Resilience Hub User Guide.</p>
    # @param [Hash, Types::AddDraftAppVersionResourceMappingsInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [Array<Types::ResourceMapping>] :resource_mappings
    #   <p>Mappings used to map logical resources from the template to physical resources. You can
    #         use the mapping type <code>CFN_STACK</code> if the application template uses
    #         a logical stack name. Or you can map individual resources by using the mapping type
    #         <code>RESOURCE</code>. We recommend using the mapping type <code>CFN_STACK</code> if the
    #         application is backed by a CloudFormation stack.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     resource_mappings: [ # required
    #       {
    #         resource_name: "EntityName",
    #         logical_stack_name: "String255",
    #         app_registry_app_name: "EntityName",
    #         resource_group_name: "EntityName",
    #         mapping_type: "CfnStack" # One of: ["CfnStack", "Resource", "AppRegistryApp", "ResourceGroup", "Terraform", "EKS"], # required
    #         physical_resource_id: { # required
    #           identifier: "String255", # required
    #           type: "Arn" # One of: ["Arn", "Native"], # required
    #           aws_region: "AwsRegion",
    #           aws_account_id: "CustomerId"
    #         },
    #         terraform_source_name: "String255",
    #         eks_source_name: "String255"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_draft_app_version_resource_mappings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     resource_mappings: [ # required
    #       {
    #         resource_name: "EntityName",
    #         logical_stack_name: "String255",
    #         app_registry_app_name: "EntityName",
    #         resource_group_name: "EntityName",
    #         mapping_type: "CfnStack" # One of: ["CfnStack", "Resource", "AppRegistryApp", "ResourceGroup", "Terraform", "EKS"], # required
    #         physical_resource_id: { # required
    #           identifier: "String255", # required
    #           type: "Arn" # One of: ["Arn", "Native"], # required
    #           aws_region: "AwsRegion",
    #           aws_account_id: "CustomerId"
    #         },
    #         terraform_source_name: "String255",
    #         eks_source_name: "String255"
    #       }
    #     ]
    #   }
    # @return [Types::AddDraftAppVersionResourceMappingsOutput]
    def add_draft_app_version_resource_mappings(params = {}, options = {})
      request = build_request(:add_draft_app_version_resource_mappings, params)
      request.send_request(options)
    end

    # <p>Enables you to include or exclude one or more operational recommendations.</p>
    # @param [Hash, Types::BatchUpdateRecommendationStatusRequest] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [Array<Types::UpdateRecommendationStatusRequestEntry>] :request_entries
    #   <p>Defines the list of operational recommendations that need to be included or
    #         excluded.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     request_entries: [ # required
    #       {
    #         entry_id: "String255", # required
    #         reference_id: "SpecReferenceId", # required
    #         item: {
    #           resource_id: "String500",
    #           target_account_id: "CustomerId",
    #           target_region: "AwsRegion"
    #         },
    #         excluded: false, # required
    #         app_component_id: "EntityName255",
    #         exclude_reason: "AlreadyImplemented" # One of: ["AlreadyImplemented", "NotRelevant", "ComplexityOfImplementation"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_recommendation_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     successful_entries: [ # required
    #       {
    #         entry_id: "String255", # required
    #         reference_id: "SpecReferenceId", # required
    #         item: {
    #           resource_id: "String500",
    #           target_account_id: "CustomerId",
    #           target_region: "AwsRegion"
    #         },
    #         excluded: false, # required
    #         app_component_id: "EntityName255",
    #         exclude_reason: "AlreadyImplemented" # One of: ["AlreadyImplemented", "NotRelevant", "ComplexityOfImplementation"]
    #       }
    #     ],
    #     failed_entries: [ # required
    #       {
    #         entry_id: "String255", # required
    #         error_message: "ErrorMessage", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdateRecommendationStatusResponse]
    def batch_update_recommendation_status(params = {}, options = {})
      request = build_request(:batch_update_recommendation_status, params)
      request.send_request(options)
    end

    # <p>Creates an Resilience Hub application. An Resilience Hub application is a
    #       collection of Amazon Web Services resources structured to prevent and recover Amazon Web Services application disruptions. To describe a Resilience Hub application, you provide an
    #       application name, resources from one or more CloudFormation stacks, Resource Groups, Terraform state files, AppRegistry applications, and an appropriate
    #       resiliency policy. In addition, you can also add resources that are located on Amazon Elastic Kubernetes Service (Amazon EKS) clusters as optional resources. For more information
    #       about the number of resources supported per application, see <a href="https://docs.aws.amazon.com/general/latest/gr/resiliencehub.html#limits_resiliencehub">Service
    #       quotas</a>.</p>
    #          <p>After you create an Resilience Hub application, you publish it so that you can run
    #       a resiliency assessment on it. You can then use recommendations from the assessment to improve
    #       resiliency by running another assessment, comparing results, and then iterating the process
    #       until you achieve your goals for recovery time objective (RTO) and recovery point objective
    #       (RPO).</p>
    # @param [Hash, Types::CreateAppInput] params
    # @option params [String] :name
    #   <p>Name of the application.</p>
    # @option params [String] :description
    #   <p>The optional description for an app.</p>
    # @option params [String] :policy_arn
    #   <p>Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
    #   Each tag consists of a key/value pair.</p>
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    # @option params [String] :assessment_schedule
    #   <p> Assessment execution schedule with 'Daily' or 'Disabled' values. </p>
    # @option params [Types::PermissionModel] :permission_model
    #   <p>Defines the roles and credentials that Resilience Hub would use while creating the
    #         application, importing its resources, and running an assessment.</p>
    # @option params [Array<Types::EventSubscription>] :event_subscriptions
    #   <p>The list of events you would like to subscribe and get notification for. Currently,
    #           Resilience Hub supports only <b>Drift detected</b> and
    #           <b>Scheduled assessment failure</b> events notification.</p>
    # @option params [String] :aws_application_arn
    #   <p>Amazon Resource Name (ARN) of  Resource Groups group that is integrated with an AppRegistry application. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     description: "EntityDescription",
    #     policy_arn: "Arn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken",
    #     assessment_schedule: "Disabled" # One of: ["Disabled", "Daily"],
    #     permission_model: {
    #       type: "LegacyIAMUser" # One of: ["LegacyIAMUser", "RoleBased"], # required
    #       invoker_role_name: "IamRoleName",
    #       cross_account_role_arns: ["IamRoleArn"]
    #     },
    #     event_subscriptions: [
    #       {
    #         name: "String255", # required
    #         event_type: "ScheduledAssessmentFailure" # One of: ["ScheduledAssessmentFailure", "DriftDetected"], # required
    #         sns_topic_arn: "Arn"
    #       }
    #     ],
    #     aws_application_arn: "Arn"
    #   }
    #   options = {}
    #   response = client.create_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app: { # required
    #       app_arn: "Arn", # required
    #       name: "EntityName", # required
    #       description: "EntityDescription",
    #       policy_arn: "Arn",
    #       creation_time: Time.now, # required
    #       status: "Active" # One of: ["Active", "Deleting"],
    #       compliance_status: "PolicyBreached" # One of: ["PolicyBreached", "PolicyMet", "NotAssessed", "ChangesDetected", "NotApplicable", "MissingPolicy"],
    #       last_app_compliance_evaluation_time: Time.now,
    #       resiliency_score: 1.0,
    #       last_resiliency_score_evaluation_time: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       assessment_schedule: "Disabled" # One of: ["Disabled", "Daily"],
    #       permission_model: {
    #         type: "LegacyIAMUser" # One of: ["LegacyIAMUser", "RoleBased"], # required
    #         invoker_role_name: "IamRoleName",
    #         cross_account_role_arns: ["IamRoleArn"]
    #       },
    #       event_subscriptions: [
    #         {
    #           name: "String255", # required
    #           event_type: "ScheduledAssessmentFailure" # One of: ["ScheduledAssessmentFailure", "DriftDetected"], # required
    #           sns_topic_arn: "Arn"
    #         }
    #       ],
    #       drift_status: "NotChecked" # One of: ["NotChecked", "NotDetected", "Detected"],
    #       last_drift_evaluation_time: Time.now,
    #       rto_in_secs: 1,
    #       rpo_in_secs: 1,
    #       aws_application_arn: "Arn"
    #     }
    #   }
    # @return [Types::CreateAppOutput]
    def create_app(params = {}, options = {})
      request = build_request(:create_app, params)
      request.send_request(options)
    end

    # <p>Creates a new Application Component in the Resilience Hub application.</p>
    #          <note>
    #             <p>This API updates the Resilience Hub application draft version. To use this
    #         Application Component for running assessments, you must publish the Resilience Hub
    #         application using the <code>PublishAppVersion</code> API.</p>
    #          </note>
    # @param [Hash, Types::CreateAppVersionAppComponentInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :id
    #   <p>Identifier of the Application Component.</p>
    # @option params [String] :name
    #   <p>Name of the Application Component.</p>
    # @option params [String] :type
    #   <p>Type of Application Component. For more information about the types of Application Component, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/AppComponent.grouping.html">Grouping resources in an AppComponent</a>.</p>
    # @option params [Hash<String, Array<String>>] :additional_info
    #   <p>Currently, there is no supported additional information for Application Components.</p>
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     id: "String255",
    #     name: "String255", # required
    #     type: "String255", # required
    #     additional_info: {
    #       "String128WithoutWhitespace" => ["String1024"]
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_app_version_app_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     app_component: {
    #       name: "EntityName255", # required
    #       type: "String255", # required
    #       id: "EntityName255",
    #       additional_info: {
    #         "String128WithoutWhitespace" => ["String1024"]
    #       }
    #     }
    #   }
    # @return [Types::CreateAppVersionAppComponentOutput]
    def create_app_version_app_component(params = {}, options = {})
      request = build_request(:create_app_version_app_component, params)
      request.send_request(options)
    end

    # <p>Adds a resource to the Resilience Hub application and assigns it to the specified
    #       Application Components. If you specify a new Application Component, Resilience Hub will
    #       automatically create the Application Component.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>This action has no effect outside Resilience Hub.</p>
    #                </li>
    #                <li>
    #                   <p>This API updates the Resilience Hub application draft version. To use this
    #             resource for running resiliency assessments, you must publish the Resilience Hub
    #             application using the <code>PublishAppVersion</code> API.</p>
    #                </li>
    #                <li>
    #                   <p>To update application version with new <code>physicalResourceID</code>, you must
    #             call <code>ResolveAppVersionResources</code> API.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::CreateAppVersionResourceInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :resource_name
    #   <p>Name of the resource.</p>
    # @option params [Types::LogicalResourceId] :logical_resource_id
    #   <p>Logical identifier of the resource.</p>
    # @option params [String] :physical_resource_id
    #   <p>Physical identifier of the resource.</p>
    # @option params [String] :aws_region
    #   <p>Amazon Web Services region that owns the physical resource.</p>
    # @option params [String] :aws_account_id
    #   <p>Amazon Web Services account that owns the physical resource.</p>
    # @option params [String] :resource_type
    #   <p>Type of resource.</p>
    # @option params [Array<String>] :app_components
    #   <p>List of Application Components that this resource belongs to. If an Application Component is not part of the Resilience Hub application, it will be added.</p>
    # @option params [Hash<String, Array<String>>] :additional_info
    #   <p>Currently, there is no supported additional information for resources.</p>
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     resource_name: "EntityName",
    #     logical_resource_id: { # required
    #       identifier: "String255", # required
    #       logical_stack_name: "String255",
    #       resource_group_name: "EntityName",
    #       terraform_source_name: "String255",
    #       eks_source_name: "String255"
    #     },
    #     physical_resource_id: "String2048", # required
    #     aws_region: "AwsRegion",
    #     aws_account_id: "CustomerId",
    #     resource_type: "String255", # required
    #     app_components: ["String255"], # required
    #     additional_info: {
    #       "String128WithoutWhitespace" => ["String1024"]
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_app_version_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     physical_resource: {
    #       resource_name: "EntityName",
    #       logical_resource_id: { # required
    #         identifier: "String255", # required
    #         logical_stack_name: "String255",
    #         resource_group_name: "EntityName",
    #         terraform_source_name: "String255",
    #         eks_source_name: "String255"
    #       },
    #       physical_resource_id: { # required
    #         identifier: "String255", # required
    #         type: "Arn" # One of: ["Arn", "Native"], # required
    #         aws_region: "AwsRegion",
    #         aws_account_id: "CustomerId"
    #       },
    #       resource_type: "String255", # required
    #       app_components: [
    #         {
    #           name: "EntityName255", # required
    #           type: "String255", # required
    #           id: "EntityName255",
    #           additional_info: {
    #             "String128WithoutWhitespace" => ["String1024"]
    #           }
    #         }
    #       ],
    #       additional_info: {
    #         "String128WithoutWhitespace" => ["String1024"]
    #       },
    #       excluded: false,
    #       source_type: "AppTemplate" # One of: ["AppTemplate", "Discovered"],
    #       parent_resource_name: "EntityName"
    #     }
    #   }
    # @return [Types::CreateAppVersionResourceOutput]
    def create_app_version_resource(params = {}, options = {})
      request = build_request(:create_app_version_resource, params)
      request.send_request(options)
    end

    # <p>Creates a new recommendation template for the Resilience Hub application.</p>
    # @param [Hash, Types::CreateRecommendationTemplateInput] params
    # @option params [Array<String>] :recommendation_ids
    #   <p>Identifiers for the recommendations used to create a recommendation template.</p>
    # @option params [String] :format
    #   <p>The format for the recommendation template.</p>
    #            <dl>
    #               <dt>CfnJson</dt>
    #               <dd>
    #                  <p>The template is CloudFormation JSON.</p>
    #               </dd>
    #               <dt>CfnYaml</dt>
    #               <dd>
    #                  <p>The template is CloudFormation YAML.</p>
    #               </dd>
    #            </dl>
    # @option params [Array<String>] :recommendation_types
    #   <p>An array of strings that specify the recommendation template type or types.</p>
    #            <dl>
    #               <dt>Alarm</dt>
    #               <dd>
    #                  <p>The template is an <a>AlarmRecommendation</a> template.</p>
    #               </dd>
    #               <dt>Sop</dt>
    #               <dd>
    #                  <p>The template is a <a>SopRecommendation</a> template.</p>
    #               </dd>
    #               <dt>Test</dt>
    #               <dd>
    #                  <p>The template is a <a>TestRecommendation</a> template.</p>
    #               </dd>
    #            </dl>
    # @option params [String] :assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :name
    #   <p>The name for the recommendation template.</p>
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
    #   Each tag consists of a key/value pair.</p>
    # @option params [String] :bucket_name
    #   <p>The name of the Amazon S3 bucket that will contain the recommendation template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recommendation_ids: ["Uuid"],
    #     format: "CfnYaml" # One of: ["CfnYaml", "CfnJson"],
    #     recommendation_types: ["Alarm" # One of: ["Alarm", "Sop", "Test"]],
    #     assessment_arn: "Arn", # required
    #     name: "EntityName", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     bucket_name: "EntityName"
    #   }
    #   options = {}
    #   response = client.create_recommendation_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendation_template: {
    #       templates_location: {
    #         bucket: "String500",
    #         prefix: "String500"
    #       },
    #       assessment_arn: "Arn", # required
    #       app_arn: "Arn",
    #       recommendation_ids: ["Uuid"],
    #       recommendation_types: ["Alarm" # One of: ["Alarm", "Sop", "Test"]], # required
    #       format: "CfnYaml" # One of: ["CfnYaml", "CfnJson"], # required
    #       recommendation_template_arn: "Arn", # required
    #       message: "String500",
    #       status: "Pending" # One of: ["Pending", "InProgress", "Failed", "Success"], # required
    #       name: "EntityName", # required
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       needs_replacements: false
    #     }
    #   }
    # @return [Types::CreateRecommendationTemplateOutput]
    def create_recommendation_template(params = {}, options = {})
      request = build_request(:create_recommendation_template, params)
      request.send_request(options)
    end

    # <p>Creates a resiliency policy for an application.</p>
    #          <note>
    #             <p>Resilience Hub allows you to provide a value of zero for <code>rtoInSecs</code>
    #         and <code>rpoInSecs</code> of your resiliency policy. But, while assessing your application,
    #         the lowest possible assessment result is near zero. Hence, if you provide value zero for
    #           <code>rtoInSecs</code> and <code>rpoInSecs</code>, the estimated workload RTO and
    #         estimated workload RPO result will be near zero and the <b>Compliance
    #           status</b> for your application will be set to <b>Policy
    #           breached</b>.</p>
    #          </note>
    # @param [Hash, Types::CreateResiliencyPolicyInput] params
    # @option params [String] :policy_name
    #   <p>Name of the resiliency policy.</p>
    # @option params [String] :policy_description
    #   <p>Description of the resiliency policy.</p>
    # @option params [String] :data_location_constraint
    #   <p>Specifies a high-level geographical location constraint for where your resilience policy
    #         data can be stored.</p>
    # @option params [String] :tier
    #   <p>The tier for this resiliency policy, ranging from the highest severity
    #           (<code>MissionCritical</code>) to lowest (<code>NonCritical</code>).</p>
    # @option params [Hash<String, Types::FailurePolicy>] :policy
    #   <p>The type of resiliency policy to be created, including the recovery time objective (RTO)
    #         and recovery point objective (RPO) in seconds.</p>
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
    #   Each tag consists of a key/value pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "EntityName", # required
    #     policy_description: "EntityDescription",
    #     data_location_constraint: "AnyLocation" # One of: ["AnyLocation", "SameContinent", "SameCountry"],
    #     tier: "MissionCritical" # One of: ["MissionCritical", "Critical", "Important", "CoreServices", "NonCritical", "NotApplicable"], # required
    #     policy: { # required
    #       "DisruptionType" => {
    #         rto_in_secs: 1, # required
    #         rpo_in_secs: 1, # required
    #       }
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_resiliency_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: { # required
    #       policy_arn: "Arn",
    #       policy_name: "EntityName",
    #       policy_description: "EntityDescription",
    #       data_location_constraint: "AnyLocation" # One of: ["AnyLocation", "SameContinent", "SameCountry"],
    #       tier: "MissionCritical" # One of: ["MissionCritical", "Critical", "Important", "CoreServices", "NonCritical", "NotApplicable"],
    #       estimated_cost_tier: "L1" # One of: ["L1", "L2", "L3", "L4"],
    #       policy: {
    #         "DisruptionType" => {
    #           rto_in_secs: 1, # required
    #           rpo_in_secs: 1, # required
    #         }
    #       },
    #       creation_time: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateResiliencyPolicyOutput]
    def create_resiliency_policy(params = {}, options = {})
      request = build_request(:create_resiliency_policy, params)
      request.send_request(options)
    end

    # <p>Deletes an Resilience Hub application. This is a destructive action that can't be
    #       undone.</p>
    # @param [Hash, Types::DeleteAppInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [Boolean] :force_delete
    #   <p>A boolean option to force the deletion of an Resilience Hub application. </p>
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     force_delete: false,
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #   }
    # @return [Types::DeleteAppOutput]
    def delete_app(params = {}, options = {})
      request = build_request(:delete_app, params)
      request.send_request(options)
    end

    # <p>Deletes an Resilience Hub application assessment. This is a destructive action
    #       that can't be undone.</p>
    # @param [Hash, Types::DeleteAppAssessmentInput] params
    # @option params [String] :assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_arn: "Arn", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_app_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment_arn: "Arn", # required
    #     assessment_status: "Pending" # One of: ["Pending", "InProgress", "Failed", "Success"], # required
    #   }
    # @return [Types::DeleteAppAssessmentOutput]
    def delete_app_assessment(params = {}, options = {})
      request = build_request(:delete_app_assessment, params)
      request.send_request(options)
    end

    # <p>Deletes the input source and all of its imported resources from the Resilience Hub
    #       application.</p>
    # @param [Hash, Types::DeleteAppInputSourceInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :source_arn
    #   <p>The Amazon Resource Name (ARN) of the imported resource you want to remove from the
    #           Resilience Hub application. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [Types::TerraformSource] :terraform_source
    #   <p>The imported Terraform s3 state ﬁle you want to remove from the Resilience Hub
    #         application.</p>
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    # @option params [Types::EksSourceClusterNamespace] :eks_source_cluster_namespace
    #   <p>The namespace on your Amazon Elastic Kubernetes Service cluster that you want to delete from the
    #           Resilience Hub application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     source_arn: "Arn",
    #     terraform_source: {
    #       s3_state_file_url: "S3Url", # required
    #     },
    #     client_token: "ClientToken",
    #     eks_source_cluster_namespace: {
    #       eks_cluster_arn: "Arn", # required
    #       namespace: "EksNamespace", # required
    #     }
    #   }
    #   options = {}
    #   response = client.delete_app_input_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn",
    #     app_input_source: {
    #       source_name: "String255",
    #       import_type: "CfnStack" # One of: ["CfnStack", "Resource", "AppRegistryApp", "ResourceGroup", "Terraform", "EKS"], # required
    #       source_arn: "Arn",
    #       terraform_source: {
    #         s3_state_file_url: "S3Url", # required
    #       },
    #       resource_count: 1,
    #       eks_source_cluster_namespace: {
    #         eks_cluster_arn: "Arn", # required
    #         namespace: "EksNamespace", # required
    #       }
    #     }
    #   }
    # @return [Types::DeleteAppInputSourceOutput]
    def delete_app_input_source(params = {}, options = {})
      request = build_request(:delete_app_input_source, params)
      request.send_request(options)
    end

    # <p>Deletes an Application Component from the Resilience Hub application.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>This API updates the Resilience Hub application draft version. To use this
    #             Application Component for running assessments, you must publish the Resilience Hub
    #             application using the <code>PublishAppVersion</code> API.</p>
    #                </li>
    #                <li>
    #                   <p>You will not be able to delete an Application Component if it has resources associated
    #             with it.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DeleteAppVersionAppComponentInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :id
    #   <p>Identifier of the Application Component.</p>
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     id: "String255", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_app_version_app_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     app_component: {
    #       name: "EntityName255", # required
    #       type: "String255", # required
    #       id: "EntityName255",
    #       additional_info: {
    #         "String128WithoutWhitespace" => ["String1024"]
    #       }
    #     }
    #   }
    # @return [Types::DeleteAppVersionAppComponentOutput]
    def delete_app_version_app_component(params = {}, options = {})
      request = build_request(:delete_app_version_app_component, params)
      request.send_request(options)
    end

    # <p>Deletes a resource from the Resilience Hub application.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You can only delete a manually added resource. To exclude non-manually added
    #             resources, use the <code>UpdateAppVersionResource</code> API.</p>
    #                </li>
    #                <li>
    #                   <p>This action has no effect outside Resilience Hub.</p>
    #                </li>
    #                <li>
    #                   <p>This API updates the Resilience Hub application draft version. To use this
    #             resource for running resiliency assessments, you must publish the Resilience Hub
    #             application using the <code>PublishAppVersion</code> API.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DeleteAppVersionResourceInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :resource_name
    #   <p>Name of the resource.</p>
    # @option params [Types::LogicalResourceId] :logical_resource_id
    #   <p>Logical identifier of the resource.</p>
    # @option params [String] :physical_resource_id
    #   <p>Physical identifier of the resource.</p>
    # @option params [String] :aws_region
    #   <p>Amazon Web Services region that owns the physical resource.</p>
    # @option params [String] :aws_account_id
    #   <p>Amazon Web Services account that owns the physical resource.</p>
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     resource_name: "EntityName",
    #     logical_resource_id: {
    #       identifier: "String255", # required
    #       logical_stack_name: "String255",
    #       resource_group_name: "EntityName",
    #       terraform_source_name: "String255",
    #       eks_source_name: "String255"
    #     },
    #     physical_resource_id: "String2048",
    #     aws_region: "AwsRegion",
    #     aws_account_id: "CustomerId",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_app_version_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     physical_resource: {
    #       resource_name: "EntityName",
    #       logical_resource_id: { # required
    #         identifier: "String255", # required
    #         logical_stack_name: "String255",
    #         resource_group_name: "EntityName",
    #         terraform_source_name: "String255",
    #         eks_source_name: "String255"
    #       },
    #       physical_resource_id: { # required
    #         identifier: "String255", # required
    #         type: "Arn" # One of: ["Arn", "Native"], # required
    #         aws_region: "AwsRegion",
    #         aws_account_id: "CustomerId"
    #       },
    #       resource_type: "String255", # required
    #       app_components: [
    #         {
    #           name: "EntityName255", # required
    #           type: "String255", # required
    #           id: "EntityName255",
    #           additional_info: {
    #             "String128WithoutWhitespace" => ["String1024"]
    #           }
    #         }
    #       ],
    #       additional_info: {
    #         "String128WithoutWhitespace" => ["String1024"]
    #       },
    #       excluded: false,
    #       source_type: "AppTemplate" # One of: ["AppTemplate", "Discovered"],
    #       parent_resource_name: "EntityName"
    #     }
    #   }
    # @return [Types::DeleteAppVersionResourceOutput]
    def delete_app_version_resource(params = {}, options = {})
      request = build_request(:delete_app_version_resource, params)
      request.send_request(options)
    end

    # <p>Deletes a recommendation template. This is a destructive action that can't be
    #       undone.</p>
    # @param [Hash, Types::DeleteRecommendationTemplateInput] params
    # @option params [String] :recommendation_template_arn
    #   <p>The Amazon Resource Name (ARN) for a recommendation template.</p>
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recommendation_template_arn: "Arn", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_recommendation_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendation_template_arn: "Arn", # required
    #     status: "Pending" # One of: ["Pending", "InProgress", "Failed", "Success"], # required
    #   }
    # @return [Types::DeleteRecommendationTemplateOutput]
    def delete_recommendation_template(params = {}, options = {})
      request = build_request(:delete_recommendation_template, params)
      request.send_request(options)
    end

    # <p>Deletes a resiliency policy. This is a destructive action that can't be undone.</p>
    # @param [Hash, Types::DeleteResiliencyPolicyInput] params
    # @option params [String] :policy_arn
    #   <p>Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "Arn", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_resiliency_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_arn: "Arn", # required
    #   }
    # @return [Types::DeleteResiliencyPolicyOutput]
    def delete_resiliency_policy(params = {}, options = {})
      request = build_request(:delete_resiliency_policy, params)
      request.send_request(options)
    end

    # <p>Describes an Resilience Hub application.</p>
    # @param [Hash, Types::DescribeAppInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app: { # required
    #       app_arn: "Arn", # required
    #       name: "EntityName", # required
    #       description: "EntityDescription",
    #       policy_arn: "Arn",
    #       creation_time: Time.now, # required
    #       status: "Active" # One of: ["Active", "Deleting"],
    #       compliance_status: "PolicyBreached" # One of: ["PolicyBreached", "PolicyMet", "NotAssessed", "ChangesDetected", "NotApplicable", "MissingPolicy"],
    #       last_app_compliance_evaluation_time: Time.now,
    #       resiliency_score: 1.0,
    #       last_resiliency_score_evaluation_time: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       assessment_schedule: "Disabled" # One of: ["Disabled", "Daily"],
    #       permission_model: {
    #         type: "LegacyIAMUser" # One of: ["LegacyIAMUser", "RoleBased"], # required
    #         invoker_role_name: "IamRoleName",
    #         cross_account_role_arns: ["IamRoleArn"]
    #       },
    #       event_subscriptions: [
    #         {
    #           name: "String255", # required
    #           event_type: "ScheduledAssessmentFailure" # One of: ["ScheduledAssessmentFailure", "DriftDetected"], # required
    #           sns_topic_arn: "Arn"
    #         }
    #       ],
    #       drift_status: "NotChecked" # One of: ["NotChecked", "NotDetected", "Detected"],
    #       last_drift_evaluation_time: Time.now,
    #       rto_in_secs: 1,
    #       rpo_in_secs: 1,
    #       aws_application_arn: "Arn"
    #     }
    #   }
    # @return [Types::DescribeAppOutput]
    def describe_app(params = {}, options = {})
      request = build_request(:describe_app, params)
      request.send_request(options)
    end

    # <p>Describes an assessment for an Resilience Hub application.</p>
    # @param [Hash, Types::DescribeAppAssessmentInput] params
    # @option params [String] :assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_app_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment: { # required
    #       app_arn: "Arn",
    #       app_version: "EntityVersion",
    #       invoker: "User" # One of: ["User", "System"], # required
    #       cost: {
    #         amount: 1.0, # required
    #         currency: "CurrencyCode", # required
    #         frequency: "Hourly" # One of: ["Hourly", "Daily", "Monthly", "Yearly"], # required
    #       },
    #       resiliency_score: {
    #         score: 1.0, # required
    #         disruption_score: { # required
    #           "DisruptionType" => 1.0
    #         },
    #         component_score: {
    #           "ResiliencyScoreType" => {
    #             score: 1.0,
    #             possible_score: 1.0,
    #             outstanding_count: 1,
    #             excluded_count: 1
    #           }
    #         }
    #       },
    #       compliance: {
    #         "DisruptionType" => {
    #           achievable_rto_in_secs: 1,
    #           current_rto_in_secs: 1,
    #           rto_reference_id: "String500",
    #           rto_description: "String500",
    #           current_rpo_in_secs: 1,
    #           rpo_reference_id: "String500",
    #           rpo_description: "String500",
    #           compliance_status: "PolicyBreached" # One of: ["PolicyBreached", "PolicyMet", "NotApplicable", "MissingPolicy"], # required
    #           achievable_rpo_in_secs: 1,
    #           message: "String500"
    #         }
    #       },
    #       compliance_status: "PolicyBreached" # One of: ["PolicyBreached", "PolicyMet", "NotApplicable", "MissingPolicy"],
    #       assessment_status: "Pending" # One of: ["Pending", "InProgress", "Failed", "Success"], # required
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       message: "String500",
    #       assessment_name: "EntityName",
    #       assessment_arn: "Arn", # required
    #       policy: {
    #         policy_arn: "Arn",
    #         policy_name: "EntityName",
    #         policy_description: "EntityDescription",
    #         data_location_constraint: "AnyLocation" # One of: ["AnyLocation", "SameContinent", "SameCountry"],
    #         tier: "MissionCritical" # One of: ["MissionCritical", "Critical", "Important", "CoreServices", "NonCritical", "NotApplicable"],
    #         estimated_cost_tier: "L1" # One of: ["L1", "L2", "L3", "L4"],
    #         policy: {
    #           "DisruptionType" => {
    #             rto_in_secs: 1, # required
    #             rpo_in_secs: 1, # required
    #           }
    #         },
    #         creation_time: Time.now,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       resource_errors_details: {
    #         resource_errors: [
    #           {
    #             logical_resource_id: "String255",
    #             physical_resource_id: "String255",
    #             reason: "ErrorMessage"
    #           }
    #         ],
    #         has_more_errors: false
    #       },
    #       version_name: "EntityVersion",
    #       drift_status: "NotChecked" # One of: ["NotChecked", "NotDetected", "Detected"],
    #       summary: {
    #         summary: "String500",
    #         risk_recommendations: [
    #           {
    #             risk: "String255",
    #             recommendation: "String255",
    #             app_components: ["String255"]
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::DescribeAppAssessmentOutput]
    def describe_app_assessment(params = {}, options = {})
      request = build_request(:describe_app_assessment, params)
      request.send_request(options)
    end

    # <p>Describes the Resilience Hub application version.</p>
    # @param [Hash, Types::DescribeAppVersionInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :app_version
    #   <p>Resilience Hub application version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #   }
    #   options = {}
    #   response = client.describe_app_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     additional_info: {
    #       "String128WithoutWhitespace" => ["String1024"]
    #     }
    #   }
    # @return [Types::DescribeAppVersionOutput]
    def describe_app_version(params = {}, options = {})
      request = build_request(:describe_app_version, params)
      request.send_request(options)
    end

    # <p>Describes an Application Component in the Resilience Hub application.</p>
    # @param [Hash, Types::DescribeAppVersionAppComponentInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :app_version
    #   <p>Resilience Hub application version.</p>
    # @option params [String] :id
    #   <p>Identifier of the Application Component.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     id: "String255", # required
    #   }
    #   options = {}
    #   response = client.describe_app_version_app_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     app_component: {
    #       name: "EntityName255", # required
    #       type: "String255", # required
    #       id: "EntityName255",
    #       additional_info: {
    #         "String128WithoutWhitespace" => ["String1024"]
    #       }
    #     }
    #   }
    # @return [Types::DescribeAppVersionAppComponentOutput]
    def describe_app_version_app_component(params = {}, options = {})
      request = build_request(:describe_app_version_app_component, params)
      request.send_request(options)
    end

    # <p>Describes a resource of the Resilience Hub application.</p>
    #          <note>
    #             <p>This API accepts only one of the following parameters to describe the resource:</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <code>resourceName</code>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>logicalResourceId</code>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>physicalResourceId</code> (Along with <code>physicalResourceId</code>, you can
    #             also provide <code>awsAccountId</code>, and <code>awsRegion</code>)</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DescribeAppVersionResourceInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :app_version
    #   <p>Resilience Hub application version.</p>
    # @option params [String] :resource_name
    #   <p>Name of the resource.</p>
    # @option params [Types::LogicalResourceId] :logical_resource_id
    #   <p>Logical identifier of the resource.</p>
    # @option params [String] :physical_resource_id
    #   <p>Physical identifier of the resource.</p>
    # @option params [String] :aws_region
    #   <p>Amazon Web Services region that owns the physical resource.</p>
    # @option params [String] :aws_account_id
    #   <p>Amazon Web Services account that owns the physical resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     resource_name: "EntityName",
    #     logical_resource_id: {
    #       identifier: "String255", # required
    #       logical_stack_name: "String255",
    #       resource_group_name: "EntityName",
    #       terraform_source_name: "String255",
    #       eks_source_name: "String255"
    #     },
    #     physical_resource_id: "String2048",
    #     aws_region: "AwsRegion",
    #     aws_account_id: "CustomerId"
    #   }
    #   options = {}
    #   response = client.describe_app_version_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     physical_resource: {
    #       resource_name: "EntityName",
    #       logical_resource_id: { # required
    #         identifier: "String255", # required
    #         logical_stack_name: "String255",
    #         resource_group_name: "EntityName",
    #         terraform_source_name: "String255",
    #         eks_source_name: "String255"
    #       },
    #       physical_resource_id: { # required
    #         identifier: "String255", # required
    #         type: "Arn" # One of: ["Arn", "Native"], # required
    #         aws_region: "AwsRegion",
    #         aws_account_id: "CustomerId"
    #       },
    #       resource_type: "String255", # required
    #       app_components: [
    #         {
    #           name: "EntityName255", # required
    #           type: "String255", # required
    #           id: "EntityName255",
    #           additional_info: {
    #             "String128WithoutWhitespace" => ["String1024"]
    #           }
    #         }
    #       ],
    #       additional_info: {
    #         "String128WithoutWhitespace" => ["String1024"]
    #       },
    #       excluded: false,
    #       source_type: "AppTemplate" # One of: ["AppTemplate", "Discovered"],
    #       parent_resource_name: "EntityName"
    #     }
    #   }
    # @return [Types::DescribeAppVersionResourceOutput]
    def describe_app_version_resource(params = {}, options = {})
      request = build_request(:describe_app_version_resource, params)
      request.send_request(options)
    end

    # <p>Returns the resolution status for the specified resolution identifier for an application
    #       version. If <code>resolutionId</code> is not specified, the current resolution status is
    #       returned.</p>
    # @param [Hash, Types::DescribeAppVersionResourcesResolutionStatusInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :app_version
    #   <p>The version of the application.</p>
    # @option params [String] :resolution_id
    #   <p>The identifier for a specific resolution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     resolution_id: "String255"
    #   }
    #   options = {}
    #   response = client.describe_app_version_resources_resolution_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     resolution_id: "String255", # required
    #     status: "Pending" # One of: ["Pending", "InProgress", "Failed", "Success"], # required
    #     error_message: "String500"
    #   }
    # @return [Types::DescribeAppVersionResourcesResolutionStatusOutput]
    def describe_app_version_resources_resolution_status(params = {}, options = {})
      request = build_request(:describe_app_version_resources_resolution_status, params)
      request.send_request(options)
    end

    # <p>Describes details about an Resilience Hub application.</p>
    # @param [Hash, Types::DescribeAppVersionTemplateInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :app_version
    #   <p>The version of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #   }
    #   options = {}
    #   response = client.describe_app_version_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     app_template_body: "AppTemplateBody", # required
    #   }
    # @return [Types::DescribeAppVersionTemplateOutput]
    def describe_app_version_template(params = {}, options = {})
      request = build_request(:describe_app_version_template, params)
      request.send_request(options)
    end

    # <p>Describes the status of importing resources to an application version.</p>
    #          <note>
    #             <p>If you get a 404 error with
    #           <code>ResourceImportStatusNotFoundAppMetadataException</code>, you must call
    #           <code>importResourcesToDraftAppVersion</code> after creating the application and before
    #         calling <code>describeDraftAppVersionResourcesImportStatus</code> to obtain the
    #         status.</p>
    #          </note>
    # @param [Hash, Types::DescribeDraftAppVersionResourcesImportStatusInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_draft_app_version_resources_import_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     status: "Pending" # One of: ["Pending", "InProgress", "Failed", "Success"], # required
    #     status_change_time: Time.now, # required
    #     error_message: "String500",
    #     error_details: [
    #       {
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeDraftAppVersionResourcesImportStatusOutput]
    def describe_draft_app_version_resources_import_status(params = {}, options = {})
      request = build_request(:describe_draft_app_version_resources_import_status, params)
      request.send_request(options)
    end

    # <p>Describes the metrics of the application configuration being exported.</p>
    # @param [Hash, Types::DescribeMetricsExportRequest] params
    # @option params [String] :metrics_export_id
    #   <p>Identifier of the metrics export task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     metrics_export_id: "String255", # required
    #   }
    #   options = {}
    #   response = client.describe_metrics_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metrics_export_id: "String255", # required
    #     status: "Pending" # One of: ["Pending", "InProgress", "Failed", "Success"], # required
    #     export_location: {
    #       bucket: "String500",
    #       prefix: "String500"
    #     },
    #     error_message: "String500"
    #   }
    # @return [Types::DescribeMetricsExportResponse]
    def describe_metrics_export(params = {}, options = {})
      request = build_request(:describe_metrics_export, params)
      request.send_request(options)
    end

    # <p>Describes a specified resiliency policy for an Resilience Hub application. The
    #       returned policy object includes creation time, data location constraints, the Amazon Resource
    #       Name (ARN) for the policy, tags, tier, and more.</p>
    # @param [Hash, Types::DescribeResiliencyPolicyInput] params
    # @option params [String] :policy_arn
    #   <p>Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.describe_resiliency_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: { # required
    #       policy_arn: "Arn",
    #       policy_name: "EntityName",
    #       policy_description: "EntityDescription",
    #       data_location_constraint: "AnyLocation" # One of: ["AnyLocation", "SameContinent", "SameCountry"],
    #       tier: "MissionCritical" # One of: ["MissionCritical", "Critical", "Important", "CoreServices", "NonCritical", "NotApplicable"],
    #       estimated_cost_tier: "L1" # One of: ["L1", "L2", "L3", "L4"],
    #       policy: {
    #         "DisruptionType" => {
    #           rto_in_secs: 1, # required
    #           rpo_in_secs: 1, # required
    #         }
    #       },
    #       creation_time: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::DescribeResiliencyPolicyOutput]
    def describe_resiliency_policy(params = {}, options = {})
      request = build_request(:describe_resiliency_policy, params)
      request.send_request(options)
    end

    # <p>Describes the resource grouping recommendation tasks run by Resilience Hub for your application.</p>
    # @param [Hash, Types::DescribeResourceGroupingRecommendationTaskRequest] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :grouping_id
    #   <p>Identifier of the grouping recommendation task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     grouping_id: "String255"
    #   }
    #   options = {}
    #   response = client.describe_resource_grouping_recommendation_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grouping_id: "String255", # required
    #     status: "Pending" # One of: ["Pending", "InProgress", "Failed", "Success"], # required
    #     error_message: "String500"
    #   }
    # @return [Types::DescribeResourceGroupingRecommendationTaskResponse]
    def describe_resource_grouping_recommendation_task(params = {}, options = {})
      request = build_request(:describe_resource_grouping_recommendation_task, params)
      request.send_request(options)
    end

    # <p>Imports resources to Resilience Hub application draft version from different input
    #       sources. For more information about the input sources supported by Resilience Hub, see
    #         <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/discover-structure.html">Discover the structure and describe your Resilience Hub application</a>.</p>
    # @param [Hash, Types::ImportResourcesToDraftAppVersionInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [Array<String>] :source_arns
    #   <p>The Amazon Resource Names (ARNs) for the resources.</p>
    # @option params [Array<Types::TerraformSource>] :terraform_sources
    #   <p> A list of terraform file s3 URLs you need to import. </p>
    # @option params [String] :import_strategy
    #   <p>The import strategy you would like to set to import resources into Resilience Hub
    #         application.</p>
    # @option params [Array<Types::EksSource>] :eks_sources
    #   <p>The input sources of the Amazon Elastic Kubernetes Service resources you need to import.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     source_arns: ["Arn"],
    #     terraform_sources: [
    #       {
    #         s3_state_file_url: "S3Url", # required
    #       }
    #     ],
    #     import_strategy: "AddOnly" # One of: ["AddOnly", "ReplaceAll"],
    #     eks_sources: [
    #       {
    #         eks_cluster_arn: "Arn", # required
    #         namespaces: ["EksNamespace"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.import_resources_to_draft_app_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     source_arns: ["Arn"],
    #     status: "Pending" # One of: ["Pending", "InProgress", "Failed", "Success"], # required
    #     terraform_sources: [
    #       {
    #         s3_state_file_url: "S3Url", # required
    #       }
    #     ],
    #     eks_sources: [
    #       {
    #         eks_cluster_arn: "Arn", # required
    #         namespaces: ["EksNamespace"], # required
    #       }
    #     ]
    #   }
    # @return [Types::ImportResourcesToDraftAppVersionOutput]
    def import_resources_to_draft_app_version(params = {}, options = {})
      request = build_request(:import_resources_to_draft_app_version, params)
      request.send_request(options)
    end

    # <p>Lists the alarm recommendations for an Resilience Hub application.</p>
    # @param [Hash, Types::ListAlarmRecommendationsInput] params
    # @option params [String] :assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_arn: "Arn", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_alarm_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alarm_recommendations: [ # required
    #       {
    #         recommendation_id: "Uuid", # required
    #         reference_id: "SpecReferenceId", # required
    #         name: "String500", # required
    #         description: "EntityDescription",
    #         type: "Metric" # One of: ["Metric", "Composite", "Canary", "Logs", "Event"], # required
    #         app_component_name: "EntityId",
    #         items: [
    #           {
    #             resource_id: "String500",
    #             target_account_id: "CustomerId",
    #             target_region: "AwsRegion",
    #             already_implemented: false,
    #             excluded: false,
    #             exclude_reason: "AlreadyImplemented" # One of: ["AlreadyImplemented", "NotRelevant", "ComplexityOfImplementation"],
    #             latest_discovered_experiment: {
    #               experiment_arn: "String255",
    #               experiment_template_id: "String255"
    #             },
    #             discovered_alarm: {
    #               alarm_arn: "Arn",
    #               source: "String255"
    #             }
    #           }
    #         ],
    #         prerequisite: "String500",
    #         app_component_names: ["String255"],
    #         recommendation_status: "Implemented" # One of: ["Implemented", "Inactive", "NotImplemented", "Excluded"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAlarmRecommendationsOutput]
    def list_alarm_recommendations(params = {}, options = {})
      request = build_request(:list_alarm_recommendations, params)
      request.send_request(options)
    end

    # <p>List of compliance drifts that were detected while running an
    #       assessment.</p>
    # @param [Hash, Types::ListAppAssessmentComplianceDriftsRequest] params
    # @option params [String] :assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of compliance drifts requested.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_arn: "Arn", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_app_assessment_compliance_drifts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compliance_drifts: [ # required
    #       {
    #         entity_id: "String255",
    #         entity_type: "String255",
    #         drift_type: "ApplicationCompliance" # One of: ["ApplicationCompliance", "AppComponentResiliencyComplianceStatus"],
    #         app_id: "String255",
    #         app_version: "String255",
    #         expected_reference_id: "String255",
    #         expected_value: {
    #           "DisruptionType" => {
    #             achievable_rto_in_secs: 1,
    #             current_rto_in_secs: 1,
    #             rto_reference_id: "String500",
    #             rto_description: "String500",
    #             current_rpo_in_secs: 1,
    #             rpo_reference_id: "String500",
    #             rpo_description: "String500",
    #             compliance_status: "PolicyBreached" # One of: ["PolicyBreached", "PolicyMet", "NotApplicable", "MissingPolicy"], # required
    #             achievable_rpo_in_secs: 1,
    #             message: "String500"
    #           }
    #         },
    #         actual_reference_id: "String255",
    #         actual_value: {
    #           "DisruptionType" => {
    #             achievable_rto_in_secs: 1,
    #             current_rto_in_secs: 1,
    #             rto_reference_id: "String500",
    #             rto_description: "String500",
    #             current_rpo_in_secs: 1,
    #             rpo_reference_id: "String500",
    #             rpo_description: "String500",
    #             compliance_status: "PolicyBreached" # One of: ["PolicyBreached", "PolicyMet", "NotApplicable", "MissingPolicy"], # required
    #             achievable_rpo_in_secs: 1,
    #             message: "String500"
    #           }
    #         },
    #         diff_type: "NotEqual" # One of: ["NotEqual", "Added", "Removed"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAppAssessmentComplianceDriftsResponse]
    def list_app_assessment_compliance_drifts(params = {}, options = {})
      request = build_request(:list_app_assessment_compliance_drifts, params)
      request.send_request(options)
    end

    # <p>List of resource drifts that were detected while running an
    #       assessment.</p>
    # @param [Hash, Types::ListAppAssessmentResourceDriftsRequest] params
    # @option params [String] :assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of drift results to include in the response. If more results
    #         exist than the specified <code>MaxResults</code> value, a token is included in the response so
    #         that the remaining results can be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_arn: "Arn", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_app_assessment_resource_drifts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_drifts: [ # required
    #       {
    #         app_arn: "Arn",
    #         app_version: "EntityVersion",
    #         reference_id: "EntityId",
    #         resource_identifier: {
    #           logical_resource_id: {
    #             identifier: "String255", # required
    #             logical_stack_name: "String255",
    #             resource_group_name: "EntityName",
    #             terraform_source_name: "String255",
    #             eks_source_name: "String255"
    #           },
    #           resource_type: "String255"
    #         },
    #         diff_type: "NotEqual" # One of: ["NotEqual", "Added", "Removed"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAppAssessmentResourceDriftsResponse]
    def list_app_assessment_resource_drifts(params = {}, options = {})
      request = build_request(:list_app_assessment_resource_drifts, params)
      request.send_request(options)
    end

    # <p>Lists the assessments for an Resilience Hub application. You can use request
    #       parameters to refine the results for the response object.</p>
    # @param [Hash, Types::ListAppAssessmentsInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :assessment_name
    #   <p>The name for the assessment.</p>
    # @option params [Array<String>] :assessment_status
    #   <p>The current status of the assessment for the resiliency policy.</p>
    # @option params [String] :compliance_status
    #   <p>The current status of compliance for the resiliency policy.</p>
    # @option params [String] :invoker
    #   <p>Specifies the entity that invoked a specific assessment, either a <code>User</code> or the
    #           <code>System</code>.</p>
    # @option params [Boolean] :reverse_order
    #   <p>The default is to sort by ascending <b>startTime</b>.
    #   To sort by descending <b>startTime</b>, set reverseOrder to <code>true</code>.</p>
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn",
    #     assessment_name: "EntityName",
    #     assessment_status: ["Pending" # One of: ["Pending", "InProgress", "Failed", "Success"]],
    #     compliance_status: "PolicyBreached" # One of: ["PolicyBreached", "PolicyMet", "NotApplicable", "MissingPolicy"],
    #     invoker: "User" # One of: ["User", "System"],
    #     reverse_order: false,
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_app_assessments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     assessment_summaries: [ # required
    #       {
    #         app_arn: "Arn",
    #         app_version: "EntityVersion",
    #         assessment_status: "Pending" # One of: ["Pending", "InProgress", "Failed", "Success"], # required
    #         invoker: "User" # One of: ["User", "System"],
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         message: "String500",
    #         assessment_name: "EntityName",
    #         assessment_arn: "Arn", # required
    #         compliance_status: "PolicyBreached" # One of: ["PolicyBreached", "PolicyMet", "NotApplicable", "MissingPolicy"],
    #         cost: {
    #           amount: 1.0, # required
    #           currency: "CurrencyCode", # required
    #           frequency: "Hourly" # One of: ["Hourly", "Daily", "Monthly", "Yearly"], # required
    #         },
    #         resiliency_score: 1.0,
    #         version_name: "EntityVersion",
    #         drift_status: "NotChecked" # One of: ["NotChecked", "NotDetected", "Detected"]
    #       }
    #     ]
    #   }
    # @return [Types::ListAppAssessmentsOutput]
    def list_app_assessments(params = {}, options = {})
      request = build_request(:list_app_assessments, params)
      request.send_request(options)
    end

    # <p>Lists the compliances for an Resilience Hub Application Component.</p>
    # @param [Hash, Types::ListAppComponentCompliancesInput] params
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     assessment_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_app_component_compliances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     component_compliances: [ # required
    #       {
    #         cost: {
    #           amount: 1.0, # required
    #           currency: "CurrencyCode", # required
    #           frequency: "Hourly" # One of: ["Hourly", "Daily", "Monthly", "Yearly"], # required
    #         },
    #         app_component_name: "EntityId",
    #         compliance: {
    #           "DisruptionType" => {
    #             achievable_rto_in_secs: 1,
    #             current_rto_in_secs: 1,
    #             rto_reference_id: "String500",
    #             rto_description: "String500",
    #             current_rpo_in_secs: 1,
    #             rpo_reference_id: "String500",
    #             rpo_description: "String500",
    #             compliance_status: "PolicyBreached" # One of: ["PolicyBreached", "PolicyMet", "NotApplicable", "MissingPolicy"], # required
    #             achievable_rpo_in_secs: 1,
    #             message: "String500"
    #           }
    #         },
    #         message: "String500",
    #         status: "PolicyBreached" # One of: ["PolicyBreached", "PolicyMet", "NotApplicable", "MissingPolicy"],
    #         resiliency_score: {
    #           score: 1.0, # required
    #           disruption_score: { # required
    #             "DisruptionType" => 1.0
    #           },
    #           component_score: {
    #             "ResiliencyScoreType" => {
    #               score: 1.0,
    #               possible_score: 1.0,
    #               outstanding_count: 1,
    #               excluded_count: 1
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAppComponentCompliancesOutput]
    def list_app_component_compliances(params = {}, options = {})
      request = build_request(:list_app_component_compliances, params)
      request.send_request(options)
    end

    # <p>Lists the recommendations for an Resilience Hub Application Component.</p>
    # @param [Hash, Types::ListAppComponentRecommendationsInput] params
    # @option params [String] :assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_arn: "Arn", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_app_component_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     component_recommendations: [ # required
    #       {
    #         app_component_name: "EntityId", # required
    #         recommendation_status: "BreachedUnattainable" # One of: ["BreachedUnattainable", "BreachedCanMeet", "MetCanImprove", "MissingPolicy"], # required
    #         config_recommendations: [ # required
    #           {
    #             cost: {
    #               amount: 1.0, # required
    #               currency: "CurrencyCode", # required
    #               frequency: "Hourly" # One of: ["Hourly", "Daily", "Monthly", "Yearly"], # required
    #             },
    #             app_component_name: "EntityId",
    #             compliance: {
    #               "DisruptionType" => {
    #                 achievable_rto_in_secs: 1,
    #                 current_rto_in_secs: 1,
    #                 rto_reference_id: "String500",
    #                 rto_description: "String500",
    #                 current_rpo_in_secs: 1,
    #                 rpo_reference_id: "String500",
    #                 rpo_description: "String500",
    #                 compliance_status: "PolicyBreached" # One of: ["PolicyBreached", "PolicyMet", "NotApplicable", "MissingPolicy"], # required
    #                 achievable_rpo_in_secs: 1,
    #                 message: "String500"
    #               }
    #             },
    #             recommendation_compliance: {
    #               "DisruptionType" => {
    #                 expected_compliance_status: "PolicyBreached" # One of: ["PolicyBreached", "PolicyMet", "NotApplicable", "MissingPolicy"], # required
    #                 expected_rto_in_secs: 1,
    #                 expected_rto_description: "String500",
    #                 expected_rpo_in_secs: 1,
    #                 expected_rpo_description: "String500"
    #               }
    #             },
    #             optimization_type: "LeastCost" # One of: ["LeastCost", "LeastChange", "BestAZRecovery", "LeastErrors", "BestAttainable", "BestRegionRecovery"], # required
    #             name: "EntityName", # required
    #             description: "EntityDescription",
    #             suggested_changes: ["EntityDescription"],
    #             ha_architecture: "MultiSite" # One of: ["MultiSite", "WarmStandby", "PilotLight", "BackupAndRestore", "NoRecoveryPlan"],
    #             reference_id: "SpecReferenceId", # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAppComponentRecommendationsOutput]
    def list_app_component_recommendations(params = {}, options = {})
      request = build_request(:list_app_component_recommendations, params)
      request.send_request(options)
    end

    # <p>Lists all the input sources of the Resilience Hub application. For more
    #       information about the input sources supported by Resilience Hub, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/discover-structure.html">Discover
    #         the structure and describe your Resilience Hub application</a>.</p>
    # @param [Hash, Types::ListAppInputSourcesInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :app_version
    #   <p>Resilience Hub application version.</p>
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of input sources to be displayed per Resilience Hub application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_app_input_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_input_sources: [ # required
    #       {
    #         source_name: "String255",
    #         import_type: "CfnStack" # One of: ["CfnStack", "Resource", "AppRegistryApp", "ResourceGroup", "Terraform", "EKS"], # required
    #         source_arn: "Arn",
    #         terraform_source: {
    #           s3_state_file_url: "S3Url", # required
    #         },
    #         resource_count: 1,
    #         eks_source_cluster_namespace: {
    #           eks_cluster_arn: "Arn", # required
    #           namespace: "EksNamespace", # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAppInputSourcesOutput]
    def list_app_input_sources(params = {}, options = {})
      request = build_request(:list_app_input_sources, params)
      request.send_request(options)
    end

    # <p>Lists all the Application Components in the Resilience Hub application.</p>
    # @param [Hash, Types::ListAppVersionAppComponentsInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :app_version
    #   <p>Version of the Application Component.</p>
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of Application Components to be displayed per Resilience Hub application version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_app_version_app_components(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     app_components: [
    #       {
    #         name: "EntityName255", # required
    #         type: "String255", # required
    #         id: "EntityName255",
    #         additional_info: {
    #           "String128WithoutWhitespace" => ["String1024"]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAppVersionAppComponentsOutput]
    def list_app_version_app_components(params = {}, options = {})
      request = build_request(:list_app_version_app_components, params)
      request.send_request(options)
    end

    # <p>Lists how the resources in an application version are mapped/sourced from. Mappings can be
    #       physical resource identifiers, CloudFormation stacks, resource-groups, or an application registry
    #       app.</p>
    # @param [Hash, Types::ListAppVersionResourceMappingsInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :app_version
    #   <p>The version of the application.</p>
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_app_version_resource_mappings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_mappings: [ # required
    #       {
    #         resource_name: "EntityName",
    #         logical_stack_name: "String255",
    #         app_registry_app_name: "EntityName",
    #         resource_group_name: "EntityName",
    #         mapping_type: "CfnStack" # One of: ["CfnStack", "Resource", "AppRegistryApp", "ResourceGroup", "Terraform", "EKS"], # required
    #         physical_resource_id: { # required
    #           identifier: "String255", # required
    #           type: "Arn" # One of: ["Arn", "Native"], # required
    #           aws_region: "AwsRegion",
    #           aws_account_id: "CustomerId"
    #         },
    #         terraform_source_name: "String255",
    #         eks_source_name: "String255"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAppVersionResourceMappingsOutput]
    def list_app_version_resource_mappings(params = {}, options = {})
      request = build_request(:list_app_version_resource_mappings, params)
      request.send_request(options)
    end

    # <p>Lists all the resources in an Resilience Hub application.</p>
    # @param [Hash, Types::ListAppVersionResourcesInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :app_version
    #   <p>The version of the application.</p>
    # @option params [String] :resolution_id
    #   <p>The identifier for a specific resolution.</p>
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     resolution_id: "String255",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_app_version_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     physical_resources: [ # required
    #       {
    #         resource_name: "EntityName",
    #         logical_resource_id: { # required
    #           identifier: "String255", # required
    #           logical_stack_name: "String255",
    #           resource_group_name: "EntityName",
    #           terraform_source_name: "String255",
    #           eks_source_name: "String255"
    #         },
    #         physical_resource_id: { # required
    #           identifier: "String255", # required
    #           type: "Arn" # One of: ["Arn", "Native"], # required
    #           aws_region: "AwsRegion",
    #           aws_account_id: "CustomerId"
    #         },
    #         resource_type: "String255", # required
    #         app_components: [
    #           {
    #             name: "EntityName255", # required
    #             type: "String255", # required
    #             id: "EntityName255",
    #             additional_info: {
    #               "String128WithoutWhitespace" => ["String1024"]
    #             }
    #           }
    #         ],
    #         additional_info: {
    #           "String128WithoutWhitespace" => ["String1024"]
    #         },
    #         excluded: false,
    #         source_type: "AppTemplate" # One of: ["AppTemplate", "Discovered"],
    #         parent_resource_name: "EntityName"
    #       }
    #     ],
    #     resolution_id: "String255", # required
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAppVersionResourcesOutput]
    def list_app_version_resources(params = {}, options = {})
      request = build_request(:list_app_version_resources, params)
      request.send_request(options)
    end

    # <p>Lists the different versions for the Resilience Hub applications.</p>
    # @param [Hash, Types::ListAppVersionsInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [Time] :start_time
    #   <p>Lower limit of the time range to filter the application versions.</p>
    # @option params [Time] :end_time
    #   <p>Upper limit of the time range to filter the application versions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     start_time: Time.now,
    #     end_time: Time.now
    #   }
    #   options = {}
    #   response = client.list_app_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_versions: [ # required
    #       {
    #         app_version: "EntityVersion", # required
    #         identifier: 1,
    #         creation_time: Time.now,
    #         version_name: "EntityVersion"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAppVersionsOutput]
    def list_app_versions(params = {}, options = {})
      request = build_request(:list_app_versions, params)
      request.send_request(options)
    end

    # <p>Lists your Resilience Hub applications.</p>
    #          <note>
    #             <p>You can filter applications using only one filter at a time or without using any filter.
    #         If you try to filter applications using multiple filters, you will get the following
    #         error:</p>
    #             <p>
    #                <code>An error occurred (ValidationException) when calling the ListApps operation: Only
    #           one filter is supported for this operation.</code>
    #             </p>
    #          </note>
    # @param [Hash, Types::ListAppsInput] params
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :name
    #   <p>The name for the one of the listed applications.</p>
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [Time] :from_last_assessment_time
    #   <p>Lower limit of the range that is used to filter applications based on their
    #         last assessment times.</p>
    # @option params [Time] :to_last_assessment_time
    #   <p>Upper limit of the range that is used to filter the applications based on
    #         their last assessment times.</p>
    # @option params [Boolean] :reverse_order
    #   <p>The application list is sorted based on the values of
    #           <code>lastAppComplianceEvaluationTime</code> field. By default, application list is sorted
    #         in ascending order. To sort the application list in descending order, set this field to
    #           <code>True</code>.</p>
    # @option params [String] :aws_application_arn
    #   <p>Amazon Resource Name (ARN) of  Resource Groups group that is integrated with an AppRegistry application. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     name: "EntityName",
    #     app_arn: "Arn",
    #     from_last_assessment_time: Time.now,
    #     to_last_assessment_time: Time.now,
    #     reverse_order: false,
    #     aws_application_arn: "Arn"
    #   }
    #   options = {}
    #   response = client.list_apps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_summaries: [ # required
    #       {
    #         app_arn: "Arn", # required
    #         name: "EntityName", # required
    #         description: "EntityDescription",
    #         creation_time: Time.now, # required
    #         compliance_status: "PolicyBreached" # One of: ["PolicyBreached", "PolicyMet", "NotAssessed", "ChangesDetected", "NotApplicable", "MissingPolicy"],
    #         resiliency_score: 1.0,
    #         assessment_schedule: "Disabled" # One of: ["Disabled", "Daily"],
    #         status: "Active" # One of: ["Active", "Deleting"],
    #         drift_status: "NotChecked" # One of: ["NotChecked", "NotDetected", "Detected"],
    #         last_app_compliance_evaluation_time: Time.now,
    #         rto_in_secs: 1,
    #         rpo_in_secs: 1,
    #         aws_application_arn: "Arn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAppsOutput]
    def list_apps(params = {}, options = {})
      request = build_request(:list_apps, params)
      request.send_request(options)
    end

    # <p>Lists the metrics that can be exported.</p>
    # @param [Hash, Types::ListMetricsRequest] params
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [Array<Types::Field>] :fields
    #   <p>Indicates the list of fields in the data source.</p>
    # @option params [String] :data_source
    #   <p>Indicates the data source of the metrics.</p>
    # @option params [Array<Types::Condition>] :conditions
    #   <p>Indicates the list of all the conditions that were applied on the metrics.</p>
    # @option params [Array<Types::Sort>] :sorts
    #   <p>(Optional) Indicates the order in which you want to sort the fields in the metrics. By default, the fields are sorted in the ascending order.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     fields: [
    #       {
    #         name: "String255", # required
    #         aggregation: "Min" # One of: ["Min", "Max", "Sum", "Avg", "Count"]
    #       }
    #     ],
    #     data_source: "String255",
    #     conditions: [
    #       {
    #         field: "String255", # required
    #         operator: "Equals" # One of: ["Equals", "NotEquals", "GreaterThen", "GreaterOrEquals", "LessThen", "LessOrEquals"], # required
    #         value: "String255"
    #       }
    #     ],
    #     sorts: [
    #       {
    #         field: "String255", # required
    #         ascending: false
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rows: [ # required
    #       ["String255"]
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListMetricsResponse]
    def list_metrics(params = {}, options = {})
      request = build_request(:list_metrics, params)
      request.send_request(options)
    end

    # <p>Lists the recommendation templates for the Resilience Hub applications.</p>
    # @param [Hash, Types::ListRecommendationTemplatesInput] params
    # @option params [String] :assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [Boolean] :reverse_order
    #   <p>The default is to sort by ascending <b>startTime</b>.
    #   To sort by descending <b>startTime</b>, set reverseOrder to <code>true</code>.</p>
    # @option params [Array<String>] :status
    #   <p>Status of the action.</p>
    # @option params [String] :recommendation_template_arn
    #   <p>The Amazon Resource Name (ARN) for a recommendation template.</p>
    # @option params [String] :name
    #   <p>The name for one of the listed recommendation templates.</p>
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     assessment_arn: "Arn",
    #     reverse_order: false,
    #     status: ["Pending" # One of: ["Pending", "InProgress", "Failed", "Success"]],
    #     recommendation_template_arn: "Arn",
    #     name: "EntityName",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_recommendation_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     recommendation_templates: [
    #       {
    #         templates_location: {
    #           bucket: "String500",
    #           prefix: "String500"
    #         },
    #         assessment_arn: "Arn", # required
    #         app_arn: "Arn",
    #         recommendation_ids: ["Uuid"],
    #         recommendation_types: ["Alarm" # One of: ["Alarm", "Sop", "Test"]], # required
    #         format: "CfnYaml" # One of: ["CfnYaml", "CfnJson"], # required
    #         recommendation_template_arn: "Arn", # required
    #         message: "String500",
    #         status: "Pending" # One of: ["Pending", "InProgress", "Failed", "Success"], # required
    #         name: "EntityName", # required
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         needs_replacements: false
    #       }
    #     ]
    #   }
    # @return [Types::ListRecommendationTemplatesOutput]
    def list_recommendation_templates(params = {}, options = {})
      request = build_request(:list_recommendation_templates, params)
      request.send_request(options)
    end

    # <p>Lists the resiliency policies for the Resilience Hub applications.</p>
    # @param [Hash, Types::ListResiliencyPoliciesInput] params
    # @option params [String] :policy_name
    #   <p>Name of the resiliency policy.</p>
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "EntityName",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_resiliency_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resiliency_policies: [ # required
    #       {
    #         policy_arn: "Arn",
    #         policy_name: "EntityName",
    #         policy_description: "EntityDescription",
    #         data_location_constraint: "AnyLocation" # One of: ["AnyLocation", "SameContinent", "SameCountry"],
    #         tier: "MissionCritical" # One of: ["MissionCritical", "Critical", "Important", "CoreServices", "NonCritical", "NotApplicable"],
    #         estimated_cost_tier: "L1" # One of: ["L1", "L2", "L3", "L4"],
    #         policy: {
    #           "DisruptionType" => {
    #             rto_in_secs: 1, # required
    #             rpo_in_secs: 1, # required
    #           }
    #         },
    #         creation_time: Time.now,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResiliencyPoliciesOutput]
    def list_resiliency_policies(params = {}, options = {})
      request = build_request(:list_resiliency_policies, params)
      request.send_request(options)
    end

    # <p>Lists the resource grouping recommendations suggested by Resilience Hub for your application.</p>
    # @param [Hash, Types::ListResourceGroupingRecommendationsRequest] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of grouping recommendations to be displayed per Resilience Hub application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_resource_grouping_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grouping_recommendations: [ # required
    #       {
    #         grouping_recommendation_id: "String255", # required
    #         grouping_app_component: { # required
    #           app_component_id: "EntityName255", # required
    #           app_component_type: "String255", # required
    #           app_component_name: "EntityName255", # required
    #         },
    #         resources: [ # required
    #           {
    #             resource_name: "String255", # required
    #             resource_type: "String255", # required
    #             physical_resource_id: { # required
    #               identifier: "String255", # required
    #               type: "Arn" # One of: ["Arn", "Native"], # required
    #               aws_region: "AwsRegion",
    #               aws_account_id: "CustomerId"
    #             },
    #             logical_resource_id: { # required
    #               identifier: "String255", # required
    #               logical_stack_name: "String255",
    #               resource_group_name: "EntityName",
    #               terraform_source_name: "String255",
    #               eks_source_name: "String255"
    #             },
    #             source_app_component_ids: ["String255"], # required
    #           }
    #         ],
    #         score: 1.0, # required
    #         recommendation_reasons: ["String255"], # required
    #         status: "Accepted" # One of: ["Accepted", "Rejected", "PendingDecision"], # required
    #         confidence_level: "High" # One of: ["High", "Medium"], # required
    #         creation_time: Time.now, # required
    #         rejection_reason: "DistinctBusinessPurpose" # One of: ["DistinctBusinessPurpose", "SeparateDataConcern", "DistinctUserGroupHandling", "Other"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResourceGroupingRecommendationsResponse]
    def list_resource_grouping_recommendations(params = {}, options = {})
      request = build_request(:list_resource_grouping_recommendations, params)
      request.send_request(options)
    end

    # <p>Lists the standard operating procedure (SOP) recommendations for the Resilience Hub applications.</p>
    # @param [Hash, Types::ListSopRecommendationsInput] params
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     assessment_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_sop_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     sop_recommendations: [ # required
    #       {
    #         service_type: "SSM" # One of: ["SSM"], # required
    #         app_component_name: "EntityId",
    #         description: "String500",
    #         recommendation_id: "Uuid", # required
    #         name: "DocumentName",
    #         items: [
    #           {
    #             resource_id: "String500",
    #             target_account_id: "CustomerId",
    #             target_region: "AwsRegion",
    #             already_implemented: false,
    #             excluded: false,
    #             exclude_reason: "AlreadyImplemented" # One of: ["AlreadyImplemented", "NotRelevant", "ComplexityOfImplementation"],
    #             latest_discovered_experiment: {
    #               experiment_arn: "String255",
    #               experiment_template_id: "String255"
    #             },
    #             discovered_alarm: {
    #               alarm_arn: "Arn",
    #               source: "String255"
    #             }
    #           }
    #         ],
    #         reference_id: "SpecReferenceId", # required
    #         prerequisite: "String500",
    #         recommendation_status: "Implemented" # One of: ["Implemented", "Inactive", "NotImplemented", "Excluded"]
    #       }
    #     ]
    #   }
    # @return [Types::ListSopRecommendationsOutput]
    def list_sop_recommendations(params = {}, options = {})
      request = build_request(:list_sop_recommendations, params)
      request.send_request(options)
    end

    # <p>Lists the suggested resiliency policies for the Resilience Hub
    #       applications.</p>
    # @param [Hash, Types::ListSuggestedResiliencyPoliciesInput] params
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_suggested_resiliency_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resiliency_policies: [ # required
    #       {
    #         policy_arn: "Arn",
    #         policy_name: "EntityName",
    #         policy_description: "EntityDescription",
    #         data_location_constraint: "AnyLocation" # One of: ["AnyLocation", "SameContinent", "SameCountry"],
    #         tier: "MissionCritical" # One of: ["MissionCritical", "Critical", "Important", "CoreServices", "NonCritical", "NotApplicable"],
    #         estimated_cost_tier: "L1" # One of: ["L1", "L2", "L3", "L4"],
    #         policy: {
    #           "DisruptionType" => {
    #             rto_in_secs: 1, # required
    #             rpo_in_secs: 1, # required
    #           }
    #         },
    #         creation_time: Time.now,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSuggestedResiliencyPoliciesOutput]
    def list_suggested_resiliency_policies(params = {}, options = {})
      request = build_request(:list_suggested_resiliency_policies, params)
      request.send_request(options)
    end

    # <p>Lists the tags for your resources in your Resilience Hub applications.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for a specific resource in your Resilience Hub
    #         application.</p>
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
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists the test recommendations for the Resilience Hub application.</p>
    # @param [Hash, Types::ListTestRecommendationsInput] params
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :assessment_arn
    #   <p>Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     assessment_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_test_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     test_recommendations: [ # required
    #       {
    #         recommendation_id: "Uuid",
    #         reference_id: "SpecReferenceId", # required
    #         app_component_id: "EntityName255",
    #         app_component_name: "EntityId",
    #         name: "DocumentName",
    #         intent: "EntityDescription",
    #         risk: "Small" # One of: ["Small", "Medium", "High"],
    #         type: "Software" # One of: ["Software", "Hardware", "AZ", "Region"],
    #         description: "String500",
    #         items: [
    #           {
    #             resource_id: "String500",
    #             target_account_id: "CustomerId",
    #             target_region: "AwsRegion",
    #             already_implemented: false,
    #             excluded: false,
    #             exclude_reason: "AlreadyImplemented" # One of: ["AlreadyImplemented", "NotRelevant", "ComplexityOfImplementation"],
    #             latest_discovered_experiment: {
    #               experiment_arn: "String255",
    #               experiment_template_id: "String255"
    #             },
    #             discovered_alarm: {
    #               alarm_arn: "Arn",
    #               source: "String255"
    #             }
    #           }
    #         ],
    #         prerequisite: "String500",
    #         depends_on_alarms: ["String500"],
    #         recommendation_status: "Implemented" # One of: ["Implemented", "Inactive", "NotImplemented", "Excluded"]
    #       }
    #     ]
    #   }
    # @return [Types::ListTestRecommendationsOutput]
    def list_test_recommendations(params = {}, options = {})
      request = build_request(:list_test_recommendations, params)
      request.send_request(options)
    end

    # <p>Lists the resources that are not currently supported in Resilience Hub. An
    #       unsupported resource is a resource that exists in the object that was used to create an app,
    #       but is not supported by Resilience Hub.</p>
    # @param [Hash, Types::ListUnsupportedAppVersionResourcesInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :app_version
    #   <p>The version of the application.</p>
    # @option params [String] :resolution_id
    #   <p>The identifier for a specific resolution.</p>
    # @option params [String] :next_token
    #   <p>Null, or the token from a previous call to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to include in the response. If more results exist than the specified 
    #   <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     resolution_id: "String255",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_unsupported_app_version_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unsupported_resources: [ # required
    #       {
    #         logical_resource_id: { # required
    #           identifier: "String255", # required
    #           logical_stack_name: "String255",
    #           resource_group_name: "EntityName",
    #           terraform_source_name: "String255",
    #           eks_source_name: "String255"
    #         },
    #         physical_resource_id: { # required
    #           identifier: "String255", # required
    #           type: "Arn" # One of: ["Arn", "Native"], # required
    #           aws_region: "AwsRegion",
    #           aws_account_id: "CustomerId"
    #         },
    #         resource_type: "String255", # required
    #         unsupported_resource_status: "String255"
    #       }
    #     ],
    #     resolution_id: "String255", # required
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListUnsupportedAppVersionResourcesOutput]
    def list_unsupported_app_version_resources(params = {}, options = {})
      request = build_request(:list_unsupported_app_version_resources, params)
      request.send_request(options)
    end

    # <p>Publishes a new version of a specific Resilience Hub application.</p>
    # @param [Hash, Types::PublishAppVersionInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :version_name
    #   <p>Name of the application version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     version_name: "EntityVersion"
    #   }
    #   options = {}
    #   response = client.publish_app_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion",
    #     identifier: 1,
    #     version_name: "EntityVersion"
    #   }
    # @return [Types::PublishAppVersionOutput]
    def publish_app_version(params = {}, options = {})
      request = build_request(:publish_app_version, params)
      request.send_request(options)
    end

    # <p>Adds or updates the app template for an Resilience Hub application draft
    #       version.</p>
    # @param [Hash, Types::PutDraftAppVersionTemplateInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :app_template_body
    #   <p>A JSON string that provides information about your application structure. To learn more
    #         about the <code>appTemplateBody</code> template, see the sample template provided in the
    #           <i>Examples</i> section.</p>
    #            <p>The <code>appTemplateBody</code> JSON string has the following structure:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>resources</code>
    #                     </b>
    #                  </p>
    #                  <p>The list of logical resources that must be included in the Resilience Hub
    #             application.</p>
    #                  <p>Type: Array</p>
    #                  <note>
    #                     <p>Don't add the resources that you want to exclude.</p>
    #                  </note>
    #                  <p>Each <code>resources</code> array item includes the following fields:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>
    #                              <code>logicalResourceId</code>
    #                           </i>
    #                        </p>
    #                        <p>Logical identifier of the resource.</p>
    #                        <p>Type: Object</p>
    #                        <p>Each <code>logicalResourceId</code> object includes the following fields:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>identifier</code>
    #                              </p>
    #                              <p>Identifier of the resource.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>logicalStackName</code>
    #                              </p>
    #                              <p>The name of the CloudFormation stack this resource belongs to.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>resourceGroupName</code>
    #                              </p>
    #                              <p>The name of the resource group this resource belongs to.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>terraformSourceName</code>
    #                              </p>
    #                              <p>The name of the Terraform S3 state file this resource belongs to.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>eksSourceName</code>
    #                              </p>
    #                              <p>Name of the Amazon Elastic Kubernetes Service cluster and namespace this resource belongs to.</p>
    #                              <note>
    #                                 <p>This parameter accepts values in "eks-cluster/namespace" format.</p>
    #                              </note>
    #                              <p>Type: String</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>
    #                              <code>type</code>
    #                           </i>
    #                        </p>
    #                        <p>The type of resource.</p>
    #                        <p>Type: string</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>
    #                              <code>name</code>
    #                           </i>
    #                        </p>
    #                        <p>The name of the resource.</p>
    #                        <p>Type: String</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>additionalInfo</code>
    #                        </p>
    #                        <p>Additional configuration parameters for an Resilience Hub application. If you want to implement <code>additionalInfo</code> through the Resilience Hub console rather than using an API call, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html">Configure the application configuration parameters</a>.</p>
    #                        <note>
    #                           <p>Currently, this parameter accepts a key-value mapping (in a string format) of only one failover region and one associated account.</p>
    #                           <p>Key: <code>"failover-regions"</code>
    #                           </p>
    #                           <p>Value: <code>"[{"region":"&lt;REGION&gt;", "accounts":[{"id":"&lt;ACCOUNT_ID&gt;"}]}]"</code>
    #                           </p>
    #                        </note>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>appComponents</code>
    #                     </b>
    #                  </p>
    #                  <p>List of Application Components that this resource belongs to. If an Application Component is not part of the Resilience Hub application, it will be added.</p>
    #                  <p>Type: Array</p>
    #                  <p>Each <code>appComponents</code> array item includes the following fields:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>name</code>
    #                        </p>
    #                        <p>Name of the Application Component.</p>
    #                        <p>Type: String</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>type</code>
    #                        </p>
    #                        <p>Type of Application Component. For more information about the types of Application Component, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/AppComponent.grouping.html">Grouping resources in an AppComponent</a>.</p>
    #                        <p>Type: String</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>resourceNames</code>
    #                        </p>
    #                        <p>The list of included resources that are assigned to the Application Component.</p>
    #                        <p>Type: Array of strings</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>additionalInfo</code>
    #                        </p>
    #                        <p>Additional configuration parameters for an Resilience Hub application. If you want to implement <code>additionalInfo</code> through the Resilience Hub console rather than using an API call, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html">Configure the application configuration parameters</a>.</p>
    #                        <note>
    #                           <p>Currently, this parameter accepts a key-value mapping (in a string format) of only one failover region and one associated account.</p>
    #                           <p>Key: <code>"failover-regions"</code>
    #                           </p>
    #                           <p>Value: <code>"[{"region":"&lt;REGION&gt;", "accounts":[{"id":"&lt;ACCOUNT_ID&gt;"}]}]"</code>
    #                           </p>
    #                        </note>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>excludedResources</code>
    #                     </b>
    #                  </p>
    #                  <p>The list of logical resource identifiers to be excluded from the application.</p>
    #                  <p>Type: Array</p>
    #                  <note>
    #                     <p>Don't add the resources that you want to include.</p>
    #                  </note>
    #                  <p>Each <code>excludedResources</code> array item includes the following fields:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>
    #                              <code>logicalResourceIds</code>
    #                           </i>
    #                        </p>
    #                        <p>Logical identifier of the resource.</p>
    #                        <p>Type: Object</p>
    #                        <note>
    #                           <p>You can configure only one of the following fields:</p>
    #                           <ul>
    #                              <li>
    #                                 <p>
    #                                    <code>logicalStackName</code>
    #                                 </p>
    #                              </li>
    #                              <li>
    #                                 <p>
    #                                    <code>resourceGroupName</code>
    #                                 </p>
    #                              </li>
    #                              <li>
    #                                 <p>
    #                                    <code>terraformSourceName</code>
    #                                 </p>
    #                              </li>
    #                              <li>
    #                                 <p>
    #                                    <code>eksSourceName</code>
    #                                 </p>
    #                              </li>
    #                           </ul>
    #                        </note>
    #                        <p>Each <code>logicalResourceIds</code> object includes the following fields:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>identifier</code>
    #                              </p>
    #                              <p>Identifier of the resource.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>logicalStackName</code>
    #                              </p>
    #                              <p>The name of the CloudFormation stack this resource belongs to.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>resourceGroupName</code>
    #                              </p>
    #                              <p>The name of the resource group this resource belongs to.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>terraformSourceName</code>
    #                              </p>
    #                              <p>The name of the Terraform S3 state file this resource belongs to.</p>
    #                              <p>Type: String</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>eksSourceName</code>
    #                              </p>
    #                              <p>Name of the Amazon Elastic Kubernetes Service cluster and namespace this resource belongs to.</p>
    #                              <note>
    #                                 <p>This parameter accepts values in "eks-cluster/namespace" format.</p>
    #                              </note>
    #                              <p>Type: String</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>
    #                        <code>version</code>
    #                     </b>
    #                  </p>
    #                  <p>Resilience Hub application version.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>additionalInfo</code>
    #                  </p>
    #                  <p>Additional configuration parameters for an Resilience Hub application. If you want to implement <code>additionalInfo</code> through the Resilience Hub console rather than using an API call, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html">Configure the application configuration parameters</a>.</p>
    #                  <note>
    #                     <p>Currently, this parameter accepts a key-value mapping (in a string format) of only one failover region and one associated account.</p>
    #                     <p>Key: <code>"failover-regions"</code>
    #                     </p>
    #                     <p>Value: <code>"[{"region":"&lt;REGION&gt;", "accounts":[{"id":"&lt;ACCOUNT_ID&gt;"}]}]"</code>
    #                     </p>
    #                  </note>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     app_template_body: "AppTemplateBody", # required
    #   }
    #   options = {}
    #   response = client.put_draft_app_version_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn",
    #     app_version: "EntityVersion"
    #   }
    # @return [Types::PutDraftAppVersionTemplateOutput]
    def put_draft_app_version_template(params = {}, options = {})
      request = build_request(:put_draft_app_version_template, params)
      request.send_request(options)
    end

    # <p>Rejects resource grouping recommendations.</p>
    # @param [Hash, Types::RejectResourceGroupingRecommendationsRequest] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [Array<Types::RejectGroupingRecommendationEntry>] :entries
    #   <p>List of resource grouping recommendations you have selected to exclude from your application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     entries: [ # required
    #       {
    #         grouping_recommendation_id: "String255", # required
    #         rejection_reason: "DistinctBusinessPurpose" # One of: ["DistinctBusinessPurpose", "SeparateDataConcern", "DistinctUserGroupHandling", "Other"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.reject_resource_grouping_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     failed_entries: [ # required
    #       {
    #         grouping_recommendation_id: "String255", # required
    #         error_message: "ErrorMessage", # required
    #       }
    #     ]
    #   }
    # @return [Types::RejectResourceGroupingRecommendationsResponse]
    def reject_resource_grouping_recommendations(params = {}, options = {})
      request = build_request(:reject_resource_grouping_recommendations, params)
      request.send_request(options)
    end

    # <p>Removes resource mappings from a draft application version.</p>
    # @param [Hash, Types::RemoveDraftAppVersionResourceMappingsInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [Array<String>] :resource_names
    #   <p>The names of the resources you want to remove from the resource mappings.</p>
    # @option params [Array<String>] :logical_stack_names
    #   <p>The names of the CloudFormation stacks you want to remove from the resource mappings.</p>
    # @option params [Array<String>] :app_registry_app_names
    #   <p>The names of the registered applications you want to remove from the resource
    #         mappings.</p>
    # @option params [Array<String>] :resource_group_names
    #   <p>The names of the resource groups you want to remove from the resource mappings.</p>
    # @option params [Array<String>] :terraform_source_names
    #   <p>The names of the Terraform sources you want to remove from the resource mappings.</p>
    # @option params [Array<String>] :eks_source_names
    #   <p>The names of the Amazon Elastic Kubernetes Service clusters and namespaces you want to remove from
    #         the resource mappings.</p>
    #            <note>
    #               <p>This parameter accepts values in "eks-cluster/namespace" format.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     resource_names: ["EntityName"],
    #     logical_stack_names: ["String255"],
    #     app_registry_app_names: ["EntityName"],
    #     resource_group_names: ["EntityName"],
    #     terraform_source_names: ["String255"],
    #     eks_source_names: ["String255"]
    #   }
    #   options = {}
    #   response = client.remove_draft_app_version_resource_mappings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn",
    #     app_version: "EntityVersion"
    #   }
    # @return [Types::RemoveDraftAppVersionResourceMappingsOutput]
    def remove_draft_app_version_resource_mappings(params = {}, options = {})
      request = build_request(:remove_draft_app_version_resource_mappings, params)
      request.send_request(options)
    end

    # <p>Resolves the resources for an application version.</p>
    # @param [Hash, Types::ResolveAppVersionResourcesInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :app_version
    #   <p>The version of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #   }
    #   options = {}
    #   response = client.resolve_app_version_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     resolution_id: "String255", # required
    #     status: "Pending" # One of: ["Pending", "InProgress", "Failed", "Success"], # required
    #   }
    # @return [Types::ResolveAppVersionResourcesOutput]
    def resolve_app_version_resources(params = {}, options = {})
      request = build_request(:resolve_app_version_resources, params)
      request.send_request(options)
    end

    # <p>Creates a new application assessment for an application.</p>
    # @param [Hash, Types::StartAppAssessmentInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :app_version
    #   <p>The version of the application.</p>
    # @option params [String] :assessment_name
    #   <p>The name for the assessment.</p>
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
    #   Each tag consists of a key/value pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     assessment_name: "EntityName", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.start_app_assessment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     assessment: { # required
    #       app_arn: "Arn",
    #       app_version: "EntityVersion",
    #       invoker: "User" # One of: ["User", "System"], # required
    #       cost: {
    #         amount: 1.0, # required
    #         currency: "CurrencyCode", # required
    #         frequency: "Hourly" # One of: ["Hourly", "Daily", "Monthly", "Yearly"], # required
    #       },
    #       resiliency_score: {
    #         score: 1.0, # required
    #         disruption_score: { # required
    #           "DisruptionType" => 1.0
    #         },
    #         component_score: {
    #           "ResiliencyScoreType" => {
    #             score: 1.0,
    #             possible_score: 1.0,
    #             outstanding_count: 1,
    #             excluded_count: 1
    #           }
    #         }
    #       },
    #       compliance: {
    #         "DisruptionType" => {
    #           achievable_rto_in_secs: 1,
    #           current_rto_in_secs: 1,
    #           rto_reference_id: "String500",
    #           rto_description: "String500",
    #           current_rpo_in_secs: 1,
    #           rpo_reference_id: "String500",
    #           rpo_description: "String500",
    #           compliance_status: "PolicyBreached" # One of: ["PolicyBreached", "PolicyMet", "NotApplicable", "MissingPolicy"], # required
    #           achievable_rpo_in_secs: 1,
    #           message: "String500"
    #         }
    #       },
    #       compliance_status: "PolicyBreached" # One of: ["PolicyBreached", "PolicyMet", "NotApplicable", "MissingPolicy"],
    #       assessment_status: "Pending" # One of: ["Pending", "InProgress", "Failed", "Success"], # required
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       message: "String500",
    #       assessment_name: "EntityName",
    #       assessment_arn: "Arn", # required
    #       policy: {
    #         policy_arn: "Arn",
    #         policy_name: "EntityName",
    #         policy_description: "EntityDescription",
    #         data_location_constraint: "AnyLocation" # One of: ["AnyLocation", "SameContinent", "SameCountry"],
    #         tier: "MissionCritical" # One of: ["MissionCritical", "Critical", "Important", "CoreServices", "NonCritical", "NotApplicable"],
    #         estimated_cost_tier: "L1" # One of: ["L1", "L2", "L3", "L4"],
    #         policy: {
    #           "DisruptionType" => {
    #             rto_in_secs: 1, # required
    #             rpo_in_secs: 1, # required
    #           }
    #         },
    #         creation_time: Time.now,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       resource_errors_details: {
    #         resource_errors: [
    #           {
    #             logical_resource_id: "String255",
    #             physical_resource_id: "String255",
    #             reason: "ErrorMessage"
    #           }
    #         ],
    #         has_more_errors: false
    #       },
    #       version_name: "EntityVersion",
    #       drift_status: "NotChecked" # One of: ["NotChecked", "NotDetected", "Detected"],
    #       summary: {
    #         summary: "String500",
    #         risk_recommendations: [
    #           {
    #             risk: "String255",
    #             recommendation: "String255",
    #             app_components: ["String255"]
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::StartAppAssessmentOutput]
    def start_app_assessment(params = {}, options = {})
      request = build_request(:start_app_assessment, params)
      request.send_request(options)
    end

    # <p>Initiates the export task of metrics.</p>
    # @param [Hash, Types::StartMetricsExportRequest] params
    # @option params [String] :bucket_name
    #   <p>(Optional) Specifies the name of the Amazon Simple Storage Service bucket where the exported metrics will be stored.</p>
    # @option params [String] :client_token
    #   <p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
    #   You should not reuse the same client token for other API requests.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bucket_name: "EntityName",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.start_metrics_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metrics_export_id: "String255", # required
    #     status: "Pending" # One of: ["Pending", "InProgress", "Failed", "Success"], # required
    #   }
    # @return [Types::StartMetricsExportResponse]
    def start_metrics_export(params = {}, options = {})
      request = build_request(:start_metrics_export, params)
      request.send_request(options)
    end

    # <p>Starts grouping recommendation task.</p>
    # @param [Hash, Types::StartResourceGroupingRecommendationTaskRequest] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.start_resource_grouping_recommendation_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     grouping_id: "String255", # required
    #     status: "Pending" # One of: ["Pending", "InProgress", "Failed", "Success"], # required
    #     error_message: "String500"
    #   }
    # @return [Types::StartResourceGroupingRecommendationTaskResponse]
    def start_resource_grouping_recommendation_task(params = {}, options = {})
      request = build_request(:start_resource_grouping_recommendation_task, params)
      request.send_request(options)
    end

    # <p>Applies one or more tags to a resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the resource. Each tag consists of a key/value pair.</p>
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

    # <p>Removes one or more tags from a resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags you want to remove.</p>
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

    # <p>Updates an application.</p>
    # @param [Hash, Types::UpdateAppInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :description
    #   <p>The optional description for an app.</p>
    # @option params [String] :policy_arn
    #   <p>Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [Boolean] :clear_resiliency_policy_arn
    #   <p>Specifies if the resiliency policy ARN should be cleared.</p>
    # @option params [String] :assessment_schedule
    #   <p> Assessment execution schedule with 'Daily' or 'Disabled' values. </p>
    # @option params [Types::PermissionModel] :permission_model
    #   <p>Defines the roles and credentials that Resilience Hub would use while creating an
    #         application, importing its resources, and running an assessment.</p>
    # @option params [Array<Types::EventSubscription>] :event_subscriptions
    #   <p>The list of events you would like to subscribe and get notification for. Currently,
    #           Resilience Hub supports notifications only for <b>Drift
    #           detected</b> and <b>Scheduled assessment failure</b>
    #         events.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     description: "EntityDescription",
    #     policy_arn: "Arn",
    #     clear_resiliency_policy_arn: false,
    #     assessment_schedule: "Disabled" # One of: ["Disabled", "Daily"],
    #     permission_model: {
    #       type: "LegacyIAMUser" # One of: ["LegacyIAMUser", "RoleBased"], # required
    #       invoker_role_name: "IamRoleName",
    #       cross_account_role_arns: ["IamRoleArn"]
    #     },
    #     event_subscriptions: [
    #       {
    #         name: "String255", # required
    #         event_type: "ScheduledAssessmentFailure" # One of: ["ScheduledAssessmentFailure", "DriftDetected"], # required
    #         sns_topic_arn: "Arn"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_app(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app: { # required
    #       app_arn: "Arn", # required
    #       name: "EntityName", # required
    #       description: "EntityDescription",
    #       policy_arn: "Arn",
    #       creation_time: Time.now, # required
    #       status: "Active" # One of: ["Active", "Deleting"],
    #       compliance_status: "PolicyBreached" # One of: ["PolicyBreached", "PolicyMet", "NotAssessed", "ChangesDetected", "NotApplicable", "MissingPolicy"],
    #       last_app_compliance_evaluation_time: Time.now,
    #       resiliency_score: 1.0,
    #       last_resiliency_score_evaluation_time: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       assessment_schedule: "Disabled" # One of: ["Disabled", "Daily"],
    #       permission_model: {
    #         type: "LegacyIAMUser" # One of: ["LegacyIAMUser", "RoleBased"], # required
    #         invoker_role_name: "IamRoleName",
    #         cross_account_role_arns: ["IamRoleArn"]
    #       },
    #       event_subscriptions: [
    #         {
    #           name: "String255", # required
    #           event_type: "ScheduledAssessmentFailure" # One of: ["ScheduledAssessmentFailure", "DriftDetected"], # required
    #           sns_topic_arn: "Arn"
    #         }
    #       ],
    #       drift_status: "NotChecked" # One of: ["NotChecked", "NotDetected", "Detected"],
    #       last_drift_evaluation_time: Time.now,
    #       rto_in_secs: 1,
    #       rpo_in_secs: 1,
    #       aws_application_arn: "Arn"
    #     }
    #   }
    # @return [Types::UpdateAppOutput]
    def update_app(params = {}, options = {})
      request = build_request(:update_app, params)
      request.send_request(options)
    end

    # <p>Updates the Resilience Hub application version.</p>
    #          <note>
    #             <p>This API updates the Resilience Hub application draft version. To use this
    #         information for running resiliency assessments, you must publish the Resilience Hub
    #         application using the <code>PublishAppVersion</code> API.</p>
    #          </note>
    # @param [Hash, Types::UpdateAppVersionInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [Hash<String, Array<String>>] :additional_info
    #   <p>Additional configuration parameters for an Resilience Hub application. If you want to implement <code>additionalInfo</code> through the Resilience Hub console rather than using an API call, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html">Configure the application configuration parameters</a>.</p>
    #            <note>
    #               <p>Currently, this parameter accepts a key-value mapping (in a string format) of only one failover region and one associated account.</p>
    #               <p>Key: <code>"failover-regions"</code>
    #               </p>
    #               <p>Value: <code>"[{"region":"&lt;REGION&gt;", "accounts":[{"id":"&lt;ACCOUNT_ID&gt;"}]}]"</code>
    #               </p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     additional_info: {
    #       "String128WithoutWhitespace" => ["String1024"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_app_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     additional_info: {
    #       "String128WithoutWhitespace" => ["String1024"]
    #     }
    #   }
    # @return [Types::UpdateAppVersionOutput]
    def update_app_version(params = {}, options = {})
      request = build_request(:update_app_version, params)
      request.send_request(options)
    end

    # <p>Updates an existing Application Component in the Resilience Hub application.</p>
    #          <note>
    #             <p>This API updates the Resilience Hub application draft version. To use this
    #         Application Component for running assessments, you must publish the Resilience Hub
    #         application using the <code>PublishAppVersion</code> API.</p>
    #          </note>
    # @param [Hash, Types::UpdateAppVersionAppComponentInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :id
    #   <p>Identifier of the Application Component.</p>
    # @option params [String] :name
    #   <p>Name of the Application Component.</p>
    # @option params [String] :type
    #   <p>Type of Application Component. For more information about the types of Application Component, see <a href="https://docs.aws.amazon.com/resilience-hub/latest/userguide/AppComponent.grouping.html">Grouping resources in an AppComponent</a>.</p>
    # @option params [Hash<String, Array<String>>] :additional_info
    #   <p>Currently, there is no supported additional information for Application Components.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     id: "String255", # required
    #     name: "String255",
    #     type: "String255",
    #     additional_info: {
    #       "String128WithoutWhitespace" => ["String1024"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_app_version_app_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     app_component: {
    #       name: "EntityName255", # required
    #       type: "String255", # required
    #       id: "EntityName255",
    #       additional_info: {
    #         "String128WithoutWhitespace" => ["String1024"]
    #       }
    #     }
    #   }
    # @return [Types::UpdateAppVersionAppComponentOutput]
    def update_app_version_app_component(params = {}, options = {})
      request = build_request(:update_app_version_app_component, params)
      request.send_request(options)
    end

    # <p>Updates the resource details in the Resilience Hub application.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>This action has no effect outside Resilience Hub.</p>
    #                </li>
    #                <li>
    #                   <p>This API updates the Resilience Hub application draft version. To use this
    #             resource for running resiliency assessments, you must publish the Resilience Hub
    #             application using the <code>PublishAppVersion</code> API.</p>
    #                </li>
    #                <li>
    #                   <p>To update application version with new <code>physicalResourceID</code>, you must
    #             call <code>ResolveAppVersionResources</code> API.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::UpdateAppVersionResourceInput] params
    # @option params [String] :app_arn
    #   <p>Amazon Resource Name (ARN) of the Resilience Hub application. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :resource_name
    #   <p>Name of the resource.</p>
    # @option params [Types::LogicalResourceId] :logical_resource_id
    #   <p>Logical identifier of the resource.</p>
    # @option params [String] :physical_resource_id
    #   <p>Physical identifier of the resource.</p>
    # @option params [String] :aws_region
    #   <p>Amazon Web Services region that owns the physical resource.</p>
    # @option params [String] :aws_account_id
    #   <p>Amazon Web Services account that owns the physical resource.</p>
    # @option params [String] :resource_type
    #   <p>Type of resource.</p>
    # @option params [Array<String>] :app_components
    #   <p>List of Application Components that this resource belongs to. If an Application Component is not part of the Resilience Hub application, it will be added.</p>
    # @option params [Hash<String, Array<String>>] :additional_info
    #   <p>Currently, there is no supported additional information for resources.</p>
    # @option params [Boolean] :excluded
    #   <p>Indicates if a resource is excluded from an Resilience Hub application.</p>
    #            <note>
    #               <p>You can exclude only imported resources from an Resilience Hub
    #           application.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_arn: "Arn", # required
    #     resource_name: "EntityName",
    #     logical_resource_id: {
    #       identifier: "String255", # required
    #       logical_stack_name: "String255",
    #       resource_group_name: "EntityName",
    #       terraform_source_name: "String255",
    #       eks_source_name: "String255"
    #     },
    #     physical_resource_id: "String2048",
    #     aws_region: "AwsRegion",
    #     aws_account_id: "CustomerId",
    #     resource_type: "String255",
    #     app_components: ["String255"],
    #     additional_info: {
    #       "String128WithoutWhitespace" => ["String1024"]
    #     },
    #     excluded: false
    #   }
    #   options = {}
    #   response = client.update_app_version_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_arn: "Arn", # required
    #     app_version: "EntityVersion", # required
    #     physical_resource: {
    #       resource_name: "EntityName",
    #       logical_resource_id: { # required
    #         identifier: "String255", # required
    #         logical_stack_name: "String255",
    #         resource_group_name: "EntityName",
    #         terraform_source_name: "String255",
    #         eks_source_name: "String255"
    #       },
    #       physical_resource_id: { # required
    #         identifier: "String255", # required
    #         type: "Arn" # One of: ["Arn", "Native"], # required
    #         aws_region: "AwsRegion",
    #         aws_account_id: "CustomerId"
    #       },
    #       resource_type: "String255", # required
    #       app_components: [
    #         {
    #           name: "EntityName255", # required
    #           type: "String255", # required
    #           id: "EntityName255",
    #           additional_info: {
    #             "String128WithoutWhitespace" => ["String1024"]
    #           }
    #         }
    #       ],
    #       additional_info: {
    #         "String128WithoutWhitespace" => ["String1024"]
    #       },
    #       excluded: false,
    #       source_type: "AppTemplate" # One of: ["AppTemplate", "Discovered"],
    #       parent_resource_name: "EntityName"
    #     }
    #   }
    # @return [Types::UpdateAppVersionResourceOutput]
    def update_app_version_resource(params = {}, options = {})
      request = build_request(:update_app_version_resource, params)
      request.send_request(options)
    end

    # <p>Updates a resiliency policy.</p>
    #          <note>
    #             <p>Resilience Hub allows you to provide a value of zero for <code>rtoInSecs</code>
    #         and <code>rpoInSecs</code> of your resiliency policy. But, while assessing your application,
    #         the lowest possible assessment result is near zero. Hence, if you provide value zero for
    #           <code>rtoInSecs</code> and <code>rpoInSecs</code>, the estimated workload RTO and
    #         estimated workload RPO result will be near zero and the <b>Compliance
    #           status</b> for your application will be set to <b>Policy
    #           breached</b>.</p>
    #          </note>
    # @param [Hash, Types::UpdateResiliencyPolicyInput] params
    # @option params [String] :policy_arn
    #   <p>Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is: 
    #   arn:<code>partition</code>:resiliencehub:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs, 
    #   see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">
    #                       Amazon Resource Names (ARNs)</a> in the 
    #                       <i>Amazon Web Services General Reference</i> guide.</p>
    # @option params [String] :policy_name
    #   <p>Name of the resiliency policy.</p>
    # @option params [String] :policy_description
    #   <p>Description of the resiliency policy.</p>
    # @option params [String] :data_location_constraint
    #   <p>Specifies a high-level geographical location constraint for where your resilience policy data can be stored.</p>
    # @option params [String] :tier
    #   <p>The tier for this resiliency policy, ranging from the highest severity
    #           (<code>MissionCritical</code>) to lowest (<code>NonCritical</code>).</p>
    # @option params [Hash<String, Types::FailurePolicy>] :policy
    #   <p>Resiliency policy to be created, including the recovery time objective (RTO) and recovery point objective (RPO) in seconds.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_arn: "Arn", # required
    #     policy_name: "EntityName",
    #     policy_description: "EntityDescription",
    #     data_location_constraint: "AnyLocation" # One of: ["AnyLocation", "SameContinent", "SameCountry"],
    #     tier: "MissionCritical" # One of: ["MissionCritical", "Critical", "Important", "CoreServices", "NonCritical", "NotApplicable"],
    #     policy: {
    #       "DisruptionType" => {
    #         rto_in_secs: 1, # required
    #         rpo_in_secs: 1, # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_resiliency_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: { # required
    #       policy_arn: "Arn",
    #       policy_name: "EntityName",
    #       policy_description: "EntityDescription",
    #       data_location_constraint: "AnyLocation" # One of: ["AnyLocation", "SameContinent", "SameCountry"],
    #       tier: "MissionCritical" # One of: ["MissionCritical", "Critical", "Important", "CoreServices", "NonCritical", "NotApplicable"],
    #       estimated_cost_tier: "L1" # One of: ["L1", "L2", "L3", "L4"],
    #       policy: {
    #         "DisruptionType" => {
    #           rto_in_secs: 1, # required
    #           rpo_in_secs: 1, # required
    #         }
    #       },
    #       creation_time: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::UpdateResiliencyPolicyOutput]
    def update_resiliency_policy(params = {}, options = {})
      request = build_request(:update_resiliency_policy, params)
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
      context[:gem_name] = 'aws-sdk-resiliencehub'
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
