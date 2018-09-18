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
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:sms)

module Aws::SMS
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :sms

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
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # The CreateReplicationJob API is used to create a ReplicationJob to
    # replicate a server on AWS. Call this API to first create a
    # ReplicationJob, which will then schedule periodic ReplicationRuns to
    # replicate your server to AWS. Each ReplicationRun will result in the
    # creation of an AWS AMI.
    #
    # @option params [required, String] :server_id
    #   Unique Identifier for a server
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :seed_replication_time
    #   Timestamp of an operation
    #
    # @option params [required, Integer] :frequency
    #   Interval between Replication Runs. This value is specified in hours,
    #   and represents the time between consecutive Replication Runs.
    #
    # @option params [String] :license_type
    #   The license type to be used for the Amazon Machine Image (AMI) created
    #   after a successful ReplicationRun.
    #
    # @option params [String] :role_name
    #   Name of service role in customer's account to be used by SMS service.
    #
    # @option params [String] :description
    #   The description for a Replication Job/Run.
    #
    # @return [Types::CreateReplicationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateReplicationJobResponse#replication_job_id #replication_job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_job({
    #     server_id: "ServerId", # required
    #     seed_replication_time: Time.now, # required
    #     frequency: 1, # required
    #     license_type: "AWS", # accepts AWS, BYOL
    #     role_name: "RoleName",
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/CreateReplicationJob AWS API Documentation
    #
    # @overload create_replication_job(params = {})
    # @param [Hash] params ({})
    def create_replication_job(params = {}, options = {})
      req = build_request(:create_replication_job, params)
      req.send_request(options)
    end

    # The DeleteReplicationJob API is used to delete a ReplicationJob,
    # resulting in no further ReplicationRuns. This will delete the contents
    # of the S3 bucket used to store SMS artifacts, but will not delete any
    # AMIs created by the SMS service.
    #
    # @option params [required, String] :replication_job_id
    #   The unique identifier for a Replication Job.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_job({
    #     replication_job_id: "ReplicationJobId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DeleteReplicationJob AWS API Documentation
    #
    # @overload delete_replication_job(params = {})
    # @param [Hash] params ({})
    def delete_replication_job(params = {}, options = {})
      req = build_request(:delete_replication_job, params)
      req.send_request(options)
    end

    # The DeleteServerCatalog API clears all servers from your server
    # catalog. This means that these servers will no longer be accessible to
    # the Server Migration Service.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DeleteServerCatalog AWS API Documentation
    #
    # @overload delete_server_catalog(params = {})
    # @param [Hash] params ({})
    def delete_server_catalog(params = {}, options = {})
      req = build_request(:delete_server_catalog, params)
      req.send_request(options)
    end

    # The DisassociateConnector API will disassociate a connector from the
    # Server Migration Service, rendering it unavailable to support
    # replication jobs.
    #
    # @option params [required, String] :connector_id
    #   Unique Identifier for Connector
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_connector({
    #     connector_id: "ConnectorId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/DisassociateConnector AWS API Documentation
    #
    # @overload disassociate_connector(params = {})
    # @param [Hash] params ({})
    def disassociate_connector(params = {}, options = {})
      req = build_request(:disassociate_connector, params)
      req.send_request(options)
    end

    # The GetConnectors API returns a list of connectors that are registered
    # with the Server Migration Service.
    #
    # @option params [String] :next_token
    #   Pagination token to pass as input to API call
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one API call. If left
    #   empty, this will default to 50.
    #
    # @return [Types::GetConnectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectorsResponse#connector_list #connector_list} => Array&lt;Types::Connector&gt;
    #   * {Types::GetConnectorsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connectors({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_list #=> Array
    #   resp.connector_list[0].connector_id #=> String
    #   resp.connector_list[0].version #=> String
    #   resp.connector_list[0].status #=> String, one of "HEALTHY", "UNHEALTHY"
    #   resp.connector_list[0].capability_list #=> Array
    #   resp.connector_list[0].capability_list[0] #=> String, one of "VSPHERE"
    #   resp.connector_list[0].vm_manager_name #=> String
    #   resp.connector_list[0].vm_manager_type #=> String, one of "VSPHERE"
    #   resp.connector_list[0].vm_manager_id #=> String
    #   resp.connector_list[0].ip_address #=> String
    #   resp.connector_list[0].mac_address #=> String
    #   resp.connector_list[0].associated_on #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetConnectors AWS API Documentation
    #
    # @overload get_connectors(params = {})
    # @param [Hash] params ({})
    def get_connectors(params = {}, options = {})
      req = build_request(:get_connectors, params)
      req.send_request(options)
    end

    # The GetReplicationJobs API will return all of your ReplicationJobs and
    # their details. This API returns a paginated list, that may be
    # consecutively called with nextToken to retrieve all ReplicationJobs.
    #
    # @option params [String] :replication_job_id
    #   The unique identifier for a Replication Job.
    #
    # @option params [String] :next_token
    #   Pagination token to pass as input to API call
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one API call. If left
    #   empty, this will default to 50.
    #
    # @return [Types::GetReplicationJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReplicationJobsResponse#replication_job_list #replication_job_list} => Array&lt;Types::ReplicationJob&gt;
    #   * {Types::GetReplicationJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_replication_jobs({
    #     replication_job_id: "ReplicationJobId",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_job_list #=> Array
    #   resp.replication_job_list[0].replication_job_id #=> String
    #   resp.replication_job_list[0].server_id #=> String
    #   resp.replication_job_list[0].server_type #=> String, one of "VIRTUAL_MACHINE"
    #   resp.replication_job_list[0].vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.replication_job_list[0].vm_server.vm_server_address.vm_id #=> String
    #   resp.replication_job_list[0].vm_server.vm_name #=> String
    #   resp.replication_job_list[0].vm_server.vm_manager_name #=> String
    #   resp.replication_job_list[0].vm_server.vm_manager_type #=> String, one of "VSPHERE"
    #   resp.replication_job_list[0].vm_server.vm_path #=> String
    #   resp.replication_job_list[0].seed_replication_time #=> Time
    #   resp.replication_job_list[0].frequency #=> Integer
    #   resp.replication_job_list[0].next_replication_run_start_time #=> Time
    #   resp.replication_job_list[0].license_type #=> String, one of "AWS", "BYOL"
    #   resp.replication_job_list[0].role_name #=> String
    #   resp.replication_job_list[0].latest_ami_id #=> String
    #   resp.replication_job_list[0].state #=> String, one of "PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED"
    #   resp.replication_job_list[0].status_message #=> String
    #   resp.replication_job_list[0].description #=> String
    #   resp.replication_job_list[0].replication_run_list #=> Array
    #   resp.replication_job_list[0].replication_run_list[0].replication_run_id #=> String
    #   resp.replication_job_list[0].replication_run_list[0].state #=> String, one of "PENDING", "MISSED", "ACTIVE", "FAILED", "COMPLETED", "DELETING", "DELETED"
    #   resp.replication_job_list[0].replication_run_list[0].type #=> String, one of "ON_DEMAND", "AUTOMATIC"
    #   resp.replication_job_list[0].replication_run_list[0].status_message #=> String
    #   resp.replication_job_list[0].replication_run_list[0].ami_id #=> String
    #   resp.replication_job_list[0].replication_run_list[0].scheduled_start_time #=> Time
    #   resp.replication_job_list[0].replication_run_list[0].completed_time #=> Time
    #   resp.replication_job_list[0].replication_run_list[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetReplicationJobs AWS API Documentation
    #
    # @overload get_replication_jobs(params = {})
    # @param [Hash] params ({})
    def get_replication_jobs(params = {}, options = {})
      req = build_request(:get_replication_jobs, params)
      req.send_request(options)
    end

    # The GetReplicationRuns API will return all ReplicationRuns for a given
    # ReplicationJob. This API returns a paginated list, that may be
    # consecutively called with nextToken to retrieve all ReplicationRuns
    # for a ReplicationJob.
    #
    # @option params [required, String] :replication_job_id
    #   The unique identifier for a Replication Job.
    #
    # @option params [String] :next_token
    #   Pagination token to pass as input to API call
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one API call. If left
    #   empty, this will default to 50.
    #
    # @return [Types::GetReplicationRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReplicationRunsResponse#replication_job #replication_job} => Types::ReplicationJob
    #   * {Types::GetReplicationRunsResponse#replication_run_list #replication_run_list} => Array&lt;Types::ReplicationRun&gt;
    #   * {Types::GetReplicationRunsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_replication_runs({
    #     replication_job_id: "ReplicationJobId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_job.replication_job_id #=> String
    #   resp.replication_job.server_id #=> String
    #   resp.replication_job.server_type #=> String, one of "VIRTUAL_MACHINE"
    #   resp.replication_job.vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.replication_job.vm_server.vm_server_address.vm_id #=> String
    #   resp.replication_job.vm_server.vm_name #=> String
    #   resp.replication_job.vm_server.vm_manager_name #=> String
    #   resp.replication_job.vm_server.vm_manager_type #=> String, one of "VSPHERE"
    #   resp.replication_job.vm_server.vm_path #=> String
    #   resp.replication_job.seed_replication_time #=> Time
    #   resp.replication_job.frequency #=> Integer
    #   resp.replication_job.next_replication_run_start_time #=> Time
    #   resp.replication_job.license_type #=> String, one of "AWS", "BYOL"
    #   resp.replication_job.role_name #=> String
    #   resp.replication_job.latest_ami_id #=> String
    #   resp.replication_job.state #=> String, one of "PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED"
    #   resp.replication_job.status_message #=> String
    #   resp.replication_job.description #=> String
    #   resp.replication_job.replication_run_list #=> Array
    #   resp.replication_job.replication_run_list[0].replication_run_id #=> String
    #   resp.replication_job.replication_run_list[0].state #=> String, one of "PENDING", "MISSED", "ACTIVE", "FAILED", "COMPLETED", "DELETING", "DELETED"
    #   resp.replication_job.replication_run_list[0].type #=> String, one of "ON_DEMAND", "AUTOMATIC"
    #   resp.replication_job.replication_run_list[0].status_message #=> String
    #   resp.replication_job.replication_run_list[0].ami_id #=> String
    #   resp.replication_job.replication_run_list[0].scheduled_start_time #=> Time
    #   resp.replication_job.replication_run_list[0].completed_time #=> Time
    #   resp.replication_job.replication_run_list[0].description #=> String
    #   resp.replication_run_list #=> Array
    #   resp.replication_run_list[0].replication_run_id #=> String
    #   resp.replication_run_list[0].state #=> String, one of "PENDING", "MISSED", "ACTIVE", "FAILED", "COMPLETED", "DELETING", "DELETED"
    #   resp.replication_run_list[0].type #=> String, one of "ON_DEMAND", "AUTOMATIC"
    #   resp.replication_run_list[0].status_message #=> String
    #   resp.replication_run_list[0].ami_id #=> String
    #   resp.replication_run_list[0].scheduled_start_time #=> Time
    #   resp.replication_run_list[0].completed_time #=> Time
    #   resp.replication_run_list[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetReplicationRuns AWS API Documentation
    #
    # @overload get_replication_runs(params = {})
    # @param [Hash] params ({})
    def get_replication_runs(params = {}, options = {})
      req = build_request(:get_replication_runs, params)
      req.send_request(options)
    end

    # The GetServers API returns a list of all servers in your server
    # catalog. For this call to succeed, you must previously have called
    # ImportServerCatalog.
    #
    # @option params [String] :next_token
    #   Pagination token to pass as input to API call
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one API call. If left
    #   empty, this will default to 50.
    #
    # @return [Types::GetServersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServersResponse#last_modified_on #last_modified_on} => Time
    #   * {Types::GetServersResponse#server_catalog_status #server_catalog_status} => String
    #   * {Types::GetServersResponse#server_list #server_list} => Array&lt;Types::Server&gt;
    #   * {Types::GetServersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_servers({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.last_modified_on #=> Time
    #   resp.server_catalog_status #=> String, one of "NOT_IMPORTED", "IMPORTING", "AVAILABLE", "DELETED", "EXPIRED"
    #   resp.server_list #=> Array
    #   resp.server_list[0].server_id #=> String
    #   resp.server_list[0].server_type #=> String, one of "VIRTUAL_MACHINE"
    #   resp.server_list[0].vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.server_list[0].vm_server.vm_server_address.vm_id #=> String
    #   resp.server_list[0].vm_server.vm_name #=> String
    #   resp.server_list[0].vm_server.vm_manager_name #=> String
    #   resp.server_list[0].vm_server.vm_manager_type #=> String, one of "VSPHERE"
    #   resp.server_list[0].vm_server.vm_path #=> String
    #   resp.server_list[0].replication_job_id #=> String
    #   resp.server_list[0].replication_job_terminated #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/GetServers AWS API Documentation
    #
    # @overload get_servers(params = {})
    # @param [Hash] params ({})
    def get_servers(params = {}, options = {})
      req = build_request(:get_servers, params)
      req.send_request(options)
    end

    # The ImportServerCatalog API is used to gather the complete list of
    # on-premises servers on your premises. This API call requires
    # connectors to be installed and monitoring all servers you would like
    # imported. This API call returns immediately, but may take some time to
    # retrieve all of the servers.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/ImportServerCatalog AWS API Documentation
    #
    # @overload import_server_catalog(params = {})
    # @param [Hash] params ({})
    def import_server_catalog(params = {}, options = {})
      req = build_request(:import_server_catalog, params)
      req.send_request(options)
    end

    # The StartOnDemandReplicationRun API is used to start a ReplicationRun
    # on demand (in addition to those that are scheduled based on your
    # frequency). This ReplicationRun will start immediately.
    # StartOnDemandReplicationRun is subject to limits on how many on demand
    # ReplicationRuns you may call per 24-hour period.
    #
    # @option params [required, String] :replication_job_id
    #   The unique identifier for a Replication Job.
    #
    # @option params [String] :description
    #   The description for a Replication Job/Run.
    #
    # @return [Types::StartOnDemandReplicationRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartOnDemandReplicationRunResponse#replication_run_id #replication_run_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_on_demand_replication_run({
    #     replication_job_id: "ReplicationJobId", # required
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_run_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/StartOnDemandReplicationRun AWS API Documentation
    #
    # @overload start_on_demand_replication_run(params = {})
    # @param [Hash] params ({})
    def start_on_demand_replication_run(params = {}, options = {})
      req = build_request(:start_on_demand_replication_run, params)
      req.send_request(options)
    end

    # The UpdateReplicationJob API is used to change the settings of your
    # existing ReplicationJob created using CreateReplicationJob. Calling
    # this API will affect the next scheduled ReplicationRun.
    #
    # @option params [required, String] :replication_job_id
    #   The unique identifier for a Replication Job.
    #
    # @option params [Integer] :frequency
    #   Interval between Replication Runs. This value is specified in hours,
    #   and represents the time between consecutive Replication Runs.
    #
    # @option params [Time,DateTime,Date,Integer,String] :next_replication_run_start_time
    #   Timestamp of an operation
    #
    # @option params [String] :license_type
    #   The license type to be used for the Amazon Machine Image (AMI) created
    #   after a successful ReplicationRun.
    #
    # @option params [String] :role_name
    #   Name of service role in customer's account to be used by SMS service.
    #
    # @option params [String] :description
    #   The description for a Replication Job/Run.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_replication_job({
    #     replication_job_id: "ReplicationJobId", # required
    #     frequency: 1,
    #     next_replication_run_start_time: Time.now,
    #     license_type: "AWS", # accepts AWS, BYOL
    #     role_name: "RoleName",
    #     description: "Description",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sms-2016-10-24/UpdateReplicationJob AWS API Documentation
    #
    # @overload update_replication_job(params = {})
    # @param [Hash] params ({})
    def update_replication_job(params = {}, options = {})
      req = build_request(:update_replication_job, params)
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
      context[:gem_name] = 'aws-sdk-sms'
      context[:gem_version] = '1.3.0'
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
