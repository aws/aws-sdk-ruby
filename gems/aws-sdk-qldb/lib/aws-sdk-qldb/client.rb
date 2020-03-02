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

Aws::Plugins::GlobalConfiguration.add_identifier(:qldb)

module Aws::QLDB
  # An API client for QLDB.  To construct a client, you need to configure a +:region+ and +:credentials+.
  #     client = Aws::QLDB::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  # For details on configuring region and credentials see
  # the {developer-guide}[https://docs.aws.amazon.com/sdk-for-ruby/v3/developer-guide/setup-config.html].
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :qldb

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
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yielded by {#session_for}.
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
    #     request on the session yielded by {#session_for}.
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

    # Creates a new ledger in your AWS account.
    #
    # @option params [required, String] :name
    #   The name of the ledger that you want to create. The name must be
    #   unique among all of your ledgers in the current AWS Region.
    #
    # @option params [Hash<String,String>] :tags
    #   The key-value pairs to add as tags to the ledger that you want to
    #   create. Tag keys are case sensitive. Tag values are case sensitive and
    #   can be null.
    #
    # @option params [required, String] :permissions_mode
    #   The permissions mode to assign to the ledger that you want to create.
    #
    # @option params [Boolean] :deletion_protection
    #   The flag that prevents a ledger from being deleted by any user. If not
    #   provided on ledger creation, this feature is enabled (`true`) by
    #   default.
    #
    #   If deletion protection is enabled, you must first disable it before
    #   you can delete the ledger using the QLDB API or the AWS Command Line
    #   Interface (AWS CLI). You can disable it by calling the `UpdateLedger`
    #   operation to set the flag to `false`. The QLDB console disables
    #   deletion protection for you when you use it to delete a ledger.
    #
    # @return [Types::CreateLedgerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLedgerResponse#name #name} => String
    #   * {Types::CreateLedgerResponse#arn #arn} => String
    #   * {Types::CreateLedgerResponse#state #state} => String
    #   * {Types::CreateLedgerResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::CreateLedgerResponse#deletion_protection #deletion_protection} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ledger({
    #     name: "LedgerName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     permissions_mode: "ALLOW_ALL", # required, accepts ALLOW_ALL
    #     deletion_protection: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED"
    #   resp.creation_date_time #=> Time
    #   resp.deletion_protection #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/CreateLedger AWS API Documentation
    #
    # @overload create_ledger(params = {})
    # @param [Hash] params ({})
    def create_ledger(params = {}, options = {})
      req = build_request(:create_ledger, params)
      req.send_request(options)
    end

    # Deletes a ledger and all of its contents. This action is irreversible.
    #
    # If deletion protection is enabled, you must first disable it before
    # you can delete the ledger using the QLDB API or the AWS Command Line
    # Interface (AWS CLI). You can disable it by calling the `UpdateLedger`
    # operation to set the flag to `false`. The QLDB console disables
    # deletion protection for you when you use it to delete a ledger.
    #
    # @option params [required, String] :name
    #   The name of the ledger that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ledger({
    #     name: "LedgerName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/DeleteLedger AWS API Documentation
    #
    # @overload delete_ledger(params = {})
    # @param [Hash] params ({})
    def delete_ledger(params = {}, options = {})
      req = build_request(:delete_ledger, params)
      req.send_request(options)
    end

    # Returns information about a journal export job, including the ledger
    # name, export ID, when it was created, current status, and its start
    # and end time export parameters.
    #
    # If the export job with the given `ExportId` doesn't exist, then
    # throws `ResourceNotFoundException`.
    #
    # If the ledger with the given `Name` doesn't exist, then throws
    # `ResourceNotFoundException`.
    #
    # @option params [required, String] :name
    #   The name of the ledger.
    #
    # @option params [required, String] :export_id
    #   The unique ID of the journal export job that you want to describe.
    #
    # @return [Types::DescribeJournalS3ExportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJournalS3ExportResponse#export_description #export_description} => Types::JournalS3ExportDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_journal_s3_export({
    #     name: "LedgerName", # required
    #     export_id: "UniqueId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.export_description.ledger_name #=> String
    #   resp.export_description.export_id #=> String
    #   resp.export_description.export_creation_time #=> Time
    #   resp.export_description.status #=> String, one of "IN_PROGRESS", "COMPLETED", "CANCELLED"
    #   resp.export_description.inclusive_start_time #=> Time
    #   resp.export_description.exclusive_end_time #=> Time
    #   resp.export_description.s3_export_configuration.bucket #=> String
    #   resp.export_description.s3_export_configuration.prefix #=> String
    #   resp.export_description.s3_export_configuration.encryption_configuration.object_encryption_type #=> String, one of "SSE_KMS", "SSE_S3", "NO_ENCRYPTION"
    #   resp.export_description.s3_export_configuration.encryption_configuration.kms_key_arn #=> String
    #   resp.export_description.role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/DescribeJournalS3Export AWS API Documentation
    #
    # @overload describe_journal_s3_export(params = {})
    # @param [Hash] params ({})
    def describe_journal_s3_export(params = {}, options = {})
      req = build_request(:describe_journal_s3_export, params)
      req.send_request(options)
    end

    # Returns information about a ledger, including its state and when it
    # was created.
    #
    # @option params [required, String] :name
    #   The name of the ledger that you want to describe.
    #
    # @return [Types::DescribeLedgerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLedgerResponse#name #name} => String
    #   * {Types::DescribeLedgerResponse#arn #arn} => String
    #   * {Types::DescribeLedgerResponse#state #state} => String
    #   * {Types::DescribeLedgerResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::DescribeLedgerResponse#deletion_protection #deletion_protection} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ledger({
    #     name: "LedgerName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED"
    #   resp.creation_date_time #=> Time
    #   resp.deletion_protection #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/DescribeLedger AWS API Documentation
    #
    # @overload describe_ledger(params = {})
    # @param [Hash] params ({})
    def describe_ledger(params = {}, options = {})
      req = build_request(:describe_ledger, params)
      req.send_request(options)
    end

    # Exports journal contents within a date and time range from a ledger
    # into a specified Amazon Simple Storage Service (Amazon S3) bucket. The
    # data is written as files in Amazon Ion format.
    #
    # If the ledger with the given `Name` doesn't exist, then throws
    # `ResourceNotFoundException`.
    #
    # If the ledger with the given `Name` is in `CREATING` status, then
    # throws `ResourcePreconditionNotMetException`.
    #
    # You can initiate up to two concurrent journal export requests for each
    # ledger. Beyond this limit, journal export requests throw
    # `LimitExceededException`.
    #
    # @option params [required, String] :name
    #   The name of the ledger.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :inclusive_start_time
    #   The inclusive start date and time for the range of journal contents
    #   that you want to export.
    #
    #   The `InclusiveStartTime` must be in `ISO 8601` date and time format
    #   and in Universal Coordinated Time (UTC). For example:
    #   `2019-06-13T21:36:34Z`
    #
    #   The `InclusiveStartTime` must be before `ExclusiveEndTime`.
    #
    #   If you provide an `InclusiveStartTime` that is before the ledger's
    #   `CreationDateTime`, Amazon QLDB defaults it to the ledger's
    #   `CreationDateTime`.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :exclusive_end_time
    #   The exclusive end date and time for the range of journal contents that
    #   you want to export.
    #
    #   The `ExclusiveEndTime` must be in `ISO 8601` date and time format and
    #   in Universal Coordinated Time (UTC). For example:
    #   `2019-06-13T21:36:34Z`
    #
    #   The `ExclusiveEndTime` must be less than or equal to the current UTC
    #   date and time.
    #
    # @option params [required, Types::S3ExportConfiguration] :s3_export_configuration
    #   The configuration settings of the Amazon S3 bucket destination for
    #   your export request.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants QLDB
    #   permissions for a journal export job to do the following:
    #
    #   * Write objects into your Amazon Simple Storage Service (Amazon S3)
    #     bucket.
    #
    #   * (Optional) Use your customer master key (CMK) in AWS Key Management
    #     Service (AWS KMS) for server-side encryption of your exported data.
    #
    # @return [Types::ExportJournalToS3Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportJournalToS3Response#export_id #export_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_journal_to_s3({
    #     name: "LedgerName", # required
    #     inclusive_start_time: Time.now, # required
    #     exclusive_end_time: Time.now, # required
    #     s3_export_configuration: { # required
    #       bucket: "S3Bucket", # required
    #       prefix: "S3Prefix", # required
    #       encryption_configuration: { # required
    #         object_encryption_type: "SSE_KMS", # required, accepts SSE_KMS, SSE_S3, NO_ENCRYPTION
    #         kms_key_arn: "Arn",
    #       },
    #     },
    #     role_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.export_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ExportJournalToS3 AWS API Documentation
    #
    # @overload export_journal_to_s3(params = {})
    # @param [Hash] params ({})
    def export_journal_to_s3(params = {}, options = {})
      req = build_request(:export_journal_to_s3, params)
      req.send_request(options)
    end

    # Returns a journal block object at a specified address in a ledger.
    # Also returns a proof of the specified block for verification if
    # `DigestTipAddress` is provided.
    #
    # If the specified ledger doesn't exist or is in `DELETING` status,
    # then throws `ResourceNotFoundException`.
    #
    # If the specified ledger is in `CREATING` status, then throws
    # `ResourcePreconditionNotMetException`.
    #
    # If no block exists with the specified address, then throws
    # `InvalidParameterException`.
    #
    # @option params [required, String] :name
    #   The name of the ledger.
    #
    # @option params [required, Types::ValueHolder] :block_address
    #   The location of the block that you want to request. An address is an
    #   Amazon Ion structure that has two fields: `strandId` and `sequenceNo`.
    #
    #   For example: `\{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:14\}`
    #
    # @option params [Types::ValueHolder] :digest_tip_address
    #   The latest block location covered by the digest for which to request a
    #   proof. An address is an Amazon Ion structure that has two fields:
    #   `strandId` and `sequenceNo`.
    #
    #   For example: `\{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:49\}`
    #
    # @return [Types::GetBlockResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBlockResponse#block #block} => Types::ValueHolder
    #   * {Types::GetBlockResponse#proof #proof} => Types::ValueHolder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_block({
    #     name: "LedgerName", # required
    #     block_address: { # required
    #       ion_text: "IonText",
    #     },
    #     digest_tip_address: {
    #       ion_text: "IonText",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.block.ion_text #=> String
    #   resp.proof.ion_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/GetBlock AWS API Documentation
    #
    # @overload get_block(params = {})
    # @param [Hash] params ({})
    def get_block(params = {}, options = {})
      req = build_request(:get_block, params)
      req.send_request(options)
    end

    # Returns the digest of a ledger at the latest committed block in the
    # journal. The response includes a 256-bit hash value and a block
    # address.
    #
    # @option params [required, String] :name
    #   The name of the ledger.
    #
    # @return [Types::GetDigestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDigestResponse#digest #digest} => String
    #   * {Types::GetDigestResponse#digest_tip_address #digest_tip_address} => Types::ValueHolder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_digest({
    #     name: "LedgerName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.digest #=> String
    #   resp.digest_tip_address.ion_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/GetDigest AWS API Documentation
    #
    # @overload get_digest(params = {})
    # @param [Hash] params ({})
    def get_digest(params = {}, options = {})
      req = build_request(:get_digest, params)
      req.send_request(options)
    end

    # Returns a revision data object for a specified document ID and block
    # address. Also returns a proof of the specified revision for
    # verification if `DigestTipAddress` is provided.
    #
    # @option params [required, String] :name
    #   The name of the ledger.
    #
    # @option params [required, Types::ValueHolder] :block_address
    #   The block location of the document revision to be verified. An address
    #   is an Amazon Ion structure that has two fields: `strandId` and
    #   `sequenceNo`.
    #
    #   For example: `\{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:14\}`
    #
    # @option params [required, String] :document_id
    #   The unique ID of the document to be verified.
    #
    # @option params [Types::ValueHolder] :digest_tip_address
    #   The latest block location covered by the digest for which to request a
    #   proof. An address is an Amazon Ion structure that has two fields:
    #   `strandId` and `sequenceNo`.
    #
    #   For example: `\{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:49\}`
    #
    # @return [Types::GetRevisionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRevisionResponse#proof #proof} => Types::ValueHolder
    #   * {Types::GetRevisionResponse#revision #revision} => Types::ValueHolder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_revision({
    #     name: "LedgerName", # required
    #     block_address: { # required
    #       ion_text: "IonText",
    #     },
    #     document_id: "UniqueId", # required
    #     digest_tip_address: {
    #       ion_text: "IonText",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.proof.ion_text #=> String
    #   resp.revision.ion_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/GetRevision AWS API Documentation
    #
    # @overload get_revision(params = {})
    # @param [Hash] params ({})
    def get_revision(params = {}, options = {})
      req = build_request(:get_revision, params)
      req.send_request(options)
    end

    # Returns an array of journal export job descriptions for all ledgers
    # that are associated with the current AWS account and Region.
    #
    # This action returns a maximum of `MaxResults` items, and is paginated
    # so that you can retrieve all the items by calling
    # `ListJournalS3Exports` multiple times.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single
    #   `ListJournalS3Exports` request. (The actual number of results returned
    #   might be fewer.)
    #
    # @option params [String] :next_token
    #   A pagination token, indicating that you want to retrieve the next page
    #   of results. If you received a value for `NextToken` in the response
    #   from a previous `ListJournalS3Exports` call, then you should use that
    #   value as input here.
    #
    # @return [Types::ListJournalS3ExportsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJournalS3ExportsResponse#journal_s3_exports #journal_s3_exports} => Array&lt;Types::JournalS3ExportDescription&gt;
    #   * {Types::ListJournalS3ExportsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_journal_s3_exports({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.journal_s3_exports #=> Array
    #   resp.journal_s3_exports[0].ledger_name #=> String
    #   resp.journal_s3_exports[0].export_id #=> String
    #   resp.journal_s3_exports[0].export_creation_time #=> Time
    #   resp.journal_s3_exports[0].status #=> String, one of "IN_PROGRESS", "COMPLETED", "CANCELLED"
    #   resp.journal_s3_exports[0].inclusive_start_time #=> Time
    #   resp.journal_s3_exports[0].exclusive_end_time #=> Time
    #   resp.journal_s3_exports[0].s3_export_configuration.bucket #=> String
    #   resp.journal_s3_exports[0].s3_export_configuration.prefix #=> String
    #   resp.journal_s3_exports[0].s3_export_configuration.encryption_configuration.object_encryption_type #=> String, one of "SSE_KMS", "SSE_S3", "NO_ENCRYPTION"
    #   resp.journal_s3_exports[0].s3_export_configuration.encryption_configuration.kms_key_arn #=> String
    #   resp.journal_s3_exports[0].role_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ListJournalS3Exports AWS API Documentation
    #
    # @overload list_journal_s3_exports(params = {})
    # @param [Hash] params ({})
    def list_journal_s3_exports(params = {}, options = {})
      req = build_request(:list_journal_s3_exports, params)
      req.send_request(options)
    end

    # Returns an array of journal export job descriptions for a specified
    # ledger.
    #
    # This action returns a maximum of `MaxResults` items, and is paginated
    # so that you can retrieve all the items by calling
    # `ListJournalS3ExportsForLedger` multiple times.
    #
    # @option params [required, String] :name
    #   The name of the ledger.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single
    #   `ListJournalS3ExportsForLedger` request. (The actual number of results
    #   returned might be fewer.)
    #
    # @option params [String] :next_token
    #   A pagination token, indicating that you want to retrieve the next page
    #   of results. If you received a value for `NextToken` in the response
    #   from a previous `ListJournalS3ExportsForLedger` call, then you should
    #   use that value as input here.
    #
    # @return [Types::ListJournalS3ExportsForLedgerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJournalS3ExportsForLedgerResponse#journal_s3_exports #journal_s3_exports} => Array&lt;Types::JournalS3ExportDescription&gt;
    #   * {Types::ListJournalS3ExportsForLedgerResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_journal_s3_exports_for_ledger({
    #     name: "LedgerName", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.journal_s3_exports #=> Array
    #   resp.journal_s3_exports[0].ledger_name #=> String
    #   resp.journal_s3_exports[0].export_id #=> String
    #   resp.journal_s3_exports[0].export_creation_time #=> Time
    #   resp.journal_s3_exports[0].status #=> String, one of "IN_PROGRESS", "COMPLETED", "CANCELLED"
    #   resp.journal_s3_exports[0].inclusive_start_time #=> Time
    #   resp.journal_s3_exports[0].exclusive_end_time #=> Time
    #   resp.journal_s3_exports[0].s3_export_configuration.bucket #=> String
    #   resp.journal_s3_exports[0].s3_export_configuration.prefix #=> String
    #   resp.journal_s3_exports[0].s3_export_configuration.encryption_configuration.object_encryption_type #=> String, one of "SSE_KMS", "SSE_S3", "NO_ENCRYPTION"
    #   resp.journal_s3_exports[0].s3_export_configuration.encryption_configuration.kms_key_arn #=> String
    #   resp.journal_s3_exports[0].role_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ListJournalS3ExportsForLedger AWS API Documentation
    #
    # @overload list_journal_s3_exports_for_ledger(params = {})
    # @param [Hash] params ({})
    def list_journal_s3_exports_for_ledger(params = {}, options = {})
      req = build_request(:list_journal_s3_exports_for_ledger, params)
      req.send_request(options)
    end

    # Returns an array of ledger summaries that are associated with the
    # current AWS account and Region.
    #
    # This action returns a maximum of 100 items and is paginated so that
    # you can retrieve all the items by calling `ListLedgers` multiple
    # times.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single `ListLedgers`
    #   request. (The actual number of results returned might be fewer.)
    #
    # @option params [String] :next_token
    #   A pagination token, indicating that you want to retrieve the next page
    #   of results. If you received a value for `NextToken` in the response
    #   from a previous `ListLedgers` call, then you should use that value as
    #   input here.
    #
    # @return [Types::ListLedgersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLedgersResponse#ledgers #ledgers} => Array&lt;Types::LedgerSummary&gt;
    #   * {Types::ListLedgersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ledgers({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.ledgers #=> Array
    #   resp.ledgers[0].name #=> String
    #   resp.ledgers[0].state #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED"
    #   resp.ledgers[0].creation_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ListLedgers AWS API Documentation
    #
    # @overload list_ledgers(params = {})
    # @param [Hash] params ({})
    def list_ledgers(params = {}, options = {})
      req = build_request(:list_ledgers, params)
      req.send_request(options)
    end

    # Returns all tags for a specified Amazon QLDB resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for which you want to list the tags.
    #   For example:
    #
    #   `arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger`
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds one or more tags to a specified Amazon QLDB resource.
    #
    # A resource can have up to 50 tags. If you try to create more than 50
    # tags for a resource, your request fails and returns an error.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) to which you want to add the tags. For
    #   example:
    #
    #   `arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger`
    #
    # @option params [required, Hash<String,String>] :tags
    #   The key-value pairs to add as tags to the specified QLDB resource. Tag
    #   keys are case sensitive. If you specify a key that already exists for
    #   the resource, your request fails and returns an error. Tag values are
    #   case sensitive and can be null.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from a specified Amazon QLDB resource. You
    # can specify up to 50 tag keys to remove.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) from which you want to remove the tags.
    #   For example:
    #
    #   `arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger`
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys that you want to remove.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates properties on a ledger.
    #
    # @option params [required, String] :name
    #   The name of the ledger.
    #
    # @option params [Boolean] :deletion_protection
    #   The flag that prevents a ledger from being deleted by any user. If not
    #   provided on ledger creation, this feature is enabled (`true`) by
    #   default.
    #
    #   If deletion protection is enabled, you must first disable it before
    #   you can delete the ledger using the QLDB API or the AWS Command Line
    #   Interface (AWS CLI). You can disable it by calling the `UpdateLedger`
    #   operation to set the flag to `false`. The QLDB console disables
    #   deletion protection for you when you use it to delete a ledger.
    #
    # @return [Types::UpdateLedgerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLedgerResponse#name #name} => String
    #   * {Types::UpdateLedgerResponse#arn #arn} => String
    #   * {Types::UpdateLedgerResponse#state #state} => String
    #   * {Types::UpdateLedgerResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::UpdateLedgerResponse#deletion_protection #deletion_protection} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ledger({
    #     name: "LedgerName", # required
    #     deletion_protection: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.arn #=> String
    #   resp.state #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED"
    #   resp.creation_date_time #=> Time
    #   resp.deletion_protection #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qldb-2019-01-02/UpdateLedger AWS API Documentation
    #
    # @overload update_ledger(params = {})
    # @param [Hash] params ({})
    def update_ledger(params = {}, options = {})
      req = build_request(:update_ledger, params)
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
      context[:gem_name] = 'aws-sdk-qldb'
      context[:gem_version] = '1.1.0'
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
