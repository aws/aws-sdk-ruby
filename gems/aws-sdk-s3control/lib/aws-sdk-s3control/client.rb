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
require 'aws-sdk-core/plugins/protocols/rest_xml.rb'
require 'aws-sdk-s3control/plugins/s3_control_dns.rb'
require 'aws-sdk-s3control/plugins/s3_signer.rb'
require 'aws-sdk-s3control/plugins/dualstack.rb'
require 'aws-sdk-s3control/plugins/s3_host_id.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:s3control)

module Aws::S3Control
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :s3control

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
    add_plugin(Aws::Plugins::Protocols::RestXml)
    add_plugin(Aws::S3Control::Plugins::S3ControlDns)
    add_plugin(Aws::S3Control::Plugins::S3Signer)
    add_plugin(Aws::S3Control::Plugins::Dualstack)
    add_plugin(Aws::S3Control::Plugins::S3HostId)

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
    #   @option options [Boolean] :use_dualstack_endpoint (false)
    #     When set to `true`, IPv6-compatible bucket endpoints will be used
    #     for all operations.
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

    # Creates an Amazon S3 batch operations job.
    #
    # @option params [required, String] :account_id
    #
    # @option params [Boolean] :confirmation_required
    #   Indicates whether confirmation is required before Amazon S3 runs the
    #   job. Confirmation is only required for jobs created through the Amazon
    #   S3 console.
    #
    # @option params [required, Types::JobOperation] :operation
    #   The operation that you want this job to perform on each object listed
    #   in the manifest. For more information about the available operations,
    #   see [Available Operations][1] in the *Amazon Simple Storage Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-operations.html
    #
    # @option params [required, Types::JobReport] :report
    #   Configuration parameters for the optional job-completion report.
    #
    # @option params [required, String] :client_request_token
    #   An idempotency token to ensure that you don't accidentally submit the
    #   same request twice. You can use any string up to the maximum length.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::JobManifest] :manifest
    #   Configuration parameters for the manifest.
    #
    # @option params [String] :description
    #   A description for this job. You can use any string within the
    #   permitted length. Descriptions don't need to be unique and can be
    #   used for multiple jobs.
    #
    # @option params [required, Integer] :priority
    #   The numerical priority for this job. Higher numbers indicate higher
    #   priority.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) for the Identity and Access Management
    #   (IAM) Role that batch operations will use to execute this job's
    #   operation on each object in the manifest.
    #
    # @return [Types::CreateJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJobResult#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job({
    #     account_id: "AccountId", # required
    #     confirmation_required: false,
    #     operation: { # required
    #       lambda_invoke: {
    #         function_arn: "NonEmptyMaxLength1024String",
    #       },
    #       s3_put_object_copy: {
    #         target_resource: "S3BucketArnString",
    #         canned_access_control_list: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control
    #         access_control_grants: [
    #           {
    #             grantee: {
    #               type_identifier: "id", # accepts id, emailAddress, uri
    #               identifier: "NonEmptyMaxLength1024String",
    #               display_name: "NonEmptyMaxLength1024String",
    #             },
    #             permission: "FULL_CONTROL", # accepts FULL_CONTROL, READ, WRITE, READ_ACP, WRITE_ACP
    #           },
    #         ],
    #         metadata_directive: "COPY", # accepts COPY, REPLACE
    #         modified_since_constraint: Time.now,
    #         new_object_metadata: {
    #           cache_control: "NonEmptyMaxLength1024String",
    #           content_disposition: "NonEmptyMaxLength1024String",
    #           content_encoding: "NonEmptyMaxLength1024String",
    #           content_language: "NonEmptyMaxLength1024String",
    #           user_metadata: {
    #             "NonEmptyMaxLength1024String" => "MaxLength1024String",
    #           },
    #           content_length: 1,
    #           content_md5: "NonEmptyMaxLength1024String",
    #           content_type: "NonEmptyMaxLength1024String",
    #           http_expires_date: Time.now,
    #           requester_charged: false,
    #           sse_algorithm: "AES256", # accepts AES256, KMS
    #         },
    #         new_object_tagging: [
    #           {
    #             key: "NonEmptyMaxLength1024String", # required
    #             value: "MaxLength1024String", # required
    #           },
    #         ],
    #         redirect_location: "NonEmptyMaxLength2048String",
    #         requester_pays: false,
    #         storage_class: "STANDARD", # accepts STANDARD, STANDARD_IA, ONEZONE_IA, GLACIER, INTELLIGENT_TIERING, DEEP_ARCHIVE
    #         un_modified_since_constraint: Time.now,
    #         sse_aws_kms_key_id: "KmsKeyArnString",
    #         target_key_prefix: "NonEmptyMaxLength1024String",
    #         object_lock_legal_hold_status: "OFF", # accepts OFF, ON
    #         object_lock_mode: "COMPLIANCE", # accepts COMPLIANCE, GOVERNANCE
    #         object_lock_retain_until_date: Time.now,
    #       },
    #       s3_put_object_acl: {
    #         access_control_policy: {
    #           access_control_list: {
    #             owner: { # required
    #               id: "NonEmptyMaxLength1024String",
    #               display_name: "NonEmptyMaxLength1024String",
    #             },
    #             grants: [
    #               {
    #                 grantee: {
    #                   type_identifier: "id", # accepts id, emailAddress, uri
    #                   identifier: "NonEmptyMaxLength1024String",
    #                   display_name: "NonEmptyMaxLength1024String",
    #                 },
    #                 permission: "FULL_CONTROL", # accepts FULL_CONTROL, READ, WRITE, READ_ACP, WRITE_ACP
    #               },
    #             ],
    #           },
    #           canned_access_control_list: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control
    #         },
    #       },
    #       s3_put_object_tagging: {
    #         tag_set: [
    #           {
    #             key: "NonEmptyMaxLength1024String", # required
    #             value: "MaxLength1024String", # required
    #           },
    #         ],
    #       },
    #       s3_initiate_restore_object: {
    #         expiration_in_days: 1,
    #         glacier_job_tier: "BULK", # accepts BULK, STANDARD
    #       },
    #     },
    #     report: { # required
    #       bucket: "S3BucketArnString",
    #       format: "Report_CSV_20180820", # accepts Report_CSV_20180820
    #       enabled: false, # required
    #       prefix: "ReportPrefixString",
    #       report_scope: "AllTasks", # accepts AllTasks, FailedTasksOnly
    #     },
    #     client_request_token: "NonEmptyMaxLength64String", # required
    #     manifest: { # required
    #       spec: { # required
    #         format: "S3BatchOperations_CSV_20180820", # required, accepts S3BatchOperations_CSV_20180820, S3InventoryReport_CSV_20161130
    #         fields: ["Ignore"], # accepts Ignore, Bucket, Key, VersionId
    #       },
    #       location: { # required
    #         object_arn: "S3KeyArnString", # required
    #         object_version_id: "S3ObjectVersionId",
    #         etag: "NonEmptyMaxLength1024String", # required
    #       },
    #     },
    #     description: "NonEmptyMaxLength256String",
    #     priority: 1, # required
    #     role_arn: "IAMRoleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/CreateJob AWS API Documentation
    #
    # @overload create_job(params = {})
    # @param [Hash] params ({})
    def create_job(params = {}, options = {})
      req = build_request(:create_job, params)
      req.send_request(options)
    end

    # Deletes the block public access configuration for the specified
    # account.
    #
    # @option params [required, String] :account_id
    #   The account ID for the AWS account whose block public access
    #   configuration you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_public_access_block({
    #     account_id: "AccountId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeletePublicAccessBlock AWS API Documentation
    #
    # @overload delete_public_access_block(params = {})
    # @param [Hash] params ({})
    def delete_public_access_block(params = {}, options = {})
      req = build_request(:delete_public_access_block, params)
      req.send_request(options)
    end

    # Retrieves the configuration parameters and status for a batch
    # operations job.
    #
    # @option params [required, String] :account_id
    #
    # @option params [required, String] :job_id
    #   The ID for the job whose information you want to retrieve.
    #
    # @return [Types::DescribeJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJobResult#job #job} => Types::JobDescriptor
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job({
    #     account_id: "AccountId", # required
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job.job_id #=> String
    #   resp.job.confirmation_required #=> Boolean
    #   resp.job.description #=> String
    #   resp.job.job_arn #=> String
    #   resp.job.status #=> String, one of "Active", "Cancelled", "Cancelling", "Complete", "Completing", "Failed", "Failing", "New", "Paused", "Pausing", "Preparing", "Ready", "Suspended"
    #   resp.job.manifest.spec.format #=> String, one of "S3BatchOperations_CSV_20180820", "S3InventoryReport_CSV_20161130"
    #   resp.job.manifest.spec.fields #=> Array
    #   resp.job.manifest.spec.fields[0] #=> String, one of "Ignore", "Bucket", "Key", "VersionId"
    #   resp.job.manifest.location.object_arn #=> String
    #   resp.job.manifest.location.object_version_id #=> String
    #   resp.job.manifest.location.etag #=> String
    #   resp.job.operation.lambda_invoke.function_arn #=> String
    #   resp.job.operation.s3_put_object_copy.target_resource #=> String
    #   resp.job.operation.s3_put_object_copy.canned_access_control_list #=> String, one of "private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"
    #   resp.job.operation.s3_put_object_copy.access_control_grants #=> Array
    #   resp.job.operation.s3_put_object_copy.access_control_grants[0].grantee.type_identifier #=> String, one of "id", "emailAddress", "uri"
    #   resp.job.operation.s3_put_object_copy.access_control_grants[0].grantee.identifier #=> String
    #   resp.job.operation.s3_put_object_copy.access_control_grants[0].grantee.display_name #=> String
    #   resp.job.operation.s3_put_object_copy.access_control_grants[0].permission #=> String, one of "FULL_CONTROL", "READ", "WRITE", "READ_ACP", "WRITE_ACP"
    #   resp.job.operation.s3_put_object_copy.metadata_directive #=> String, one of "COPY", "REPLACE"
    #   resp.job.operation.s3_put_object_copy.modified_since_constraint #=> Time
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.cache_control #=> String
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.content_disposition #=> String
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.content_encoding #=> String
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.content_language #=> String
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.user_metadata #=> Hash
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.user_metadata["NonEmptyMaxLength1024String"] #=> String
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.content_length #=> Integer
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.content_md5 #=> String
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.content_type #=> String
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.http_expires_date #=> Time
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.requester_charged #=> Boolean
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.sse_algorithm #=> String, one of "AES256", "KMS"
    #   resp.job.operation.s3_put_object_copy.new_object_tagging #=> Array
    #   resp.job.operation.s3_put_object_copy.new_object_tagging[0].key #=> String
    #   resp.job.operation.s3_put_object_copy.new_object_tagging[0].value #=> String
    #   resp.job.operation.s3_put_object_copy.redirect_location #=> String
    #   resp.job.operation.s3_put_object_copy.requester_pays #=> Boolean
    #   resp.job.operation.s3_put_object_copy.storage_class #=> String, one of "STANDARD", "STANDARD_IA", "ONEZONE_IA", "GLACIER", "INTELLIGENT_TIERING", "DEEP_ARCHIVE"
    #   resp.job.operation.s3_put_object_copy.un_modified_since_constraint #=> Time
    #   resp.job.operation.s3_put_object_copy.sse_aws_kms_key_id #=> String
    #   resp.job.operation.s3_put_object_copy.target_key_prefix #=> String
    #   resp.job.operation.s3_put_object_copy.object_lock_legal_hold_status #=> String, one of "OFF", "ON"
    #   resp.job.operation.s3_put_object_copy.object_lock_mode #=> String, one of "COMPLIANCE", "GOVERNANCE"
    #   resp.job.operation.s3_put_object_copy.object_lock_retain_until_date #=> Time
    #   resp.job.operation.s3_put_object_acl.access_control_policy.access_control_list.owner.id #=> String
    #   resp.job.operation.s3_put_object_acl.access_control_policy.access_control_list.owner.display_name #=> String
    #   resp.job.operation.s3_put_object_acl.access_control_policy.access_control_list.grants #=> Array
    #   resp.job.operation.s3_put_object_acl.access_control_policy.access_control_list.grants[0].grantee.type_identifier #=> String, one of "id", "emailAddress", "uri"
    #   resp.job.operation.s3_put_object_acl.access_control_policy.access_control_list.grants[0].grantee.identifier #=> String
    #   resp.job.operation.s3_put_object_acl.access_control_policy.access_control_list.grants[0].grantee.display_name #=> String
    #   resp.job.operation.s3_put_object_acl.access_control_policy.access_control_list.grants[0].permission #=> String, one of "FULL_CONTROL", "READ", "WRITE", "READ_ACP", "WRITE_ACP"
    #   resp.job.operation.s3_put_object_acl.access_control_policy.canned_access_control_list #=> String, one of "private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"
    #   resp.job.operation.s3_put_object_tagging.tag_set #=> Array
    #   resp.job.operation.s3_put_object_tagging.tag_set[0].key #=> String
    #   resp.job.operation.s3_put_object_tagging.tag_set[0].value #=> String
    #   resp.job.operation.s3_initiate_restore_object.expiration_in_days #=> Integer
    #   resp.job.operation.s3_initiate_restore_object.glacier_job_tier #=> String, one of "BULK", "STANDARD"
    #   resp.job.priority #=> Integer
    #   resp.job.progress_summary.total_number_of_tasks #=> Integer
    #   resp.job.progress_summary.number_of_tasks_succeeded #=> Integer
    #   resp.job.progress_summary.number_of_tasks_failed #=> Integer
    #   resp.job.status_update_reason #=> String
    #   resp.job.failure_reasons #=> Array
    #   resp.job.failure_reasons[0].failure_code #=> String
    #   resp.job.failure_reasons[0].failure_reason #=> String
    #   resp.job.report.bucket #=> String
    #   resp.job.report.format #=> String, one of "Report_CSV_20180820"
    #   resp.job.report.enabled #=> Boolean
    #   resp.job.report.prefix #=> String
    #   resp.job.report.report_scope #=> String, one of "AllTasks", "FailedTasksOnly"
    #   resp.job.creation_time #=> Time
    #   resp.job.termination_date #=> Time
    #   resp.job.role_arn #=> String
    #   resp.job.suspended_date #=> Time
    #   resp.job.suspended_cause #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DescribeJob AWS API Documentation
    #
    # @overload describe_job(params = {})
    # @param [Hash] params ({})
    def describe_job(params = {}, options = {})
      req = build_request(:describe_job, params)
      req.send_request(options)
    end

    # @option params [required, String] :account_id
    #
    # @return [Types::GetPublicAccessBlockOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPublicAccessBlockOutput#public_access_block_configuration #public_access_block_configuration} => Types::PublicAccessBlockConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_public_access_block({
    #     account_id: "AccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.public_access_block_configuration.block_public_acls #=> Boolean
    #   resp.public_access_block_configuration.ignore_public_acls #=> Boolean
    #   resp.public_access_block_configuration.block_public_policy #=> Boolean
    #   resp.public_access_block_configuration.restrict_public_buckets #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetPublicAccessBlock AWS API Documentation
    #
    # @overload get_public_access_block(params = {})
    # @param [Hash] params ({})
    def get_public_access_block(params = {}, options = {})
      req = build_request(:get_public_access_block, params)
      req.send_request(options)
    end

    # Lists current jobs and jobs that have ended within the last 30 days
    # for the AWS account making the request.
    #
    # @option params [required, String] :account_id
    #
    # @option params [Array<String>] :job_statuses
    #   The `List Jobs` request returns jobs that match the statuses listed in
    #   this element.
    #
    # @option params [String] :next_token
    #   A pagination token to request the next page of results. Use the token
    #   that Amazon S3 returned in the `NextToken` element of the
    #   `ListJobsResult` from the previous `List Jobs` request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of jobs that Amazon S3 will include in the `List
    #   Jobs` response. If there are more jobs than this number, the response
    #   will include a pagination token in the `NextToken` field to enable you
    #   to retrieve the next page of results.
    #
    # @return [Types::ListJobsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsResult#next_token #next_token} => String
    #   * {Types::ListJobsResult#jobs #jobs} => Array&lt;Types::JobListDescriptor&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs({
    #     account_id: "AccountId", # required
    #     job_statuses: ["Active"], # accepts Active, Cancelled, Cancelling, Complete, Completing, Failed, Failing, New, Paused, Pausing, Preparing, Ready, Suspended
    #     next_token: "NonEmptyMaxLength1024String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.jobs #=> Array
    #   resp.jobs[0].job_id #=> String
    #   resp.jobs[0].description #=> String
    #   resp.jobs[0].operation #=> String, one of "LambdaInvoke", "S3PutObjectCopy", "S3PutObjectAcl", "S3PutObjectTagging", "S3InitiateRestoreObject"
    #   resp.jobs[0].priority #=> Integer
    #   resp.jobs[0].status #=> String, one of "Active", "Cancelled", "Cancelling", "Complete", "Completing", "Failed", "Failing", "New", "Paused", "Pausing", "Preparing", "Ready", "Suspended"
    #   resp.jobs[0].creation_time #=> Time
    #   resp.jobs[0].termination_date #=> Time
    #   resp.jobs[0].progress_summary.total_number_of_tasks #=> Integer
    #   resp.jobs[0].progress_summary.number_of_tasks_succeeded #=> Integer
    #   resp.jobs[0].progress_summary.number_of_tasks_failed #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ListJobs AWS API Documentation
    #
    # @overload list_jobs(params = {})
    # @param [Hash] params ({})
    def list_jobs(params = {}, options = {})
      req = build_request(:list_jobs, params)
      req.send_request(options)
    end

    # @option params [required, Types::PublicAccessBlockConfiguration] :public_access_block_configuration
    #
    # @option params [required, String] :account_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_public_access_block({
    #     public_access_block_configuration: { # required
    #       block_public_acls: false,
    #       ignore_public_acls: false,
    #       block_public_policy: false,
    #       restrict_public_buckets: false,
    #     },
    #     account_id: "AccountId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutPublicAccessBlock AWS API Documentation
    #
    # @overload put_public_access_block(params = {})
    # @param [Hash] params ({})
    def put_public_access_block(params = {}, options = {})
      req = build_request(:put_public_access_block, params)
      req.send_request(options)
    end

    # Updates an existing job's priority.
    #
    # @option params [required, String] :account_id
    #
    # @option params [required, String] :job_id
    #   The ID for the job whose priority you want to update.
    #
    # @option params [required, Integer] :priority
    #   The priority you want to assign to this job.
    #
    # @return [Types::UpdateJobPriorityResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateJobPriorityResult#job_id #job_id} => String
    #   * {Types::UpdateJobPriorityResult#priority #priority} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job_priority({
    #     account_id: "AccountId", # required
    #     job_id: "JobId", # required
    #     priority: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.priority #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/UpdateJobPriority AWS API Documentation
    #
    # @overload update_job_priority(params = {})
    # @param [Hash] params ({})
    def update_job_priority(params = {}, options = {})
      req = build_request(:update_job_priority, params)
      req.send_request(options)
    end

    # Updates the status for the specified job. Use this operation to
    # confirm that you want to run a job or to cancel an existing job.
    #
    # @option params [required, String] :account_id
    #
    # @option params [required, String] :job_id
    #   The ID of the job whose status you want to update.
    #
    # @option params [required, String] :requested_job_status
    #   The status that you want to move the specified job to.
    #
    # @option params [String] :status_update_reason
    #   A description of the reason why you want to change the specified
    #   job's status. This field can be any string up to the maximum length.
    #
    # @return [Types::UpdateJobStatusResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateJobStatusResult#job_id #job_id} => String
    #   * {Types::UpdateJobStatusResult#status #status} => String
    #   * {Types::UpdateJobStatusResult#status_update_reason #status_update_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job_status({
    #     account_id: "AccountId", # required
    #     job_id: "JobId", # required
    #     requested_job_status: "Cancelled", # required, accepts Cancelled, Ready
    #     status_update_reason: "JobStatusUpdateReason",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.status #=> String, one of "Active", "Cancelled", "Cancelling", "Complete", "Completing", "Failed", "Failing", "New", "Paused", "Pausing", "Preparing", "Ready", "Suspended"
    #   resp.status_update_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/UpdateJobStatus AWS API Documentation
    #
    # @overload update_job_status(params = {})
    # @param [Hash] params ({})
    def update_job_status(params = {}, options = {})
      req = build_request(:update_job_status, params)
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
      context[:gem_name] = 'aws-sdk-s3control'
      context[:gem_version] = '1.8.0'
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
