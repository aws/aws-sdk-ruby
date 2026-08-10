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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:launchwizard)

module Aws::LaunchWizard
  # An API client for Aws::LaunchWizard.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::LaunchWizard
    @identifier = :launchwizard

    add_plugin(::Aws::LaunchWizard::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::LaunchWizard::EndpointProvider)
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
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
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

    # <p>Creates a deployment for the given workload. Deployments created by this operation are
    #          not available in the Launch Wizard console to use the <code>Clone deployment</code> action
    #          on.</p>
    # @param [Hash, Types::CreateDeploymentInput] params
    # @option params [String] :workload_name
    #   <p>The name of the workload. You can use the <a href="https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloads.html">
    #                  <code>ListWorkloads</code>
    #               </a> operation to discover supported
    #            values for this parameter.</p>
    # @option params [String] :deployment_pattern_name
    #   <p>The name of the deployment pattern supported by a given workload. You can use the <a href="https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloadDeploymentPatterns.html">
    #                  <code>ListWorkloadDeploymentPatterns</code>
    #               </a> operation to discover supported
    #            values for this parameter. </p>
    # @option params [String] :name
    #   <p>The name of the deployment.</p>
    # @option params [Hash<String, String>] :specifications
    #   <p>The settings specified for the deployment. These settings define how to deploy and configure your
    #            resources created by the deployment. For more information about the specifications
    #            required for creating a deployment for a SAP workload, see <a href="https://docs.aws.amazon.com/launchwizard/latest/APIReference/launch-wizard-specifications-sap.html">SAP deployment
    #            specifications</a>. To retrieve the specifications required to create a deployment for other workloads,
    #            use the <a href="https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_GetWorkloadDeploymentPattern.html">
    #                  <code>GetWorkloadDeploymentPattern</code>
    #               </a> operation.</p>
    # @option params [Boolean] :dry_run
    #   <p>Checks whether you have the required permissions for the action, without actually making
    #            the request, and provides an error response. If you have the required permissions, the
    #            error response is <code>DryRunOperation</code>. Otherwise, it is
    #               <code>UnauthorizedOperation</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the deployment.</p>
    # @example Deploy a given workload with given settings.
    #   # Example operation for create_deployment
    #   params = {
    #     workload_name: "SAP",
    #     deployment_pattern_name: "SapHanaSingle",
    #     name: "SapHanaSingleForTest",
    #     dry_run: false,
    #     specifications: {
    #       "applicationName" => "SapHanaSingleForTest",
    #       "deploymentScenario" => "SapHanaSingle",
    #       "DisableDeploymentRollback" => "true",
    #       "saveDeploymentArtifacts" => "Yes",
    #       "saveArtifactsS3Uri" => "s3://testbucket",
    #       "KeyName" => "testLinuxInstance",
    #       "VPCID" => "vpc-1234567",
    #       "environmentType" => "production",
    #       "SAPTZ" => "America/Vancouver",
    #       "Encryption" => "Yes"
    #     }
    #   }
    #   options = {}
    #   response = client.create_deployment(params, options)
    #   response.to_h #=>
    #   {
    #     deployment_id: "4c1b59c1-659c-467f-b6e9-6ef6f9d28e1d"
    #   }
    # @example Deploy a given workload with given settings and passing tags for Launch Wizard deployment resource.
    #   # Example operation for create_deployment
    #   params = {
    #     workload_name: "SAP",
    #     deployment_pattern_name: "SapHanaSingle",
    #     name: "SapHanaSingleForTest",
    #     dry_run: false,
    #     specifications: {
    #       "applicationName" => "SapHanaSingleForTest",
    #       "deploymentScenario" => "SapHanaSingle",
    #       "DisableDeploymentRollback" => "true",
    #       "saveDeploymentArtifacts" => "Yes",
    #       "saveArtifactsS3Uri" => "s3://testbucket",
    #       "KeyName" => "testLinuxInstance",
    #       "VPCID" => "vpc-1234567",
    #       "environmentType" => "production",
    #       "SAPTZ" => "America/Vancouver",
    #       "Encryption" => "Yes"
    #     },
    #     tags: {
    #       "key1" => "val1",
    #       "key2" => "val2"
    #     }
    #   }
    #   options = {}
    #   response = client.create_deployment(params, options)
    #   response.to_h #=>
    #   {
    #     deployment_id: "1111111-1111-1111-1111-111111111111"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_name: "WorkloadName", # required
    #     deployment_pattern_name: "DeploymentPatternName", # required
    #     name: "DeploymentName", # required
    #     specifications: { # required
    #       "KeyString" => "ValueString"
    #     },
    #     dry_run: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_id: "DeploymentId"
    #   }
    # @return [Types::CreateDeploymentOutput]
    def create_deployment(params = {}, options = {})
      request = build_request(:create_deployment, params)
      request.send_request(options)
    end

    # <p>Deletes a deployment.</p>
    # @param [Hash, Types::DeleteDeploymentInput] params
    # @option params [String] :deployment_id
    #   <p>The ID of the deployment.</p>
    # @example Delete a deployment.
    #   # Example operation for delete_deployment
    #   params = {
    #     deployment_id: "4c1b59c1-659c-467f-b6e9-6ef6f9d28e1d"
    #   }
    #   options = {}
    #   response = client.delete_deployment(params, options)
    #   response.to_h #=>
    #   {
    #     status: DELETED,
    #     status_reason: "Finished processing DeleteApp request"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_id: "DeploymentId", # required
    #   }
    #   options = {}
    #   response = client.delete_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "COMPLETED" # One of: ["COMPLETED", "CREATING", "DELETE_IN_PROGRESS", "DELETE_INITIATING", "DELETE_FAILED", "DELETED", "FAILED", "IN_PROGRESS", "VALIDATING"],
    #     status_reason: "String"
    #   }
    # @return [Types::DeleteDeploymentOutput]
    def delete_deployment(params = {}, options = {})
      request = build_request(:delete_deployment, params)
      request.send_request(options)
    end

    # <p>Returns information about the deployment.</p>
    # @param [Hash, Types::GetDeploymentInput] params
    # @option params [String] :deployment_id
    #   <p>The ID of the deployment.</p>
    # @example Get details about a given deployment.
    #   # Example operation for get_deployment
    #   params = {
    #     deployment_id: "1111111-1111-1111-1111-111111111111"
    #   }
    #   options = {}
    #   response = client.get_deployment(params, options)
    #   response.to_h #=>
    #   {
    #     deployment: {
    #       name: "SapHanaSingleForTest",
    #       id: "1111111-1111-1111-1111-111111111111",
    #       workload_name: "SapHanaSingle",
    #       status: FAILED,
    #       created_at: Time.parse("2023-04-24T13:10:09.857Z"),
    #       specifications: {
    #         "applicationName" => "SapHanaSingleForTest",
    #         "deploymentScenario" => "SapHanaSingle",
    #         "DisableDeploymentRollback" => "true",
    #         "saveDeploymentArtifacts" => "Yes",
    #         "saveArtifactsS3Uri" => "s3://testbucket",
    #         "KeyName" => "testLinuxInstance",
    #         "VPCID" => "vpc-1234567",
    #         "environmentType" => "production",
    #         "SAPTZ" => "America/Vancouver",
    #         "Encryption" => "Yes"
    #       },
    #       deployment_arn: "arn:aws:launchwizard:us-east-1:123456789012:deployment/1111111-1111-1111-1111-111111111111",
    #       tags: {
    #         "key1" => "val1",
    #         "key2" => "val2"
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_id: "DeploymentId", # required
    #   }
    #   options = {}
    #   response = client.get_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment: {
    #       name: "String",
    #       id: "DeploymentId",
    #       workload_name: "WorkloadName",
    #       pattern_name: "DeploymentPatternName",
    #       status: "COMPLETED" # One of: ["COMPLETED", "CREATING", "DELETE_IN_PROGRESS", "DELETE_INITIATING", "DELETE_FAILED", "DELETED", "FAILED", "IN_PROGRESS", "VALIDATING"],
    #       created_at: Time.now,
    #       specifications: {
    #         "KeyString" => "ValueString"
    #       },
    #       resource_group: "String",
    #       deleted_at: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       deployment_arn: "String"
    #     }
    #   }
    # @return [Types::GetDeploymentOutput]
    def get_deployment(params = {}, options = {})
      request = build_request(:get_deployment, params)
      request.send_request(options)
    end

    # <p>Returns information about a workload.</p>
    # @param [Hash, Types::GetWorkloadInput] params
    # @option params [String] :workload_name
    #   <p>The name of the workload.</p>
    # @example Get details about a specific workload.
    #   # Example operation for get_workload
    #   params = {
    #     workload_name: "SAP"
    #   }
    #   options = {}
    #   response = client.get_workload(params, options)
    #   response.to_h #=>
    #   {
    #     workload: {
    #       workload_name: "SAP",
    #       display_name: "SAP",
    #       description: "Workload Description",
    #       documentation_url: "https://docs.aws.amazon.com/launchwizard/latest/userguide/launch-wizard-sap.html",
    #       icon_url: "https://aws-lw-workload-assets-test-us-east-1.s3.amazonaws.com/amazon/SAP/icon.png?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEAUaCXVzLWVhc3QtMSJHMEUCIC4l3GCH4o%2Bgq3pJzcD1YJmtrmyNCoEgG2RIayjDWf9kAiEAnMK5nYixaZLuF1s1UVoNd7xIbDrOQ8EAbhcZWexMp9cq7wIIrf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FARAEGgw1ODI1NTgxMjEyMDYiDHxMN%2BZ8CoPORzvo4yrDAtkVZlBVxLwnFmwHw005vo13LOUUbyajEpp3HNh%2BaBL8K2DLx7Kzi0UPPD6z8pL1eiFLHAQ9zZgVc7pLVQjBKOdcw1GmIADDepqYEb%2B8zLi7zwWP1JT72YbT6ZXSoWpb5NCqcyAvdK47b0Ae586s6VkWzoeJ65jR%2FgbJMhRpFpqVSP2XI6Rf6yA3%2BkQyUCk3RdyF4ljIL8Nf5nIFb%2BOMK2PZ8aJX85l1j7UpJE1rfNb1PitVcQz3KlW5xkiXfcWRKeVhgHRyuCEL3FY0DyPFdqe3NxcA0%2FzPgBq6Y9B41kM6af5u2kQRfQOjWejDpzpG7w40eaIKAYnhBkjIA9550geSLB7O%2FuAPQLI9fI2lVowIBUKsKVOr0%2FFGIzW3WM7%2BbEx%2FZ0mDkP1IhcpZdP7owC77K8O%2BXDgBCabAy48K3ndi%2BQKQMPXjz6YGOp4Bbgv9mVc3sE4KvXZv1skhnOYcOKGdCncIKLne0W%2BgO3URxyDQiyO2FhM3OekXDH83CNCyDVIpkgpWkvgXDSaZiD5mj0T9iqEeJzfh6uQvX1dRN%2BxI1eV0M7HKY2e7F%2BKNjeLhzKgKpSpDqFIUSjLeBlLLyQCNKuUiO3DMiy3rB89aX4b9wyC8au0SfGb72YyNLXjh6M1whcj1VNGePyw%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230809T202649Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIAYPIZLPT3GGDNTHTI%2F20230809%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=6a37e41e47208b426a5e7d32392d0815388cd0231187652204836943c37ad86a",
    #       status: ACTIVE
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_name: "WorkloadName", # required
    #   }
    #   options = {}
    #   response = client.get_workload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload: {
    #       workload_name: "WorkloadName",
    #       display_name: "String",
    #       description: "String",
    #       documentation_url: "String",
    #       icon_url: "String",
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "DISABLED", "DELETED"],
    #       status_message: "String"
    #     }
    #   }
    # @return [Types::GetWorkloadOutput]
    def get_workload(params = {}, options = {})
      request = build_request(:get_workload, params)
      request.send_request(options)
    end

    # <p>Returns details for a given workload and deployment pattern, including the available
    #          specifications. You can use the <a href="https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloads.html">ListWorkloads</a>
    #          operation to discover the available workload names and the <a href="https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloadDeploymentPatterns.html">ListWorkloadDeploymentPatterns</a> operation to discover the available deployment
    #          pattern names of a given workload.</p>
    # @param [Hash, Types::GetWorkloadDeploymentPatternInput] params
    # @option params [String] :workload_name
    #   <p>The name of the workload.</p>
    # @option params [String] :deployment_pattern_name
    #   <p>The name of the deployment pattern.</p>
    # @example Get details about a specific Workload deployment pattern
    #   # Example operation for get_workload_deployment_pattern
    #   params = {
    #     workload_name: "MicrosoftActiveDirectory",
    #     deployment_pattern_name: "adSelfManagedNewVpc"
    #   }
    #   options = {}
    #   response = client.get_workload_deployment_pattern(params, options)
    #   response.to_h #=>
    #   {
    #     workload_deployment_pattern: {
    #       workload_name: "MicrosoftActiveDirectory",
    #       deployment_pattern_name: "adSelfManagedNewVpc",
    #       workload_version_name: "2024-03-19-14-00-09",
    #       display_name: "Self-managed AD - new VPC",
    #       description: "Builds a new AWS environment (VPC and other components), and deploys AD DS into this new VPC.",
    #       status: ACTIVE,
    #       specifications: [
    #         {
    #           name: "NumberOfAZs",
    #           description: "Number of Availability Zones to use in the VPC.",
    #           required: "Yes"
    #         },
    #         {
    #           name: "AvailabilityZones",
    #           description: "List of Availability Zones (AZs) to use for the subnets in the VPC.",
    #           required: "Yes"
    #         },
    #         {
    #           name: "VPCCIDR",
    #           description: "CIDR block for the VPC.",
    #           required: "Yes"
    #         }
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_name: "WorkloadName", # required
    #     deployment_pattern_name: "DeploymentPatternName", # required
    #   }
    #   options = {}
    #   response = client.get_workload_deployment_pattern(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_deployment_pattern: {
    #       workload_name: "WorkloadName",
    #       deployment_pattern_name: "DeploymentPatternName",
    #       workload_version_name: "WorkloadVersionName",
    #       display_name: "String",
    #       description: "String",
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "DISABLED", "DELETED"],
    #       status_message: "String",
    #       specifications: [
    #         {
    #           name: "String",
    #           description: "String",
    #           allowed_values: ["ValueString"],
    #           required: "String",
    #           conditionals: [
    #             {
    #               name: "String",
    #               value: "String",
    #               comparator: "String"
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetWorkloadDeploymentPatternOutput]
    def get_workload_deployment_pattern(params = {}, options = {})
      request = build_request(:get_workload_deployment_pattern, params)
      request.send_request(options)
    end

    # <p>Lists the events of a deployment.</p>
    # @param [Hash, Types::ListDeploymentEventsInput] params
    # @option params [String] :deployment_id
    #   <p>The ID of the deployment.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items,
    #            make another request with the token returned in the output.</p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end
    #            of the items returned by the previous request.</p>
    # @example List all actions taken during a deployment.
    #   # Example operation for list_deployment_events
    #   params = {
    #     deployment_id: "4c1b59c1-659c-467f-b6e9-6ef6f9d28e1d"
    #   }
    #   options = {}
    #   response = client.list_deployment_events(params, options)
    #   response.to_h #=>
    #   {
    #     deployment_events: [
    #       {
    #         name: "Create secure parameter",
    #         description: "Creates a new secure parameter",
    #         status: COMPLETED,
    #         status_reason: "",
    #         timestamp: Time.parse("2023-04-24T13:10:39.123Z")
    #       },
    #       {
    #         name: "Create resource group",
    #         description: "Creates a resource group with all the application resources",
    #         status: COMPLETED,
    #         status_reason: "",
    #         timestamp: Time.parse("2023-04-24T13:10:42.238Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_id: "DeploymentId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_deployment_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_events: [
    #       {
    #         name: "String",
    #         description: "String",
    #         status: "CANCELED" # One of: ["CANCELED", "CANCELING", "COMPLETED", "CREATED", "FAILED", "IN_PROGRESS", "PENDING", "TIMED_OUT"],
    #         status_reason: "String",
    #         timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDeploymentEventsOutput]
    def list_deployment_events(params = {}, options = {})
      request = build_request(:list_deployment_events, params)
      request.send_request(options)
    end

    # <p>Lists the deployments that have been created.</p>
    # @param [Hash, Types::ListDeploymentsInput] params
    # @option params [Array<Types::DeploymentFilter>] :filters
    #   <p>Filters to scope the results. The following filters are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>WORKLOAD_NAME</code> - The name used in deployments.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPLOYMENT_STATUS</code> - <code>COMPLETED</code> | <code>CREATING</code> |
    #                     <code>DELETE_IN_PROGRESS</code> | <code>DELETE_INITIATING</code> |
    #                     <code>DELETE_FAILED</code> | <code>DELETED</code> | <code>FAILED</code> |
    #                     <code>IN_PROGRESS</code> | <code>VALIDATING</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items,
    #            make another request with the token returned in the output.</p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end
    #            of the items returned by the previous request.</p>
    # @example List deployments in the account with filters.
    #   # Example operation for list_deployments
    #   params = {
    #     filters: [
    #       {
    #         name: DEPLOYMENT_STATUS,
    #         values: [
    #           "IN_PROGRESS"
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_deployments(params, options)
    #   response.to_h #=>
    #   {
    #     deployments: [
    #       {
    #         name: "SapHanaSingleForTest",
    #         id: "4c1b59c1-659c-467f-b6e9-6ef6f9d28e1d",
    #         workload_name: "SAP",
    #         pattern_name: "SapHanaSingle",
    #         status: IN_PROGRESS,
    #         created_at: Time.parse("2023-04-24T13:10:09.857Z")
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "WORKLOAD_NAME" # One of: ["WORKLOAD_NAME", "DEPLOYMENT_STATUS"],
    #         values: ["String"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_deployments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployments: [
    #       {
    #         name: "String",
    #         id: "DeploymentId",
    #         workload_name: "WorkloadName",
    #         pattern_name: "DeploymentPatternName",
    #         status: "COMPLETED" # One of: ["COMPLETED", "CREATING", "DELETE_IN_PROGRESS", "DELETE_INITIATING", "DELETE_FAILED", "DELETED", "FAILED", "IN_PROGRESS", "VALIDATING"],
    #         created_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDeploymentsOutput]
    def list_deployments(params = {}, options = {})
      request = build_request(:list_deployments, params)
      request.send_request(options)
    end

    # <p>Lists the tags associated with a specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Listing tags on a Launch Wizard deployment resource.
    #   # Example operation for list_tags_for_resource
    #   params = {
    #     resource_arn: "arn:aws:launchwizard:us-east-1:123456789012:deployment/11111111-1111-1111-1111-111111111111"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
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

    # <p>Lists the workload deployment patterns for a given workload name. You can use the <a href="https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloads.html">ListWorkloads</a> operation to discover the available workload names.</p>
    # @param [Hash, Types::ListWorkloadDeploymentPatternsInput] params
    # @option params [String] :workload_name
    #   <p>The name of the workload.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items,
    #            make another request with the token returned in the output.</p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end
    #            of the items returned by the previous request.</p>
    # @example List all available workloads supported by AWS Launch Wizard.
    #   # Example operation for list_workload_deployment_patterns
    #   params = {
    #     workload_name: "SAP"
    #   }
    #   options = {}
    #   response = client.list_workload_deployment_patterns(params, options)
    #   response.to_h #=>
    #   {
    #     workload_deployment_patterns: [
    #       {
    #         workload_name: "SAP",
    #         deployment_pattern_name: "SapHanaHA",
    #         workload_version_name: "2023-08-02-01-00-00",
    #         display_name: "Deployment Option Display Name",
    #         description: "Deployment Option Description",
    #         status: ACTIVE
    #       },
    #       {
    #         workload_name: "SAP",
    #         deployment_pattern_name: "SapHanaMulti",
    #         workload_version_name: "2023-08-02-01-00-00",
    #         display_name: "Deployment Option Display Name",
    #         description: "Deployment Option Description",
    #         status: ACTIVE
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     workload_name: "WorkloadName", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_workload_deployment_patterns(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_deployment_patterns: [
    #       {
    #         workload_name: "WorkloadName",
    #         deployment_pattern_name: "DeploymentPatternName",
    #         workload_version_name: "WorkloadVersionName",
    #         display_name: "String",
    #         description: "String",
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "DISABLED", "DELETED"],
    #         status_message: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListWorkloadDeploymentPatternsOutput]
    def list_workload_deployment_patterns(params = {}, options = {})
      request = build_request(:list_workload_deployment_patterns, params)
      request.send_request(options)
    end

    # <p>Lists the available workload names. You can use the <a href="https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloadDeploymentPatterns.html">ListWorkloadDeploymentPatterns</a> operation to discover the available deployment patterns for a given workload.</p>
    # @param [Hash, Types::ListWorkloadsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this request. To get the next page of items,
    #            make another request with the token returned in the output.</p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous paginated request. Pagination continues from the end
    #            of the items returned by the previous request.</p>
    # @example List all available workloads supported by AWS Launch Wizard.
    #   # Example operation for list_workloads
    #   params = {}
    #   options = {}
    #   response = client.list_workloads(params, options)
    #   response.to_h #=>
    #   {
    #     workloads: [
    #       {
    #         workload_name: "SAP",
    #         display_name: "SAP"
    #       },
    #       {
    #         workload_name: "SQL",
    #         display_name: "MS SQL Server"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_workloads(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workloads: [
    #       {
    #         workload_name: "WorkloadName",
    #         display_name: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListWorkloadsOutput]
    def list_workloads(params = {}, options = {})
      request = build_request(:list_workloads, params)
      request.send_request(options)
    end

    # <p>Adds the specified tags to the given resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>One or more tags to attach to the resource.</p>
    # @example Adding tags to a Launch Wizard deployment resource.
    #   # Example operation for tag_resource
    #   params = {
    #     resource_arn: "arn:aws:launchwizard:us-east-1:123456789012:deployment/11111111-1111-1111-1111-111111111111",
    #     tags: {
    #       "key1" => "value1",
    #       "key2" => "value2"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
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

    # <p>Removes the specified tags from the given resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Keys identifying the tags to remove.</p>
    # @example Removing tags on a Launch Wizard deployment resource.
    #   # Example operation for untag_resource
    #   params = {
    #     resource_arn: "arn:aws:launchwizard:us-east-1:123456789012:deployment/11111111-1111-1111-1111-111111111111",
    #     tag_keys: [
    #       "key1",
    #       "key2"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
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
      context[:gem_name] = 'aws-sdk-launchwizard'
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
