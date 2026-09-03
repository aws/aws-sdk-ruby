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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:codebuild)

module Aws::CodeBuild
  # An API client for Aws::CodeBuild.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::CodeBuild20161006
    @identifier = :codebuild

    add_plugin(::Aws::CodeBuild::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CodeBuild::EndpointProvider)
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

    # <p>Deletes one or more builds.</p>
    # @param [Hash, Types::BatchDeleteBuildsInput] params
    # @option params [Array<String>] :ids
    #   <p>The IDs of the builds to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ids: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.batch_delete_builds(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     builds_deleted: ["NonEmptyString"],
    #     builds_not_deleted: [
    #       {
    #         id: "NonEmptyString",
    #         status_code: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteBuildsOutput]
    def batch_delete_builds(params = {}, options = {})
      request = build_request(:batch_delete_builds, params)
      request.send_request(options)
    end

    # <p>Retrieves information about one or more batch builds.</p>
    # @param [Hash, Types::BatchGetBuildBatchesInput] params
    # @option params [Array<String>] :ids
    #   <p>An array that contains the batch build identifiers to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ids: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_build_batches(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     build_batches: [
    #       {
    #         id: "NonEmptyString",
    #         arn: "NonEmptyString",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         current_phase: "String",
    #         build_batch_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #         source_version: "NonEmptyString",
    #         resolved_source_version: "NonEmptyString",
    #         project_name: "NonEmptyString",
    #         phases: [
    #           {
    #             phase_type: "SUBMITTED" # One of: ["SUBMITTED", "DOWNLOAD_BATCHSPEC", "IN_PROGRESS", "COMBINE_ARTIFACTS", "SUCCEEDED", "FAILED", "STOPPED"],
    #             phase_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #             start_time: Time.now,
    #             end_time: Time.now,
    #             duration_in_seconds: 1,
    #             contexts: [
    #               {
    #                 status_code: "String",
    #                 message: "String"
    #               }
    #             ]
    #           }
    #         ],
    #         source: {
    #           type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #           location: "String",
    #           git_clone_depth: 1,
    #           git_submodules_config: {
    #             fetch_submodules: false, # required
    #           },
    #           buildspec: "String",
    #           auth: {
    #             type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #             resource: "String"
    #           },
    #           report_build_status: false,
    #           build_status_config: {
    #             context: "String",
    #             target_url: "String"
    #           },
    #           insecure_ssl: false,
    #           source_identifier: "String"
    #         },
    #         secondary_sources: [
    #           {
    #             type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #             location: "String",
    #             git_clone_depth: 1,
    #             git_submodules_config: {
    #               fetch_submodules: false, # required
    #             },
    #             buildspec: "String",
    #             auth: {
    #               type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #               resource: "String"
    #             },
    #             report_build_status: false,
    #             build_status_config: {
    #               context: "String",
    #               target_url: "String"
    #             },
    #             insecure_ssl: false,
    #             source_identifier: "String"
    #           }
    #         ],
    #         secondary_source_versions: [
    #           {
    #             source_identifier: "String", # required
    #             source_version: "String", # required
    #           }
    #         ],
    #         artifacts: {
    #           location: "String",
    #           sha256sum: "String",
    #           md5sum: "String",
    #           override_artifact_name: false,
    #           encryption_disabled: false,
    #           artifact_identifier: "String",
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         },
    #         secondary_artifacts: [
    #           {
    #             location: "String",
    #             sha256sum: "String",
    #             md5sum: "String",
    #             override_artifact_name: false,
    #             encryption_disabled: false,
    #             artifact_identifier: "String",
    #             bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #           }
    #         ],
    #         cache: {
    #           type: "NO_CACHE" # One of: ["NO_CACHE", "S3", "LOCAL"], # required
    #           location: "String",
    #           modes: ["LOCAL_DOCKER_LAYER_CACHE" # One of: ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]],
    #           cache_namespace: "String"
    #         },
    #         environment: {
    #           type: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"], # required
    #           image: "NonEmptyString", # required
    #           compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #           compute_configuration: {
    #             v_cpu: 1,
    #             memory: 1,
    #             disk: 1,
    #             machine_type: "GENERAL" # One of: ["GENERAL", "NVME"],
    #             instance_type: "NonEmptyString"
    #           },
    #           fleet: {
    #             fleet_arn: "String"
    #           },
    #           environment_variables: [
    #             {
    #               name: "NonEmptyString", # required
    #               value: "String", # required
    #               type: "PLAINTEXT" # One of: ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #             }
    #           ],
    #           privileged_mode: false,
    #           certificate: "String",
    #           registry_credential: {
    #             credential: "NonEmptyString", # required
    #             credential_provider: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER"], # required
    #           },
    #           image_pull_credentials_type: "CODEBUILD" # One of: ["CODEBUILD", "SERVICE_ROLE"],
    #           docker_server: {
    #             compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #             security_group_ids: ["NonEmptyString"],
    #             status: {
    #               status: "String",
    #               message: "String"
    #             }
    #           }
    #         },
    #         service_role: "NonEmptyString",
    #         log_config: {
    #           cloud_watch_logs: {
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             group_name: "String",
    #             stream_name: "String"
    #           },
    #           s3_logs: {
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             location: "String",
    #             encryption_disabled: false,
    #             bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #           }
    #         },
    #         build_timeout_in_minutes: 1,
    #         queued_timeout_in_minutes: 1,
    #         complete: false,
    #         initiator: "String",
    #         vpc_config: {
    #           vpc_id: "NonEmptyString",
    #           subnets: ["NonEmptyString"],
    #           security_group_ids: ["NonEmptyString"]
    #         },
    #         encryption_key: "NonEmptyString",
    #         build_batch_number: 1,
    #         file_system_locations: [
    #           {
    #             type: "EFS" # One of: ["EFS"],
    #             location: "String",
    #             mount_point: "String",
    #             identifier: "String",
    #             mount_options: "String"
    #           }
    #         ],
    #         build_batch_config: {
    #           service_role: "NonEmptyString",
    #           combine_artifacts: false,
    #           restrictions: {
    #             maximum_builds_allowed: 1,
    #             compute_types_allowed: ["NonEmptyString"],
    #             fleets_allowed: ["NonEmptyString"]
    #           },
    #           timeout_in_mins: 1,
    #           batch_report_mode: "REPORT_INDIVIDUAL_BUILDS" # One of: ["REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"]
    #         },
    #         build_groups: [
    #           {
    #             identifier: "String",
    #             depends_on: ["NonEmptyString"],
    #             ignore_failure: false,
    #             current_build_summary: {
    #               arn: "String",
    #               requested_on: Time.now,
    #               build_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #               primary_artifact: {
    #                 type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"],
    #                 location: "String",
    #                 identifier: "String"
    #               },
    #               secondary_artifacts: [
    #                 {
    #                   type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"],
    #                   location: "String",
    #                   identifier: "String"
    #                 }
    #               ]
    #             },
    #             prior_build_summary_list: [
    #               {
    #                 arn: "String",
    #                 requested_on: Time.now,
    #                 build_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #                 primary_artifact: {
    #                   type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"],
    #                   location: "String",
    #                   identifier: "String"
    #                 },
    #                 secondary_artifacts: [
    #                   {
    #                     type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"],
    #                     location: "String",
    #                     identifier: "String"
    #                   }
    #                 ]
    #               }
    #             ]
    #           }
    #         ],
    #         debug_session_enabled: false,
    #         report_arns: ["String"]
    #       }
    #     ],
    #     build_batches_not_found: ["NonEmptyString"]
    #   }
    # @return [Types::BatchGetBuildBatchesOutput]
    def batch_get_build_batches(params = {}, options = {})
      request = build_request(:batch_get_build_batches, params)
      request.send_request(options)
    end

    # <p>Gets information about one or more builds.</p>
    # @param [Hash, Types::BatchGetBuildsInput] params
    # @option params [Array<String>] :ids
    #   <p>The IDs of the builds.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ids: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_builds(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     builds: [
    #       {
    #         id: "NonEmptyString",
    #         arn: "NonEmptyString",
    #         build_number: 1,
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         current_phase: "String",
    #         build_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #         source_version: "NonEmptyString",
    #         resolved_source_version: "NonEmptyString",
    #         project_name: "NonEmptyString",
    #         phases: [
    #           {
    #             phase_type: "SUBMITTED" # One of: ["SUBMITTED", "QUEUED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"],
    #             phase_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #             start_time: Time.now,
    #             end_time: Time.now,
    #             duration_in_seconds: 1,
    #             contexts: [
    #               {
    #                 status_code: "String",
    #                 message: "String"
    #               }
    #             ]
    #           }
    #         ],
    #         source: {
    #           type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #           location: "String",
    #           git_clone_depth: 1,
    #           git_submodules_config: {
    #             fetch_submodules: false, # required
    #           },
    #           buildspec: "String",
    #           auth: {
    #             type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #             resource: "String"
    #           },
    #           report_build_status: false,
    #           build_status_config: {
    #             context: "String",
    #             target_url: "String"
    #           },
    #           insecure_ssl: false,
    #           source_identifier: "String"
    #         },
    #         secondary_sources: [
    #           {
    #             type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #             location: "String",
    #             git_clone_depth: 1,
    #             git_submodules_config: {
    #               fetch_submodules: false, # required
    #             },
    #             buildspec: "String",
    #             auth: {
    #               type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #               resource: "String"
    #             },
    #             report_build_status: false,
    #             build_status_config: {
    #               context: "String",
    #               target_url: "String"
    #             },
    #             insecure_ssl: false,
    #             source_identifier: "String"
    #           }
    #         ],
    #         secondary_source_versions: [
    #           {
    #             source_identifier: "String", # required
    #             source_version: "String", # required
    #           }
    #         ],
    #         artifacts: {
    #           location: "String",
    #           sha256sum: "String",
    #           md5sum: "String",
    #           override_artifact_name: false,
    #           encryption_disabled: false,
    #           artifact_identifier: "String",
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         },
    #         secondary_artifacts: [
    #           {
    #             location: "String",
    #             sha256sum: "String",
    #             md5sum: "String",
    #             override_artifact_name: false,
    #             encryption_disabled: false,
    #             artifact_identifier: "String",
    #             bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #           }
    #         ],
    #         cache: {
    #           type: "NO_CACHE" # One of: ["NO_CACHE", "S3", "LOCAL"], # required
    #           location: "String",
    #           modes: ["LOCAL_DOCKER_LAYER_CACHE" # One of: ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]],
    #           cache_namespace: "String"
    #         },
    #         environment: {
    #           type: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"], # required
    #           image: "NonEmptyString", # required
    #           compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #           compute_configuration: {
    #             v_cpu: 1,
    #             memory: 1,
    #             disk: 1,
    #             machine_type: "GENERAL" # One of: ["GENERAL", "NVME"],
    #             instance_type: "NonEmptyString"
    #           },
    #           fleet: {
    #             fleet_arn: "String"
    #           },
    #           environment_variables: [
    #             {
    #               name: "NonEmptyString", # required
    #               value: "String", # required
    #               type: "PLAINTEXT" # One of: ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #             }
    #           ],
    #           privileged_mode: false,
    #           certificate: "String",
    #           registry_credential: {
    #             credential: "NonEmptyString", # required
    #             credential_provider: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER"], # required
    #           },
    #           image_pull_credentials_type: "CODEBUILD" # One of: ["CODEBUILD", "SERVICE_ROLE"],
    #           docker_server: {
    #             compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #             security_group_ids: ["NonEmptyString"],
    #             status: {
    #               status: "String",
    #               message: "String"
    #             }
    #           }
    #         },
    #         service_role: "NonEmptyString",
    #         logs: {
    #           group_name: "String",
    #           stream_name: "String",
    #           deep_link: "String",
    #           s3_deep_link: "String",
    #           cloud_watch_logs_arn: "String",
    #           s3_logs_arn: "String",
    #           cloud_watch_logs: {
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             group_name: "String",
    #             stream_name: "String"
    #           },
    #           s3_logs: {
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             location: "String",
    #             encryption_disabled: false,
    #             bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #           }
    #         },
    #         timeout_in_minutes: 1,
    #         queued_timeout_in_minutes: 1,
    #         build_complete: false,
    #         initiator: "String",
    #         vpc_config: {
    #           vpc_id: "NonEmptyString",
    #           subnets: ["NonEmptyString"],
    #           security_group_ids: ["NonEmptyString"]
    #         },
    #         network_interface: {
    #           subnet_id: "NonEmptyString",
    #           network_interface_id: "NonEmptyString"
    #         },
    #         encryption_key: "NonEmptyString",
    #         exported_environment_variables: [
    #           {
    #             name: "NonEmptyString",
    #             value: "String"
    #           }
    #         ],
    #         report_arns: ["String"],
    #         file_system_locations: [
    #           {
    #             type: "EFS" # One of: ["EFS"],
    #             location: "String",
    #             mount_point: "String",
    #             identifier: "String",
    #             mount_options: "String"
    #           }
    #         ],
    #         debug_session: {
    #           session_enabled: false,
    #           session_target: "NonEmptyString"
    #         },
    #         build_batch_arn: "String",
    #         auto_retry_config: {
    #           auto_retry_limit: 1,
    #           auto_retry_number: 1,
    #           next_auto_retry: "String",
    #           previous_auto_retry: "String"
    #         }
    #       }
    #     ],
    #     builds_not_found: ["NonEmptyString"]
    #   }
    # @return [Types::BatchGetBuildsOutput]
    def batch_get_builds(params = {}, options = {})
      request = build_request(:batch_get_builds, params)
      request.send_request(options)
    end

    # <p>Gets information about the command executions.</p>
    # @param [Hash, Types::BatchGetCommandExecutionsInput] params
    # @option params [String] :sandbox_id
    #   <p>A <code>sandboxId</code> or <code>sandboxArn</code>.</p>
    # @option params [Array<String>] :command_execution_ids
    #   <p>A comma separated list of <code>commandExecutionIds</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sandbox_id: "NonEmptyString", # required
    #     command_execution_ids: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_command_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     command_executions: [
    #       {
    #         id: "NonEmptyString",
    #         sandbox_id: "NonEmptyString",
    #         submit_time: Time.now,
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         status: "NonEmptyString",
    #         command: "SensitiveNonEmptyString",
    #         type: "SHELL" # One of: ["SHELL"],
    #         exit_code: "NonEmptyString",
    #         standard_output_content: "SensitiveNonEmptyString",
    #         standard_err_content: "SensitiveNonEmptyString",
    #         logs: {
    #           group_name: "String",
    #           stream_name: "String",
    #           deep_link: "String",
    #           s3_deep_link: "String",
    #           cloud_watch_logs_arn: "String",
    #           s3_logs_arn: "String",
    #           cloud_watch_logs: {
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             group_name: "String",
    #             stream_name: "String"
    #           },
    #           s3_logs: {
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             location: "String",
    #             encryption_disabled: false,
    #             bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #           }
    #         },
    #         sandbox_arn: "NonEmptyString"
    #       }
    #     ],
    #     command_executions_not_found: ["NonEmptyString"]
    #   }
    # @return [Types::BatchGetCommandExecutionsOutput]
    def batch_get_command_executions(params = {}, options = {})
      request = build_request(:batch_get_command_executions, params)
      request.send_request(options)
    end

    # <p>Gets information about one or more compute fleets.</p>
    # @param [Hash, Types::BatchGetFleetsInput] params
    # @option params [Array<String>] :names
    #   <p>The names or ARNs of the compute fleets.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     names: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_fleets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleets: [
    #       {
    #         arn: "NonEmptyString",
    #         name: "FleetName",
    #         id: "NonEmptyString",
    #         created: Time.now,
    #         last_modified: Time.now,
    #         status: {
    #           status_code: "CREATING" # One of: ["CREATING", "UPDATING", "ROTATING", "PENDING_DELETION", "DELETING", "CREATE_FAILED", "UPDATE_ROLLBACK_FAILED", "ACTIVE"],
    #           context: "CREATE_FAILED" # One of: ["CREATE_FAILED", "UPDATE_FAILED", "ACTION_REQUIRED", "PENDING_DELETION", "INSUFFICIENT_CAPACITY"],
    #           message: "String"
    #         },
    #         base_capacity: 1,
    #         environment_type: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"],
    #         compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"],
    #         compute_configuration: {
    #           v_cpu: 1,
    #           memory: 1,
    #           disk: 1,
    #           machine_type: "GENERAL" # One of: ["GENERAL", "NVME"],
    #           instance_type: "NonEmptyString"
    #         },
    #         scaling_configuration: {
    #           scaling_type: "TARGET_TRACKING_SCALING" # One of: ["TARGET_TRACKING_SCALING"],
    #           target_tracking_scaling_configs: [
    #             {
    #               metric_type: "FLEET_UTILIZATION_RATE" # One of: ["FLEET_UTILIZATION_RATE"],
    #               target_value: 1.0
    #             }
    #           ],
    #           max_capacity: 1,
    #           desired_capacity: 1
    #         },
    #         overflow_behavior: "QUEUE" # One of: ["QUEUE", "ON_DEMAND"],
    #         vpc_config: {
    #           vpc_id: "NonEmptyString",
    #           subnets: ["NonEmptyString"],
    #           security_group_ids: ["NonEmptyString"]
    #         },
    #         proxy_configuration: {
    #           default_behavior: "ALLOW_ALL" # One of: ["ALLOW_ALL", "DENY_ALL"],
    #           ordered_proxy_rules: [
    #             {
    #               type: "DOMAIN" # One of: ["DOMAIN", "IP"], # required
    #               effect: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #               entities: ["String"], # required
    #             }
    #           ]
    #         },
    #         image_id: "NonEmptyString",
    #         fleet_service_role: "NonEmptyString",
    #         tags: [
    #           {
    #             key: "KeyInput",
    #             value: "ValueInput"
    #           }
    #         ]
    #       }
    #     ],
    #     fleets_not_found: ["NonEmptyString"]
    #   }
    # @return [Types::BatchGetFleetsOutput]
    def batch_get_fleets(params = {}, options = {})
      request = build_request(:batch_get_fleets, params)
      request.send_request(options)
    end

    # <p>Gets information about one or more build projects.</p>
    # @param [Hash, Types::BatchGetProjectsInput] params
    # @option params [Array<String>] :names
    #   <p>The names or ARNs of the build projects. To get information about a project shared
    #               with your Amazon Web Services account, its ARN must be specified. You cannot specify a shared project
    #               using its name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     names: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_projects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     projects: [
    #       {
    #         name: "ProjectName",
    #         arn: "String",
    #         description: "ProjectDescription",
    #         source: {
    #           type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #           location: "String",
    #           git_clone_depth: 1,
    #           git_submodules_config: {
    #             fetch_submodules: false, # required
    #           },
    #           buildspec: "String",
    #           auth: {
    #             type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #             resource: "String"
    #           },
    #           report_build_status: false,
    #           build_status_config: {
    #             context: "String",
    #             target_url: "String"
    #           },
    #           insecure_ssl: false,
    #           source_identifier: "String"
    #         },
    #         secondary_sources: [
    #           {
    #             type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #             location: "String",
    #             git_clone_depth: 1,
    #             git_submodules_config: {
    #               fetch_submodules: false, # required
    #             },
    #             buildspec: "String",
    #             auth: {
    #               type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #               resource: "String"
    #             },
    #             report_build_status: false,
    #             build_status_config: {
    #               context: "String",
    #               target_url: "String"
    #             },
    #             insecure_ssl: false,
    #             source_identifier: "String"
    #           }
    #         ],
    #         source_version: "String",
    #         secondary_source_versions: [
    #           {
    #             source_identifier: "String", # required
    #             source_version: "String", # required
    #           }
    #         ],
    #         artifacts: {
    #           type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"], # required
    #           location: "String",
    #           path: "String",
    #           namespace_type: "NONE" # One of: ["NONE", "BUILD_ID"],
    #           name: "String",
    #           packaging: "NONE" # One of: ["NONE", "ZIP"],
    #           override_artifact_name: false,
    #           encryption_disabled: false,
    #           artifact_identifier: "String",
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         },
    #         secondary_artifacts: [
    #           {
    #             type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"], # required
    #             location: "String",
    #             path: "String",
    #             namespace_type: "NONE" # One of: ["NONE", "BUILD_ID"],
    #             name: "String",
    #             packaging: "NONE" # One of: ["NONE", "ZIP"],
    #             override_artifact_name: false,
    #             encryption_disabled: false,
    #             artifact_identifier: "String",
    #             bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #           }
    #         ],
    #         cache: {
    #           type: "NO_CACHE" # One of: ["NO_CACHE", "S3", "LOCAL"], # required
    #           location: "String",
    #           modes: ["LOCAL_DOCKER_LAYER_CACHE" # One of: ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]],
    #           cache_namespace: "String"
    #         },
    #         environment: {
    #           type: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"], # required
    #           image: "NonEmptyString", # required
    #           compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #           compute_configuration: {
    #             v_cpu: 1,
    #             memory: 1,
    #             disk: 1,
    #             machine_type: "GENERAL" # One of: ["GENERAL", "NVME"],
    #             instance_type: "NonEmptyString"
    #           },
    #           fleet: {
    #             fleet_arn: "String"
    #           },
    #           environment_variables: [
    #             {
    #               name: "NonEmptyString", # required
    #               value: "String", # required
    #               type: "PLAINTEXT" # One of: ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #             }
    #           ],
    #           privileged_mode: false,
    #           certificate: "String",
    #           registry_credential: {
    #             credential: "NonEmptyString", # required
    #             credential_provider: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER"], # required
    #           },
    #           image_pull_credentials_type: "CODEBUILD" # One of: ["CODEBUILD", "SERVICE_ROLE"],
    #           docker_server: {
    #             compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #             security_group_ids: ["NonEmptyString"],
    #             status: {
    #               status: "String",
    #               message: "String"
    #             }
    #           }
    #         },
    #         service_role: "NonEmptyString",
    #         timeout_in_minutes: 1,
    #         queued_timeout_in_minutes: 1,
    #         encryption_key: "NonEmptyString",
    #         tags: [
    #           {
    #             key: "KeyInput",
    #             value: "ValueInput"
    #           }
    #         ],
    #         created: Time.now,
    #         last_modified: Time.now,
    #         webhook: {
    #           url: "NonEmptyString",
    #           payload_url: "NonEmptyString",
    #           secret: "NonEmptyString",
    #           branch_filter: "String",
    #           filter_groups: [
    #             [
    #               {
    #                 type: "EVENT" # One of: ["EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE", "WORKFLOW_NAME", "TAG_NAME", "RELEASE_NAME", "REPOSITORY_NAME", "ORGANIZATION_NAME"], # required
    #                 pattern: "String", # required
    #                 exclude_matched_pattern: false
    #               }
    #             ]
    #           ],
    #           build_type: "BUILD" # One of: ["BUILD", "BUILD_BATCH", "RUNNER_BUILDKITE_BUILD"],
    #           manual_creation: false,
    #           last_modified_secret: Time.now,
    #           scope_configuration: {
    #             name: "String", # required
    #             domain: "String",
    #             scope: "GITHUB_ORGANIZATION" # One of: ["GITHUB_ORGANIZATION", "GITHUB_GLOBAL", "GITLAB_GROUP"], # required
    #           },
    #           status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "DELETING"],
    #           status_message: "String",
    #           pull_request_build_policy: {
    #             requires_comment_approval: "DISABLED" # One of: ["DISABLED", "ALL_PULL_REQUESTS", "FORK_PULL_REQUESTS"], # required
    #             approver_roles: ["GITHUB_READ" # One of: ["GITHUB_READ", "GITHUB_TRIAGE", "GITHUB_WRITE", "GITHUB_MAINTAIN", "GITHUB_ADMIN", "GITLAB_GUEST", "GITLAB_PLANNER", "GITLAB_REPORTER", "GITLAB_DEVELOPER", "GITLAB_MAINTAINER", "GITLAB_OWNER", "BITBUCKET_READ", "BITBUCKET_WRITE", "BITBUCKET_ADMIN"]]
    #           }
    #         },
    #         vpc_config: {
    #           vpc_id: "NonEmptyString",
    #           subnets: ["NonEmptyString"],
    #           security_group_ids: ["NonEmptyString"]
    #         },
    #         badge: {
    #           badge_enabled: false,
    #           badge_request_url: "String"
    #         },
    #         logs_config: {
    #           cloud_watch_logs: {
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             group_name: "String",
    #             stream_name: "String"
    #           },
    #           s3_logs: {
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             location: "String",
    #             encryption_disabled: false,
    #             bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #           }
    #         },
    #         file_system_locations: [
    #           {
    #             type: "EFS" # One of: ["EFS"],
    #             location: "String",
    #             mount_point: "String",
    #             identifier: "String",
    #             mount_options: "String"
    #           }
    #         ],
    #         build_batch_config: {
    #           service_role: "NonEmptyString",
    #           combine_artifacts: false,
    #           restrictions: {
    #             maximum_builds_allowed: 1,
    #             compute_types_allowed: ["NonEmptyString"],
    #             fleets_allowed: ["NonEmptyString"]
    #           },
    #           timeout_in_mins: 1,
    #           batch_report_mode: "REPORT_INDIVIDUAL_BUILDS" # One of: ["REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"]
    #         },
    #         concurrent_build_limit: 1,
    #         project_visibility: "PUBLIC_READ" # One of: ["PUBLIC_READ", "PRIVATE"],
    #         public_project_alias: "NonEmptyString",
    #         resource_access_role: "NonEmptyString",
    #         auto_retry_limit: 1
    #       }
    #     ],
    #     projects_not_found: ["NonEmptyString"]
    #   }
    # @return [Types::BatchGetProjectsOutput]
    def batch_get_projects(params = {}, options = {})
      request = build_request(:batch_get_projects, params)
      request.send_request(options)
    end

    # <p>
    #       Returns an array of report groups.
    #     </p>
    # @param [Hash, Types::BatchGetReportGroupsInput] params
    # @option params [Array<String>] :report_group_arns
    #   <p>
    #         An array of report group ARNs that identify the report groups to return.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_group_arns: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_report_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_groups: [
    #       {
    #         arn: "NonEmptyString",
    #         name: "ReportGroupName",
    #         type: "TEST" # One of: ["TEST", "CODE_COVERAGE"],
    #         export_config: {
    #           export_config_type: "S3" # One of: ["S3", "NO_EXPORT"],
    #           s3_destination: {
    #             bucket: "NonEmptyString",
    #             bucket_owner: "String",
    #             path: "String",
    #             packaging: "ZIP" # One of: ["ZIP", "NONE"],
    #             encryption_key: "NonEmptyString",
    #             encryption_disabled: false
    #           }
    #         },
    #         created: Time.now,
    #         last_modified: Time.now,
    #         tags: [
    #           {
    #             key: "KeyInput",
    #             value: "ValueInput"
    #           }
    #         ],
    #         status: "ACTIVE" # One of: ["ACTIVE", "DELETING"]
    #       }
    #     ],
    #     report_groups_not_found: ["NonEmptyString"]
    #   }
    # @return [Types::BatchGetReportGroupsOutput]
    def batch_get_report_groups(params = {}, options = {})
      request = build_request(:batch_get_report_groups, params)
      request.send_request(options)
    end

    # <p>
    #       Returns an array of reports.
    #     </p>
    # @param [Hash, Types::BatchGetReportsInput] params
    # @option params [Array<String>] :report_arns
    #   <p>
    #         An array of ARNs that identify the <code>Report</code> objects to return.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_arns: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_reports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reports: [
    #       {
    #         arn: "NonEmptyString",
    #         type: "TEST" # One of: ["TEST", "CODE_COVERAGE"],
    #         name: "String",
    #         report_group_arn: "NonEmptyString",
    #         execution_id: "String",
    #         status: "GENERATING" # One of: ["GENERATING", "SUCCEEDED", "FAILED", "INCOMPLETE", "DELETING"],
    #         created: Time.now,
    #         expired: Time.now,
    #         export_config: {
    #           export_config_type: "S3" # One of: ["S3", "NO_EXPORT"],
    #           s3_destination: {
    #             bucket: "NonEmptyString",
    #             bucket_owner: "String",
    #             path: "String",
    #             packaging: "ZIP" # One of: ["ZIP", "NONE"],
    #             encryption_key: "NonEmptyString",
    #             encryption_disabled: false
    #           }
    #         },
    #         truncated: false,
    #         test_summary: {
    #           total: 1, # required
    #           status_counts: { # required
    #             "String" => 1
    #           },
    #           duration_in_nano_seconds: 1, # required
    #         },
    #         code_coverage_summary: {
    #           line_coverage_percentage: 1.0,
    #           lines_covered: 1,
    #           lines_missed: 1,
    #           branch_coverage_percentage: 1.0,
    #           branches_covered: 1,
    #           branches_missed: 1
    #         }
    #       }
    #     ],
    #     reports_not_found: ["NonEmptyString"]
    #   }
    # @return [Types::BatchGetReportsOutput]
    def batch_get_reports(params = {}, options = {})
      request = build_request(:batch_get_reports, params)
      request.send_request(options)
    end

    # <p>Gets information about the sandbox status.</p>
    # @param [Hash, Types::BatchGetSandboxesInput] params
    # @option params [Array<String>] :ids
    #   <p>A comma separated list of <code>sandboxIds</code> or <code>sandboxArns</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ids: ["NonEmptyString"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_sandboxes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sandboxes: [
    #       {
    #         id: "NonEmptyString",
    #         arn: "NonEmptyString",
    #         project_name: "NonEmptyString",
    #         request_time: Time.now,
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         status: "String",
    #         source: {
    #           type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #           location: "String",
    #           git_clone_depth: 1,
    #           git_submodules_config: {
    #             fetch_submodules: false, # required
    #           },
    #           buildspec: "String",
    #           auth: {
    #             type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #             resource: "String"
    #           },
    #           report_build_status: false,
    #           build_status_config: {
    #             context: "String",
    #             target_url: "String"
    #           },
    #           insecure_ssl: false,
    #           source_identifier: "String"
    #         },
    #         source_version: "NonEmptyString",
    #         secondary_sources: [
    #           {
    #             type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #             location: "String",
    #             git_clone_depth: 1,
    #             git_submodules_config: {
    #               fetch_submodules: false, # required
    #             },
    #             buildspec: "String",
    #             auth: {
    #               type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #               resource: "String"
    #             },
    #             report_build_status: false,
    #             build_status_config: {
    #               context: "String",
    #               target_url: "String"
    #             },
    #             insecure_ssl: false,
    #             source_identifier: "String"
    #           }
    #         ],
    #         secondary_source_versions: [
    #           {
    #             source_identifier: "String", # required
    #             source_version: "String", # required
    #           }
    #         ],
    #         environment: {
    #           type: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"], # required
    #           image: "NonEmptyString", # required
    #           compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #           compute_configuration: {
    #             v_cpu: 1,
    #             memory: 1,
    #             disk: 1,
    #             machine_type: "GENERAL" # One of: ["GENERAL", "NVME"],
    #             instance_type: "NonEmptyString"
    #           },
    #           fleet: {
    #             fleet_arn: "String"
    #           },
    #           environment_variables: [
    #             {
    #               name: "NonEmptyString", # required
    #               value: "String", # required
    #               type: "PLAINTEXT" # One of: ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #             }
    #           ],
    #           privileged_mode: false,
    #           certificate: "String",
    #           registry_credential: {
    #             credential: "NonEmptyString", # required
    #             credential_provider: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER"], # required
    #           },
    #           image_pull_credentials_type: "CODEBUILD" # One of: ["CODEBUILD", "SERVICE_ROLE"],
    #           docker_server: {
    #             compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #             security_group_ids: ["NonEmptyString"],
    #             status: {
    #               status: "String",
    #               message: "String"
    #             }
    #           }
    #         },
    #         file_system_locations: [
    #           {
    #             type: "EFS" # One of: ["EFS"],
    #             location: "String",
    #             mount_point: "String",
    #             identifier: "String",
    #             mount_options: "String"
    #           }
    #         ],
    #         timeout_in_minutes: 1,
    #         queued_timeout_in_minutes: 1,
    #         vpc_config: {
    #           vpc_id: "NonEmptyString",
    #           subnets: ["NonEmptyString"],
    #           security_group_ids: ["NonEmptyString"]
    #         },
    #         log_config: {
    #           cloud_watch_logs: {
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             group_name: "String",
    #             stream_name: "String"
    #           },
    #           s3_logs: {
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             location: "String",
    #             encryption_disabled: false,
    #             bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #           }
    #         },
    #         encryption_key: "NonEmptyString",
    #         service_role: "NonEmptyString",
    #         current_session: {
    #           id: "NonEmptyString",
    #           status: "String",
    #           start_time: Time.now,
    #           end_time: Time.now,
    #           current_phase: "String",
    #           phases: [
    #             {
    #               phase_type: "String",
    #               phase_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #               start_time: Time.now,
    #               end_time: Time.now,
    #               duration_in_seconds: 1,
    #               contexts: [
    #                 {
    #                   status_code: "String",
    #                   message: "String"
    #                 }
    #               ]
    #             }
    #           ],
    #           resolved_source_version: "NonEmptyString",
    #           logs: {
    #             group_name: "String",
    #             stream_name: "String",
    #             deep_link: "String",
    #             s3_deep_link: "String",
    #             cloud_watch_logs_arn: "String",
    #             s3_logs_arn: "String",
    #             cloud_watch_logs: {
    #               status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #               group_name: "String",
    #               stream_name: "String"
    #             },
    #             s3_logs: {
    #               status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #               location: "String",
    #               encryption_disabled: false,
    #               bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #             }
    #           },
    #           network_interface: {
    #             subnet_id: "NonEmptyString",
    #             network_interface_id: "NonEmptyString"
    #           }
    #         }
    #       }
    #     ],
    #     sandboxes_not_found: ["NonEmptyString"]
    #   }
    # @return [Types::BatchGetSandboxesOutput]
    def batch_get_sandboxes(params = {}, options = {})
      request = build_request(:batch_get_sandboxes, params)
      request.send_request(options)
    end

    # <p>Creates a compute fleet.</p>
    # @param [Hash, Types::CreateFleetInput] params
    # @option params [String] :name
    #   <p>The name of the compute fleet.</p>
    # @option params [Integer] :base_capacity
    #   <p>The initial number of machines allocated to the ﬂeet, which deﬁnes the number of builds that can run in parallel.</p>
    # @option params [String] :environment_type
    #   <p>The environment type of the compute fleet.</p>
    #            <ul>
    #               <li>
    #                  <p>The environment type <code>ARM_CONTAINER</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland),
    #                       Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia Pacific (Singapore), Asia Pacific (Sydney), 
    #                       EU (Frankfurt), and South America (São Paulo).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>ARM_EC2</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>LINUX_CONTAINER</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>LINUX_EC2</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>LINUX_GPU_CONTAINER</code> is available only in
    #                       regions US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo), and Asia Pacific (Sydney).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>MAC_ARM</code> is available for Medium fleets only in
    #                       regions US East (N. Virginia), US East (Ohio), US West (Oregon), Asia Pacific (Sydney), 
    #                       and EU (Frankfurt)</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>MAC_ARM</code> is available for Large fleets only in
    #                       regions US East (N. Virginia), US East (Ohio), US West (Oregon), and Asia Pacific (Sydney).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>WINDOWS_EC2</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>WINDOWS_SERVER_2019_CONTAINER</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), Asia Pacific (Sydney), 
    #                       Asia Pacific (Tokyo), Asia Pacific (Mumbai) and
    #                       EU (Ireland).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>WINDOWS_SERVER_2022_CONTAINER</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), EU (Frankfurt), 
    #                       Asia Pacific (Sydney), Asia Pacific (Singapore), Asia Pacific (Tokyo), South America (São Paulo) and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html">Build environment compute types</a> in the <i>CodeBuild
    #                   user guide</i>.</p>
    # @option params [String] :compute_type
    #   <p>Information about the compute resources the compute fleet uses. Available values
    #               include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ATTRIBUTE_BASED_COMPUTE</code>: Specify the amount of vCPUs, memory, disk space, and the type of machine.</p>
    #                  <note>
    #                     <p> If you use <code>ATTRIBUTE_BASED_COMPUTE</code>, you must define your attributes by using <code>computeConfiguration</code>. CodeBuild 
    #                           will select the cheapest instance that satisfies your specified attributes. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.types">Reserved capacity environment 
    #                           types</a> in the <i>CodeBuild User Guide</i>.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_INSTANCE_TYPE</code>: Specify the instance type for your compute fleet. For a list of supported instance types, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.instance-types">Supported instance families
    #                           </a> in the <i>CodeBuild User Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_SMALL</code>: Use up to 4 GiB memory and 2 vCPUs for
    #                       builds.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_MEDIUM</code>: Use up to 8 GiB memory and 4 vCPUs for
    #                       builds.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_LARGE</code>: Use up to 16 GiB memory and 8 vCPUs for
    #                       builds, depending on your environment type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_XLARGE</code>: Use up to 72 GiB memory and 36 vCPUs for
    #                       builds, depending on your environment type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_2XLARGE</code>: Use up to 144 GiB memory, 72 vCPUs, and
    #                       824 GB of SSD storage for builds. This compute type supports Docker images up to
    #                       100 GB uncompressed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_1GB</code>: Use up to 1 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_2GB</code>: Use up to 2 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_4GB</code>: Use up to 4 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_8GB</code>: Use up to 8 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_10GB</code>: Use up to 10 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #            </ul>
    #            <p> If you use <code>BUILD_GENERAL1_SMALL</code>: </p>
    #            <ul>
    #               <li>
    #                  <p> For environment type <code>LINUX_CONTAINER</code>, you can use up to 4 GiB
    #                       memory and 2 vCPUs for builds. </p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>LINUX_GPU_CONTAINER</code>, you can use up to 16
    #                       GiB memory, 4 vCPUs, and 1 NVIDIA A10G Tensor Core GPU for builds.</p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>ARM_CONTAINER</code>, you can use up to 4 GiB
    #                       memory and 2 vCPUs on ARM-based processors for builds.</p>
    #               </li>
    #            </ul>
    #            <p> If you use <code>BUILD_GENERAL1_LARGE</code>: </p>
    #            <ul>
    #               <li>
    #                  <p> For environment type <code>LINUX_CONTAINER</code>, you can use up to 16 GiB
    #                       memory and 8 vCPUs for builds. </p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>LINUX_GPU_CONTAINER</code>, you can use up to 255
    #                       GiB memory, 32 vCPUs, and 4 NVIDIA Tesla V100 GPUs for builds.</p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>ARM_CONTAINER</code>, you can use up to 16 GiB
    #                       memory and 8 vCPUs on ARM-based processors for builds.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types">On-demand environment types</a> 
    #                   in the <i>CodeBuild User Guide.</i>
    #            </p>
    # @option params [Types::ComputeConfiguration] :compute_configuration
    #   <p>The compute configuration of the compute fleet. This is only required if <code>computeType</code> is set to <code>ATTRIBUTE_BASED_COMPUTE</code> or <code>CUSTOM_INSTANCE_TYPE</code>.</p>
    # @option params [Types::ScalingConfigurationInput] :scaling_configuration
    #   <p>The scaling configuration of the compute fleet.</p>
    # @option params [String] :overflow_behavior
    #   <p>The compute fleet overflow behavior.</p>
    #            <ul>
    #               <li>
    #                  <p>For overflow behavior <code>QUEUE</code>, your overflow builds need to wait on 
    #                       the existing fleet instance to become available.</p>
    #               </li>
    #               <li>
    #                  <p>For overflow behavior <code>ON_DEMAND</code>, your overflow builds run on CodeBuild on-demand.</p>
    #                  <note>
    #                     <p>If you choose to set your overflow behavior to on-demand while creating a VPC-connected 
    #                       fleet, make sure that you add the required VPC permissions to your project service role. For more 
    #                       information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-create-vpc-network-interface">Example 
    #                       policy statement to allow CodeBuild access to Amazon Web Services services required to create a VPC network interface</a>.</p>
    #                  </note>
    #               </li>
    #            </ul>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>Information about the VPC configuration that CodeBuild accesses.</p>
    # @option params [Types::ProxyConfiguration] :proxy_configuration
    #   <p>The proxy configuration of the compute fleet.</p>
    # @option params [String] :image_id
    #   <p>The Amazon Machine Image (AMI) of the compute fleet.</p>
    # @option params [String] :fleet_service_role
    #   <p>The service role associated with the compute fleet. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-permission-policy-fleet-service-role.html">
    #               Allow a user to add a permission policy for a fleet service role</a> in the <i>CodeBuild User Guide</i>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tag key and value pairs associated with this compute fleet.</p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild build project
    #         tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "FleetName", # required
    #     base_capacity: 1, # required
    #     environment_type: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"], # required
    #     compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #     compute_configuration: {
    #       v_cpu: 1,
    #       memory: 1,
    #       disk: 1,
    #       machine_type: "GENERAL" # One of: ["GENERAL", "NVME"],
    #       instance_type: "NonEmptyString"
    #     },
    #     scaling_configuration: {
    #       scaling_type: "TARGET_TRACKING_SCALING" # One of: ["TARGET_TRACKING_SCALING"],
    #       target_tracking_scaling_configs: [
    #         {
    #           metric_type: "FLEET_UTILIZATION_RATE" # One of: ["FLEET_UTILIZATION_RATE"],
    #           target_value: 1.0
    #         }
    #       ],
    #       max_capacity: 1
    #     },
    #     overflow_behavior: "QUEUE" # One of: ["QUEUE", "ON_DEMAND"],
    #     vpc_config: {
    #       vpc_id: "NonEmptyString",
    #       subnets: ["NonEmptyString"],
    #       security_group_ids: ["NonEmptyString"]
    #     },
    #     proxy_configuration: {
    #       default_behavior: "ALLOW_ALL" # One of: ["ALLOW_ALL", "DENY_ALL"],
    #       ordered_proxy_rules: [
    #         {
    #           type: "DOMAIN" # One of: ["DOMAIN", "IP"], # required
    #           effect: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #           entities: ["String"], # required
    #         }
    #       ]
    #     },
    #     image_id: "NonEmptyString",
    #     fleet_service_role: "NonEmptyString",
    #     tags: [
    #       {
    #         key: "KeyInput",
    #         value: "ValueInput"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet: {
    #       arn: "NonEmptyString",
    #       name: "FleetName",
    #       id: "NonEmptyString",
    #       created: Time.now,
    #       last_modified: Time.now,
    #       status: {
    #         status_code: "CREATING" # One of: ["CREATING", "UPDATING", "ROTATING", "PENDING_DELETION", "DELETING", "CREATE_FAILED", "UPDATE_ROLLBACK_FAILED", "ACTIVE"],
    #         context: "CREATE_FAILED" # One of: ["CREATE_FAILED", "UPDATE_FAILED", "ACTION_REQUIRED", "PENDING_DELETION", "INSUFFICIENT_CAPACITY"],
    #         message: "String"
    #       },
    #       base_capacity: 1,
    #       environment_type: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"],
    #       compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"],
    #       compute_configuration: {
    #         v_cpu: 1,
    #         memory: 1,
    #         disk: 1,
    #         machine_type: "GENERAL" # One of: ["GENERAL", "NVME"],
    #         instance_type: "NonEmptyString"
    #       },
    #       scaling_configuration: {
    #         scaling_type: "TARGET_TRACKING_SCALING" # One of: ["TARGET_TRACKING_SCALING"],
    #         target_tracking_scaling_configs: [
    #           {
    #             metric_type: "FLEET_UTILIZATION_RATE" # One of: ["FLEET_UTILIZATION_RATE"],
    #             target_value: 1.0
    #           }
    #         ],
    #         max_capacity: 1,
    #         desired_capacity: 1
    #       },
    #       overflow_behavior: "QUEUE" # One of: ["QUEUE", "ON_DEMAND"],
    #       vpc_config: {
    #         vpc_id: "NonEmptyString",
    #         subnets: ["NonEmptyString"],
    #         security_group_ids: ["NonEmptyString"]
    #       },
    #       proxy_configuration: {
    #         default_behavior: "ALLOW_ALL" # One of: ["ALLOW_ALL", "DENY_ALL"],
    #         ordered_proxy_rules: [
    #           {
    #             type: "DOMAIN" # One of: ["DOMAIN", "IP"], # required
    #             effect: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #             entities: ["String"], # required
    #           }
    #         ]
    #       },
    #       image_id: "NonEmptyString",
    #       fleet_service_role: "NonEmptyString",
    #       tags: [
    #         {
    #           key: "KeyInput",
    #           value: "ValueInput"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateFleetOutput]
    def create_fleet(params = {}, options = {})
      request = build_request(:create_fleet, params)
      request.send_request(options)
    end

    # <p>Creates a build project.</p>
    # @param [Hash, Types::CreateProjectInput] params
    # @option params [String] :name
    #   <p>The name of the build project.</p>
    # @option params [String] :description
    #   <p>A description that makes the build project easy to identify.</p>
    # @option params [Types::ProjectSource] :source
    #   <p>Information about the build input source code for the build project.</p>
    # @option params [Array<Types::ProjectSource>] :secondary_sources
    #   <p>An array of <code>ProjectSource</code> objects. </p>
    # @option params [String] :source_version
    #   <p>A version of the build input to be built for this project. If not specified, the latest
    #               version is used. If specified, it must be one of: </p>
    #            <ul>
    #               <li>
    #                  <p>For CodeCommit: the commit ID, branch, or Git tag to use.</p>
    #               </li>
    #               <li>
    #                  <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
    #             corresponds to the version of the source code you want to build. If a pull
    #             request ID is specified, it must use the format <code>pr/pull-request-ID</code>
    #             (for example <code>pr/25</code>). If a branch name is specified, the branch's
    #             HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
    #             used.</p>
    #               </li>
    #               <li>
    #                  <p>For GitLab: the commit ID, branch, or Git tag to use.</p>
    #               </li>
    #               <li>
    #                  <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
    #             version of the source code you want to build. If a branch name is specified, the
    #             branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    #             commit ID is used.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon S3: the version ID of the object that represents the build input ZIP
    #             file to use.</p>
    #               </li>
    #            </ul>
    #            <p>If <code>sourceVersion</code> is specified at the build level, then that version takes
    #               precedence over this <code>sourceVersion</code> (at the project level). </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html">Source Version Sample
    #                   with CodeBuild</a> in the <i>CodeBuild User Guide</i>. 
    #       </p>
    # @option params [Array<Types::ProjectSourceVersion>] :secondary_source_versions
    #   <p>An array of <code>ProjectSourceVersion</code> objects. If
    #         <code>secondarySourceVersions</code> is specified at the build level, then they take
    #         precedence over these <code>secondarySourceVersions</code> (at the project level).
    #       </p>
    # @option params [Types::ProjectArtifacts] :artifacts
    #   <p>Information about the build output artifacts for the build project.</p>
    # @option params [Array<Types::ProjectArtifacts>] :secondary_artifacts
    #   <p>An array of <code>ProjectArtifacts</code> objects. </p>
    # @option params [Types::ProjectCache] :cache
    #   <p>Stores recently used information so that it can be quickly accessed at a later
    #           time.</p>
    # @option params [Types::ProjectEnvironment] :environment
    #   <p>Information about the build environment for the build project.</p>
    # @option params [String] :service_role
    #   <p>The ARN of the IAM role that enables CodeBuild to interact with dependent Amazon Web Services services
    #         on behalf of the Amazon Web Services account.</p>
    # @option params [Integer] :timeout_in_minutes
    #   <p>How long, in minutes, from 5 to 2160 (36 hours), for CodeBuild to wait before it times out
    #         any build that has not been marked as completed. The default is 60 minutes.</p>
    # @option params [Integer] :queued_timeout_in_minutes
    #   <p>The number of minutes a build is allowed to be queued before it times out. </p>
    # @option params [String] :encryption_key
    #   <p>The Key Management Service customer master key (CMK) to be used for encrypting the build output
    #         artifacts.</p>
    #            <note>
    #               <p>You can use a cross-account KMS key to encrypt the build output artifacts if your
    #           service role has permission to that key. </p>
    #            </note>
    #            <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    #           the format <code>alias/<alias-name></code>).
    #       </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tag key and value pairs associated with this build project.</p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild build project
    #         tags.</p>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>VpcConfig enables CodeBuild to access resources in an Amazon VPC.</p>
    #            <note>
    #               <p>If you're using compute fleets during project creation, do not provide vpcConfig.</p>
    #            </note>
    # @option params [Boolean] :badge_enabled
    #   <p>Set this to true to generate a publicly accessible URL for your project's build
    #           badge.</p>
    # @option params [Types::LogsConfig] :logs_config
    #   <p>Information about logs for the build project. These can be logs in CloudWatch Logs, logs
    #         uploaded to a specified S3 bucket, or both. </p>
    # @option params [Array<Types::ProjectFileSystemLocation>] :file_system_locations
    #   <p>
    #         An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object 
    #         specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>, 
    #         <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System.
    #     </p>
    # @option params [Types::ProjectBuildBatchConfig] :build_batch_config
    #   <p>A <a>ProjectBuildBatchConfig</a>
    #    object that defines the batch build options
    #               for the project.</p>
    # @option params [Integer] :concurrent_build_limit
    #   <p>The maximum number of concurrent builds that are allowed for this project.</p>
    #            <p>New builds are only started if the current number of builds is less than or equal to this limit. 
    #     If the current build count meets this limit, new builds are throttled and are not run.</p>
    # @option params [Integer] :auto_retry_limit
    #   <p>The maximum number of additional automatic retries after a failed build. For example, if the 
    #         auto-retry limit is set to 2, CodeBuild will call the <code>RetryBuild</code> API to automatically 
    #         retry your build for up to 2 additional times.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ProjectName", # required
    #     description: "ProjectDescription",
    #     source: { # required
    #       type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #       location: "String",
    #       git_clone_depth: 1,
    #       git_submodules_config: {
    #         fetch_submodules: false, # required
    #       },
    #       buildspec: "String",
    #       auth: {
    #         type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #         resource: "String"
    #       },
    #       report_build_status: false,
    #       build_status_config: {
    #         context: "String",
    #         target_url: "String"
    #       },
    #       insecure_ssl: false,
    #       source_identifier: "String"
    #     },
    #     secondary_sources: [
    #       {
    #         type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #           resource: "String"
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String"
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String"
    #       }
    #     ],
    #     source_version: "String",
    #     secondary_source_versions: [
    #       {
    #         source_identifier: "String", # required
    #         source_version: "String", # required
    #       }
    #     ],
    #     artifacts: { # required
    #       type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"], # required
    #       location: "String",
    #       path: "String",
    #       namespace_type: "NONE" # One of: ["NONE", "BUILD_ID"],
    #       name: "String",
    #       packaging: "NONE" # One of: ["NONE", "ZIP"],
    #       override_artifact_name: false,
    #       encryption_disabled: false,
    #       artifact_identifier: "String",
    #       bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #     },
    #     secondary_artifacts: [
    #       {
    #         type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"], # required
    #         location: "String",
    #         path: "String",
    #         namespace_type: "NONE" # One of: ["NONE", "BUILD_ID"],
    #         name: "String",
    #         packaging: "NONE" # One of: ["NONE", "ZIP"],
    #         override_artifact_name: false,
    #         encryption_disabled: false,
    #         artifact_identifier: "String",
    #         bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #       }
    #     ],
    #     cache: {
    #       type: "NO_CACHE" # One of: ["NO_CACHE", "S3", "LOCAL"], # required
    #       location: "String",
    #       modes: ["LOCAL_DOCKER_LAYER_CACHE" # One of: ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]],
    #       cache_namespace: "String"
    #     },
    #     environment: { # required
    #       type: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"], # required
    #       image: "NonEmptyString", # required
    #       compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #       compute_configuration: {
    #         v_cpu: 1,
    #         memory: 1,
    #         disk: 1,
    #         machine_type: "GENERAL" # One of: ["GENERAL", "NVME"],
    #         instance_type: "NonEmptyString"
    #       },
    #       fleet: {
    #         fleet_arn: "String"
    #       },
    #       environment_variables: [
    #         {
    #           name: "NonEmptyString", # required
    #           value: "String", # required
    #           type: "PLAINTEXT" # One of: ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #         }
    #       ],
    #       privileged_mode: false,
    #       certificate: "String",
    #       registry_credential: {
    #         credential: "NonEmptyString", # required
    #         credential_provider: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER"], # required
    #       },
    #       image_pull_credentials_type: "CODEBUILD" # One of: ["CODEBUILD", "SERVICE_ROLE"],
    #       docker_server: {
    #         compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #         security_group_ids: ["NonEmptyString"],
    #         status: {
    #           status: "String",
    #           message: "String"
    #         }
    #       }
    #     },
    #     service_role: "NonEmptyString", # required
    #     timeout_in_minutes: 1,
    #     queued_timeout_in_minutes: 1,
    #     encryption_key: "NonEmptyString",
    #     tags: [
    #       {
    #         key: "KeyInput",
    #         value: "ValueInput"
    #       }
    #     ],
    #     vpc_config: {
    #       vpc_id: "NonEmptyString",
    #       subnets: ["NonEmptyString"],
    #       security_group_ids: ["NonEmptyString"]
    #     },
    #     badge_enabled: false,
    #     logs_config: {
    #       cloud_watch_logs: {
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         group_name: "String",
    #         stream_name: "String"
    #       },
    #       s3_logs: {
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         location: "String",
    #         encryption_disabled: false,
    #         bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #       }
    #     },
    #     file_system_locations: [
    #       {
    #         type: "EFS" # One of: ["EFS"],
    #         location: "String",
    #         mount_point: "String",
    #         identifier: "String",
    #         mount_options: "String"
    #       }
    #     ],
    #     build_batch_config: {
    #       service_role: "NonEmptyString",
    #       combine_artifacts: false,
    #       restrictions: {
    #         maximum_builds_allowed: 1,
    #         compute_types_allowed: ["NonEmptyString"],
    #         fleets_allowed: ["NonEmptyString"]
    #       },
    #       timeout_in_mins: 1,
    #       batch_report_mode: "REPORT_INDIVIDUAL_BUILDS" # One of: ["REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"]
    #     },
    #     concurrent_build_limit: 1,
    #     auto_retry_limit: 1
    #   }
    #   options = {}
    #   response = client.create_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project: {
    #       name: "ProjectName",
    #       arn: "String",
    #       description: "ProjectDescription",
    #       source: {
    #         type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #           resource: "String"
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String"
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String"
    #       },
    #       secondary_sources: [
    #         {
    #           type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #           location: "String",
    #           git_clone_depth: 1,
    #           git_submodules_config: {
    #             fetch_submodules: false, # required
    #           },
    #           buildspec: "String",
    #           auth: {
    #             type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #             resource: "String"
    #           },
    #           report_build_status: false,
    #           build_status_config: {
    #             context: "String",
    #             target_url: "String"
    #           },
    #           insecure_ssl: false,
    #           source_identifier: "String"
    #         }
    #       ],
    #       source_version: "String",
    #       secondary_source_versions: [
    #         {
    #           source_identifier: "String", # required
    #           source_version: "String", # required
    #         }
    #       ],
    #       artifacts: {
    #         type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"], # required
    #         location: "String",
    #         path: "String",
    #         namespace_type: "NONE" # One of: ["NONE", "BUILD_ID"],
    #         name: "String",
    #         packaging: "NONE" # One of: ["NONE", "ZIP"],
    #         override_artifact_name: false,
    #         encryption_disabled: false,
    #         artifact_identifier: "String",
    #         bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #       },
    #       secondary_artifacts: [
    #         {
    #           type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"], # required
    #           location: "String",
    #           path: "String",
    #           namespace_type: "NONE" # One of: ["NONE", "BUILD_ID"],
    #           name: "String",
    #           packaging: "NONE" # One of: ["NONE", "ZIP"],
    #           override_artifact_name: false,
    #           encryption_disabled: false,
    #           artifact_identifier: "String",
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         }
    #       ],
    #       cache: {
    #         type: "NO_CACHE" # One of: ["NO_CACHE", "S3", "LOCAL"], # required
    #         location: "String",
    #         modes: ["LOCAL_DOCKER_LAYER_CACHE" # One of: ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]],
    #         cache_namespace: "String"
    #       },
    #       environment: {
    #         type: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"], # required
    #         image: "NonEmptyString", # required
    #         compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #         compute_configuration: {
    #           v_cpu: 1,
    #           memory: 1,
    #           disk: 1,
    #           machine_type: "GENERAL" # One of: ["GENERAL", "NVME"],
    #           instance_type: "NonEmptyString"
    #         },
    #         fleet: {
    #           fleet_arn: "String"
    #         },
    #         environment_variables: [
    #           {
    #             name: "NonEmptyString", # required
    #             value: "String", # required
    #             type: "PLAINTEXT" # One of: ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #           }
    #         ],
    #         privileged_mode: false,
    #         certificate: "String",
    #         registry_credential: {
    #           credential: "NonEmptyString", # required
    #           credential_provider: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER"], # required
    #         },
    #         image_pull_credentials_type: "CODEBUILD" # One of: ["CODEBUILD", "SERVICE_ROLE"],
    #         docker_server: {
    #           compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #           security_group_ids: ["NonEmptyString"],
    #           status: {
    #             status: "String",
    #             message: "String"
    #           }
    #         }
    #       },
    #       service_role: "NonEmptyString",
    #       timeout_in_minutes: 1,
    #       queued_timeout_in_minutes: 1,
    #       encryption_key: "NonEmptyString",
    #       tags: [
    #         {
    #           key: "KeyInput",
    #           value: "ValueInput"
    #         }
    #       ],
    #       created: Time.now,
    #       last_modified: Time.now,
    #       webhook: {
    #         url: "NonEmptyString",
    #         payload_url: "NonEmptyString",
    #         secret: "NonEmptyString",
    #         branch_filter: "String",
    #         filter_groups: [
    #           [
    #             {
    #               type: "EVENT" # One of: ["EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE", "WORKFLOW_NAME", "TAG_NAME", "RELEASE_NAME", "REPOSITORY_NAME", "ORGANIZATION_NAME"], # required
    #               pattern: "String", # required
    #               exclude_matched_pattern: false
    #             }
    #           ]
    #         ],
    #         build_type: "BUILD" # One of: ["BUILD", "BUILD_BATCH", "RUNNER_BUILDKITE_BUILD"],
    #         manual_creation: false,
    #         last_modified_secret: Time.now,
    #         scope_configuration: {
    #           name: "String", # required
    #           domain: "String",
    #           scope: "GITHUB_ORGANIZATION" # One of: ["GITHUB_ORGANIZATION", "GITHUB_GLOBAL", "GITLAB_GROUP"], # required
    #         },
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "DELETING"],
    #         status_message: "String",
    #         pull_request_build_policy: {
    #           requires_comment_approval: "DISABLED" # One of: ["DISABLED", "ALL_PULL_REQUESTS", "FORK_PULL_REQUESTS"], # required
    #           approver_roles: ["GITHUB_READ" # One of: ["GITHUB_READ", "GITHUB_TRIAGE", "GITHUB_WRITE", "GITHUB_MAINTAIN", "GITHUB_ADMIN", "GITLAB_GUEST", "GITLAB_PLANNER", "GITLAB_REPORTER", "GITLAB_DEVELOPER", "GITLAB_MAINTAINER", "GITLAB_OWNER", "BITBUCKET_READ", "BITBUCKET_WRITE", "BITBUCKET_ADMIN"]]
    #         }
    #       },
    #       vpc_config: {
    #         vpc_id: "NonEmptyString",
    #         subnets: ["NonEmptyString"],
    #         security_group_ids: ["NonEmptyString"]
    #       },
    #       badge: {
    #         badge_enabled: false,
    #         badge_request_url: "String"
    #       },
    #       logs_config: {
    #         cloud_watch_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           group_name: "String",
    #           stream_name: "String"
    #         },
    #         s3_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           location: "String",
    #           encryption_disabled: false,
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         }
    #       },
    #       file_system_locations: [
    #         {
    #           type: "EFS" # One of: ["EFS"],
    #           location: "String",
    #           mount_point: "String",
    #           identifier: "String",
    #           mount_options: "String"
    #         }
    #       ],
    #       build_batch_config: {
    #         service_role: "NonEmptyString",
    #         combine_artifacts: false,
    #         restrictions: {
    #           maximum_builds_allowed: 1,
    #           compute_types_allowed: ["NonEmptyString"],
    #           fleets_allowed: ["NonEmptyString"]
    #         },
    #         timeout_in_mins: 1,
    #         batch_report_mode: "REPORT_INDIVIDUAL_BUILDS" # One of: ["REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"]
    #       },
    #       concurrent_build_limit: 1,
    #       project_visibility: "PUBLIC_READ" # One of: ["PUBLIC_READ", "PRIVATE"],
    #       public_project_alias: "NonEmptyString",
    #       resource_access_role: "NonEmptyString",
    #       auto_retry_limit: 1
    #     }
    #   }
    # @return [Types::CreateProjectOutput]
    def create_project(params = {}, options = {})
      request = build_request(:create_project, params)
      request.send_request(options)
    end

    # <p>
    #       Creates a report group. A report group contains a collection of reports.
    #     </p>
    # @param [Hash, Types::CreateReportGroupInput] params
    # @option params [String] :name
    #   <p>
    #         The name of the report group.
    #       </p>
    # @option params [String] :type
    #   <p>
    #         The type of report group.
    #       </p>
    # @option params [Types::ReportExportConfig] :export_config
    #   <p>
    #         A <code>ReportExportConfig</code> object that contains information about where the report group test results are exported.
    #       </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>
    #         A list of tag key and value pairs associated with this report group.
    #       </p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild report group
    #         tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ReportGroupName", # required
    #     type: "TEST" # One of: ["TEST", "CODE_COVERAGE"], # required
    #     export_config: { # required
    #       export_config_type: "S3" # One of: ["S3", "NO_EXPORT"],
    #       s3_destination: {
    #         bucket: "NonEmptyString",
    #         bucket_owner: "String",
    #         path: "String",
    #         packaging: "ZIP" # One of: ["ZIP", "NONE"],
    #         encryption_key: "NonEmptyString",
    #         encryption_disabled: false
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "KeyInput",
    #         value: "ValueInput"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_report_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_group: {
    #       arn: "NonEmptyString",
    #       name: "ReportGroupName",
    #       type: "TEST" # One of: ["TEST", "CODE_COVERAGE"],
    #       export_config: {
    #         export_config_type: "S3" # One of: ["S3", "NO_EXPORT"],
    #         s3_destination: {
    #           bucket: "NonEmptyString",
    #           bucket_owner: "String",
    #           path: "String",
    #           packaging: "ZIP" # One of: ["ZIP", "NONE"],
    #           encryption_key: "NonEmptyString",
    #           encryption_disabled: false
    #         }
    #       },
    #       created: Time.now,
    #       last_modified: Time.now,
    #       tags: [
    #         {
    #           key: "KeyInput",
    #           value: "ValueInput"
    #         }
    #       ],
    #       status: "ACTIVE" # One of: ["ACTIVE", "DELETING"]
    #     }
    #   }
    # @return [Types::CreateReportGroupOutput]
    def create_report_group(params = {}, options = {})
      request = build_request(:create_report_group, params)
      request.send_request(options)
    end

    # <p>For an existing CodeBuild build project that has its source code stored in a GitHub or
    #       Bitbucket repository, enables CodeBuild to start rebuilding the source code every time a
    #       code change is pushed to the repository.</p>
    #          <important>
    #             <p>If you enable webhooks for an CodeBuild project, and the project is used as a build
    #         step in CodePipeline, then two identical builds are created for each commit. One build is
    #         triggered through webhooks, and one through CodePipeline. Because billing is on a per-build
    #         basis, you are billed for both builds. Therefore, if you are using CodePipeline, we
    #         recommend that you disable webhooks in CodeBuild. In the CodeBuild console, clear the
    #         Webhook box. For more information, see step 5 in <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/change-project.html#change-project-console">Change a Build Project's Settings</a>.</p>
    #          </important>
    # @param [Hash, Types::CreateWebhookInput] params
    # @option params [String] :project_name
    #   <p>The name of the CodeBuild project.</p>
    # @option params [String] :branch_filter
    #   <p>A regular expression used to determine which repository branches are built when a
    #         webhook is triggered. If the name of a branch matches the regular expression, then it is
    #         built. If <code>branchFilter</code> is empty, then all branches are built.</p>
    #            <note>
    #               <p>It is recommended that you use <code>filterGroups</code> instead of
    #           <code>branchFilter</code>. </p>
    #            </note>
    # @option params [Array<Array<Types::WebhookFilter>>] :filter_groups
    #   <p>An array of arrays of <code>WebhookFilter</code> objects used to determine which
    #         webhooks are triggered. At least one <code>WebhookFilter</code> in the array must
    #         specify <code>EVENT</code> as its <code>type</code>. </p>
    #            <p>For a build to be triggered, at least one filter group in the
    #         <code>filterGroups</code> array must pass. For a filter group to pass, each of its
    #         filters must pass. </p>
    # @option params [String] :build_type
    #   <p>Specifies the type of build this webhook will trigger.</p>
    #            <note>
    #               <p>
    #                  <code>RUNNER_BUILDKITE_BUILD</code> is only available for <code>NO_SOURCE</code> source type projects 
    #           configured for Buildkite runner builds. For more information about CodeBuild-hosted Buildkite runner builds, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-runner-buildkite.html">Tutorial: Configure a CodeBuild-hosted Buildkite runner</a> in the <i>CodeBuild
    #           user guide</i>.</p>
    #            </note>
    # @option params [Boolean] :manual_creation
    #   <p>If manualCreation is true, CodeBuild doesn't create a webhook in GitHub and instead returns <code>payloadUrl</code> and 
    #         <code>secret</code> values for the webhook. The <code>payloadUrl</code> and <code>secret</code> values in the output can be 
    #         used to manually create a webhook within GitHub.</p>
    #            <note>
    #               <p>
    #                  <code>manualCreation</code> is only available for GitHub webhooks.</p>
    #            </note>
    # @option params [Types::ScopeConfiguration] :scope_configuration
    #   <p>The scope configuration for global or organization webhooks.</p>
    #            <note>
    #               <p>Global or organization webhooks are only available for GitHub and Github Enterprise webhooks.</p>
    #            </note>
    # @option params [Types::PullRequestBuildPolicy] :pull_request_build_policy
    #   <p>A PullRequestBuildPolicy object that defines comment-based approval requirements for triggering builds on pull requests. This policy helps control when automated builds are executed based on contributor permissions and approval workflows.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #     branch_filter: "String",
    #     filter_groups: [
    #       [
    #         {
    #           type: "EVENT" # One of: ["EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE", "WORKFLOW_NAME", "TAG_NAME", "RELEASE_NAME", "REPOSITORY_NAME", "ORGANIZATION_NAME"], # required
    #           pattern: "String", # required
    #           exclude_matched_pattern: false
    #         }
    #       ]
    #     ],
    #     build_type: "BUILD" # One of: ["BUILD", "BUILD_BATCH", "RUNNER_BUILDKITE_BUILD"],
    #     manual_creation: false,
    #     scope_configuration: {
    #       name: "String", # required
    #       domain: "String",
    #       scope: "GITHUB_ORGANIZATION" # One of: ["GITHUB_ORGANIZATION", "GITHUB_GLOBAL", "GITLAB_GROUP"], # required
    #     },
    #     pull_request_build_policy: {
    #       requires_comment_approval: "DISABLED" # One of: ["DISABLED", "ALL_PULL_REQUESTS", "FORK_PULL_REQUESTS"], # required
    #       approver_roles: ["GITHUB_READ" # One of: ["GITHUB_READ", "GITHUB_TRIAGE", "GITHUB_WRITE", "GITHUB_MAINTAIN", "GITHUB_ADMIN", "GITLAB_GUEST", "GITLAB_PLANNER", "GITLAB_REPORTER", "GITLAB_DEVELOPER", "GITLAB_MAINTAINER", "GITLAB_OWNER", "BITBUCKET_READ", "BITBUCKET_WRITE", "BITBUCKET_ADMIN"]]
    #     }
    #   }
    #   options = {}
    #   response = client.create_webhook(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     webhook: {
    #       url: "NonEmptyString",
    #       payload_url: "NonEmptyString",
    #       secret: "NonEmptyString",
    #       branch_filter: "String",
    #       filter_groups: [
    #         [
    #           {
    #             type: "EVENT" # One of: ["EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE", "WORKFLOW_NAME", "TAG_NAME", "RELEASE_NAME", "REPOSITORY_NAME", "ORGANIZATION_NAME"], # required
    #             pattern: "String", # required
    #             exclude_matched_pattern: false
    #           }
    #         ]
    #       ],
    #       build_type: "BUILD" # One of: ["BUILD", "BUILD_BATCH", "RUNNER_BUILDKITE_BUILD"],
    #       manual_creation: false,
    #       last_modified_secret: Time.now,
    #       scope_configuration: {
    #         name: "String", # required
    #         domain: "String",
    #         scope: "GITHUB_ORGANIZATION" # One of: ["GITHUB_ORGANIZATION", "GITHUB_GLOBAL", "GITLAB_GROUP"], # required
    #       },
    #       status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "DELETING"],
    #       status_message: "String",
    #       pull_request_build_policy: {
    #         requires_comment_approval: "DISABLED" # One of: ["DISABLED", "ALL_PULL_REQUESTS", "FORK_PULL_REQUESTS"], # required
    #         approver_roles: ["GITHUB_READ" # One of: ["GITHUB_READ", "GITHUB_TRIAGE", "GITHUB_WRITE", "GITHUB_MAINTAIN", "GITHUB_ADMIN", "GITLAB_GUEST", "GITLAB_PLANNER", "GITLAB_REPORTER", "GITLAB_DEVELOPER", "GITLAB_MAINTAINER", "GITLAB_OWNER", "BITBUCKET_READ", "BITBUCKET_WRITE", "BITBUCKET_ADMIN"]]
    #       }
    #     }
    #   }
    # @return [Types::CreateWebhookOutput]
    def create_webhook(params = {}, options = {})
      request = build_request(:create_webhook, params)
      request.send_request(options)
    end

    # <p>Deletes a batch build.</p>
    # @param [Hash, Types::DeleteBuildBatchInput] params
    # @option params [String] :id
    #   <p>The identifier of the batch build to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_build_batch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: "String",
    #     builds_deleted: ["NonEmptyString"],
    #     builds_not_deleted: [
    #       {
    #         id: "NonEmptyString",
    #         status_code: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteBuildBatchOutput]
    def delete_build_batch(params = {}, options = {})
      request = build_request(:delete_build_batch, params)
      request.send_request(options)
    end

    # <p>Deletes a compute fleet. When you delete a compute fleet, its builds are not deleted.</p>
    # @param [Hash, Types::DeleteFleetInput] params
    # @option params [String] :arn
    #   <p>The ARN of the compute fleet.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteFleetOutput]
    def delete_fleet(params = {}, options = {})
      request = build_request(:delete_fleet, params)
      request.send_request(options)
    end

    # <p> Deletes a build project. When you delete a project, its builds are not deleted.
    #         </p>
    # @param [Hash, Types::DeleteProjectInput] params
    # @option params [String] :name
    #   <p>The name of the build project.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteProjectOutput]
    def delete_project(params = {}, options = {})
      request = build_request(:delete_project, params)
      request.send_request(options)
    end

    # <p>
    #       Deletes a report.
    #     </p>
    # @param [Hash, Types::DeleteReportInput] params
    # @option params [String] :arn
    #   <p>
    #         The ARN of the report to delete.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteReportOutput]
    def delete_report(params = {}, options = {})
      request = build_request(:delete_report, params)
      request.send_request(options)
    end

    # <p>Deletes a report group. Before you delete a report group, you must delete its reports. </p>
    # @param [Hash, Types::DeleteReportGroupInput] params
    # @option params [String] :arn
    #   <p>The ARN of the report group to delete. </p>
    # @option params [Boolean] :delete_reports
    #   <p>If <code>true</code>, deletes any reports that belong to a report group before deleting
    #               the report group. </p>
    #            <p>If <code>false</code>, you must delete any reports in the report group. Use <a href="https://docs.aws.amazon.com/codebuild/latest/APIReference/API_ListReportsForReportGroup.html">ListReportsForReportGroup</a> to get the reports in a report group. Use <a href="https://docs.aws.amazon.com/codebuild/latest/APIReference/API_DeleteReport.html">DeleteReport</a> to delete the reports. If you call
    #         <code>DeleteReportGroup</code> for a report group that contains one or more reports,
    #               an exception is thrown. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "NonEmptyString", # required
    #     delete_reports: false
    #   }
    #   options = {}
    #   response = client.delete_report_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteReportGroupOutput]
    def delete_report_group(params = {}, options = {})
      request = build_request(:delete_report_group, params)
      request.send_request(options)
    end

    # <p> Deletes a resource policy that is identified by its resource ARN. </p>
    # @param [Hash, Types::DeleteResourcePolicyInput] params
    # @option params [String] :resource_arn
    #   <p> The ARN of the resource that is associated with the resource policy. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteResourcePolicyOutput]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p> Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials. </p>
    # @param [Hash, Types::DeleteSourceCredentialsInput] params
    # @option params [String] :arn
    #   <p> The Amazon Resource Name (ARN) of the token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_source_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "NonEmptyString"
    #   }
    # @return [Types::DeleteSourceCredentialsOutput]
    def delete_source_credentials(params = {}, options = {})
      request = build_request(:delete_source_credentials, params)
      request.send_request(options)
    end

    # <p>For an existing CodeBuild build project that has its source code stored in a GitHub or
    #             Bitbucket repository, stops CodeBuild from rebuilding the source code every time a code
    #             change is pushed to the repository.</p>
    # @param [Hash, Types::DeleteWebhookInput] params
    # @option params [String] :project_name
    #   <p>The name of the CodeBuild project.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #   }
    #   options = {}
    #   response = client.delete_webhook(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWebhookOutput]
    def delete_webhook(params = {}, options = {})
      request = build_request(:delete_webhook, params)
      request.send_request(options)
    end

    # <p>Retrieves one or more code coverage reports.</p>
    # @param [Hash, Types::DescribeCodeCoveragesInput] params
    # @option params [String] :report_arn
    #   <p>
    #         The ARN of the report for which test cases are returned.
    #       </p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous call to
    #                   <code>DescribeCodeCoverages</code>. This specifies the next item to return. To
    #               return the beginning of the list, exclude this parameter.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :sort_order
    #   <p>Specifies if the results are sorted in ascending or descending order.</p>
    # @option params [String] :sort_by
    #   <p>Specifies how the results are sorted. Possible values are:</p>
    #            <dl>
    #               <dt>FILE_PATH</dt>
    #               <dd>
    #                  <p>The results are sorted by file path.</p>
    #               </dd>
    #               <dt>LINE_COVERAGE_PERCENTAGE</dt>
    #               <dd>
    #                  <p>The results are sorted by the percentage of lines that are covered.</p>
    #               </dd>
    #            </dl>
    # @option params [Float] :min_line_coverage_percentage
    #   <p>The minimum line coverage percentage to report.</p>
    # @option params [Float] :max_line_coverage_percentage
    #   <p>The maximum line coverage percentage to report.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_arn: "NonEmptyString", # required
    #     next_token: "String",
    #     max_results: 1,
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     sort_by: "LINE_COVERAGE_PERCENTAGE" # One of: ["LINE_COVERAGE_PERCENTAGE", "FILE_PATH"],
    #     min_line_coverage_percentage: 1.0,
    #     max_line_coverage_percentage: 1.0
    #   }
    #   options = {}
    #   response = client.describe_code_coverages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     code_coverages: [
    #       {
    #         id: "NonEmptyString",
    #         report_arn: "NonEmptyString",
    #         file_path: "NonEmptyString",
    #         line_coverage_percentage: 1.0,
    #         lines_covered: 1,
    #         lines_missed: 1,
    #         branch_coverage_percentage: 1.0,
    #         branches_covered: 1,
    #         branches_missed: 1,
    #         expired: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::DescribeCodeCoveragesOutput]
    def describe_code_coverages(params = {}, options = {})
      request = build_request(:describe_code_coverages, params)
      request.send_request(options)
    end

    # <p>
    #       Returns a list of details about test cases for a report.
    #     </p>
    # @param [Hash, Types::DescribeTestCasesInput] params
    # @option params [String] :report_arn
    #   <p>
    #         The ARN of the report for which test cases are returned.
    #       </p>
    # @option params [String] :next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of paginated test cases returned per response. Use <code>nextToken</code> to iterate pages in
    #         the list of returned <code>TestCase</code> objects. The default value is 100.
    #       </p>
    # @option params [Types::TestCaseFilter] :filter
    #   <p>
    #         A <code>TestCaseFilter</code> object used to filter the returned reports.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_arn: "String", # required
    #     next_token: "String",
    #     max_results: 1,
    #     filter: {
    #       status: "String",
    #       keyword: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.describe_test_cases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     test_cases: [
    #       {
    #         report_arn: "NonEmptyString",
    #         test_raw_data_path: "String",
    #         prefix: "String",
    #         name: "String",
    #         status: "String",
    #         duration_in_nano_seconds: 1,
    #         message: "String",
    #         expired: Time.now,
    #         test_suite_name: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeTestCasesOutput]
    def describe_test_cases(params = {}, options = {})
      request = build_request(:describe_test_cases, params)
      request.send_request(options)
    end

    # <p>Analyzes and accumulates test report values for the specified test reports.</p>
    # @param [Hash, Types::GetReportGroupTrendInput] params
    # @option params [String] :report_group_arn
    #   <p>The ARN of the report group that contains the reports to analyze.</p>
    # @option params [Integer] :num_of_reports
    #   <p>The number of reports to analyze. This operation always retrieves the most recent
    #               reports.</p>
    #            <p>If this parameter is omitted, the most recent 100 reports are analyzed.</p>
    # @option params [String] :trend_field
    #   <p>The test report value to accumulate. This must be one of the following values:</p>
    #            <dl>
    #               <dt>Test reports:</dt>
    #               <dd>
    #                  <dl>
    #                     <dt>DURATION</dt>
    #                     <dd>
    #                        <p>Accumulate the test run times for the specified
    #                                       reports.</p>
    #                     </dd>
    #                     <dt>PASS_RATE</dt>
    #                     <dd>
    #                        <p>Accumulate the percentage of tests that passed for the
    #                                       specified test reports.</p>
    #                     </dd>
    #                     <dt>TOTAL</dt>
    #                     <dd>
    #                        <p>Accumulate the total number of tests for the specified test
    #                                       reports.</p>
    #                     </dd>
    #                  </dl>
    #               </dd>
    #            </dl>
    #            <dl>
    #               <dt>Code coverage reports:</dt>
    #               <dd>
    #                  <dl>
    #                     <dt>BRANCH_COVERAGE</dt>
    #                     <dd>
    #                        <p>Accumulate the branch coverage percentages for the specified
    #                                       test reports.</p>
    #                     </dd>
    #                     <dt>BRANCHES_COVERED</dt>
    #                     <dd>
    #                        <p>Accumulate the branches covered values for the specified test
    #                                       reports.</p>
    #                     </dd>
    #                     <dt>BRANCHES_MISSED</dt>
    #                     <dd>
    #                        <p>Accumulate the branches missed values for the specified test
    #                                       reports.</p>
    #                     </dd>
    #                     <dt>LINE_COVERAGE</dt>
    #                     <dd>
    #                        <p>Accumulate the line coverage percentages for the specified
    #                                       test reports.</p>
    #                     </dd>
    #                     <dt>LINES_COVERED</dt>
    #                     <dd>
    #                        <p>Accumulate the lines covered values for the specified test
    #                                       reports.</p>
    #                     </dd>
    #                     <dt>LINES_MISSED</dt>
    #                     <dd>
    #                        <p>Accumulate the lines not covered values for the specified test
    #                                       reports.</p>
    #                     </dd>
    #                  </dl>
    #               </dd>
    #            </dl>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_group_arn: "NonEmptyString", # required
    #     num_of_reports: 1,
    #     trend_field: "PASS_RATE" # One of: ["PASS_RATE", "DURATION", "TOTAL", "LINE_COVERAGE", "LINES_COVERED", "LINES_MISSED", "BRANCH_COVERAGE", "BRANCHES_COVERED", "BRANCHES_MISSED"], # required
    #   }
    #   options = {}
    #   response = client.get_report_group_trend(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stats: {
    #       average: "String",
    #       max: "String",
    #       min: "String"
    #     },
    #     raw_data: [
    #       {
    #         report_arn: "NonEmptyString",
    #         data: "String"
    #       }
    #     ]
    #   }
    # @return [Types::GetReportGroupTrendOutput]
    def get_report_group_trend(params = {}, options = {})
      request = build_request(:get_report_group_trend, params)
      request.send_request(options)
    end

    # <p> Gets a resource policy that is identified by its resource ARN. </p>
    # @param [Hash, Types::GetResourcePolicyInput] params
    # @option params [String] :resource_arn
    #   <p> The ARN of the resource that is associated with the resource policy. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "NonEmptyString"
    #   }
    # @return [Types::GetResourcePolicyOutput]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p> Imports the source repository credentials for an CodeBuild project that has its
    #             source code stored in a GitHub, GitHub Enterprise, GitLab, GitLab Self Managed, or Bitbucket repository. </p>
    # @param [Hash, Types::ImportSourceCredentialsInput] params
    # @option params [String] :username
    #   <p> The Bitbucket username when the <code>authType</code> is BASIC_AUTH. This parameter
    #               is not valid for other types of source providers or connections. </p>
    # @option params [String] :token
    #   <p> For GitHub or GitHub Enterprise, this is the personal access token. For Bitbucket,
    #               this is either the access token or the app password. For the <code>authType</code> CODECONNECTIONS, 
    #               this is the <code>connectionArn</code>. For the <code>authType</code> SECRETS_MANAGER, this is the <code>secretArn</code>.</p>
    # @option params [String] :server_type
    #   <p> The source provider used for this project. </p>
    # @option params [String] :auth_type
    #   <p> The type of authentication used to connect to a GitHub, GitHub Enterprise, GitLab, GitLab Self Managed, or
    #               Bitbucket repository. An OAUTH connection is not supported by the API and must be
    #               created using the CodeBuild console.</p>
    # @option params [Boolean] :should_overwrite
    #   <p> Set to <code>false</code> to prevent overwriting the repository source credentials.
    #               Set to <code>true</code> to overwrite the repository source credentials. The default
    #               value is <code>true</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     username: "NonEmptyString",
    #     token: "SensitiveNonEmptyString", # required
    #     server_type: "GITHUB" # One of: ["GITHUB", "BITBUCKET", "GITHUB_ENTERPRISE", "GITLAB", "GITLAB_SELF_MANAGED"], # required
    #     auth_type: "OAUTH" # One of: ["OAUTH", "BASIC_AUTH", "PERSONAL_ACCESS_TOKEN", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #     should_overwrite: false
    #   }
    #   options = {}
    #   response = client.import_source_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "NonEmptyString"
    #   }
    # @return [Types::ImportSourceCredentialsOutput]
    def import_source_credentials(params = {}, options = {})
      request = build_request(:import_source_credentials, params)
      request.send_request(options)
    end

    # <p>Resets the cache for a project.</p>
    # @param [Hash, Types::InvalidateProjectCacheInput] params
    # @option params [String] :project_name
    #   <p>The name of the CodeBuild build project that the cache is reset for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.invalidate_project_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::InvalidateProjectCacheOutput]
    def invalidate_project_cache(params = {}, options = {})
      request = build_request(:invalidate_project_cache, params)
      request.send_request(options)
    end

    # <p>Retrieves the identifiers of your build batches in the current region.</p>
    # @param [Hash, Types::ListBuildBatchesInput] params
    # @option params [Types::BuildBatchFilter] :filter
    #   <p>A <code>BuildBatchFilter</code> object that specifies the filters for the search.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :sort_order
    #   <p>Specifies the sort order of the returned items. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASCENDING</code>: List the batch build identifiers in ascending order by identifier.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DESCENDING</code>: List the batch build identifiers in descending order by identifier.</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous call to
    #                   <code>ListBuildBatches</code>. This specifies the next item to return. To return the
    #               beginning of the list, exclude this parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #     },
    #     max_results: 1,
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_build_batches(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ids: ["NonEmptyString"],
    #     next_token: "String"
    #   }
    # @return [Types::ListBuildBatchesOutput]
    def list_build_batches(params = {}, options = {})
      request = build_request(:list_build_batches, params)
      request.send_request(options)
    end

    # <p>Retrieves the identifiers of the build batches for a specific project.</p>
    # @param [Hash, Types::ListBuildBatchesForProjectInput] params
    # @option params [String] :project_name
    #   <p>The name of the project.</p>
    # @option params [Types::BuildBatchFilter] :filter
    #   <p>A <code>BuildBatchFilter</code> object that specifies the filters for the search.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :sort_order
    #   <p>Specifies the sort order of the returned items. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASCENDING</code>: List the batch build identifiers in ascending order by
    #                       identifier.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DESCENDING</code>: List the batch build identifiers in descending order
    #                       by identifier.</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous call to
    #                   <code>ListBuildBatchesForProject</code>. This specifies the next item to return. To return the
    #               beginning of the list, exclude this parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "NonEmptyString",
    #     filter: {
    #       status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #     },
    #     max_results: 1,
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_build_batches_for_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ids: ["NonEmptyString"],
    #     next_token: "String"
    #   }
    # @return [Types::ListBuildBatchesForProjectOutput]
    def list_build_batches_for_project(params = {}, options = {})
      request = build_request(:list_build_batches_for_project, params)
      request.send_request(options)
    end

    # <p>Gets a list of build IDs, with each build ID representing a single build.</p>
    # @param [Hash, Types::ListBuildsInput] params
    # @option params [String] :sort_order
    #   <p>The order to list build IDs. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASCENDING</code>: List the build IDs in ascending order by build
    #                       ID.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DESCENDING</code>: List the build IDs in descending order by build
    #                       ID.</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>During a previous call, if there are more than 100 items in the list, only the first
    #               100 items are returned, along with a unique string called a
    #                   <i>nextToken</i>. To get the next batch of items in the list, call
    #               this operation again, adding the next token to the call. To get all of the items in the
    #               list, keep calling this operation with each subsequent next token that is returned,
    #               until no more next tokens are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_builds(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ids: ["NonEmptyString"],
    #     next_token: "String"
    #   }
    # @return [Types::ListBuildsOutput]
    def list_builds(params = {}, options = {})
      request = build_request(:list_builds, params)
      request.send_request(options)
    end

    # <p>Gets a list of build identifiers for the specified build project, with each build
    #             identifier representing a single build.</p>
    # @param [Hash, Types::ListBuildsForProjectInput] params
    # @option params [String] :project_name
    #   <p>The name of the CodeBuild project.</p>
    # @option params [String] :sort_order
    #   <p>The order to sort the results in. The results are sorted by build number, not the build
    #               identifier. If this is not specified, the results are sorted in descending order.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASCENDING</code>: List the build identifiers in ascending order, by build number.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DESCENDING</code>: List the build identifiers in descending order, by build number.</p>
    #               </li>
    #            </ul>
    #            <p>If the project has more than 100 builds, setting the sort order will result in an
    #               error. </p>
    # @option params [String] :next_token
    #   <p>During a previous call, if there are more than 100 items in the list, only the first
    #               100 items are returned, along with a unique string called a
    #                   <i>nextToken</i>. To get the next batch of items in the list, call
    #               this operation again, adding the next token to the call. To get all of the items in the
    #               list, keep calling this operation with each subsequent next token that is returned,
    #               until no more next tokens are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "NonEmptyString", # required
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_builds_for_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ids: ["NonEmptyString"],
    #     next_token: "String"
    #   }
    # @return [Types::ListBuildsForProjectOutput]
    def list_builds_for_project(params = {}, options = {})
      request = build_request(:list_builds_for_project, params)
      request.send_request(options)
    end

    # <p>Gets a list of command executions for a sandbox.</p>
    # @param [Hash, Types::ListCommandExecutionsForSandboxInput] params
    # @option params [String] :sandbox_id
    #   <p>A <code>sandboxId</code> or <code>sandboxArn</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of sandbox records to be retrieved.</p>
    # @option params [String] :sort_order
    #   <p>The order in which sandbox records should be retrieved.</p>
    # @option params [String] :next_token
    #   <p>The next token, if any, to get paginated results. You will get this value from previous execution of list sandboxes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sandbox_id: "NonEmptyString", # required
    #     max_results: 1,
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     next_token: "SensitiveString"
    #   }
    #   options = {}
    #   response = client.list_command_executions_for_sandbox(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     command_executions: [
    #       {
    #         id: "NonEmptyString",
    #         sandbox_id: "NonEmptyString",
    #         submit_time: Time.now,
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         status: "NonEmptyString",
    #         command: "SensitiveNonEmptyString",
    #         type: "SHELL" # One of: ["SHELL"],
    #         exit_code: "NonEmptyString",
    #         standard_output_content: "SensitiveNonEmptyString",
    #         standard_err_content: "SensitiveNonEmptyString",
    #         logs: {
    #           group_name: "String",
    #           stream_name: "String",
    #           deep_link: "String",
    #           s3_deep_link: "String",
    #           cloud_watch_logs_arn: "String",
    #           s3_logs_arn: "String",
    #           cloud_watch_logs: {
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             group_name: "String",
    #             stream_name: "String"
    #           },
    #           s3_logs: {
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             location: "String",
    #             encryption_disabled: false,
    #             bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #           }
    #         },
    #         sandbox_arn: "NonEmptyString"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListCommandExecutionsForSandboxOutput]
    def list_command_executions_for_sandbox(params = {}, options = {})
      request = build_request(:list_command_executions_for_sandbox, params)
      request.send_request(options)
    end

    # <p>Gets information about Docker images that are managed by CodeBuild.</p>
    # @param [Hash, Types::ListCuratedEnvironmentImagesInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.list_curated_environment_images(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     platforms: [
    #       {
    #         platform: "DEBIAN" # One of: ["DEBIAN", "AMAZON_LINUX", "UBUNTU", "WINDOWS_SERVER"],
    #         languages: [
    #           {
    #             language: "JAVA" # One of: ["JAVA", "PYTHON", "NODE_JS", "RUBY", "GOLANG", "DOCKER", "ANDROID", "DOTNET", "BASE", "PHP"],
    #             images: [
    #               {
    #                 name: "String",
    #                 description: "String",
    #                 versions: ["String"]
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::ListCuratedEnvironmentImagesOutput]
    def list_curated_environment_images(params = {}, options = {})
      request = build_request(:list_curated_environment_images, params)
      request.send_request(options)
    end

    # <p>Gets a list of compute fleet names with each compute fleet name representing a single compute fleet.</p>
    # @param [Hash, Types::ListFleetsInput] params
    # @option params [String] :next_token
    #   <p>During a previous call, if there are more than 100 items in the list, only the first
    #               100 items are returned, along with a unique string called a
    #               <i>nextToken</i>. To get the next batch of items in the list, call
    #               this operation again, adding the next token to the call. To get all of the items in the
    #               list, keep calling this operation with each subsequent next token that is returned,
    #               until no more next tokens are returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of paginated compute fleets returned per response. Use
    #               <code>nextToken</code> to iterate pages in the list of returned compute fleets.</p>
    # @option params [String] :sort_order
    #   <p>The order in which to list compute fleets. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASCENDING</code>: List in ascending order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DESCENDING</code>: List in descending order.</p>
    #               </li>
    #            </ul>
    #            <p>Use <code>sortBy</code> to specify the criterion to be used to list compute fleet
    #               names.</p>
    # @option params [String] :sort_by
    #   <p>The criterion to be used to list compute fleet names. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATED_TIME</code>: List based on when each compute fleet was
    #                           created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAST_MODIFIED_TIME</code>: List based on when information about each
    #                           compute fleet was last changed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NAME</code>: List based on each compute fleet's name.</p>
    #               </li>
    #            </ul>
    #            <p>Use <code>sortOrder</code> to specify in what order to list the compute fleet names
    #                   based on the preceding criteria.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "SensitiveString",
    #     max_results: 1,
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     sort_by: "NAME" # One of: ["NAME", "CREATED_TIME", "LAST_MODIFIED_TIME"]
    #   }
    #   options = {}
    #   response = client.list_fleets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     fleets: ["NonEmptyString"]
    #   }
    # @return [Types::ListFleetsOutput]
    def list_fleets(params = {}, options = {})
      request = build_request(:list_fleets, params)
      request.send_request(options)
    end

    # <p>Gets a list of build project names, with each build project name representing a single
    #             build project.</p>
    # @param [Hash, Types::ListProjectsInput] params
    # @option params [String] :sort_by
    #   <p>The criterion to be used to list build project names. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATED_TIME</code>: List based on when each build project was
    #                       created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAST_MODIFIED_TIME</code>: List based on when information about each
    #                       build project was last changed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NAME</code>: List based on each build project's name.</p>
    #               </li>
    #            </ul>
    #            <p>Use <code>sortOrder</code> to specify in what order to list the build project names
    #               based on the preceding criteria.</p>
    # @option params [String] :sort_order
    #   <p>The order in which to list build projects. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASCENDING</code>: List in ascending order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DESCENDING</code>: List in descending order.</p>
    #               </li>
    #            </ul>
    #            <p>Use <code>sortBy</code> to specify the criterion to be used to list build project
    #               names.</p>
    # @option params [String] :next_token
    #   <p>During a previous call, if there are more than 100 items in the list, only the first
    #               100 items are returned, along with a unique string called a
    #                   <i>nextToken</i>. To get the next batch of items in the list, call
    #               this operation again, adding the next token to the call. To get all of the items in the
    #               list, keep calling this operation with each subsequent next token that is returned,
    #               until no more next tokens are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sort_by: "NAME" # One of: ["NAME", "CREATED_TIME", "LAST_MODIFIED_TIME"],
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     next_token: "NonEmptyString"
    #   }
    #   options = {}
    #   response = client.list_projects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     projects: ["NonEmptyString"]
    #   }
    # @return [Types::ListProjectsOutput]
    def list_projects(params = {}, options = {})
      request = build_request(:list_projects, params)
      request.send_request(options)
    end

    # <p>
    #       Gets a list ARNs for the report groups in the current Amazon Web Services account.
    #     </p>
    # @param [Hash, Types::ListReportGroupsInput] params
    # @option params [String] :sort_order
    #   <p>
    #         Used to specify the order to sort the list of returned report groups. Valid values are
    #         <code>ASCENDING</code> and <code>DESCENDING</code>.
    #       </p>
    # @option params [String] :sort_by
    #   <p>
    #         The criterion to be used to list build report groups. Valid values include:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATED_TIME</code>: List based on when each report group was
    #             created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAST_MODIFIED_TIME</code>: List based on when each report group  was last changed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NAME</code>: List based on each report group's name.</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of paginated report groups returned per response. Use <code>nextToken</code> to iterate pages in
    #         the list of returned <code>ReportGroup</code> objects. The default value is 100.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     sort_by: "NAME" # One of: ["NAME", "CREATED_TIME", "LAST_MODIFIED_TIME"],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_report_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     report_groups: ["NonEmptyString"]
    #   }
    # @return [Types::ListReportGroupsOutput]
    def list_report_groups(params = {}, options = {})
      request = build_request(:list_report_groups, params)
      request.send_request(options)
    end

    # <p>
    #       Returns a list of ARNs for the reports in the current Amazon Web Services account.
    #     </p>
    # @param [Hash, Types::ListReportsInput] params
    # @option params [String] :sort_order
    #   <p>
    #         Specifies the sort order for the list of returned reports. Valid values are:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASCENDING</code>: return reports in chronological order based on their creation date.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DESCENDING</code>: return reports in the reverse chronological order based on their creation date.
    #           </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of paginated reports returned per response. Use <code>nextToken</code> to iterate pages in
    #         the list of returned <code>Report</code> objects. The default value is 100.
    #       </p>
    # @option params [Types::ReportFilter] :filter
    #   <p>
    #         A <code>ReportFilter</code> object used to filter the returned reports.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     next_token: "String",
    #     max_results: 1,
    #     filter: {
    #       status: "GENERATING" # One of: ["GENERATING", "SUCCEEDED", "FAILED", "INCOMPLETE", "DELETING"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_reports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     reports: ["NonEmptyString"]
    #   }
    # @return [Types::ListReportsOutput]
    def list_reports(params = {}, options = {})
      request = build_request(:list_reports, params)
      request.send_request(options)
    end

    # <p>
    #       Returns a list of ARNs for the reports that belong to a <code>ReportGroup</code>.
    #     </p>
    # @param [Hash, Types::ListReportsForReportGroupInput] params
    # @option params [String] :report_group_arn
    #   <p>
    #         The ARN of the report group for which you want to return report ARNs.
    #       </p>
    # @option params [String] :next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    # @option params [String] :sort_order
    #   <p>
    #         Use to specify whether the results are returned in ascending or descending order.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of paginated reports in this report group returned per response. Use <code>nextToken</code> to iterate pages in
    #         the list of returned <code>Report</code> objects. The default value is 100.
    #       </p>
    # @option params [Types::ReportFilter] :filter
    #   <p>
    #         A <code>ReportFilter</code> object used to filter the returned reports.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_group_arn: "String", # required
    #     next_token: "String",
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     max_results: 1,
    #     filter: {
    #       status: "GENERATING" # One of: ["GENERATING", "SUCCEEDED", "FAILED", "INCOMPLETE", "DELETING"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_reports_for_report_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     reports: ["NonEmptyString"]
    #   }
    # @return [Types::ListReportsForReportGroupOutput]
    def list_reports_for_report_group(params = {}, options = {})
      request = build_request(:list_reports_for_report_group, params)
      request.send_request(options)
    end

    # <p>Gets a list of sandboxes.</p>
    # @param [Hash, Types::ListSandboxesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of sandbox records to be retrieved.</p>
    # @option params [String] :sort_order
    #   <p>The order in which sandbox records should be retrieved.</p>
    # @option params [String] :next_token
    #   <p>The next token, if any, to get paginated results. You will get this value from previous execution of list sandboxes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_sandboxes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ids: ["NonEmptyString"],
    #     next_token: "String"
    #   }
    # @return [Types::ListSandboxesOutput]
    def list_sandboxes(params = {}, options = {})
      request = build_request(:list_sandboxes, params)
      request.send_request(options)
    end

    # <p>Gets a list of sandboxes for a given project.</p>
    # @param [Hash, Types::ListSandboxesForProjectInput] params
    # @option params [String] :project_name
    #   <p>The CodeBuild project name.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of sandbox records to be retrieved.</p>
    # @option params [String] :sort_order
    #   <p>The order in which sandbox records should be retrieved.</p>
    # @option params [String] :next_token
    #   <p>The next token, if any, to get paginated results. You will get this value from previous execution of list sandboxes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "NonEmptyString", # required
    #     max_results: 1,
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     next_token: "SensitiveString"
    #   }
    #   options = {}
    #   response = client.list_sandboxes_for_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ids: ["NonEmptyString"],
    #     next_token: "String"
    #   }
    # @return [Types::ListSandboxesForProjectOutput]
    def list_sandboxes_for_project(params = {}, options = {})
      request = build_request(:list_sandboxes_for_project, params)
      request.send_request(options)
    end

    # <p> Gets a list of projects that are shared with other Amazon Web Services accounts or users. </p>
    # @param [Hash, Types::ListSharedProjectsInput] params
    # @option params [String] :sort_by
    #   <p> The criterion to be used to list build projects shared with the current Amazon Web Services account
    #               or user. Valid values include: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ARN</code>: List based on the ARN. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFIED_TIME</code>: List based on when information about the shared
    #                       project was last changed. </p>
    #               </li>
    #            </ul>
    # @option params [String] :sort_order
    #   <p>The order in which to list shared build projects. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASCENDING</code>: List in ascending order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DESCENDING</code>: List in descending order.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p> The maximum number of paginated shared build projects returned per response. Use
    #                   <code>nextToken</code> to iterate pages in the list of returned <code>Project</code>
    #               objects. The default value is 100. </p>
    # @option params [String] :next_token
    #   <p> During a previous call, the maximum number of items that can be returned is the value
    #               specified in <code>maxResults</code>. If there more items in the list, then a unique
    #               string called a <i>nextToken</i> is returned. To get the next batch of
    #               items in the list, call this operation again, adding the next token to the call. To get
    #               all of the items in the list, keep calling this operation with each subsequent next
    #               token that is returned, until no more next tokens are returned. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sort_by: "ARN" # One of: ["ARN", "MODIFIED_TIME"],
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     max_results: 1,
    #     next_token: "NonEmptyString"
    #   }
    #   options = {}
    #   response = client.list_shared_projects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     projects: ["NonEmptyString"]
    #   }
    # @return [Types::ListSharedProjectsOutput]
    def list_shared_projects(params = {}, options = {})
      request = build_request(:list_shared_projects, params)
      request.send_request(options)
    end

    # <p> Gets a list of report groups that are shared with other Amazon Web Services accounts or users.
    #         </p>
    # @param [Hash, Types::ListSharedReportGroupsInput] params
    # @option params [String] :sort_order
    #   <p>The order in which to list shared report groups. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASCENDING</code>: List in ascending order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DESCENDING</code>: List in descending order.</p>
    #               </li>
    #            </ul>
    # @option params [String] :sort_by
    #   <p> The criterion to be used to list report groups shared with the current Amazon Web Services account or
    #               user. Valid values include: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ARN</code>: List based on the ARN. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFIED_TIME</code>: List based on when information about the shared
    #                       report group was last changed. </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p> During a previous call, the maximum number of items that can be returned is the value
    #               specified in <code>maxResults</code>. If there more items in the list, then a unique
    #               string called a <i>nextToken</i> is returned. To get the next batch of
    #               items in the list, call this operation again, adding the next token to the call. To get
    #               all of the items in the list, keep calling this operation with each subsequent next
    #               token that is returned, until no more next tokens are returned. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of paginated shared report groups per response. Use
    #                   <code>nextToken</code> to iterate pages in the list of returned
    #                   <code>ReportGroup</code> objects. The default value is 100. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     sort_by: "ARN" # One of: ["ARN", "MODIFIED_TIME"],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_shared_report_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     report_groups: ["NonEmptyString"]
    #   }
    # @return [Types::ListSharedReportGroupsOutput]
    def list_shared_report_groups(params = {}, options = {})
      request = build_request(:list_shared_report_groups, params)
      request.send_request(options)
    end

    # <p> Returns a list of <code>SourceCredentialsInfo</code> objects. </p>
    # @param [Hash, Types::ListSourceCredentialsInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.list_source_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     source_credentials_infos: [
    #       {
    #         arn: "NonEmptyString",
    #         server_type: "GITHUB" # One of: ["GITHUB", "BITBUCKET", "GITHUB_ENTERPRISE", "GITLAB", "GITLAB_SELF_MANAGED"],
    #         auth_type: "OAUTH" # One of: ["OAUTH", "BASIC_AUTH", "PERSONAL_ACCESS_TOKEN", "CODECONNECTIONS", "SECRETS_MANAGER"],
    #         resource: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListSourceCredentialsOutput]
    def list_source_credentials(params = {}, options = {})
      request = build_request(:list_source_credentials, params)
      request.send_request(options)
    end

    # <p> Stores a resource policy for the ARN of a <code>Project</code> or
    #                 <code>ReportGroup</code> object. </p>
    # @param [Hash, Types::PutResourcePolicyInput] params
    # @option params [String] :policy
    #   <p> A JSON-formatted resource policy. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/project-sharing.html#project-sharing-share">Sharing
    #                   a Project</a> and <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/report-groups-sharing.html#report-groups-sharing-share">Sharing a Report Group</a> in the <i>CodeBuild User Guide</i>.
    #           </p>
    # @option params [String] :resource_arn
    #   <p> The ARN of the <code>Project</code> or <code>ReportGroup</code> resource you want to
    #               associate with a resource policy. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy: "NonEmptyString", # required
    #     resource_arn: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "NonEmptyString"
    #   }
    # @return [Types::PutResourcePolicyOutput]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Restarts a build.</p>
    # @param [Hash, Types::RetryBuildInput] params
    # @option params [String] :id
    #   <p>Specifies the identifier of the build to restart.</p>
    # @option params [String] :idempotency_token
    #   <p>A unique, case sensitive identifier you provide to ensure the idempotency of the
    #         <code>RetryBuild</code> request. The token is included in the
    #         <code>RetryBuild</code> request and is valid for five minutes. If you repeat
    #         the <code>RetryBuild</code> request with the same token, but change a parameter,
    #         CodeBuild returns a parameter mismatch error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "NonEmptyString",
    #     idempotency_token: "String"
    #   }
    #   options = {}
    #   response = client.retry_build(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     build: {
    #       id: "NonEmptyString",
    #       arn: "NonEmptyString",
    #       build_number: 1,
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       current_phase: "String",
    #       build_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #       source_version: "NonEmptyString",
    #       resolved_source_version: "NonEmptyString",
    #       project_name: "NonEmptyString",
    #       phases: [
    #         {
    #           phase_type: "SUBMITTED" # One of: ["SUBMITTED", "QUEUED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"],
    #           phase_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #           start_time: Time.now,
    #           end_time: Time.now,
    #           duration_in_seconds: 1,
    #           contexts: [
    #             {
    #               status_code: "String",
    #               message: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       source: {
    #         type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #           resource: "String"
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String"
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String"
    #       },
    #       secondary_sources: [
    #         {
    #           type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #           location: "String",
    #           git_clone_depth: 1,
    #           git_submodules_config: {
    #             fetch_submodules: false, # required
    #           },
    #           buildspec: "String",
    #           auth: {
    #             type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #             resource: "String"
    #           },
    #           report_build_status: false,
    #           build_status_config: {
    #             context: "String",
    #             target_url: "String"
    #           },
    #           insecure_ssl: false,
    #           source_identifier: "String"
    #         }
    #       ],
    #       secondary_source_versions: [
    #         {
    #           source_identifier: "String", # required
    #           source_version: "String", # required
    #         }
    #       ],
    #       artifacts: {
    #         location: "String",
    #         sha256sum: "String",
    #         md5sum: "String",
    #         override_artifact_name: false,
    #         encryption_disabled: false,
    #         artifact_identifier: "String",
    #         bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #       },
    #       secondary_artifacts: [
    #         {
    #           location: "String",
    #           sha256sum: "String",
    #           md5sum: "String",
    #           override_artifact_name: false,
    #           encryption_disabled: false,
    #           artifact_identifier: "String",
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         }
    #       ],
    #       cache: {
    #         type: "NO_CACHE" # One of: ["NO_CACHE", "S3", "LOCAL"], # required
    #         location: "String",
    #         modes: ["LOCAL_DOCKER_LAYER_CACHE" # One of: ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]],
    #         cache_namespace: "String"
    #       },
    #       environment: {
    #         type: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"], # required
    #         image: "NonEmptyString", # required
    #         compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #         compute_configuration: {
    #           v_cpu: 1,
    #           memory: 1,
    #           disk: 1,
    #           machine_type: "GENERAL" # One of: ["GENERAL", "NVME"],
    #           instance_type: "NonEmptyString"
    #         },
    #         fleet: {
    #           fleet_arn: "String"
    #         },
    #         environment_variables: [
    #           {
    #             name: "NonEmptyString", # required
    #             value: "String", # required
    #             type: "PLAINTEXT" # One of: ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #           }
    #         ],
    #         privileged_mode: false,
    #         certificate: "String",
    #         registry_credential: {
    #           credential: "NonEmptyString", # required
    #           credential_provider: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER"], # required
    #         },
    #         image_pull_credentials_type: "CODEBUILD" # One of: ["CODEBUILD", "SERVICE_ROLE"],
    #         docker_server: {
    #           compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #           security_group_ids: ["NonEmptyString"],
    #           status: {
    #             status: "String",
    #             message: "String"
    #           }
    #         }
    #       },
    #       service_role: "NonEmptyString",
    #       logs: {
    #         group_name: "String",
    #         stream_name: "String",
    #         deep_link: "String",
    #         s3_deep_link: "String",
    #         cloud_watch_logs_arn: "String",
    #         s3_logs_arn: "String",
    #         cloud_watch_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           group_name: "String",
    #           stream_name: "String"
    #         },
    #         s3_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           location: "String",
    #           encryption_disabled: false,
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         }
    #       },
    #       timeout_in_minutes: 1,
    #       queued_timeout_in_minutes: 1,
    #       build_complete: false,
    #       initiator: "String",
    #       vpc_config: {
    #         vpc_id: "NonEmptyString",
    #         subnets: ["NonEmptyString"],
    #         security_group_ids: ["NonEmptyString"]
    #       },
    #       network_interface: {
    #         subnet_id: "NonEmptyString",
    #         network_interface_id: "NonEmptyString"
    #       },
    #       encryption_key: "NonEmptyString",
    #       exported_environment_variables: [
    #         {
    #           name: "NonEmptyString",
    #           value: "String"
    #         }
    #       ],
    #       report_arns: ["String"],
    #       file_system_locations: [
    #         {
    #           type: "EFS" # One of: ["EFS"],
    #           location: "String",
    #           mount_point: "String",
    #           identifier: "String",
    #           mount_options: "String"
    #         }
    #       ],
    #       debug_session: {
    #         session_enabled: false,
    #         session_target: "NonEmptyString"
    #       },
    #       build_batch_arn: "String",
    #       auto_retry_config: {
    #         auto_retry_limit: 1,
    #         auto_retry_number: 1,
    #         next_auto_retry: "String",
    #         previous_auto_retry: "String"
    #       }
    #     }
    #   }
    # @return [Types::RetryBuildOutput]
    def retry_build(params = {}, options = {})
      request = build_request(:retry_build, params)
      request.send_request(options)
    end

    # <p>Restarts a failed batch build. Only batch builds that have failed can be retried.</p>
    # @param [Hash, Types::RetryBuildBatchInput] params
    # @option params [String] :id
    #   <p>Specifies the identifier of the batch build to restart.</p>
    # @option params [String] :idempotency_token
    #   <p>A unique, case sensitive identifier you provide to ensure the idempotency of the
    #                   <code>RetryBuildBatch</code> request. The token is included in the
    #                   <code>RetryBuildBatch</code> request and is valid for five minutes. If you repeat
    #               the <code>RetryBuildBatch</code> request with the same token, but change a parameter,
    #               CodeBuild returns a parameter mismatch error.</p>
    # @option params [String] :retry_type
    #   <p>Specifies the type of retry to perform.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "NonEmptyString",
    #     idempotency_token: "String",
    #     retry_type: "RETRY_ALL_BUILDS" # One of: ["RETRY_ALL_BUILDS", "RETRY_FAILED_BUILDS"]
    #   }
    #   options = {}
    #   response = client.retry_build_batch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     build_batch: {
    #       id: "NonEmptyString",
    #       arn: "NonEmptyString",
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       current_phase: "String",
    #       build_batch_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #       source_version: "NonEmptyString",
    #       resolved_source_version: "NonEmptyString",
    #       project_name: "NonEmptyString",
    #       phases: [
    #         {
    #           phase_type: "SUBMITTED" # One of: ["SUBMITTED", "DOWNLOAD_BATCHSPEC", "IN_PROGRESS", "COMBINE_ARTIFACTS", "SUCCEEDED", "FAILED", "STOPPED"],
    #           phase_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #           start_time: Time.now,
    #           end_time: Time.now,
    #           duration_in_seconds: 1,
    #           contexts: [
    #             {
    #               status_code: "String",
    #               message: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       source: {
    #         type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #           resource: "String"
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String"
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String"
    #       },
    #       secondary_sources: [
    #         {
    #           type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #           location: "String",
    #           git_clone_depth: 1,
    #           git_submodules_config: {
    #             fetch_submodules: false, # required
    #           },
    #           buildspec: "String",
    #           auth: {
    #             type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #             resource: "String"
    #           },
    #           report_build_status: false,
    #           build_status_config: {
    #             context: "String",
    #             target_url: "String"
    #           },
    #           insecure_ssl: false,
    #           source_identifier: "String"
    #         }
    #       ],
    #       secondary_source_versions: [
    #         {
    #           source_identifier: "String", # required
    #           source_version: "String", # required
    #         }
    #       ],
    #       artifacts: {
    #         location: "String",
    #         sha256sum: "String",
    #         md5sum: "String",
    #         override_artifact_name: false,
    #         encryption_disabled: false,
    #         artifact_identifier: "String",
    #         bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #       },
    #       secondary_artifacts: [
    #         {
    #           location: "String",
    #           sha256sum: "String",
    #           md5sum: "String",
    #           override_artifact_name: false,
    #           encryption_disabled: false,
    #           artifact_identifier: "String",
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         }
    #       ],
    #       cache: {
    #         type: "NO_CACHE" # One of: ["NO_CACHE", "S3", "LOCAL"], # required
    #         location: "String",
    #         modes: ["LOCAL_DOCKER_LAYER_CACHE" # One of: ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]],
    #         cache_namespace: "String"
    #       },
    #       environment: {
    #         type: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"], # required
    #         image: "NonEmptyString", # required
    #         compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #         compute_configuration: {
    #           v_cpu: 1,
    #           memory: 1,
    #           disk: 1,
    #           machine_type: "GENERAL" # One of: ["GENERAL", "NVME"],
    #           instance_type: "NonEmptyString"
    #         },
    #         fleet: {
    #           fleet_arn: "String"
    #         },
    #         environment_variables: [
    #           {
    #             name: "NonEmptyString", # required
    #             value: "String", # required
    #             type: "PLAINTEXT" # One of: ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #           }
    #         ],
    #         privileged_mode: false,
    #         certificate: "String",
    #         registry_credential: {
    #           credential: "NonEmptyString", # required
    #           credential_provider: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER"], # required
    #         },
    #         image_pull_credentials_type: "CODEBUILD" # One of: ["CODEBUILD", "SERVICE_ROLE"],
    #         docker_server: {
    #           compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #           security_group_ids: ["NonEmptyString"],
    #           status: {
    #             status: "String",
    #             message: "String"
    #           }
    #         }
    #       },
    #       service_role: "NonEmptyString",
    #       log_config: {
    #         cloud_watch_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           group_name: "String",
    #           stream_name: "String"
    #         },
    #         s3_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           location: "String",
    #           encryption_disabled: false,
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         }
    #       },
    #       build_timeout_in_minutes: 1,
    #       queued_timeout_in_minutes: 1,
    #       complete: false,
    #       initiator: "String",
    #       vpc_config: {
    #         vpc_id: "NonEmptyString",
    #         subnets: ["NonEmptyString"],
    #         security_group_ids: ["NonEmptyString"]
    #       },
    #       encryption_key: "NonEmptyString",
    #       build_batch_number: 1,
    #       file_system_locations: [
    #         {
    #           type: "EFS" # One of: ["EFS"],
    #           location: "String",
    #           mount_point: "String",
    #           identifier: "String",
    #           mount_options: "String"
    #         }
    #       ],
    #       build_batch_config: {
    #         service_role: "NonEmptyString",
    #         combine_artifacts: false,
    #         restrictions: {
    #           maximum_builds_allowed: 1,
    #           compute_types_allowed: ["NonEmptyString"],
    #           fleets_allowed: ["NonEmptyString"]
    #         },
    #         timeout_in_mins: 1,
    #         batch_report_mode: "REPORT_INDIVIDUAL_BUILDS" # One of: ["REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"]
    #       },
    #       build_groups: [
    #         {
    #           identifier: "String",
    #           depends_on: ["NonEmptyString"],
    #           ignore_failure: false,
    #           current_build_summary: {
    #             arn: "String",
    #             requested_on: Time.now,
    #             build_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #             primary_artifact: {
    #               type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"],
    #               location: "String",
    #               identifier: "String"
    #             },
    #             secondary_artifacts: [
    #               {
    #                 type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"],
    #                 location: "String",
    #                 identifier: "String"
    #               }
    #             ]
    #           },
    #           prior_build_summary_list: [
    #             {
    #               arn: "String",
    #               requested_on: Time.now,
    #               build_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #               primary_artifact: {
    #                 type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"],
    #                 location: "String",
    #                 identifier: "String"
    #               },
    #               secondary_artifacts: [
    #                 {
    #                   type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"],
    #                   location: "String",
    #                   identifier: "String"
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       ],
    #       debug_session_enabled: false,
    #       report_arns: ["String"]
    #     }
    #   }
    # @return [Types::RetryBuildBatchOutput]
    def retry_build_batch(params = {}, options = {})
      request = build_request(:retry_build_batch, params)
      request.send_request(options)
    end

    # <p>Starts running a build with the settings defined in the project. These setting include: how to run a build, 
    #             where to get the source code, which build environment to use, which build commands to run, and where to store the build output.</p>
    #          <p>You can also start a build run by overriding some of the build settings in the project. The overrides only apply for that 
    #             specific start build request. The settings in the project are unaltered.</p>
    # @param [Hash, Types::StartBuildInput] params
    # @option params [String] :project_name
    #   <p>The name of the CodeBuild build project to start running a build.</p>
    # @option params [Array<Types::ProjectSource>] :secondary_sources_override
    #   <p> An array of <code>ProjectSource</code> objects. </p>
    # @option params [Array<Types::ProjectSourceVersion>] :secondary_sources_version_override
    #   <p> An array of <code>ProjectSourceVersion</code> objects that specify one or more
    #               versions of the project's secondary sources to be used for this build only. </p>
    # @option params [String] :source_version
    #   <p>The version of the build input to be built, for this build only. If not specified,
    #               the latest version is used. If specified, the contents depends on the source
    #               provider:</p>
    #            <dl>
    #               <dt>CodeCommit</dt>
    #               <dd>
    #                  <p>The commit ID, branch, or Git tag to use.</p>
    #               </dd>
    #               <dt>GitHub</dt>
    #               <dd>
    #                  <p>The commit ID, pull request ID, branch name, or tag name that corresponds
    #                           to the version of the source code you want to build. If a pull request ID is
    #                           specified, it must use the format <code>pr/pull-request-ID</code> (for
    #                           example <code>pr/25</code>). If a branch name is specified, the branch's
    #                           HEAD commit ID is used. If not specified, the default branch's HEAD commit
    #                           ID is used.</p>
    #               </dd>
    #               <dt>GitLab</dt>
    #               <dd>
    #                  <p>The commit ID, branch, or Git tag to use.</p>
    #               </dd>
    #               <dt>Bitbucket</dt>
    #               <dd>
    #                  <p>The commit ID, branch name, or tag name that corresponds to the version of
    #                           the source code you want to build. If a branch name is specified, the
    #                           branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    #                           commit ID is used.</p>
    #               </dd>
    #               <dt>Amazon S3</dt>
    #               <dd>
    #                  <p>The version ID of the object that represents the build input ZIP file to
    #                           use.</p>
    #               </dd>
    #            </dl>
    #            <p>If <code>sourceVersion</code> is specified at the project level, then this
    #               <code>sourceVersion</code> (at the build level) takes precedence. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html">Source Version Sample
    #               with CodeBuild</a> in the <i>CodeBuild User Guide</i>. </p>
    # @option params [Types::ProjectArtifacts] :artifacts_override
    #   <p>Build output artifact settings that override, for this build only, the latest ones
    #               already defined in the build project.</p>
    # @option params [Array<Types::ProjectArtifacts>] :secondary_artifacts_override
    #   <p> An array of <code>ProjectArtifacts</code> objects. </p>
    # @option params [Array<Types::EnvironmentVariable>] :environment_variables_override
    #   <p>A set of environment variables that overrides, for this build only, the latest ones
    #               already defined in the build project.</p>
    # @option params [String] :source_type_override
    #   <p>A source input type, for this build, that overrides the source input defined in the
    #               build project.</p>
    # @option params [String] :source_location_override
    #   <p>A location that overrides, for this build, the source location for the one defined in
    #               the build project.</p>
    # @option params [Types::SourceAuth] :source_auth_override
    #   <p>An authorization type for this build that overrides the one defined in the build
    #               project. This override applies only if the build project's source is BitBucket, GitHub, 
    #               GitLab, or GitLab Self Managed.</p>
    # @option params [Integer] :git_clone_depth_override
    #   <p>The user-defined depth of history, with a minimum value of 0, that overrides, for this
    #               build only, any previous depth of history defined in the build project.</p>
    # @option params [Types::GitSubmodulesConfig] :git_submodules_config_override
    #   <p> Information about the Git submodules configuration for this build of an CodeBuild build
    #               project. </p>
    # @option params [String] :buildspec_override
    #   <p>A buildspec file declaration that overrides the latest one defined 
    #               in the build project, for this build only. The buildspec defined on the project is not changed.</p>
    #            <p>If this value is set, it can be either an inline buildspec definition, the path to an
    #               alternate buildspec file relative to the value of the built-in
    #                   <code>CODEBUILD_SRC_DIR</code> environment variable, or the path to an S3 bucket.
    #               The bucket must be in the same Amazon Web Services Region as the build project. Specify the buildspec
    #               file using its ARN (for example,
    #                   <code>arn:aws:s3:::my-codebuild-sample2/buildspec.yml</code>). If this value is not
    #               provided or is set to an empty string, the source code must contain a buildspec file in
    #               its root directory. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage">Buildspec File Name and Storage Location</a>.</p>
    #            <note>
    #               <p>Since this property allows you to change the build commands that will run in the container, 
    #               you should note that an IAM principal with the ability to call this API and set this parameter 
    #               can override the default settings. Moreover, we encourage that you use a trustworthy buildspec location 
    #               like a file in your source repository or a Amazon S3 bucket. Alternatively, you can restrict overrides 
    #               to the buildspec by using a condition key: <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/action-context-keys.html#action-context-keys-example-overridebuildspec.html">Prevent unauthorized modifications to project buildspec</a>.</p>
    #            </note>
    # @option params [Boolean] :insecure_ssl_override
    #   <p>Enable this flag to override the insecure SSL setting that is specified in the build
    #               project. The insecure SSL setting determines whether to ignore SSL warnings while
    #               connecting to the project source code. This override applies only if the build's source
    #               is GitHub Enterprise.</p>
    # @option params [Boolean] :report_build_status_override
    #   <p> Set to true to report to your source provider the status of a build's start and
    #               completion. If you use this option with a source provider other than GitHub, GitHub
    #               Enterprise, GitLab, GitLab Self Managed, or Bitbucket, an <code>invalidInputException</code> is thrown. </p>
    #            <p>To be able to report the build status to the source provider, the user associated with the source provider must
    #   have write access to the repo. If the user does not have write access, the build status cannot be updated. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/access-tokens.html">Source provider access</a> in the <i>CodeBuild User Guide</i>.</p>
    #            <note>
    #               <p> The status of a build triggered by a webhook is always reported to your source
    #                   provider. </p>
    #            </note>
    # @option params [Types::BuildStatusConfig] :build_status_config_override
    #   <p>Contains information that defines how the build project reports the build status to
    #               the source provider. This option is only used when the source provider is
    #                   <code>GITHUB</code>, <code>GITHUB_ENTERPRISE</code>, or
    #               <code>BITBUCKET</code>.</p>
    # @option params [String] :environment_type_override
    #   <p>A container type for this build that overrides the one specified in the build
    #               project.</p>
    # @option params [String] :image_override
    #   <p>The name of an image for this build that overrides the one specified in the build
    #               project.</p>
    # @option params [String] :compute_type_override
    #   <p>The name of a compute type for this build that overrides the one specified in the
    #               build project.</p>
    # @option params [String] :certificate_override
    #   <p>The name of a certificate for this build that overrides the one specified in the build
    #               project.</p>
    # @option params [Types::ProjectCache] :cache_override
    #   <p>A ProjectCache object specified for this build that overrides the one defined in the
    #               build project.</p>
    # @option params [String] :service_role_override
    #   <p>The name of a service role for this build that overrides the one specified in the
    #               build project.</p>
    # @option params [Boolean] :privileged_mode_override
    #   <p>Enable this flag to override privileged mode in the build project.</p>
    # @option params [Integer] :timeout_in_minutes_override
    #   <p>The number of build timeout minutes, from 5 to 2160 (36 hours), that overrides, for this
    #               build only, the latest setting already defined in the build project.</p>
    # @option params [Integer] :queued_timeout_in_minutes_override
    #   <p> The number of minutes a build is allowed to be queued before it times out. </p>
    # @option params [String] :encryption_key_override
    #   <p>The Key Management Service customer master key (CMK) that overrides the one specified in the build
    #               project. The CMK key encrypts the build output artifacts.</p>
    #            <note>
    #               <p> You can use a cross-account KMS key to encrypt the build output artifacts if your
    #                   service role has permission to that key. </p>
    #            </note>
    #            <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    #               the format <code>alias/<alias-name></code>).</p>
    # @option params [String] :idempotency_token
    #   <p>A unique, case sensitive identifier you provide to ensure the idempotency of the
    #               StartBuild request. The token is included in the StartBuild request and is valid for 5
    #               minutes. If you repeat the StartBuild request with the same token, but change a
    #               parameter, CodeBuild returns a parameter mismatch error. </p>
    # @option params [Types::LogsConfig] :logs_config_override
    #   <p> Log settings for this build that override the log settings defined in the build
    #               project. </p>
    # @option params [Types::RegistryCredential] :registry_credential_override
    #   <p> The credentials for access to a private registry. </p>
    # @option params [String] :image_pull_credentials_type_override
    #   <p>The type of credentials CodeBuild uses to pull images in your build. There are two valid
    #               values: </p>
    #            <dl>
    #               <dt>CODEBUILD</dt>
    #               <dd>
    #                  <p>Specifies that CodeBuild uses its own credentials. This requires that you
    #                           modify your ECR repository policy to trust CodeBuild's service principal.</p>
    #               </dd>
    #               <dt>SERVICE_ROLE</dt>
    #               <dd>
    #                  <p>Specifies that CodeBuild uses your build project's service role. </p>
    #               </dd>
    #            </dl>
    #            <p>When using a cross-account or private registry image, you must use
    #               <code>SERVICE_ROLE</code> credentials. When using an CodeBuild curated image,
    #               you must use <code>CODEBUILD</code> credentials. </p>
    # @option params [Boolean] :debug_session_enabled
    #   <p>Specifies if session debugging is enabled for this build. For more information, see
    #                   <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html">Viewing a running build in Session Manager</a>.</p>
    # @option params [Types::ProjectFleet] :fleet_override
    #   <p>A ProjectFleet object specified for this build that overrides the one defined in the
    #               build project.</p>
    # @option params [Integer] :auto_retry_limit_override
    #   <p>The maximum number of additional automatic retries after a failed build. For example, if the 
    #               auto-retry limit is set to 2, CodeBuild will call the <code>RetryBuild</code> API to automatically 
    #               retry your build for up to 2 additional times.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "NonEmptyString", # required
    #     secondary_sources_override: [
    #       {
    #         type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #           resource: "String"
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String"
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String"
    #       }
    #     ],
    #     secondary_sources_version_override: [
    #       {
    #         source_identifier: "String", # required
    #         source_version: "String", # required
    #       }
    #     ],
    #     source_version: "String",
    #     artifacts_override: {
    #       type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"], # required
    #       location: "String",
    #       path: "String",
    #       namespace_type: "NONE" # One of: ["NONE", "BUILD_ID"],
    #       name: "String",
    #       packaging: "NONE" # One of: ["NONE", "ZIP"],
    #       override_artifact_name: false,
    #       encryption_disabled: false,
    #       artifact_identifier: "String",
    #       bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #     },
    #     secondary_artifacts_override: [
    #       {
    #         type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"], # required
    #         location: "String",
    #         path: "String",
    #         namespace_type: "NONE" # One of: ["NONE", "BUILD_ID"],
    #         name: "String",
    #         packaging: "NONE" # One of: ["NONE", "ZIP"],
    #         override_artifact_name: false,
    #         encryption_disabled: false,
    #         artifact_identifier: "String",
    #         bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #       }
    #     ],
    #     environment_variables_override: [
    #       {
    #         name: "NonEmptyString", # required
    #         value: "String", # required
    #         type: "PLAINTEXT" # One of: ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #       }
    #     ],
    #     source_type_override: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"],
    #     source_location_override: "String",
    #     source_auth_override: {
    #       type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #       resource: "String"
    #     },
    #     git_clone_depth_override: 1,
    #     git_submodules_config_override: {
    #       fetch_submodules: false, # required
    #     },
    #     buildspec_override: "String",
    #     insecure_ssl_override: false,
    #     report_build_status_override: false,
    #     build_status_config_override: {
    #       context: "String",
    #       target_url: "String"
    #     },
    #     environment_type_override: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"],
    #     image_override: "NonEmptyString",
    #     compute_type_override: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"],
    #     certificate_override: "String",
    #     cache_override: {
    #       type: "NO_CACHE" # One of: ["NO_CACHE", "S3", "LOCAL"], # required
    #       location: "String",
    #       modes: ["LOCAL_DOCKER_LAYER_CACHE" # One of: ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]],
    #       cache_namespace: "String"
    #     },
    #     service_role_override: "NonEmptyString",
    #     privileged_mode_override: false,
    #     timeout_in_minutes_override: 1,
    #     queued_timeout_in_minutes_override: 1,
    #     encryption_key_override: "NonEmptyString",
    #     idempotency_token: "String",
    #     logs_config_override: {
    #       cloud_watch_logs: {
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         group_name: "String",
    #         stream_name: "String"
    #       },
    #       s3_logs: {
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         location: "String",
    #         encryption_disabled: false,
    #         bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #       }
    #     },
    #     registry_credential_override: {
    #       credential: "NonEmptyString", # required
    #       credential_provider: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER"], # required
    #     },
    #     image_pull_credentials_type_override: "CODEBUILD" # One of: ["CODEBUILD", "SERVICE_ROLE"],
    #     debug_session_enabled: false,
    #     fleet_override: {
    #       fleet_arn: "String"
    #     },
    #     auto_retry_limit_override: 1
    #   }
    #   options = {}
    #   response = client.start_build(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     build: {
    #       id: "NonEmptyString",
    #       arn: "NonEmptyString",
    #       build_number: 1,
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       current_phase: "String",
    #       build_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #       source_version: "NonEmptyString",
    #       resolved_source_version: "NonEmptyString",
    #       project_name: "NonEmptyString",
    #       phases: [
    #         {
    #           phase_type: "SUBMITTED" # One of: ["SUBMITTED", "QUEUED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"],
    #           phase_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #           start_time: Time.now,
    #           end_time: Time.now,
    #           duration_in_seconds: 1,
    #           contexts: [
    #             {
    #               status_code: "String",
    #               message: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       source: {
    #         type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #           resource: "String"
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String"
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String"
    #       },
    #       secondary_sources: [
    #         {
    #           type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #           location: "String",
    #           git_clone_depth: 1,
    #           git_submodules_config: {
    #             fetch_submodules: false, # required
    #           },
    #           buildspec: "String",
    #           auth: {
    #             type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #             resource: "String"
    #           },
    #           report_build_status: false,
    #           build_status_config: {
    #             context: "String",
    #             target_url: "String"
    #           },
    #           insecure_ssl: false,
    #           source_identifier: "String"
    #         }
    #       ],
    #       secondary_source_versions: [
    #         {
    #           source_identifier: "String", # required
    #           source_version: "String", # required
    #         }
    #       ],
    #       artifacts: {
    #         location: "String",
    #         sha256sum: "String",
    #         md5sum: "String",
    #         override_artifact_name: false,
    #         encryption_disabled: false,
    #         artifact_identifier: "String",
    #         bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #       },
    #       secondary_artifacts: [
    #         {
    #           location: "String",
    #           sha256sum: "String",
    #           md5sum: "String",
    #           override_artifact_name: false,
    #           encryption_disabled: false,
    #           artifact_identifier: "String",
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         }
    #       ],
    #       cache: {
    #         type: "NO_CACHE" # One of: ["NO_CACHE", "S3", "LOCAL"], # required
    #         location: "String",
    #         modes: ["LOCAL_DOCKER_LAYER_CACHE" # One of: ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]],
    #         cache_namespace: "String"
    #       },
    #       environment: {
    #         type: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"], # required
    #         image: "NonEmptyString", # required
    #         compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #         compute_configuration: {
    #           v_cpu: 1,
    #           memory: 1,
    #           disk: 1,
    #           machine_type: "GENERAL" # One of: ["GENERAL", "NVME"],
    #           instance_type: "NonEmptyString"
    #         },
    #         fleet: {
    #           fleet_arn: "String"
    #         },
    #         environment_variables: [
    #           {
    #             name: "NonEmptyString", # required
    #             value: "String", # required
    #             type: "PLAINTEXT" # One of: ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #           }
    #         ],
    #         privileged_mode: false,
    #         certificate: "String",
    #         registry_credential: {
    #           credential: "NonEmptyString", # required
    #           credential_provider: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER"], # required
    #         },
    #         image_pull_credentials_type: "CODEBUILD" # One of: ["CODEBUILD", "SERVICE_ROLE"],
    #         docker_server: {
    #           compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #           security_group_ids: ["NonEmptyString"],
    #           status: {
    #             status: "String",
    #             message: "String"
    #           }
    #         }
    #       },
    #       service_role: "NonEmptyString",
    #       logs: {
    #         group_name: "String",
    #         stream_name: "String",
    #         deep_link: "String",
    #         s3_deep_link: "String",
    #         cloud_watch_logs_arn: "String",
    #         s3_logs_arn: "String",
    #         cloud_watch_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           group_name: "String",
    #           stream_name: "String"
    #         },
    #         s3_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           location: "String",
    #           encryption_disabled: false,
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         }
    #       },
    #       timeout_in_minutes: 1,
    #       queued_timeout_in_minutes: 1,
    #       build_complete: false,
    #       initiator: "String",
    #       vpc_config: {
    #         vpc_id: "NonEmptyString",
    #         subnets: ["NonEmptyString"],
    #         security_group_ids: ["NonEmptyString"]
    #       },
    #       network_interface: {
    #         subnet_id: "NonEmptyString",
    #         network_interface_id: "NonEmptyString"
    #       },
    #       encryption_key: "NonEmptyString",
    #       exported_environment_variables: [
    #         {
    #           name: "NonEmptyString",
    #           value: "String"
    #         }
    #       ],
    #       report_arns: ["String"],
    #       file_system_locations: [
    #         {
    #           type: "EFS" # One of: ["EFS"],
    #           location: "String",
    #           mount_point: "String",
    #           identifier: "String",
    #           mount_options: "String"
    #         }
    #       ],
    #       debug_session: {
    #         session_enabled: false,
    #         session_target: "NonEmptyString"
    #       },
    #       build_batch_arn: "String",
    #       auto_retry_config: {
    #         auto_retry_limit: 1,
    #         auto_retry_number: 1,
    #         next_auto_retry: "String",
    #         previous_auto_retry: "String"
    #       }
    #     }
    #   }
    # @return [Types::StartBuildOutput]
    def start_build(params = {}, options = {})
      request = build_request(:start_build, params)
      request.send_request(options)
    end

    # <p>Starts a batch build for a project.</p>
    # @param [Hash, Types::StartBuildBatchInput] params
    # @option params [String] :project_name
    #   <p>The name of the project.</p>
    # @option params [Array<Types::ProjectSource>] :secondary_sources_override
    #   <p>An array of <code>ProjectSource</code> objects that override the secondary sources
    #           defined in the batch build project.</p>
    # @option params [Array<Types::ProjectSourceVersion>] :secondary_sources_version_override
    #   <p>An array of <code>ProjectSourceVersion</code> objects that override the secondary source
    #               versions in the batch build project.</p>
    # @option params [String] :source_version
    #   <p>The version of the batch build input to be built, for this build only. If not specified,
    #               the latest version is used. If specified, the contents depends on the source
    #               provider:</p>
    #            <dl>
    #               <dt>CodeCommit</dt>
    #               <dd>
    #                  <p>The commit ID, branch, or Git tag to use.</p>
    #               </dd>
    #               <dt>GitHub</dt>
    #               <dd>
    #                  <p>The commit ID, pull request ID, branch name, or tag name that corresponds
    #                           to the version of the source code you want to build. If a pull request ID is
    #                           specified, it must use the format <code>pr/pull-request-ID</code> (for
    #                           example <code>pr/25</code>). If a branch name is specified, the branch's
    #                           HEAD commit ID is used. If not specified, the default branch's HEAD commit
    #                           ID is used.</p>
    #               </dd>
    #               <dt>Bitbucket</dt>
    #               <dd>
    #                  <p>The commit ID, branch name, or tag name that corresponds to the version of
    #                           the source code you want to build. If a branch name is specified, the
    #                           branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    #                           commit ID is used.</p>
    #               </dd>
    #               <dt>Amazon S3</dt>
    #               <dd>
    #                  <p>The version ID of the object that represents the build input ZIP file to
    #                           use.</p>
    #               </dd>
    #            </dl>
    #            <p>If <code>sourceVersion</code> is specified at the project level, then this
    #                   <code>sourceVersion</code> (at the build level) takes precedence. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html">Source Version Sample
    #                   with CodeBuild</a> in the <i>CodeBuild User Guide</i>. </p>
    # @option params [Types::ProjectArtifacts] :artifacts_override
    #   <p>An array of <code>ProjectArtifacts</code> objects that contains information about the
    #               build output artifact overrides for the build project.</p>
    # @option params [Array<Types::ProjectArtifacts>] :secondary_artifacts_override
    #   <p>An array of <code>ProjectArtifacts</code> objects that override the secondary artifacts
    #               defined in the batch build project.</p>
    # @option params [Array<Types::EnvironmentVariable>] :environment_variables_override
    #   <p>An array of <code>EnvironmentVariable</code> objects that override, or add to, the
    #               environment variables defined in the batch build project.</p>
    # @option params [String] :source_type_override
    #   <p>The source input type that overrides the source input defined in the batch
    #           build project.</p>
    # @option params [String] :source_location_override
    #   <p>A location that overrides, for this batch build, the source location defined in
    #           the batch build project.</p>
    # @option params [Types::SourceAuth] :source_auth_override
    #   <p>A <code>SourceAuth</code> object that overrides the one defined in the batch build
    #               project. This override applies only if the build project's source is BitBucket or
    #               GitHub.</p>
    # @option params [Integer] :git_clone_depth_override
    #   <p>The user-defined depth of history, with a minimum value of 0, that overrides, for this
    #           batch build only, any previous depth of history defined in the batch build project.</p>
    # @option params [Types::GitSubmodulesConfig] :git_submodules_config_override
    #   <p>A <code>GitSubmodulesConfig</code> object that overrides the Git submodules configuration
    #               for this batch build.</p>
    # @option params [String] :buildspec_override
    #   <p>A buildspec file declaration that overrides, for this build only, the latest one
    #           already defined in the build project.</p>
    #            <p>If this value is set, it can be either an inline buildspec definition, the path to an
    #           alternate buildspec file relative to the value of the built-in
    #           <code>CODEBUILD_SRC_DIR</code> environment variable, or the path to an S3 bucket.
    #           The bucket must be in the same Amazon Web Services Region as the build project. Specify the buildspec
    #           file using its ARN (for example,
    #           <code>arn:aws:s3:::my-codebuild-sample2/buildspec.yml</code>). If this value is not
    #           provided or is set to an empty string, the source code must contain a buildspec file in
    #           its root directory. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage">Buildspec File Name and Storage Location</a>. </p>
    # @option params [Boolean] :insecure_ssl_override
    #   <p>Enable this flag to override the insecure SSL setting that is specified in the batch build
    #           project. The insecure SSL setting determines whether to ignore SSL warnings while
    #           connecting to the project source code. This override applies only if the build's source
    #           is GitHub Enterprise.</p>
    # @option params [Boolean] :report_build_batch_status_override
    #   <p>Set to <code>true</code> to report to your source provider the status of a batch build's
    #               start and completion. If you use this option with a source provider other than GitHub,
    #               GitHub Enterprise, or Bitbucket, an <code>invalidInputException</code> is thrown. </p>
    #            <note>
    #               <p>The status of a build triggered by a webhook is always reported to your source
    #             provider. </p>
    #            </note>
    # @option params [String] :environment_type_override
    #   <p>A container type for this batch build that overrides the one specified in the batch build
    #           project.</p>
    # @option params [String] :image_override
    #   <p>The name of an image for this batch build that overrides the one specified in the batch
    #               build project.</p>
    # @option params [String] :compute_type_override
    #   <p>The name of a compute type for this batch build that overrides the one specified in the
    #           batch build project.</p>
    # @option params [String] :certificate_override
    #   <p>The name of a certificate for this batch build that overrides the one specified in the batch build
    #           project.</p>
    # @option params [Types::ProjectCache] :cache_override
    #   <p>A <code>ProjectCache</code> object that specifies cache overrides.</p>
    # @option params [String] :service_role_override
    #   <p>The name of a service role for this batch build that overrides the one specified in the
    #           batch build project.</p>
    # @option params [Boolean] :privileged_mode_override
    #   <p>Enable this flag to override privileged mode in the batch build project.</p>
    # @option params [Integer] :build_timeout_in_minutes_override
    #   <p>Overrides the build timeout specified in the batch build project.</p>
    # @option params [Integer] :queued_timeout_in_minutes_override
    #   <p>The number of minutes a batch build is allowed to be queued before it times out.</p>
    # @option params [String] :encryption_key_override
    #   <p>The Key Management Service customer master key (CMK) that overrides the one specified in the batch build
    #           project. The CMK key encrypts the build output artifacts.</p>
    #            <note>
    #               <p>You can use a cross-account KMS key to encrypt the build output artifacts if your
    #             service role has permission to that key. </p>
    #            </note>
    #            <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    #           the format <code>alias/<alias-name></code>).</p>
    # @option params [String] :idempotency_token
    #   <p>A unique, case sensitive identifier you provide to ensure the idempotency of the
    #                   <code>StartBuildBatch</code> request. The token is included in the
    #                   <code>StartBuildBatch</code> request and is valid for five minutes. If you repeat
    #               the <code>StartBuildBatch</code> request with the same token, but change a parameter,
    #               CodeBuild returns a parameter mismatch error.</p>
    # @option params [Types::LogsConfig] :logs_config_override
    #   <p>A <code>LogsConfig</code> object that override the log settings defined in the batch build
    #               project.</p>
    # @option params [Types::RegistryCredential] :registry_credential_override
    #   <p>A <code>RegistryCredential</code> object that overrides credentials for access to a
    #               private registry.</p>
    # @option params [String] :image_pull_credentials_type_override
    #   <p>The type of credentials CodeBuild uses to pull images in your batch build. There are two valid
    #           values: </p>
    #            <dl>
    #               <dt>CODEBUILD</dt>
    #               <dd>
    #                  <p>Specifies that CodeBuild uses its own credentials. This requires that you
    #                           modify your ECR repository policy to trust CodeBuild's service principal.</p>
    #               </dd>
    #               <dt>SERVICE_ROLE</dt>
    #               <dd>
    #                  <p>Specifies that CodeBuild uses your build project's service role. </p>
    #               </dd>
    #            </dl>
    #            <p>When using a cross-account or private registry image, you must use
    #                   <code>SERVICE_ROLE</code> credentials. When using an CodeBuild curated image,
    #               you must use <code>CODEBUILD</code> credentials. </p>
    # @option params [Types::ProjectBuildBatchConfig] :build_batch_config_override
    #   <p>A <code>BuildBatchConfigOverride</code> object that contains batch build configuration
    #               overrides.</p>
    # @option params [Boolean] :debug_session_enabled
    #   <p>Specifies if session debugging is enabled for this batch build. For more information, see
    #     <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html">Viewing a running build in Session Manager</a>. Batch session debugging is not supported for matrix batch builds.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "NonEmptyString", # required
    #     secondary_sources_override: [
    #       {
    #         type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #           resource: "String"
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String"
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String"
    #       }
    #     ],
    #     secondary_sources_version_override: [
    #       {
    #         source_identifier: "String", # required
    #         source_version: "String", # required
    #       }
    #     ],
    #     source_version: "String",
    #     artifacts_override: {
    #       type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"], # required
    #       location: "String",
    #       path: "String",
    #       namespace_type: "NONE" # One of: ["NONE", "BUILD_ID"],
    #       name: "String",
    #       packaging: "NONE" # One of: ["NONE", "ZIP"],
    #       override_artifact_name: false,
    #       encryption_disabled: false,
    #       artifact_identifier: "String",
    #       bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #     },
    #     secondary_artifacts_override: [
    #       {
    #         type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"], # required
    #         location: "String",
    #         path: "String",
    #         namespace_type: "NONE" # One of: ["NONE", "BUILD_ID"],
    #         name: "String",
    #         packaging: "NONE" # One of: ["NONE", "ZIP"],
    #         override_artifact_name: false,
    #         encryption_disabled: false,
    #         artifact_identifier: "String",
    #         bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #       }
    #     ],
    #     environment_variables_override: [
    #       {
    #         name: "NonEmptyString", # required
    #         value: "String", # required
    #         type: "PLAINTEXT" # One of: ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #       }
    #     ],
    #     source_type_override: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"],
    #     source_location_override: "String",
    #     source_auth_override: {
    #       type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #       resource: "String"
    #     },
    #     git_clone_depth_override: 1,
    #     git_submodules_config_override: {
    #       fetch_submodules: false, # required
    #     },
    #     buildspec_override: "String",
    #     insecure_ssl_override: false,
    #     report_build_batch_status_override: false,
    #     environment_type_override: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"],
    #     image_override: "NonEmptyString",
    #     compute_type_override: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"],
    #     certificate_override: "String",
    #     cache_override: {
    #       type: "NO_CACHE" # One of: ["NO_CACHE", "S3", "LOCAL"], # required
    #       location: "String",
    #       modes: ["LOCAL_DOCKER_LAYER_CACHE" # One of: ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]],
    #       cache_namespace: "String"
    #     },
    #     service_role_override: "NonEmptyString",
    #     privileged_mode_override: false,
    #     build_timeout_in_minutes_override: 1,
    #     queued_timeout_in_minutes_override: 1,
    #     encryption_key_override: "NonEmptyString",
    #     idempotency_token: "String",
    #     logs_config_override: {
    #       cloud_watch_logs: {
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         group_name: "String",
    #         stream_name: "String"
    #       },
    #       s3_logs: {
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         location: "String",
    #         encryption_disabled: false,
    #         bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #       }
    #     },
    #     registry_credential_override: {
    #       credential: "NonEmptyString", # required
    #       credential_provider: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER"], # required
    #     },
    #     image_pull_credentials_type_override: "CODEBUILD" # One of: ["CODEBUILD", "SERVICE_ROLE"],
    #     build_batch_config_override: {
    #       service_role: "NonEmptyString",
    #       combine_artifacts: false,
    #       restrictions: {
    #         maximum_builds_allowed: 1,
    #         compute_types_allowed: ["NonEmptyString"],
    #         fleets_allowed: ["NonEmptyString"]
    #       },
    #       timeout_in_mins: 1,
    #       batch_report_mode: "REPORT_INDIVIDUAL_BUILDS" # One of: ["REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"]
    #     },
    #     debug_session_enabled: false
    #   }
    #   options = {}
    #   response = client.start_build_batch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     build_batch: {
    #       id: "NonEmptyString",
    #       arn: "NonEmptyString",
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       current_phase: "String",
    #       build_batch_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #       source_version: "NonEmptyString",
    #       resolved_source_version: "NonEmptyString",
    #       project_name: "NonEmptyString",
    #       phases: [
    #         {
    #           phase_type: "SUBMITTED" # One of: ["SUBMITTED", "DOWNLOAD_BATCHSPEC", "IN_PROGRESS", "COMBINE_ARTIFACTS", "SUCCEEDED", "FAILED", "STOPPED"],
    #           phase_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #           start_time: Time.now,
    #           end_time: Time.now,
    #           duration_in_seconds: 1,
    #           contexts: [
    #             {
    #               status_code: "String",
    #               message: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       source: {
    #         type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #           resource: "String"
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String"
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String"
    #       },
    #       secondary_sources: [
    #         {
    #           type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #           location: "String",
    #           git_clone_depth: 1,
    #           git_submodules_config: {
    #             fetch_submodules: false, # required
    #           },
    #           buildspec: "String",
    #           auth: {
    #             type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #             resource: "String"
    #           },
    #           report_build_status: false,
    #           build_status_config: {
    #             context: "String",
    #             target_url: "String"
    #           },
    #           insecure_ssl: false,
    #           source_identifier: "String"
    #         }
    #       ],
    #       secondary_source_versions: [
    #         {
    #           source_identifier: "String", # required
    #           source_version: "String", # required
    #         }
    #       ],
    #       artifacts: {
    #         location: "String",
    #         sha256sum: "String",
    #         md5sum: "String",
    #         override_artifact_name: false,
    #         encryption_disabled: false,
    #         artifact_identifier: "String",
    #         bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #       },
    #       secondary_artifacts: [
    #         {
    #           location: "String",
    #           sha256sum: "String",
    #           md5sum: "String",
    #           override_artifact_name: false,
    #           encryption_disabled: false,
    #           artifact_identifier: "String",
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         }
    #       ],
    #       cache: {
    #         type: "NO_CACHE" # One of: ["NO_CACHE", "S3", "LOCAL"], # required
    #         location: "String",
    #         modes: ["LOCAL_DOCKER_LAYER_CACHE" # One of: ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]],
    #         cache_namespace: "String"
    #       },
    #       environment: {
    #         type: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"], # required
    #         image: "NonEmptyString", # required
    #         compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #         compute_configuration: {
    #           v_cpu: 1,
    #           memory: 1,
    #           disk: 1,
    #           machine_type: "GENERAL" # One of: ["GENERAL", "NVME"],
    #           instance_type: "NonEmptyString"
    #         },
    #         fleet: {
    #           fleet_arn: "String"
    #         },
    #         environment_variables: [
    #           {
    #             name: "NonEmptyString", # required
    #             value: "String", # required
    #             type: "PLAINTEXT" # One of: ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #           }
    #         ],
    #         privileged_mode: false,
    #         certificate: "String",
    #         registry_credential: {
    #           credential: "NonEmptyString", # required
    #           credential_provider: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER"], # required
    #         },
    #         image_pull_credentials_type: "CODEBUILD" # One of: ["CODEBUILD", "SERVICE_ROLE"],
    #         docker_server: {
    #           compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #           security_group_ids: ["NonEmptyString"],
    #           status: {
    #             status: "String",
    #             message: "String"
    #           }
    #         }
    #       },
    #       service_role: "NonEmptyString",
    #       log_config: {
    #         cloud_watch_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           group_name: "String",
    #           stream_name: "String"
    #         },
    #         s3_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           location: "String",
    #           encryption_disabled: false,
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         }
    #       },
    #       build_timeout_in_minutes: 1,
    #       queued_timeout_in_minutes: 1,
    #       complete: false,
    #       initiator: "String",
    #       vpc_config: {
    #         vpc_id: "NonEmptyString",
    #         subnets: ["NonEmptyString"],
    #         security_group_ids: ["NonEmptyString"]
    #       },
    #       encryption_key: "NonEmptyString",
    #       build_batch_number: 1,
    #       file_system_locations: [
    #         {
    #           type: "EFS" # One of: ["EFS"],
    #           location: "String",
    #           mount_point: "String",
    #           identifier: "String",
    #           mount_options: "String"
    #         }
    #       ],
    #       build_batch_config: {
    #         service_role: "NonEmptyString",
    #         combine_artifacts: false,
    #         restrictions: {
    #           maximum_builds_allowed: 1,
    #           compute_types_allowed: ["NonEmptyString"],
    #           fleets_allowed: ["NonEmptyString"]
    #         },
    #         timeout_in_mins: 1,
    #         batch_report_mode: "REPORT_INDIVIDUAL_BUILDS" # One of: ["REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"]
    #       },
    #       build_groups: [
    #         {
    #           identifier: "String",
    #           depends_on: ["NonEmptyString"],
    #           ignore_failure: false,
    #           current_build_summary: {
    #             arn: "String",
    #             requested_on: Time.now,
    #             build_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #             primary_artifact: {
    #               type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"],
    #               location: "String",
    #               identifier: "String"
    #             },
    #             secondary_artifacts: [
    #               {
    #                 type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"],
    #                 location: "String",
    #                 identifier: "String"
    #               }
    #             ]
    #           },
    #           prior_build_summary_list: [
    #             {
    #               arn: "String",
    #               requested_on: Time.now,
    #               build_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #               primary_artifact: {
    #                 type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"],
    #                 location: "String",
    #                 identifier: "String"
    #               },
    #               secondary_artifacts: [
    #                 {
    #                   type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"],
    #                   location: "String",
    #                   identifier: "String"
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       ],
    #       debug_session_enabled: false,
    #       report_arns: ["String"]
    #     }
    #   }
    # @return [Types::StartBuildBatchOutput]
    def start_build_batch(params = {}, options = {})
      request = build_request(:start_build_batch, params)
      request.send_request(options)
    end

    # <p>Starts a command execution.</p>
    # @param [Hash, Types::StartCommandExecutionInput] params
    # @option params [String] :sandbox_id
    #   <p>A <code>sandboxId</code> or <code>sandboxArn</code>.</p>
    # @option params [String] :command
    #   <p>The command that needs to be executed.</p>
    # @option params [String] :type
    #   <p>The command type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sandbox_id: "NonEmptyString", # required
    #     command: "SensitiveNonEmptyString", # required
    #     type: "SHELL" # One of: ["SHELL"]
    #   }
    #   options = {}
    #   response = client.start_command_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     command_execution: {
    #       id: "NonEmptyString",
    #       sandbox_id: "NonEmptyString",
    #       submit_time: Time.now,
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       status: "NonEmptyString",
    #       command: "SensitiveNonEmptyString",
    #       type: "SHELL" # One of: ["SHELL"],
    #       exit_code: "NonEmptyString",
    #       standard_output_content: "SensitiveNonEmptyString",
    #       standard_err_content: "SensitiveNonEmptyString",
    #       logs: {
    #         group_name: "String",
    #         stream_name: "String",
    #         deep_link: "String",
    #         s3_deep_link: "String",
    #         cloud_watch_logs_arn: "String",
    #         s3_logs_arn: "String",
    #         cloud_watch_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           group_name: "String",
    #           stream_name: "String"
    #         },
    #         s3_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           location: "String",
    #           encryption_disabled: false,
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         }
    #       },
    #       sandbox_arn: "NonEmptyString"
    #     }
    #   }
    # @return [Types::StartCommandExecutionOutput]
    def start_command_execution(params = {}, options = {})
      request = build_request(:start_command_execution, params)
      request.send_request(options)
    end

    # <p>Starts a sandbox.</p>
    # @param [Hash, Types::StartSandboxInput] params
    # @option params [String] :project_name
    #   <p>The CodeBuild project name.</p>
    # @option params [String] :idempotency_token
    #   <p>A unique client token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "NonEmptyString",
    #     idempotency_token: "SensitiveString"
    #   }
    #   options = {}
    #   response = client.start_sandbox(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sandbox: {
    #       id: "NonEmptyString",
    #       arn: "NonEmptyString",
    #       project_name: "NonEmptyString",
    #       request_time: Time.now,
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       status: "String",
    #       source: {
    #         type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #           resource: "String"
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String"
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String"
    #       },
    #       source_version: "NonEmptyString",
    #       secondary_sources: [
    #         {
    #           type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #           location: "String",
    #           git_clone_depth: 1,
    #           git_submodules_config: {
    #             fetch_submodules: false, # required
    #           },
    #           buildspec: "String",
    #           auth: {
    #             type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #             resource: "String"
    #           },
    #           report_build_status: false,
    #           build_status_config: {
    #             context: "String",
    #             target_url: "String"
    #           },
    #           insecure_ssl: false,
    #           source_identifier: "String"
    #         }
    #       ],
    #       secondary_source_versions: [
    #         {
    #           source_identifier: "String", # required
    #           source_version: "String", # required
    #         }
    #       ],
    #       environment: {
    #         type: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"], # required
    #         image: "NonEmptyString", # required
    #         compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #         compute_configuration: {
    #           v_cpu: 1,
    #           memory: 1,
    #           disk: 1,
    #           machine_type: "GENERAL" # One of: ["GENERAL", "NVME"],
    #           instance_type: "NonEmptyString"
    #         },
    #         fleet: {
    #           fleet_arn: "String"
    #         },
    #         environment_variables: [
    #           {
    #             name: "NonEmptyString", # required
    #             value: "String", # required
    #             type: "PLAINTEXT" # One of: ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #           }
    #         ],
    #         privileged_mode: false,
    #         certificate: "String",
    #         registry_credential: {
    #           credential: "NonEmptyString", # required
    #           credential_provider: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER"], # required
    #         },
    #         image_pull_credentials_type: "CODEBUILD" # One of: ["CODEBUILD", "SERVICE_ROLE"],
    #         docker_server: {
    #           compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #           security_group_ids: ["NonEmptyString"],
    #           status: {
    #             status: "String",
    #             message: "String"
    #           }
    #         }
    #       },
    #       file_system_locations: [
    #         {
    #           type: "EFS" # One of: ["EFS"],
    #           location: "String",
    #           mount_point: "String",
    #           identifier: "String",
    #           mount_options: "String"
    #         }
    #       ],
    #       timeout_in_minutes: 1,
    #       queued_timeout_in_minutes: 1,
    #       vpc_config: {
    #         vpc_id: "NonEmptyString",
    #         subnets: ["NonEmptyString"],
    #         security_group_ids: ["NonEmptyString"]
    #       },
    #       log_config: {
    #         cloud_watch_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           group_name: "String",
    #           stream_name: "String"
    #         },
    #         s3_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           location: "String",
    #           encryption_disabled: false,
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         }
    #       },
    #       encryption_key: "NonEmptyString",
    #       service_role: "NonEmptyString",
    #       current_session: {
    #         id: "NonEmptyString",
    #         status: "String",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         current_phase: "String",
    #         phases: [
    #           {
    #             phase_type: "String",
    #             phase_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #             start_time: Time.now,
    #             end_time: Time.now,
    #             duration_in_seconds: 1,
    #             contexts: [
    #               {
    #                 status_code: "String",
    #                 message: "String"
    #               }
    #             ]
    #           }
    #         ],
    #         resolved_source_version: "NonEmptyString",
    #         logs: {
    #           group_name: "String",
    #           stream_name: "String",
    #           deep_link: "String",
    #           s3_deep_link: "String",
    #           cloud_watch_logs_arn: "String",
    #           s3_logs_arn: "String",
    #           cloud_watch_logs: {
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             group_name: "String",
    #             stream_name: "String"
    #           },
    #           s3_logs: {
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             location: "String",
    #             encryption_disabled: false,
    #             bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #           }
    #         },
    #         network_interface: {
    #           subnet_id: "NonEmptyString",
    #           network_interface_id: "NonEmptyString"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::StartSandboxOutput]
    def start_sandbox(params = {}, options = {})
      request = build_request(:start_sandbox, params)
      request.send_request(options)
    end

    # <p>Starts a sandbox connection.</p>
    # @param [Hash, Types::StartSandboxConnectionInput] params
    # @option params [String] :sandbox_id
    #   <p>A <code>sandboxId</code> or <code>sandboxArn</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sandbox_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.start_sandbox_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ssm_session: {
    #       session_id: "String",
    #       token_value: "String",
    #       stream_url: "String"
    #     }
    #   }
    # @return [Types::StartSandboxConnectionOutput]
    def start_sandbox_connection(params = {}, options = {})
      request = build_request(:start_sandbox_connection, params)
      request.send_request(options)
    end

    # <p>Attempts to stop running a build.</p>
    # @param [Hash, Types::StopBuildInput] params
    # @option params [String] :id
    #   <p>The ID of the build.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.stop_build(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     build: {
    #       id: "NonEmptyString",
    #       arn: "NonEmptyString",
    #       build_number: 1,
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       current_phase: "String",
    #       build_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #       source_version: "NonEmptyString",
    #       resolved_source_version: "NonEmptyString",
    #       project_name: "NonEmptyString",
    #       phases: [
    #         {
    #           phase_type: "SUBMITTED" # One of: ["SUBMITTED", "QUEUED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"],
    #           phase_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #           start_time: Time.now,
    #           end_time: Time.now,
    #           duration_in_seconds: 1,
    #           contexts: [
    #             {
    #               status_code: "String",
    #               message: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       source: {
    #         type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #           resource: "String"
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String"
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String"
    #       },
    #       secondary_sources: [
    #         {
    #           type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #           location: "String",
    #           git_clone_depth: 1,
    #           git_submodules_config: {
    #             fetch_submodules: false, # required
    #           },
    #           buildspec: "String",
    #           auth: {
    #             type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #             resource: "String"
    #           },
    #           report_build_status: false,
    #           build_status_config: {
    #             context: "String",
    #             target_url: "String"
    #           },
    #           insecure_ssl: false,
    #           source_identifier: "String"
    #         }
    #       ],
    #       secondary_source_versions: [
    #         {
    #           source_identifier: "String", # required
    #           source_version: "String", # required
    #         }
    #       ],
    #       artifacts: {
    #         location: "String",
    #         sha256sum: "String",
    #         md5sum: "String",
    #         override_artifact_name: false,
    #         encryption_disabled: false,
    #         artifact_identifier: "String",
    #         bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #       },
    #       secondary_artifacts: [
    #         {
    #           location: "String",
    #           sha256sum: "String",
    #           md5sum: "String",
    #           override_artifact_name: false,
    #           encryption_disabled: false,
    #           artifact_identifier: "String",
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         }
    #       ],
    #       cache: {
    #         type: "NO_CACHE" # One of: ["NO_CACHE", "S3", "LOCAL"], # required
    #         location: "String",
    #         modes: ["LOCAL_DOCKER_LAYER_CACHE" # One of: ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]],
    #         cache_namespace: "String"
    #       },
    #       environment: {
    #         type: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"], # required
    #         image: "NonEmptyString", # required
    #         compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #         compute_configuration: {
    #           v_cpu: 1,
    #           memory: 1,
    #           disk: 1,
    #           machine_type: "GENERAL" # One of: ["GENERAL", "NVME"],
    #           instance_type: "NonEmptyString"
    #         },
    #         fleet: {
    #           fleet_arn: "String"
    #         },
    #         environment_variables: [
    #           {
    #             name: "NonEmptyString", # required
    #             value: "String", # required
    #             type: "PLAINTEXT" # One of: ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #           }
    #         ],
    #         privileged_mode: false,
    #         certificate: "String",
    #         registry_credential: {
    #           credential: "NonEmptyString", # required
    #           credential_provider: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER"], # required
    #         },
    #         image_pull_credentials_type: "CODEBUILD" # One of: ["CODEBUILD", "SERVICE_ROLE"],
    #         docker_server: {
    #           compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #           security_group_ids: ["NonEmptyString"],
    #           status: {
    #             status: "String",
    #             message: "String"
    #           }
    #         }
    #       },
    #       service_role: "NonEmptyString",
    #       logs: {
    #         group_name: "String",
    #         stream_name: "String",
    #         deep_link: "String",
    #         s3_deep_link: "String",
    #         cloud_watch_logs_arn: "String",
    #         s3_logs_arn: "String",
    #         cloud_watch_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           group_name: "String",
    #           stream_name: "String"
    #         },
    #         s3_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           location: "String",
    #           encryption_disabled: false,
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         }
    #       },
    #       timeout_in_minutes: 1,
    #       queued_timeout_in_minutes: 1,
    #       build_complete: false,
    #       initiator: "String",
    #       vpc_config: {
    #         vpc_id: "NonEmptyString",
    #         subnets: ["NonEmptyString"],
    #         security_group_ids: ["NonEmptyString"]
    #       },
    #       network_interface: {
    #         subnet_id: "NonEmptyString",
    #         network_interface_id: "NonEmptyString"
    #       },
    #       encryption_key: "NonEmptyString",
    #       exported_environment_variables: [
    #         {
    #           name: "NonEmptyString",
    #           value: "String"
    #         }
    #       ],
    #       report_arns: ["String"],
    #       file_system_locations: [
    #         {
    #           type: "EFS" # One of: ["EFS"],
    #           location: "String",
    #           mount_point: "String",
    #           identifier: "String",
    #           mount_options: "String"
    #         }
    #       ],
    #       debug_session: {
    #         session_enabled: false,
    #         session_target: "NonEmptyString"
    #       },
    #       build_batch_arn: "String",
    #       auto_retry_config: {
    #         auto_retry_limit: 1,
    #         auto_retry_number: 1,
    #         next_auto_retry: "String",
    #         previous_auto_retry: "String"
    #       }
    #     }
    #   }
    # @return [Types::StopBuildOutput]
    def stop_build(params = {}, options = {})
      request = build_request(:stop_build, params)
      request.send_request(options)
    end

    # <p>Stops a running batch build.</p>
    # @param [Hash, Types::StopBuildBatchInput] params
    # @option params [String] :id
    #   <p>The identifier of the batch build to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.stop_build_batch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     build_batch: {
    #       id: "NonEmptyString",
    #       arn: "NonEmptyString",
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       current_phase: "String",
    #       build_batch_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #       source_version: "NonEmptyString",
    #       resolved_source_version: "NonEmptyString",
    #       project_name: "NonEmptyString",
    #       phases: [
    #         {
    #           phase_type: "SUBMITTED" # One of: ["SUBMITTED", "DOWNLOAD_BATCHSPEC", "IN_PROGRESS", "COMBINE_ARTIFACTS", "SUCCEEDED", "FAILED", "STOPPED"],
    #           phase_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #           start_time: Time.now,
    #           end_time: Time.now,
    #           duration_in_seconds: 1,
    #           contexts: [
    #             {
    #               status_code: "String",
    #               message: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       source: {
    #         type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #           resource: "String"
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String"
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String"
    #       },
    #       secondary_sources: [
    #         {
    #           type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #           location: "String",
    #           git_clone_depth: 1,
    #           git_submodules_config: {
    #             fetch_submodules: false, # required
    #           },
    #           buildspec: "String",
    #           auth: {
    #             type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #             resource: "String"
    #           },
    #           report_build_status: false,
    #           build_status_config: {
    #             context: "String",
    #             target_url: "String"
    #           },
    #           insecure_ssl: false,
    #           source_identifier: "String"
    #         }
    #       ],
    #       secondary_source_versions: [
    #         {
    #           source_identifier: "String", # required
    #           source_version: "String", # required
    #         }
    #       ],
    #       artifacts: {
    #         location: "String",
    #         sha256sum: "String",
    #         md5sum: "String",
    #         override_artifact_name: false,
    #         encryption_disabled: false,
    #         artifact_identifier: "String",
    #         bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #       },
    #       secondary_artifacts: [
    #         {
    #           location: "String",
    #           sha256sum: "String",
    #           md5sum: "String",
    #           override_artifact_name: false,
    #           encryption_disabled: false,
    #           artifact_identifier: "String",
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         }
    #       ],
    #       cache: {
    #         type: "NO_CACHE" # One of: ["NO_CACHE", "S3", "LOCAL"], # required
    #         location: "String",
    #         modes: ["LOCAL_DOCKER_LAYER_CACHE" # One of: ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]],
    #         cache_namespace: "String"
    #       },
    #       environment: {
    #         type: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"], # required
    #         image: "NonEmptyString", # required
    #         compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #         compute_configuration: {
    #           v_cpu: 1,
    #           memory: 1,
    #           disk: 1,
    #           machine_type: "GENERAL" # One of: ["GENERAL", "NVME"],
    #           instance_type: "NonEmptyString"
    #         },
    #         fleet: {
    #           fleet_arn: "String"
    #         },
    #         environment_variables: [
    #           {
    #             name: "NonEmptyString", # required
    #             value: "String", # required
    #             type: "PLAINTEXT" # One of: ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #           }
    #         ],
    #         privileged_mode: false,
    #         certificate: "String",
    #         registry_credential: {
    #           credential: "NonEmptyString", # required
    #           credential_provider: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER"], # required
    #         },
    #         image_pull_credentials_type: "CODEBUILD" # One of: ["CODEBUILD", "SERVICE_ROLE"],
    #         docker_server: {
    #           compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #           security_group_ids: ["NonEmptyString"],
    #           status: {
    #             status: "String",
    #             message: "String"
    #           }
    #         }
    #       },
    #       service_role: "NonEmptyString",
    #       log_config: {
    #         cloud_watch_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           group_name: "String",
    #           stream_name: "String"
    #         },
    #         s3_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           location: "String",
    #           encryption_disabled: false,
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         }
    #       },
    #       build_timeout_in_minutes: 1,
    #       queued_timeout_in_minutes: 1,
    #       complete: false,
    #       initiator: "String",
    #       vpc_config: {
    #         vpc_id: "NonEmptyString",
    #         subnets: ["NonEmptyString"],
    #         security_group_ids: ["NonEmptyString"]
    #       },
    #       encryption_key: "NonEmptyString",
    #       build_batch_number: 1,
    #       file_system_locations: [
    #         {
    #           type: "EFS" # One of: ["EFS"],
    #           location: "String",
    #           mount_point: "String",
    #           identifier: "String",
    #           mount_options: "String"
    #         }
    #       ],
    #       build_batch_config: {
    #         service_role: "NonEmptyString",
    #         combine_artifacts: false,
    #         restrictions: {
    #           maximum_builds_allowed: 1,
    #           compute_types_allowed: ["NonEmptyString"],
    #           fleets_allowed: ["NonEmptyString"]
    #         },
    #         timeout_in_mins: 1,
    #         batch_report_mode: "REPORT_INDIVIDUAL_BUILDS" # One of: ["REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"]
    #       },
    #       build_groups: [
    #         {
    #           identifier: "String",
    #           depends_on: ["NonEmptyString"],
    #           ignore_failure: false,
    #           current_build_summary: {
    #             arn: "String",
    #             requested_on: Time.now,
    #             build_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #             primary_artifact: {
    #               type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"],
    #               location: "String",
    #               identifier: "String"
    #             },
    #             secondary_artifacts: [
    #               {
    #                 type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"],
    #                 location: "String",
    #                 identifier: "String"
    #               }
    #             ]
    #           },
    #           prior_build_summary_list: [
    #             {
    #               arn: "String",
    #               requested_on: Time.now,
    #               build_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #               primary_artifact: {
    #                 type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"],
    #                 location: "String",
    #                 identifier: "String"
    #               },
    #               secondary_artifacts: [
    #                 {
    #                   type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"],
    #                   location: "String",
    #                   identifier: "String"
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       ],
    #       debug_session_enabled: false,
    #       report_arns: ["String"]
    #     }
    #   }
    # @return [Types::StopBuildBatchOutput]
    def stop_build_batch(params = {}, options = {})
      request = build_request(:stop_build_batch, params)
      request.send_request(options)
    end

    # <p>Stops a sandbox.</p>
    # @param [Hash, Types::StopSandboxInput] params
    # @option params [String] :id
    #   <p>Information about the requested sandbox ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.stop_sandbox(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sandbox: {
    #       id: "NonEmptyString",
    #       arn: "NonEmptyString",
    #       project_name: "NonEmptyString",
    #       request_time: Time.now,
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       status: "String",
    #       source: {
    #         type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #           resource: "String"
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String"
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String"
    #       },
    #       source_version: "NonEmptyString",
    #       secondary_sources: [
    #         {
    #           type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #           location: "String",
    #           git_clone_depth: 1,
    #           git_submodules_config: {
    #             fetch_submodules: false, # required
    #           },
    #           buildspec: "String",
    #           auth: {
    #             type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #             resource: "String"
    #           },
    #           report_build_status: false,
    #           build_status_config: {
    #             context: "String",
    #             target_url: "String"
    #           },
    #           insecure_ssl: false,
    #           source_identifier: "String"
    #         }
    #       ],
    #       secondary_source_versions: [
    #         {
    #           source_identifier: "String", # required
    #           source_version: "String", # required
    #         }
    #       ],
    #       environment: {
    #         type: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"], # required
    #         image: "NonEmptyString", # required
    #         compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #         compute_configuration: {
    #           v_cpu: 1,
    #           memory: 1,
    #           disk: 1,
    #           machine_type: "GENERAL" # One of: ["GENERAL", "NVME"],
    #           instance_type: "NonEmptyString"
    #         },
    #         fleet: {
    #           fleet_arn: "String"
    #         },
    #         environment_variables: [
    #           {
    #             name: "NonEmptyString", # required
    #             value: "String", # required
    #             type: "PLAINTEXT" # One of: ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #           }
    #         ],
    #         privileged_mode: false,
    #         certificate: "String",
    #         registry_credential: {
    #           credential: "NonEmptyString", # required
    #           credential_provider: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER"], # required
    #         },
    #         image_pull_credentials_type: "CODEBUILD" # One of: ["CODEBUILD", "SERVICE_ROLE"],
    #         docker_server: {
    #           compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #           security_group_ids: ["NonEmptyString"],
    #           status: {
    #             status: "String",
    #             message: "String"
    #           }
    #         }
    #       },
    #       file_system_locations: [
    #         {
    #           type: "EFS" # One of: ["EFS"],
    #           location: "String",
    #           mount_point: "String",
    #           identifier: "String",
    #           mount_options: "String"
    #         }
    #       ],
    #       timeout_in_minutes: 1,
    #       queued_timeout_in_minutes: 1,
    #       vpc_config: {
    #         vpc_id: "NonEmptyString",
    #         subnets: ["NonEmptyString"],
    #         security_group_ids: ["NonEmptyString"]
    #       },
    #       log_config: {
    #         cloud_watch_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           group_name: "String",
    #           stream_name: "String"
    #         },
    #         s3_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           location: "String",
    #           encryption_disabled: false,
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         }
    #       },
    #       encryption_key: "NonEmptyString",
    #       service_role: "NonEmptyString",
    #       current_session: {
    #         id: "NonEmptyString",
    #         status: "String",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         current_phase: "String",
    #         phases: [
    #           {
    #             phase_type: "String",
    #             phase_status: "SUCCEEDED" # One of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"],
    #             start_time: Time.now,
    #             end_time: Time.now,
    #             duration_in_seconds: 1,
    #             contexts: [
    #               {
    #                 status_code: "String",
    #                 message: "String"
    #               }
    #             ]
    #           }
    #         ],
    #         resolved_source_version: "NonEmptyString",
    #         logs: {
    #           group_name: "String",
    #           stream_name: "String",
    #           deep_link: "String",
    #           s3_deep_link: "String",
    #           cloud_watch_logs_arn: "String",
    #           s3_logs_arn: "String",
    #           cloud_watch_logs: {
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             group_name: "String",
    #             stream_name: "String"
    #           },
    #           s3_logs: {
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             location: "String",
    #             encryption_disabled: false,
    #             bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #           }
    #         },
    #         network_interface: {
    #           subnet_id: "NonEmptyString",
    #           network_interface_id: "NonEmptyString"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::StopSandboxOutput]
    def stop_sandbox(params = {}, options = {})
      request = build_request(:stop_sandbox, params)
      request.send_request(options)
    end

    # <p>Updates a compute fleet.</p>
    # @param [Hash, Types::UpdateFleetInput] params
    # @option params [String] :arn
    #   <p>The ARN of the compute fleet.</p>
    # @option params [Integer] :base_capacity
    #   <p>The initial number of machines allocated to the compute ﬂeet, which deﬁnes the number of builds that can
    #               run in parallel.</p>
    # @option params [String] :environment_type
    #   <p>The environment type of the compute fleet.</p>
    #            <ul>
    #               <li>
    #                  <p>The environment type <code>ARM_CONTAINER</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland),
    #                       Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia Pacific (Singapore), Asia Pacific (Sydney), 
    #                       EU (Frankfurt), and South America (São Paulo).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>ARM_EC2</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>LINUX_CONTAINER</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>LINUX_EC2</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>LINUX_GPU_CONTAINER</code> is available only in
    #                       regions US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo), and Asia Pacific (Sydney).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>MAC_ARM</code> is available for Medium fleets only in
    #                       regions US East (N. Virginia), US East (Ohio), US West (Oregon), Asia Pacific (Sydney), 
    #                       and EU (Frankfurt)</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>MAC_ARM</code> is available for Large fleets only in
    #                       regions US East (N. Virginia), US East (Ohio), US West (Oregon), and Asia Pacific (Sydney).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>WINDOWS_EC2</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>WINDOWS_SERVER_2019_CONTAINER</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), Asia Pacific (Sydney), 
    #                       Asia Pacific (Tokyo), Asia Pacific (Mumbai) and
    #                       EU (Ireland).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>WINDOWS_SERVER_2022_CONTAINER</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), EU (Frankfurt), 
    #                       Asia Pacific (Sydney), Asia Pacific (Singapore), Asia Pacific (Tokyo), South America (São Paulo) and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html">Build environment compute types</a> in the <i>CodeBuild
    #                   user guide</i>.</p>
    # @option params [String] :compute_type
    #   <p>Information about the compute resources the compute fleet uses. Available values
    #               include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ATTRIBUTE_BASED_COMPUTE</code>: Specify the amount of vCPUs, memory, disk space, and the type of machine.</p>
    #                  <note>
    #                     <p> If you use <code>ATTRIBUTE_BASED_COMPUTE</code>, you must define your attributes by using <code>computeConfiguration</code>. CodeBuild 
    #                           will select the cheapest instance that satisfies your specified attributes. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.types">Reserved capacity environment 
    #                           types</a> in the <i>CodeBuild User Guide</i>.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_INSTANCE_TYPE</code>: Specify the instance type for your compute fleet. For a list of supported instance types, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.instance-types">Supported instance families
    #                           </a> in the <i>CodeBuild User Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_SMALL</code>: Use up to 4 GiB memory and 2 vCPUs for
    #                       builds.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_MEDIUM</code>: Use up to 8 GiB memory and 4 vCPUs for
    #                       builds.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_LARGE</code>: Use up to 16 GiB memory and 8 vCPUs for
    #                       builds, depending on your environment type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_XLARGE</code>: Use up to 72 GiB memory and 36 vCPUs for
    #                       builds, depending on your environment type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_2XLARGE</code>: Use up to 144 GiB memory, 72 vCPUs, and
    #                       824 GB of SSD storage for builds. This compute type supports Docker images up to
    #                       100 GB uncompressed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_1GB</code>: Use up to 1 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_2GB</code>: Use up to 2 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_4GB</code>: Use up to 4 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_8GB</code>: Use up to 8 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_10GB</code>: Use up to 10 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #            </ul>
    #            <p> If you use <code>BUILD_GENERAL1_SMALL</code>: </p>
    #            <ul>
    #               <li>
    #                  <p> For environment type <code>LINUX_CONTAINER</code>, you can use up to 4 GiB
    #                       memory and 2 vCPUs for builds. </p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>LINUX_GPU_CONTAINER</code>, you can use up to 16
    #                       GiB memory, 4 vCPUs, and 1 NVIDIA A10G Tensor Core GPU for builds.</p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>ARM_CONTAINER</code>, you can use up to 4 GiB
    #                       memory and 2 vCPUs on ARM-based processors for builds.</p>
    #               </li>
    #            </ul>
    #            <p> If you use <code>BUILD_GENERAL1_LARGE</code>: </p>
    #            <ul>
    #               <li>
    #                  <p> For environment type <code>LINUX_CONTAINER</code>, you can use up to 16 GiB
    #                       memory and 8 vCPUs for builds. </p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>LINUX_GPU_CONTAINER</code>, you can use up to 255
    #                       GiB memory, 32 vCPUs, and 4 NVIDIA Tesla V100 GPUs for builds.</p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>ARM_CONTAINER</code>, you can use up to 16 GiB
    #                       memory and 8 vCPUs on ARM-based processors for builds.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types">On-demand environment types</a> 
    #                   in the <i>CodeBuild User Guide.</i>
    #            </p>
    # @option params [Types::ComputeConfiguration] :compute_configuration
    #   <p>The compute configuration of the compute fleet. This is only required if <code>computeType</code> is set to <code>ATTRIBUTE_BASED_COMPUTE</code> or <code>CUSTOM_INSTANCE_TYPE</code>.</p>
    # @option params [Types::ScalingConfigurationInput] :scaling_configuration
    #   <p>The scaling configuration of the compute fleet.</p>
    # @option params [String] :overflow_behavior
    #   <p>The compute fleet overflow behavior.</p>
    #            <ul>
    #               <li>
    #                  <p>For overflow behavior <code>QUEUE</code>, your overflow builds need to wait on 
    #                       the existing fleet instance to become available.</p>
    #               </li>
    #               <li>
    #                  <p>For overflow behavior <code>ON_DEMAND</code>, your overflow builds run on CodeBuild on-demand.</p>
    #                  <note>
    #                     <p>If you choose to set your overflow behavior to on-demand while creating a VPC-connected 
    #                       fleet, make sure that you add the required VPC permissions to your project service role. For more 
    #                       information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-create-vpc-network-interface">Example 
    #                       policy statement to allow CodeBuild access to Amazon Web Services services required to create a VPC network interface</a>.</p>
    #                  </note>
    #               </li>
    #            </ul>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>Information about the VPC configuration that CodeBuild accesses.</p>
    # @option params [Types::ProxyConfiguration] :proxy_configuration
    #   <p>The proxy configuration of the compute fleet.</p>
    # @option params [String] :image_id
    #   <p>The Amazon Machine Image (AMI) of the compute fleet.</p>
    # @option params [String] :fleet_service_role
    #   <p>The service role associated with the compute fleet. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-permission-policy-fleet-service-role.html">
    #               Allow a user to add a permission policy for a fleet service role</a> in the <i>CodeBuild User Guide</i>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tag key and value pairs associated with this compute fleet.</p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild build project
    #         tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "NonEmptyString", # required
    #     base_capacity: 1,
    #     environment_type: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"],
    #     compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"],
    #     compute_configuration: {
    #       v_cpu: 1,
    #       memory: 1,
    #       disk: 1,
    #       machine_type: "GENERAL" # One of: ["GENERAL", "NVME"],
    #       instance_type: "NonEmptyString"
    #     },
    #     scaling_configuration: {
    #       scaling_type: "TARGET_TRACKING_SCALING" # One of: ["TARGET_TRACKING_SCALING"],
    #       target_tracking_scaling_configs: [
    #         {
    #           metric_type: "FLEET_UTILIZATION_RATE" # One of: ["FLEET_UTILIZATION_RATE"],
    #           target_value: 1.0
    #         }
    #       ],
    #       max_capacity: 1
    #     },
    #     overflow_behavior: "QUEUE" # One of: ["QUEUE", "ON_DEMAND"],
    #     vpc_config: {
    #       vpc_id: "NonEmptyString",
    #       subnets: ["NonEmptyString"],
    #       security_group_ids: ["NonEmptyString"]
    #     },
    #     proxy_configuration: {
    #       default_behavior: "ALLOW_ALL" # One of: ["ALLOW_ALL", "DENY_ALL"],
    #       ordered_proxy_rules: [
    #         {
    #           type: "DOMAIN" # One of: ["DOMAIN", "IP"], # required
    #           effect: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #           entities: ["String"], # required
    #         }
    #       ]
    #     },
    #     image_id: "NonEmptyString",
    #     fleet_service_role: "NonEmptyString",
    #     tags: [
    #       {
    #         key: "KeyInput",
    #         value: "ValueInput"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet: {
    #       arn: "NonEmptyString",
    #       name: "FleetName",
    #       id: "NonEmptyString",
    #       created: Time.now,
    #       last_modified: Time.now,
    #       status: {
    #         status_code: "CREATING" # One of: ["CREATING", "UPDATING", "ROTATING", "PENDING_DELETION", "DELETING", "CREATE_FAILED", "UPDATE_ROLLBACK_FAILED", "ACTIVE"],
    #         context: "CREATE_FAILED" # One of: ["CREATE_FAILED", "UPDATE_FAILED", "ACTION_REQUIRED", "PENDING_DELETION", "INSUFFICIENT_CAPACITY"],
    #         message: "String"
    #       },
    #       base_capacity: 1,
    #       environment_type: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"],
    #       compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"],
    #       compute_configuration: {
    #         v_cpu: 1,
    #         memory: 1,
    #         disk: 1,
    #         machine_type: "GENERAL" # One of: ["GENERAL", "NVME"],
    #         instance_type: "NonEmptyString"
    #       },
    #       scaling_configuration: {
    #         scaling_type: "TARGET_TRACKING_SCALING" # One of: ["TARGET_TRACKING_SCALING"],
    #         target_tracking_scaling_configs: [
    #           {
    #             metric_type: "FLEET_UTILIZATION_RATE" # One of: ["FLEET_UTILIZATION_RATE"],
    #             target_value: 1.0
    #           }
    #         ],
    #         max_capacity: 1,
    #         desired_capacity: 1
    #       },
    #       overflow_behavior: "QUEUE" # One of: ["QUEUE", "ON_DEMAND"],
    #       vpc_config: {
    #         vpc_id: "NonEmptyString",
    #         subnets: ["NonEmptyString"],
    #         security_group_ids: ["NonEmptyString"]
    #       },
    #       proxy_configuration: {
    #         default_behavior: "ALLOW_ALL" # One of: ["ALLOW_ALL", "DENY_ALL"],
    #         ordered_proxy_rules: [
    #           {
    #             type: "DOMAIN" # One of: ["DOMAIN", "IP"], # required
    #             effect: "ALLOW" # One of: ["ALLOW", "DENY"], # required
    #             entities: ["String"], # required
    #           }
    #         ]
    #       },
    #       image_id: "NonEmptyString",
    #       fleet_service_role: "NonEmptyString",
    #       tags: [
    #         {
    #           key: "KeyInput",
    #           value: "ValueInput"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateFleetOutput]
    def update_fleet(params = {}, options = {})
      request = build_request(:update_fleet, params)
      request.send_request(options)
    end

    # <p>Changes the settings of a build project.</p>
    # @param [Hash, Types::UpdateProjectInput] params
    # @option params [String] :name
    #   <p>The name of the build project.</p>
    #            <note>
    #               <p>You cannot change a build project's name.</p>
    #            </note>
    # @option params [String] :description
    #   <p>A new or replacement description of the build project.</p>
    # @option params [Types::ProjectSource] :source
    #   <p>Information to be changed about the build input source code for the build
    #       project.</p>
    # @option params [Array<Types::ProjectSource>] :secondary_sources
    #   <p> An array of <code>ProjectSource</code> objects. </p>
    # @option params [String] :source_version
    #   <p> A version of the build input to be built for this project. If not specified, the
    #       latest version is used. If specified, it must be one of: </p>
    #            <ul>
    #               <li>
    #                  <p>For CodeCommit: the commit ID, branch, or Git tag to use.</p>
    #               </li>
    #               <li>
    #                  <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
    #               corresponds to the version of the source code you want to build. If a pull
    #               request ID is specified, it must use the format <code>pr/pull-request-ID</code>
    #               (for example <code>pr/25</code>). If a branch name is specified, the branch's
    #               HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
    #               used.</p>
    #               </li>
    #               <li>
    #                  <p>For GitLab: the commit ID, branch, or Git tag to use.</p>
    #               </li>
    #               <li>
    #                  <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
    #               version of the source code you want to build. If a branch name is specified, the
    #               branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    #               commit ID is used.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon S3: the version ID of the object that represents the build input ZIP
    #               file to use.</p>
    #               </li>
    #            </ul>
    #            <p> If <code>sourceVersion</code> is specified at the build level, then that version
    #       takes precedence over this <code>sourceVersion</code> (at the project level). </p>
    #            <p> For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html">Source Version Sample
    #           with CodeBuild</a> in the <i>CodeBuild User Guide</i>. 
    #       </p>
    # @option params [Array<Types::ProjectSourceVersion>] :secondary_source_versions
    #   <p> An array of <code>ProjectSourceVersion</code> objects. If
    #         <code>secondarySourceVersions</code> is specified at the build level, then they take
    #       over these <code>secondarySourceVersions</code> (at the project level). </p>
    # @option params [Types::ProjectArtifacts] :artifacts
    #   <p>Information to be changed about the build output artifacts for the build
    #           project.</p>
    # @option params [Array<Types::ProjectArtifacts>] :secondary_artifacts
    #   <p> An array of <code>ProjectArtifact</code> objects. </p>
    # @option params [Types::ProjectCache] :cache
    #   <p>Stores recently used information so that it can be quickly accessed at a later
    #         time.</p>
    # @option params [Types::ProjectEnvironment] :environment
    #   <p>Information to be changed about the build environment for the build project.</p>
    # @option params [String] :service_role
    #   <p>The replacement ARN of the IAM role that enables CodeBuild to interact with dependent
    #       Amazon Web Services services on behalf of the Amazon Web Services account.</p>
    # @option params [Integer] :timeout_in_minutes
    #   <p>The replacement value in minutes, from 5 to 2160 (36 hours), for CodeBuild to wait before
    #         timing out any related build that did not get marked as completed.</p>
    # @option params [Integer] :queued_timeout_in_minutes
    #   <p> The number of minutes a build is allowed to be queued before it times out. </p>
    # @option params [String] :encryption_key
    #   <p>The Key Management Service customer master key (CMK) to be used for encrypting the build output
    #       artifacts.</p>
    #            <note>
    #               <p> You can use a cross-account KMS key to encrypt the build output artifacts if your
    #           service role has permission to that key. </p>
    #            </note>
    #            <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    #       the format <code>alias/<alias-name></code>).
    #       </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An updated list of tag key and value pairs associated with this build project.</p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild build project
    #         tags.</p>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>VpcConfig enables CodeBuild to access resources in an Amazon VPC.</p>
    # @option params [Boolean] :badge_enabled
    #   <p>Set this to true to generate a publicly accessible URL for your project's build
    #         badge.</p>
    # @option params [Types::LogsConfig] :logs_config
    #   <p> Information about logs for the build project. A project can create logs in CloudWatch Logs,
    #       logs in an S3 bucket, or both. </p>
    # @option params [Array<Types::ProjectFileSystemLocation>] :file_system_locations
    #   <p>
    #         An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object 
    #         specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>, 
    #         <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System.
    #     </p>
    # @option params [Types::ProjectBuildBatchConfig] :build_batch_config
    #   <p>Contains configuration information about a batch build project.</p>
    # @option params [Integer] :concurrent_build_limit
    #   <p>The maximum number of concurrent builds that are allowed for this project.</p>
    #            <p>New builds are only started if the current number of builds is less than or equal to this limit. 
    #     If the current build count meets this limit, new builds are throttled and are not run.</p>
    #            <p>To remove this limit, set this value to -1.</p>
    # @option params [Integer] :auto_retry_limit
    #   <p>The maximum number of additional automatic retries after a failed build. For example, if the 
    #         auto-retry limit is set to 2, CodeBuild will call the <code>RetryBuild</code> API to automatically 
    #         retry your build for up to 2 additional times.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NonEmptyString", # required
    #     description: "ProjectDescription",
    #     source: {
    #       type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #       location: "String",
    #       git_clone_depth: 1,
    #       git_submodules_config: {
    #         fetch_submodules: false, # required
    #       },
    #       buildspec: "String",
    #       auth: {
    #         type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #         resource: "String"
    #       },
    #       report_build_status: false,
    #       build_status_config: {
    #         context: "String",
    #         target_url: "String"
    #       },
    #       insecure_ssl: false,
    #       source_identifier: "String"
    #     },
    #     secondary_sources: [
    #       {
    #         type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #           resource: "String"
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String"
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String"
    #       }
    #     ],
    #     source_version: "String",
    #     secondary_source_versions: [
    #       {
    #         source_identifier: "String", # required
    #         source_version: "String", # required
    #       }
    #     ],
    #     artifacts: {
    #       type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"], # required
    #       location: "String",
    #       path: "String",
    #       namespace_type: "NONE" # One of: ["NONE", "BUILD_ID"],
    #       name: "String",
    #       packaging: "NONE" # One of: ["NONE", "ZIP"],
    #       override_artifact_name: false,
    #       encryption_disabled: false,
    #       artifact_identifier: "String",
    #       bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #     },
    #     secondary_artifacts: [
    #       {
    #         type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"], # required
    #         location: "String",
    #         path: "String",
    #         namespace_type: "NONE" # One of: ["NONE", "BUILD_ID"],
    #         name: "String",
    #         packaging: "NONE" # One of: ["NONE", "ZIP"],
    #         override_artifact_name: false,
    #         encryption_disabled: false,
    #         artifact_identifier: "String",
    #         bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #       }
    #     ],
    #     cache: {
    #       type: "NO_CACHE" # One of: ["NO_CACHE", "S3", "LOCAL"], # required
    #       location: "String",
    #       modes: ["LOCAL_DOCKER_LAYER_CACHE" # One of: ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]],
    #       cache_namespace: "String"
    #     },
    #     environment: {
    #       type: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"], # required
    #       image: "NonEmptyString", # required
    #       compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #       compute_configuration: {
    #         v_cpu: 1,
    #         memory: 1,
    #         disk: 1,
    #         machine_type: "GENERAL" # One of: ["GENERAL", "NVME"],
    #         instance_type: "NonEmptyString"
    #       },
    #       fleet: {
    #         fleet_arn: "String"
    #       },
    #       environment_variables: [
    #         {
    #           name: "NonEmptyString", # required
    #           value: "String", # required
    #           type: "PLAINTEXT" # One of: ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #         }
    #       ],
    #       privileged_mode: false,
    #       certificate: "String",
    #       registry_credential: {
    #         credential: "NonEmptyString", # required
    #         credential_provider: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER"], # required
    #       },
    #       image_pull_credentials_type: "CODEBUILD" # One of: ["CODEBUILD", "SERVICE_ROLE"],
    #       docker_server: {
    #         compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #         security_group_ids: ["NonEmptyString"],
    #         status: {
    #           status: "String",
    #           message: "String"
    #         }
    #       }
    #     },
    #     service_role: "NonEmptyString",
    #     timeout_in_minutes: 1,
    #     queued_timeout_in_minutes: 1,
    #     encryption_key: "NonEmptyString",
    #     tags: [
    #       {
    #         key: "KeyInput",
    #         value: "ValueInput"
    #       }
    #     ],
    #     vpc_config: {
    #       vpc_id: "NonEmptyString",
    #       subnets: ["NonEmptyString"],
    #       security_group_ids: ["NonEmptyString"]
    #     },
    #     badge_enabled: false,
    #     logs_config: {
    #       cloud_watch_logs: {
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         group_name: "String",
    #         stream_name: "String"
    #       },
    #       s3_logs: {
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         location: "String",
    #         encryption_disabled: false,
    #         bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #       }
    #     },
    #     file_system_locations: [
    #       {
    #         type: "EFS" # One of: ["EFS"],
    #         location: "String",
    #         mount_point: "String",
    #         identifier: "String",
    #         mount_options: "String"
    #       }
    #     ],
    #     build_batch_config: {
    #       service_role: "NonEmptyString",
    #       combine_artifacts: false,
    #       restrictions: {
    #         maximum_builds_allowed: 1,
    #         compute_types_allowed: ["NonEmptyString"],
    #         fleets_allowed: ["NonEmptyString"]
    #       },
    #       timeout_in_mins: 1,
    #       batch_report_mode: "REPORT_INDIVIDUAL_BUILDS" # One of: ["REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"]
    #     },
    #     concurrent_build_limit: 1,
    #     auto_retry_limit: 1
    #   }
    #   options = {}
    #   response = client.update_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project: {
    #       name: "ProjectName",
    #       arn: "String",
    #       description: "ProjectDescription",
    #       source: {
    #         type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #           resource: "String"
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String"
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String"
    #       },
    #       secondary_sources: [
    #         {
    #           type: "CODECOMMIT" # One of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"], # required
    #           location: "String",
    #           git_clone_depth: 1,
    #           git_submodules_config: {
    #             fetch_submodules: false, # required
    #           },
    #           buildspec: "String",
    #           auth: {
    #             type: "OAUTH" # One of: ["OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"], # required
    #             resource: "String"
    #           },
    #           report_build_status: false,
    #           build_status_config: {
    #             context: "String",
    #             target_url: "String"
    #           },
    #           insecure_ssl: false,
    #           source_identifier: "String"
    #         }
    #       ],
    #       source_version: "String",
    #       secondary_source_versions: [
    #         {
    #           source_identifier: "String", # required
    #           source_version: "String", # required
    #         }
    #       ],
    #       artifacts: {
    #         type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"], # required
    #         location: "String",
    #         path: "String",
    #         namespace_type: "NONE" # One of: ["NONE", "BUILD_ID"],
    #         name: "String",
    #         packaging: "NONE" # One of: ["NONE", "ZIP"],
    #         override_artifact_name: false,
    #         encryption_disabled: false,
    #         artifact_identifier: "String",
    #         bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #       },
    #       secondary_artifacts: [
    #         {
    #           type: "CODEPIPELINE" # One of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"], # required
    #           location: "String",
    #           path: "String",
    #           namespace_type: "NONE" # One of: ["NONE", "BUILD_ID"],
    #           name: "String",
    #           packaging: "NONE" # One of: ["NONE", "ZIP"],
    #           override_artifact_name: false,
    #           encryption_disabled: false,
    #           artifact_identifier: "String",
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         }
    #       ],
    #       cache: {
    #         type: "NO_CACHE" # One of: ["NO_CACHE", "S3", "LOCAL"], # required
    #         location: "String",
    #         modes: ["LOCAL_DOCKER_LAYER_CACHE" # One of: ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]],
    #         cache_namespace: "String"
    #       },
    #       environment: {
    #         type: "WINDOWS_CONTAINER" # One of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"], # required
    #         image: "NonEmptyString", # required
    #         compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #         compute_configuration: {
    #           v_cpu: 1,
    #           memory: 1,
    #           disk: 1,
    #           machine_type: "GENERAL" # One of: ["GENERAL", "NVME"],
    #           instance_type: "NonEmptyString"
    #         },
    #         fleet: {
    #           fleet_arn: "String"
    #         },
    #         environment_variables: [
    #           {
    #             name: "NonEmptyString", # required
    #             value: "String", # required
    #             type: "PLAINTEXT" # One of: ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #           }
    #         ],
    #         privileged_mode: false,
    #         certificate: "String",
    #         registry_credential: {
    #           credential: "NonEmptyString", # required
    #           credential_provider: "SECRETS_MANAGER" # One of: ["SECRETS_MANAGER"], # required
    #         },
    #         image_pull_credentials_type: "CODEBUILD" # One of: ["CODEBUILD", "SERVICE_ROLE"],
    #         docker_server: {
    #           compute_type: "BUILD_GENERAL1_SMALL" # One of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"], # required
    #           security_group_ids: ["NonEmptyString"],
    #           status: {
    #             status: "String",
    #             message: "String"
    #           }
    #         }
    #       },
    #       service_role: "NonEmptyString",
    #       timeout_in_minutes: 1,
    #       queued_timeout_in_minutes: 1,
    #       encryption_key: "NonEmptyString",
    #       tags: [
    #         {
    #           key: "KeyInput",
    #           value: "ValueInput"
    #         }
    #       ],
    #       created: Time.now,
    #       last_modified: Time.now,
    #       webhook: {
    #         url: "NonEmptyString",
    #         payload_url: "NonEmptyString",
    #         secret: "NonEmptyString",
    #         branch_filter: "String",
    #         filter_groups: [
    #           [
    #             {
    #               type: "EVENT" # One of: ["EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE", "WORKFLOW_NAME", "TAG_NAME", "RELEASE_NAME", "REPOSITORY_NAME", "ORGANIZATION_NAME"], # required
    #               pattern: "String", # required
    #               exclude_matched_pattern: false
    #             }
    #           ]
    #         ],
    #         build_type: "BUILD" # One of: ["BUILD", "BUILD_BATCH", "RUNNER_BUILDKITE_BUILD"],
    #         manual_creation: false,
    #         last_modified_secret: Time.now,
    #         scope_configuration: {
    #           name: "String", # required
    #           domain: "String",
    #           scope: "GITHUB_ORGANIZATION" # One of: ["GITHUB_ORGANIZATION", "GITHUB_GLOBAL", "GITLAB_GROUP"], # required
    #         },
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "DELETING"],
    #         status_message: "String",
    #         pull_request_build_policy: {
    #           requires_comment_approval: "DISABLED" # One of: ["DISABLED", "ALL_PULL_REQUESTS", "FORK_PULL_REQUESTS"], # required
    #           approver_roles: ["GITHUB_READ" # One of: ["GITHUB_READ", "GITHUB_TRIAGE", "GITHUB_WRITE", "GITHUB_MAINTAIN", "GITHUB_ADMIN", "GITLAB_GUEST", "GITLAB_PLANNER", "GITLAB_REPORTER", "GITLAB_DEVELOPER", "GITLAB_MAINTAINER", "GITLAB_OWNER", "BITBUCKET_READ", "BITBUCKET_WRITE", "BITBUCKET_ADMIN"]]
    #         }
    #       },
    #       vpc_config: {
    #         vpc_id: "NonEmptyString",
    #         subnets: ["NonEmptyString"],
    #         security_group_ids: ["NonEmptyString"]
    #       },
    #       badge: {
    #         badge_enabled: false,
    #         badge_request_url: "String"
    #       },
    #       logs_config: {
    #         cloud_watch_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           group_name: "String",
    #           stream_name: "String"
    #         },
    #         s3_logs: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           location: "String",
    #           encryption_disabled: false,
    #           bucket_owner_access: "NONE" # One of: ["NONE", "READ_ONLY", "FULL"]
    #         }
    #       },
    #       file_system_locations: [
    #         {
    #           type: "EFS" # One of: ["EFS"],
    #           location: "String",
    #           mount_point: "String",
    #           identifier: "String",
    #           mount_options: "String"
    #         }
    #       ],
    #       build_batch_config: {
    #         service_role: "NonEmptyString",
    #         combine_artifacts: false,
    #         restrictions: {
    #           maximum_builds_allowed: 1,
    #           compute_types_allowed: ["NonEmptyString"],
    #           fleets_allowed: ["NonEmptyString"]
    #         },
    #         timeout_in_mins: 1,
    #         batch_report_mode: "REPORT_INDIVIDUAL_BUILDS" # One of: ["REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"]
    #       },
    #       concurrent_build_limit: 1,
    #       project_visibility: "PUBLIC_READ" # One of: ["PUBLIC_READ", "PRIVATE"],
    #       public_project_alias: "NonEmptyString",
    #       resource_access_role: "NonEmptyString",
    #       auto_retry_limit: 1
    #     }
    #   }
    # @return [Types::UpdateProjectOutput]
    def update_project(params = {}, options = {})
      request = build_request(:update_project, params)
      request.send_request(options)
    end

    # <p>Changes the public visibility for a project. The project's build results, logs, and
    #       artifacts are available to the general public.  For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/public-builds.html">Public build
    #         projects</a> in the <i>CodeBuild User Guide</i>.</p>
    #          <important>
    #             <p>The following should be kept in mind when making your projects public:</p>
    #             <ul>
    #                <li>
    #                   <p>All of a project's build results, logs, and artifacts, including builds that were run
    #             when the project was private, are available to the general public.</p>
    #                </li>
    #                <li>
    #                   <p>All build logs and artifacts are available to the public. Environment variables, source
    #             code, and other sensitive information may have been output to the build logs and artifacts.
    #             You must be careful about what information is output to the build logs. Some best practice
    #             are:</p>
    #                   <ul>
    #                      <li>
    #                         <p>Do not store sensitive values in environment variables. We recommend that you use an Amazon EC2 Systems Manager Parameter Store
    #                 or Secrets Manager to store sensitive values.</p>
    #                      </li>
    #                      <li>
    #                         <p>Follow <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/webhooks.html#webhook-best-practices">Best
    #                   practices for using webhooks</a> in the <i>CodeBuild User
    #                   Guide</i> to limit which entities can trigger a build, and do
    #                   not store the buildspec in the project itself, to ensure that your webhooks are as
    #                   secure as possible.</p>
    #                      </li>
    #                   </ul>
    #                </li>
    #                <li>
    #                   <p>A malicious user can use public builds to distribute malicious artifacts. We recommend
    #             that you review all pull requests to verify that the pull request is a legitimate change. We
    #             also recommend that you validate any artifacts with their checksums to make sure that the
    #             correct artifacts are being downloaded.</p>
    #                </li>
    #             </ul>
    #          </important>
    # @param [Hash, Types::UpdateProjectVisibilityInput] params
    # @option params [String] :project_arn
    #   <p>The Amazon Resource Name (ARN) of the build project.</p>
    # @option params [String] :project_visibility
    #   <p>Specifies the visibility of the project's builds. Possible values are:</p>
    #            <dl>
    #               <dt>PUBLIC_READ</dt>
    #               <dd>
    #                  <p>The project builds are visible to the public.</p>
    #               </dd>
    #               <dt>PRIVATE</dt>
    #               <dd>
    #                  <p>The project builds are not visible to the public.</p>
    #               </dd>
    #            </dl>
    # @option params [String] :resource_access_role
    #   <p>The ARN of the IAM role that enables CodeBuild to access the CloudWatch Logs and Amazon S3 artifacts for
    #         the project's builds.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_arn: "NonEmptyString", # required
    #     project_visibility: "PUBLIC_READ" # One of: ["PUBLIC_READ", "PRIVATE"], # required
    #     resource_access_role: "NonEmptyString"
    #   }
    #   options = {}
    #   response = client.update_project_visibility(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project_arn: "NonEmptyString",
    #     public_project_alias: "NonEmptyString",
    #     project_visibility: "PUBLIC_READ" # One of: ["PUBLIC_READ", "PRIVATE"]
    #   }
    # @return [Types::UpdateProjectVisibilityOutput]
    def update_project_visibility(params = {}, options = {})
      request = build_request(:update_project_visibility, params)
      request.send_request(options)
    end

    # <p>
    #       Updates a report group.
    #     </p>
    # @param [Hash, Types::UpdateReportGroupInput] params
    # @option params [String] :arn
    #   <p>
    #         The ARN of the report group to update.
    #       </p>
    # @option params [Types::ReportExportConfig] :export_config
    #   <p>
    #         Used to specify an updated export type. Valid values are:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>S3</code>: The report results are exported to an S3 bucket.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_EXPORT</code>: The report results are not exported.
    #           </p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>
    #         An updated list of tag key and value pairs associated with this report group.
    #       </p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild report group
    #         tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "NonEmptyString", # required
    #     export_config: {
    #       export_config_type: "S3" # One of: ["S3", "NO_EXPORT"],
    #       s3_destination: {
    #         bucket: "NonEmptyString",
    #         bucket_owner: "String",
    #         path: "String",
    #         packaging: "ZIP" # One of: ["ZIP", "NONE"],
    #         encryption_key: "NonEmptyString",
    #         encryption_disabled: false
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "KeyInput",
    #         value: "ValueInput"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_report_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_group: {
    #       arn: "NonEmptyString",
    #       name: "ReportGroupName",
    #       type: "TEST" # One of: ["TEST", "CODE_COVERAGE"],
    #       export_config: {
    #         export_config_type: "S3" # One of: ["S3", "NO_EXPORT"],
    #         s3_destination: {
    #           bucket: "NonEmptyString",
    #           bucket_owner: "String",
    #           path: "String",
    #           packaging: "ZIP" # One of: ["ZIP", "NONE"],
    #           encryption_key: "NonEmptyString",
    #           encryption_disabled: false
    #         }
    #       },
    #       created: Time.now,
    #       last_modified: Time.now,
    #       tags: [
    #         {
    #           key: "KeyInput",
    #           value: "ValueInput"
    #         }
    #       ],
    #       status: "ACTIVE" # One of: ["ACTIVE", "DELETING"]
    #     }
    #   }
    # @return [Types::UpdateReportGroupOutput]
    def update_report_group(params = {}, options = {})
      request = build_request(:update_report_group, params)
      request.send_request(options)
    end

    # <p> Updates the webhook associated with an CodeBuild build project. </p>
    #          <note>
    #             <p> If you use Bitbucket for your repository, <code>rotateSecret</code> is ignored.
    #       </p>
    #          </note>
    # @param [Hash, Types::UpdateWebhookInput] params
    # @option params [String] :project_name
    #   <p>The name of the CodeBuild project.</p>
    # @option params [String] :branch_filter
    #   <p>A regular expression used to determine which repository branches are built when a
    #         webhook is triggered. If the name of a branch matches the regular expression, then it is
    #         built. If <code>branchFilter</code> is empty, then all branches are built.</p>
    #            <note>
    #               <p> It is recommended that you use <code>filterGroups</code> instead of
    #           <code>branchFilter</code>. </p>
    #            </note>
    # @option params [Boolean] :rotate_secret
    #   <p> A boolean value that specifies whether the associated GitHub repository's secret
    #         token should be updated. If you use Bitbucket for your repository,
    #         <code>rotateSecret</code> is ignored. </p>
    # @option params [Array<Array<Types::WebhookFilter>>] :filter_groups
    #   <p> An array of arrays of <code>WebhookFilter</code> objects used to determine if a
    #         webhook event can trigger a build. A filter group must contain at least one
    #         <code>EVENT</code>
    #               <code>WebhookFilter</code>. </p>
    # @option params [String] :build_type
    #   <p>Specifies the type of build this webhook will trigger.</p>
    #            <note>
    #               <p>
    #                  <code>RUNNER_BUILDKITE_BUILD</code> is only available for <code>NO_SOURCE</code> source type projects 
    #           configured for Buildkite runner builds. For more information about CodeBuild-hosted Buildkite runner builds, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-runner-buildkite.html">Tutorial: Configure a CodeBuild-hosted Buildkite runner</a> in the <i>CodeBuild
    #           user guide</i>.</p>
    #            </note>
    # @option params [Types::PullRequestBuildPolicy] :pull_request_build_policy
    #   <p>A PullRequestBuildPolicy object that defines comment-based approval requirements for triggering builds on pull requests. This policy helps control when automated builds are executed based on contributor permissions and approval workflows.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "ProjectName", # required
    #     branch_filter: "String",
    #     rotate_secret: false,
    #     filter_groups: [
    #       [
    #         {
    #           type: "EVENT" # One of: ["EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE", "WORKFLOW_NAME", "TAG_NAME", "RELEASE_NAME", "REPOSITORY_NAME", "ORGANIZATION_NAME"], # required
    #           pattern: "String", # required
    #           exclude_matched_pattern: false
    #         }
    #       ]
    #     ],
    #     build_type: "BUILD" # One of: ["BUILD", "BUILD_BATCH", "RUNNER_BUILDKITE_BUILD"],
    #     pull_request_build_policy: {
    #       requires_comment_approval: "DISABLED" # One of: ["DISABLED", "ALL_PULL_REQUESTS", "FORK_PULL_REQUESTS"], # required
    #       approver_roles: ["GITHUB_READ" # One of: ["GITHUB_READ", "GITHUB_TRIAGE", "GITHUB_WRITE", "GITHUB_MAINTAIN", "GITHUB_ADMIN", "GITLAB_GUEST", "GITLAB_PLANNER", "GITLAB_REPORTER", "GITLAB_DEVELOPER", "GITLAB_MAINTAINER", "GITLAB_OWNER", "BITBUCKET_READ", "BITBUCKET_WRITE", "BITBUCKET_ADMIN"]]
    #     }
    #   }
    #   options = {}
    #   response = client.update_webhook(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     webhook: {
    #       url: "NonEmptyString",
    #       payload_url: "NonEmptyString",
    #       secret: "NonEmptyString",
    #       branch_filter: "String",
    #       filter_groups: [
    #         [
    #           {
    #             type: "EVENT" # One of: ["EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE", "WORKFLOW_NAME", "TAG_NAME", "RELEASE_NAME", "REPOSITORY_NAME", "ORGANIZATION_NAME"], # required
    #             pattern: "String", # required
    #             exclude_matched_pattern: false
    #           }
    #         ]
    #       ],
    #       build_type: "BUILD" # One of: ["BUILD", "BUILD_BATCH", "RUNNER_BUILDKITE_BUILD"],
    #       manual_creation: false,
    #       last_modified_secret: Time.now,
    #       scope_configuration: {
    #         name: "String", # required
    #         domain: "String",
    #         scope: "GITHUB_ORGANIZATION" # One of: ["GITHUB_ORGANIZATION", "GITHUB_GLOBAL", "GITLAB_GROUP"], # required
    #       },
    #       status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "DELETING"],
    #       status_message: "String",
    #       pull_request_build_policy: {
    #         requires_comment_approval: "DISABLED" # One of: ["DISABLED", "ALL_PULL_REQUESTS", "FORK_PULL_REQUESTS"], # required
    #         approver_roles: ["GITHUB_READ" # One of: ["GITHUB_READ", "GITHUB_TRIAGE", "GITHUB_WRITE", "GITHUB_MAINTAIN", "GITHUB_ADMIN", "GITLAB_GUEST", "GITLAB_PLANNER", "GITLAB_REPORTER", "GITLAB_DEVELOPER", "GITLAB_MAINTAINER", "GITLAB_OWNER", "BITBUCKET_READ", "BITBUCKET_WRITE", "BITBUCKET_ADMIN"]]
    #       }
    #     }
    #   }
    # @return [Types::UpdateWebhookOutput]
    def update_webhook(params = {}, options = {})
      request = build_request(:update_webhook, params)
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
      context[:gem_name] = 'aws-sdk-codebuild'
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
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
