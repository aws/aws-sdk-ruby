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
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:migrationhub)

module Aws::MigrationHub
  # An API client for Aws::MigrationHub.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSMigrationHub
    @identifier = :migrationhub

    add_plugin(::Aws::MigrationHub::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MigrationHub::EndpointProvider)
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

    # <p>Associates a created artifact of an AWS cloud resource, the target receiving the
    #          migration, with the migration task performed by a migration tool. This API has the
    #          following traits:</p>
    #          <ul>
    #             <li>
    #                <p>Migration tools can call the <code>AssociateCreatedArtifact</code> operation to
    #                indicate which AWS artifact is associated with a migration task.</p>
    #             </li>
    #             <li>
    #                <p>The created artifact name must be provided in ARN (Amazon Resource Name) format
    #                which will contain information about type and region; for example:
    #                   <code>arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b</code>.</p>
    #             </li>
    #             <li>
    #                <p>Examples of the AWS resource behind the created artifact are, AMI's, EC2 instance,
    #                or DMS endpoint, etc.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::AssociateCreatedArtifactRequest] params
    # @option params [String] :progress_update_stream
    #   <p>The name of the ProgressUpdateStream. </p>
    # @option params [String] :migration_task_name
    #   <p>Unique identifier that references the migration task. <i>Do not store personal
    #               data in this field.</i>
    #            </p>
    # @option params [Types::CreatedArtifact] :created_artifact
    #   <p>An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS
    #            instance, etc.) </p>
    # @option params [Boolean] :dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     created_artifact: { # required
    #       name: "CreatedArtifactName", # required
    #       description: "CreatedArtifactDescription"
    #     },
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.associate_created_artifact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateCreatedArtifactResult]
    def associate_created_artifact(params = {}, options = {})
      request = build_request(:associate_created_artifact, params)
      request.send_request(options)
    end

    # <p>Associates a discovered resource ID from Application Discovery Service with a migration
    #          task.</p>
    # @param [Hash, Types::AssociateDiscoveredResourceRequest] params
    # @option params [String] :progress_update_stream
    #   <p>The name of the ProgressUpdateStream.</p>
    # @option params [String] :migration_task_name
    #   <p>The identifier given to the MigrationTask. <i>Do not store personal data in this
    #               field.</i>
    #            </p>
    # @option params [Types::DiscoveredResource] :discovered_resource
    #   <p>Object representing a Resource.</p>
    # @option params [Boolean] :dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     discovered_resource: { # required
    #       configuration_id: "ConfigurationId", # required
    #       description: "DiscoveredResourceDescription"
    #     },
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.associate_discovered_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateDiscoveredResourceResult]
    def associate_discovered_resource(params = {}, options = {})
      request = build_request(:associate_discovered_resource, params)
      request.send_request(options)
    end

    # <p>Associates a source resource with a migration task. For example, the source resource can
    #          be a source server, an application, or a migration wave.</p>
    # @param [Hash, Types::AssociateSourceResourceRequest] params
    # @option params [String] :progress_update_stream
    #   <p>The name of the progress-update stream, which is used for access control as well as a
    #            namespace for migration-task names that is implicitly linked to your AWS account. The
    #            progress-update stream must uniquely identify the migration tool as it is used for all
    #            updates made by the tool; however, it does not need to be unique for each AWS account
    #            because it is scoped to the AWS account.</p>
    # @option params [String] :migration_task_name
    #   <p>A unique identifier that references the migration task. <i>Do not include
    #               sensitive data in this field.</i>
    #            </p>
    # @option params [Types::SourceResource] :source_resource
    #   <p>The source resource that you want to associate.</p>
    # @option params [Boolean] :dry_run
    #   <p>This is an optional parameter that you can use to test whether the call will succeed.
    #            Set this parameter to <code>true</code> to verify that you have the permissions that are
    #            required to make the call, and that you have specified the other parameters in the call
    #            correctly.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     source_resource: { # required
    #       name: "SourceResourceName", # required
    #       description: "SourceResourceDescription",
    #       status_detail: "StatusDetail"
    #     },
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.associate_source_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateSourceResourceResult]
    def associate_source_resource(params = {}, options = {})
      request = build_request(:associate_source_resource, params)
      request.send_request(options)
    end

    # <p>Creates a progress update stream which is an AWS resource used for access control as
    #          well as a namespace for migration task names that is implicitly linked to your AWS account.
    #          It must uniquely identify the migration tool as it is used for all updates made by the
    #          tool; however, it does not need to be unique for each AWS account because it is scoped to
    #          the AWS account.</p>
    # @param [Hash, Types::CreateProgressUpdateStreamRequest] params
    # @option params [String] :progress_update_stream_name
    #   <p>The name of the ProgressUpdateStream. <i>Do not store personal data in this
    #               field.</i>
    #            </p>
    # @option params [Boolean] :dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     progress_update_stream_name: "ProgressUpdateStream", # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.create_progress_update_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateProgressUpdateStreamResult]
    def create_progress_update_stream(params = {}, options = {})
      request = build_request(:create_progress_update_stream, params)
      request.send_request(options)
    end

    # <p>Deletes a progress update stream, including all of its tasks, which was previously
    #          created as an AWS resource used for access control. This API has the following
    #          traits:</p>
    #          <ul>
    #             <li>
    #                <p>The only parameter needed for <code>DeleteProgressUpdateStream</code> is the
    #                stream name (same as a <code>CreateProgressUpdateStream</code> call).</p>
    #             </li>
    #             <li>
    #                <p>The call will return, and a background process will asynchronously delete the
    #                stream and all of its resources (tasks, associated resources, resource attributes,
    #                created artifacts).</p>
    #             </li>
    #             <li>
    #                <p>If the stream takes time to be deleted, it might still show up on a
    #                   <code>ListProgressUpdateStreams</code> call.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CreateProgressUpdateStream</code>, <code>ImportMigrationTask</code>,
    #                   <code>NotifyMigrationTaskState</code>, and all Associate[*] APIs related to the
    #                tasks belonging to the stream will throw "InvalidInputException" if the stream of the
    #                same name is in the process of being deleted.</p>
    #             </li>
    #             <li>
    #                <p>Once the stream and all of its resources are deleted,
    #                   <code>CreateProgressUpdateStream</code> for a stream of the same name will
    #                succeed, and that stream will be an entirely new logical resource (without any
    #                resources associated with the old stream).</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DeleteProgressUpdateStreamRequest] params
    # @option params [String] :progress_update_stream_name
    #   <p>The name of the ProgressUpdateStream. <i>Do not store personal data in this
    #               field.</i>
    #            </p>
    # @option params [Boolean] :dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     progress_update_stream_name: "ProgressUpdateStream", # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.delete_progress_update_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteProgressUpdateStreamResult]
    def delete_progress_update_stream(params = {}, options = {})
      request = build_request(:delete_progress_update_stream, params)
      request.send_request(options)
    end

    # <p>Gets the migration status of an application.</p>
    # @param [Hash, Types::DescribeApplicationStateRequest] params
    # @option params [String] :application_id
    #   <p>The configurationId in Application Discovery Service that uniquely identifies the
    #            grouped application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #   }
    #   options = {}
    #   response = client.describe_application_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_status: "NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETED"],
    #     last_updated_time: Time.now
    #   }
    # @return [Types::DescribeApplicationStateResult]
    def describe_application_state(params = {}, options = {})
      request = build_request(:describe_application_state, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of all attributes associated with a specific migration task.</p>
    # @param [Hash, Types::DescribeMigrationTaskRequest] params
    # @option params [String] :progress_update_stream
    #   <p>The name of the ProgressUpdateStream. </p>
    # @option params [String] :migration_task_name
    #   <p>The identifier given to the MigrationTask. <i>Do not store personal data in this
    #               field.</i>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #   }
    #   options = {}
    #   response = client.describe_migration_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     migration_task: {
    #       progress_update_stream: "ProgressUpdateStream",
    #       migration_task_name: "MigrationTaskName",
    #       task: {
    #         status: "NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "FAILED", "COMPLETED"], # required
    #         status_detail: "StatusDetail",
    #         progress_percent: 1
    #       },
    #       update_date_time: Time.now,
    #       resource_attribute_list: [
    #         {
    #           type: "IPV4_ADDRESS" # One of: ["IPV4_ADDRESS", "IPV6_ADDRESS", "MAC_ADDRESS", "FQDN", "VM_MANAGER_ID", "VM_MANAGED_OBJECT_REFERENCE", "VM_NAME", "VM_PATH", "BIOS_ID", "MOTHERBOARD_SERIAL_NUMBER"], # required
    #           value: "ResourceAttributeValue", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeMigrationTaskResult]
    def describe_migration_task(params = {}, options = {})
      request = build_request(:describe_migration_task, params)
      request.send_request(options)
    end

    # <p>Disassociates a created artifact of an AWS resource with a migration task performed by a
    #          migration tool that was previously associated. This API has the following traits:</p>
    #          <ul>
    #             <li>
    #                <p>A migration user can call the <code>DisassociateCreatedArtifacts</code> operation
    #                to disassociate a created AWS Artifact from a migration task.</p>
    #             </li>
    #             <li>
    #                <p>The created artifact name must be provided in ARN (Amazon Resource Name) format
    #                which will contain information about type and region; for example:
    #                   <code>arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b</code>.</p>
    #             </li>
    #             <li>
    #                <p>Examples of the AWS resource behind the created artifact are, AMI's, EC2 instance,
    #                or RDS instance, etc.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DisassociateCreatedArtifactRequest] params
    # @option params [String] :progress_update_stream
    #   <p>The name of the ProgressUpdateStream. </p>
    # @option params [String] :migration_task_name
    #   <p>Unique identifier that references the migration task to be disassociated with the
    #            artifact. <i>Do not store personal data in this field.</i>
    #            </p>
    # @option params [String] :created_artifact_name
    #   <p>An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS
    #            instance, etc.)</p>
    # @option params [Boolean] :dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     created_artifact_name: "CreatedArtifactName", # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.disassociate_created_artifact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateCreatedArtifactResult]
    def disassociate_created_artifact(params = {}, options = {})
      request = build_request(:disassociate_created_artifact, params)
      request.send_request(options)
    end

    # <p>Disassociate an Application Discovery Service discovered resource from a migration
    #          task.</p>
    # @param [Hash, Types::DisassociateDiscoveredResourceRequest] params
    # @option params [String] :progress_update_stream
    #   <p>The name of the ProgressUpdateStream.</p>
    # @option params [String] :migration_task_name
    #   <p>The identifier given to the MigrationTask. <i>Do not store personal data in this
    #               field.</i>
    #            </p>
    # @option params [String] :configuration_id
    #   <p>ConfigurationId of the Application Discovery Service resource to be
    #            disassociated.</p>
    # @option params [Boolean] :dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     configuration_id: "ConfigurationId", # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.disassociate_discovered_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateDiscoveredResourceResult]
    def disassociate_discovered_resource(params = {}, options = {})
      request = build_request(:disassociate_discovered_resource, params)
      request.send_request(options)
    end

    # <p>Removes the association between a source resource and a migration task.</p>
    # @param [Hash, Types::DisassociateSourceResourceRequest] params
    # @option params [String] :progress_update_stream
    #   <p>The name of the progress-update stream, which is used for access control as well as a
    #            namespace for migration-task names that is implicitly linked to your AWS account. The
    #            progress-update stream must uniquely identify the migration tool as it is used for all
    #            updates made by the tool; however, it does not need to be unique for each AWS account
    #            because it is scoped to the AWS account.</p>
    # @option params [String] :migration_task_name
    #   <p>A unique identifier that references the migration task. <i>Do not include
    #               sensitive data in this field.</i>
    #            </p>
    # @option params [String] :source_resource_name
    #   <p>The name that was specified for the source resource.</p>
    # @option params [Boolean] :dry_run
    #   <p>This is an optional parameter that you can use to test whether the call will succeed.
    #            Set this parameter to <code>true</code> to verify that you have the permissions that are
    #            required to make the call, and that you have specified the other parameters in the call
    #            correctly.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     source_resource_name: "SourceResourceName", # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.disassociate_source_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateSourceResourceResult]
    def disassociate_source_resource(params = {}, options = {})
      request = build_request(:disassociate_source_resource, params)
      request.send_request(options)
    end

    # <p>Registers a new migration task which represents a server, database, etc., being migrated
    #          to AWS by a migration tool.</p>
    #          <p>This API is a prerequisite to calling the <code>NotifyMigrationTaskState</code> API as
    #          the migration tool must first register the migration task with Migration Hub.</p>
    # @param [Hash, Types::ImportMigrationTaskRequest] params
    # @option params [String] :progress_update_stream
    #   <p>The name of the ProgressUpdateStream. ></p>
    # @option params [String] :migration_task_name
    #   <p>Unique identifier that references the migration task. <i>Do not store personal
    #               data in this field.</i>
    #            </p>
    # @option params [Boolean] :dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.import_migration_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ImportMigrationTaskResult]
    def import_migration_task(params = {}, options = {})
      request = build_request(:import_migration_task, params)
      request.send_request(options)
    end

    # <p>Lists all the migration statuses for your applications. If you use the optional
    #             <code>ApplicationIds</code> parameter, only the migration statuses for those
    #          applications will be returned.</p>
    # @param [Hash, Types::ListApplicationStatesRequest] params
    # @option params [Array<String>] :application_ids
    #   <p>The configurationIds from the Application Discovery Service that uniquely identifies
    #            your applications.</p>
    # @option params [String] :next_token
    #   <p>If a <code>NextToken</code> was returned by a previous call, there are more results
    #            available. To retrieve the next page of results, make the call again using the returned
    #            token in <code>NextToken</code>.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to be returned per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_ids: ["ApplicationId"],
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_application_states(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_state_list: [
    #       {
    #         application_id: "ApplicationId",
    #         application_status: "NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETED"],
    #         last_updated_time: Time.now
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListApplicationStatesResult]
    def list_application_states(params = {}, options = {})
      request = build_request(:list_application_states, params)
      request.send_request(options)
    end

    # <p>Lists the created artifacts attached to a given migration task in an update stream. This
    #          API has the following traits:</p>
    #          <ul>
    #             <li>
    #                <p>Gets the list of the created artifacts while
    #                migration is taking place.</p>
    #             </li>
    #             <li>
    #                <p>Shows the artifacts created by the migration tool that was associated by the
    #                   <code>AssociateCreatedArtifact</code> API. </p>
    #             </li>
    #             <li>
    #                <p>Lists created artifacts in a paginated interface. </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ListCreatedArtifactsRequest] params
    # @option params [String] :progress_update_stream
    #   <p>The name of the ProgressUpdateStream. </p>
    # @option params [String] :migration_task_name
    #   <p>Unique identifier that references the migration task. <i>Do not store personal
    #               data in this field.</i>
    #            </p>
    # @option params [String] :next_token
    #   <p>If a <code>NextToken</code> was returned by a previous call, there are more results
    #            available. To retrieve the next page of results, make the call again using the returned
    #            token in <code>NextToken</code>.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to be returned per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_created_artifacts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "Token",
    #     created_artifact_list: [
    #       {
    #         name: "CreatedArtifactName", # required
    #         description: "CreatedArtifactDescription"
    #       }
    #     ]
    #   }
    # @return [Types::ListCreatedArtifactsResult]
    def list_created_artifacts(params = {}, options = {})
      request = build_request(:list_created_artifacts, params)
      request.send_request(options)
    end

    # <p>Lists discovered resources associated with the given <code>MigrationTask</code>.</p>
    # @param [Hash, Types::ListDiscoveredResourcesRequest] params
    # @option params [String] :progress_update_stream
    #   <p>The name of the ProgressUpdateStream.</p>
    # @option params [String] :migration_task_name
    #   <p>The name of the MigrationTask. <i>Do not store personal data in this
    #               field.</i>
    #            </p>
    # @option params [String] :next_token
    #   <p>If a <code>NextToken</code> was returned by a previous call, there are more results
    #            available. To retrieve the next page of results, make the call again using the returned
    #            token in <code>NextToken</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_discovered_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "Token",
    #     discovered_resource_list: [
    #       {
    #         configuration_id: "ConfigurationId", # required
    #         description: "DiscoveredResourceDescription"
    #       }
    #     ]
    #   }
    # @return [Types::ListDiscoveredResourcesResult]
    def list_discovered_resources(params = {}, options = {})
      request = build_request(:list_discovered_resources, params)
      request.send_request(options)
    end

    # <p>This is a paginated API that returns all the migration-task states for the specified
    #             <code>MigrationTaskName</code> and <code>ProgressUpdateStream</code>.</p>
    # @param [Hash, Types::ListMigrationTaskUpdatesRequest] params
    # @option params [String] :progress_update_stream
    #   <p>The name of the progress-update stream, which is used for access control as well as a
    #            namespace for migration-task names that is implicitly linked to your AWS account. The
    #            progress-update stream must uniquely identify the migration tool as it is used for all
    #            updates made by the tool; however, it does not need to be unique for each AWS account
    #            because it is scoped to the AWS account.</p>
    # @option params [String] :migration_task_name
    #   <p>A unique identifier that references the migration task. <i>Do not include
    #               sensitive data in this field.</i>
    #            </p>
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> was returned by a previous call, there are more results
    #            available. The value of <code>NextToken</code> is a unique pagination token for each page.
    #            To retrieve the next page of results, specify the <code>NextToken</code> value that the
    #            previous call returned. Keep all other arguments unchanged. Each pagination token expires
    #            after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken
    #            error.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the
    #            value that you specify here for <code>MaxResults</code>, the response will include a token
    #            that you can use to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_migration_task_updates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "Token",
    #     migration_task_update_list: [
    #       {
    #         update_date_time: Time.now,
    #         update_type: "MIGRATION_TASK_STATE_UPDATED" # One of: ["MIGRATION_TASK_STATE_UPDATED"],
    #         migration_task_state: {
    #           status: "NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "FAILED", "COMPLETED"], # required
    #           status_detail: "StatusDetail",
    #           progress_percent: 1
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListMigrationTaskUpdatesResult]
    def list_migration_task_updates(params = {}, options = {})
      request = build_request(:list_migration_task_updates, params)
      request.send_request(options)
    end

    # <p>Lists all, or filtered by resource name, migration tasks associated with the user
    #          account making this call. This API has the following traits:</p>
    #          <ul>
    #             <li>
    #                <p>Can show a summary list of the most recent migration tasks.</p>
    #             </li>
    #             <li>
    #                <p>Can show a summary list of migration tasks associated with a given discovered
    #                resource.</p>
    #             </li>
    #             <li>
    #                <p>Lists migration tasks in a paginated interface.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ListMigrationTasksRequest] params
    # @option params [String] :next_token
    #   <p>If a <code>NextToken</code> was returned by a previous call, there are more results
    #            available. To retrieve the next page of results, make the call again using the returned
    #            token in <code>NextToken</code>.</p>
    # @option params [Integer] :max_results
    #   <p>Value to specify how many results are returned per page.</p>
    # @option params [String] :resource_name
    #   <p>Filter migration tasks by discovered resource name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1,
    #     resource_name: "ResourceName"
    #   }
    #   options = {}
    #   response = client.list_migration_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "Token",
    #     migration_task_summary_list: [
    #       {
    #         progress_update_stream: "ProgressUpdateStream",
    #         migration_task_name: "MigrationTaskName",
    #         status: "NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "FAILED", "COMPLETED"],
    #         progress_percent: 1,
    #         status_detail: "StatusDetail",
    #         update_date_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListMigrationTasksResult]
    def list_migration_tasks(params = {}, options = {})
      request = build_request(:list_migration_tasks, params)
      request.send_request(options)
    end

    # <p>Lists progress update streams associated with the user account making this call.</p>
    # @param [Hash, Types::ListProgressUpdateStreamsRequest] params
    # @option params [String] :next_token
    #   <p>If a <code>NextToken</code> was returned by a previous call, there are more results
    #            available. To retrieve the next page of results, make the call again using the returned
    #            token in <code>NextToken</code>.</p>
    # @option params [Integer] :max_results
    #   <p>Filter to limit the maximum number of results to list per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_progress_update_streams(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     progress_update_stream_summary_list: [
    #       {
    #         progress_update_stream_name: "ProgressUpdateStream"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListProgressUpdateStreamsResult]
    def list_progress_update_streams(params = {}, options = {})
      request = build_request(:list_progress_update_streams, params)
      request.send_request(options)
    end

    # <p>Lists all the source resource that are associated with the specified
    #             <code>MigrationTaskName</code> and <code>ProgressUpdateStream</code>.</p>
    # @param [Hash, Types::ListSourceResourcesRequest] params
    # @option params [String] :progress_update_stream
    #   <p>The name of the progress-update stream, which is used for access control as well as a
    #            namespace for migration-task names that is implicitly linked to your AWS account. The
    #            progress-update stream must uniquely identify the migration tool as it is used for all
    #            updates made by the tool; however, it does not need to be unique for each AWS account
    #            because it is scoped to the AWS account.</p>
    # @option params [String] :migration_task_name
    #   <p>A unique identifier that references the migration task. <i>Do not store
    #               confidential data in this field.</i>
    #            </p>
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> was returned by a previous call, there are more results
    #            available. The value of <code>NextToken</code> is a unique pagination token for each page.
    #            To retrieve the next page of results, specify the <code>NextToken</code> value that the
    #            previous call returned. Keep all other arguments unchanged. Each pagination token expires
    #            after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken
    #            error.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist than the
    #            value that you specify here for <code>MaxResults</code>, the response will include a token
    #            that you can use to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_source_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "Token",
    #     source_resource_list: [
    #       {
    #         name: "SourceResourceName", # required
    #         description: "SourceResourceDescription",
    #         status_detail: "StatusDetail"
    #       }
    #     ]
    #   }
    # @return [Types::ListSourceResourcesResult]
    def list_source_resources(params = {}, options = {})
      request = build_request(:list_source_resources, params)
      request.send_request(options)
    end

    # <p>Sets the migration state of an application. For a given application identified by the
    #          value passed to <code>ApplicationId</code>, its status is set or updated by passing one of
    #          three values to <code>Status</code>: <code>NOT_STARTED | IN_PROGRESS |
    #          COMPLETED</code>.</p>
    # @param [Hash, Types::NotifyApplicationStateRequest] params
    # @option params [String] :application_id
    #   <p>The configurationId in Application Discovery Service that uniquely identifies the
    #            grouped application.</p>
    # @option params [String] :status
    #   <p>Status of the application - Not Started, In-Progress, Complete.</p>
    # @option params [Time] :update_date_time
    #   <p>The timestamp when the application state changed.</p>
    # @option params [Boolean] :dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "ApplicationId", # required
    #     status: "NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETED"], # required
    #     update_date_time: Time.now,
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.notify_application_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::NotifyApplicationStateResult]
    def notify_application_state(params = {}, options = {})
      request = build_request(:notify_application_state, params)
      request.send_request(options)
    end

    # <p>Notifies Migration Hub of the current status, progress, or other detail regarding a
    #          migration task. This API has the following traits:</p>
    #          <ul>
    #             <li>
    #                <p>Migration tools will call the <code>NotifyMigrationTaskState</code> API to share
    #                the latest progress and status.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MigrationTaskName</code> is used for addressing updates to the correct
    #                target.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ProgressUpdateStream</code> is used for access control and to provide a
    #                namespace for each migration tool.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::NotifyMigrationTaskStateRequest] params
    # @option params [String] :progress_update_stream
    #   <p>The name of the ProgressUpdateStream. </p>
    # @option params [String] :migration_task_name
    #   <p>Unique identifier that references the migration task. <i>Do not store personal
    #               data in this field.</i>
    #            </p>
    # @option params [Types::Task] :task
    #   <p>Information about the task's progress and status.</p>
    # @option params [Time] :update_date_time
    #   <p>The timestamp when the task was gathered.</p>
    # @option params [Integer] :next_update_seconds
    #   <p>Number of seconds after the UpdateDateTime within which the Migration Hub can expect an
    #            update. If Migration Hub does not receive an update within the specified interval, then the
    #            migration task will be considered stale.</p>
    # @option params [Boolean] :dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     task: { # required
    #       status: "NOT_STARTED" # One of: ["NOT_STARTED", "IN_PROGRESS", "FAILED", "COMPLETED"], # required
    #       status_detail: "StatusDetail",
    #       progress_percent: 1
    #     },
    #     update_date_time: Time.now, # required
    #     next_update_seconds: 1, # required
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.notify_migration_task_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::NotifyMigrationTaskStateResult]
    def notify_migration_task_state(params = {}, options = {})
      request = build_request(:notify_migration_task_state, params)
      request.send_request(options)
    end

    # <p>Provides identifying details of the resource being migrated so that it can be associated
    #          in the Application Discovery Service repository. This association occurs asynchronously
    #          after <code>PutResourceAttributes</code> returns.</p>
    #          <important>
    #             <ul>
    #                <li>
    #                   <p>Keep in mind that subsequent calls to PutResourceAttributes will override
    #                   previously stored attributes. For example, if it is first called with a MAC
    #                   address, but later, it is desired to <i>add</i> an IP address, it
    #                   will then be required to call it with <i>both</i> the IP and MAC
    #                   addresses to prevent overriding the MAC address.</p>
    #                </li>
    #                <li>
    #                   <p>Note the instructions regarding the special use case of the <a href="https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#migrationhub-PutResourceAttributes-request-ResourceAttributeList">
    #                         <code>ResourceAttributeList</code>
    #                      </a> parameter when specifying any
    #                   "VM" related value.</p>
    #                </li>
    #             </ul>
    #          </important>
    #          <note>
    #             <p>Because this is an asynchronous call, it will always return 200, whether an
    #             association occurs or not. To confirm if an association was found based on the provided
    #             details, call <code>ListDiscoveredResources</code>.</p>
    #          </note>
    # @param [Hash, Types::PutResourceAttributesRequest] params
    # @option params [String] :progress_update_stream
    #   <p>The name of the ProgressUpdateStream. </p>
    # @option params [String] :migration_task_name
    #   <p>Unique identifier that references the migration task. <i>Do not store personal
    #               data in this field.</i>
    #            </p>
    # @option params [Array<Types::ResourceAttribute>] :resource_attribute_list
    #   <p>Information about the resource that is being migrated. This data will be used to map the
    #            task to a resource in the Application Discovery Service repository.</p>
    #            <note>
    #               <p>Takes the object array of <code>ResourceAttribute</code> where the <code>Type</code>
    #               field is reserved for the following values: <code>IPV4_ADDRESS | IPV6_ADDRESS |
    #                  MAC_ADDRESS | FQDN | VM_MANAGER_ID | VM_MANAGED_OBJECT_REFERENCE | VM_NAME | VM_PATH
    #                  | BIOS_ID | MOTHERBOARD_SERIAL_NUMBER</code> where the identifying value can be a
    #               string up to 256 characters.</p>
    #            </note>
    #            <important>
    #               <ul>
    #                  <li>
    #                     <p>If any "VM" related value is set for a <code>ResourceAttribute</code> object,
    #                     it is required that <code>VM_MANAGER_ID</code>, as a minimum, is always set. If
    #                        <code>VM_MANAGER_ID</code> is not set, then all "VM" fields will be discarded
    #                     and "VM" fields will not be used for matching the migration task to a server in
    #                     Application Discovery Service repository. See the <a href="https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#API_PutResourceAttributes_Examples">Example</a> section below for a use case of specifying "VM" related
    #                     values.</p>
    #                  </li>
    #                  <li>
    #                     <p> If a server you are trying to match has multiple IP or MAC addresses, you
    #                     should provide as many as you know in separate type/value pairs passed to the
    #                        <code>ResourceAttributeList</code> parameter to maximize the chances of
    #                     matching.</p>
    #                  </li>
    #               </ul>
    #            </important>
    # @option params [Boolean] :dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     resource_attribute_list: [ # required
    #       {
    #         type: "IPV4_ADDRESS" # One of: ["IPV4_ADDRESS", "IPV6_ADDRESS", "MAC_ADDRESS", "FQDN", "VM_MANAGER_ID", "VM_MANAGED_OBJECT_REFERENCE", "VM_NAME", "VM_PATH", "BIOS_ID", "MOTHERBOARD_SERIAL_NUMBER"], # required
    #         value: "ResourceAttributeValue", # required
    #       }
    #     ],
    #     dry_run: false
    #   }
    #   options = {}
    #   response = client.put_resource_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutResourceAttributesResult]
    def put_resource_attributes(params = {}, options = {})
      request = build_request(:put_resource_attributes, params)
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
      context[:gem_name] = 'aws-sdk-migrationhub'
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
