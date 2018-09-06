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

Aws::Plugins::GlobalConfiguration.add_identifier(:migrationhub)

module Aws::MigrationHub
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :migrationhub

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

    # Associates a created artifact of an AWS cloud resource, the target
    # receiving the migration, with the migration task performed by a
    # migration tool. This API has the following traits:
    #
    # * Migration tools can call the `AssociateCreatedArtifact` operation to
    #   indicate which AWS artifact is associated with a migration task.
    #
    # * The created artifact name must be provided in ARN (Amazon Resource
    #   Name) format which will contain information about type and region;
    #   for example:
    #   `arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b`.
    #
    # * Examples of the AWS resource behind the created artifact are,
    #   AMI's, EC2 instance, or DMS endpoint, etc.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the ProgressUpdateStream.
    #
    # @option params [required, String] :migration_task_name
    #   Unique identifier that references the migration task.
    #
    # @option params [required, Types::CreatedArtifact] :created_artifact
    #   An ARN of the AWS resource related to the migration (e.g., AMI, EC2
    #   instance, RDS instance, etc.)
    #
    # @option params [Boolean] :dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_created_artifact({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     created_artifact: { # required
    #       name: "CreatedArtifactName", # required
    #       description: "CreatedArtifactDescription",
    #     },
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/AssociateCreatedArtifact AWS API Documentation
    #
    # @overload associate_created_artifact(params = {})
    # @param [Hash] params ({})
    def associate_created_artifact(params = {}, options = {})
      req = build_request(:associate_created_artifact, params)
      req.send_request(options)
    end

    # Associates a discovered resource ID from Application Discovery Service
    # (ADS) with a migration task.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the ProgressUpdateStream.
    #
    # @option params [required, String] :migration_task_name
    #   The identifier given to the MigrationTask.
    #
    # @option params [required, Types::DiscoveredResource] :discovered_resource
    #   Object representing a Resource.
    #
    # @option params [Boolean] :dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_discovered_resource({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     discovered_resource: { # required
    #       configuration_id: "ConfigurationId", # required
    #       description: "DiscoveredResourceDescription",
    #     },
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/AssociateDiscoveredResource AWS API Documentation
    #
    # @overload associate_discovered_resource(params = {})
    # @param [Hash] params ({})
    def associate_discovered_resource(params = {}, options = {})
      req = build_request(:associate_discovered_resource, params)
      req.send_request(options)
    end

    # Creates a progress update stream which is an AWS resource used for
    # access control as well as a namespace for migration task names that is
    # implicitly linked to your AWS account. It must uniquely identify the
    # migration tool as it is used for all updates made by the tool;
    # however, it does not need to be unique for each AWS account because it
    # is scoped to the AWS account.
    #
    # @option params [required, String] :progress_update_stream_name
    #   The name of the ProgressUpdateStream.
    #
    # @option params [Boolean] :dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_progress_update_stream({
    #     progress_update_stream_name: "ProgressUpdateStream", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/CreateProgressUpdateStream AWS API Documentation
    #
    # @overload create_progress_update_stream(params = {})
    # @param [Hash] params ({})
    def create_progress_update_stream(params = {}, options = {})
      req = build_request(:create_progress_update_stream, params)
      req.send_request(options)
    end

    # Deletes a progress update stream, including all of its tasks, which
    # was previously created as an AWS resource used for access control.
    # This API has the following traits:
    #
    # * The only parameter needed for `DeleteProgressUpdateStream` is the
    #   stream name (same as a `CreateProgressUpdateStream` call).
    #
    # * The call will return, and a background process will asynchronously
    #   delete the stream and all of its resources (tasks, associated
    #   resources, resource attributes, created artifacts).
    #
    # * If the stream takes time to be deleted, it might still show up on a
    #   `ListProgressUpdateStreams` call.
    #
    # * `CreateProgressUpdateStream`, `ImportMigrationTask`,
    #   `NotifyMigrationTaskState`, and all Associate\[*\] APIs realted to
    #   the tasks belonging to the stream will throw
    #   "InvalidInputException" if the stream of the same name is in the
    #   process of being deleted.
    #
    # * Once the stream and all of its resources are deleted,
    #   `CreateProgressUpdateStream` for a stream of the same name will
    #   succeed, and that stream will be an entirely new logical resource
    #   (without any resources associated with the old stream).
    #
    # @option params [required, String] :progress_update_stream_name
    #   The name of the ProgressUpdateStream.
    #
    # @option params [Boolean] :dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_progress_update_stream({
    #     progress_update_stream_name: "ProgressUpdateStream", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DeleteProgressUpdateStream AWS API Documentation
    #
    # @overload delete_progress_update_stream(params = {})
    # @param [Hash] params ({})
    def delete_progress_update_stream(params = {}, options = {})
      req = build_request(:delete_progress_update_stream, params)
      req.send_request(options)
    end

    # Gets the migration status of an application.
    #
    # @option params [required, String] :application_id
    #   The configurationId in ADS that uniquely identifies the grouped
    #   application.
    #
    # @return [Types::DescribeApplicationStateResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeApplicationStateResult#application_status #application_status} => String
    #   * {Types::DescribeApplicationStateResult#last_updated_time #last_updated_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application_state({
    #     application_id: "ApplicationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETED"
    #   resp.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DescribeApplicationState AWS API Documentation
    #
    # @overload describe_application_state(params = {})
    # @param [Hash] params ({})
    def describe_application_state(params = {}, options = {})
      req = build_request(:describe_application_state, params)
      req.send_request(options)
    end

    # Retrieves a list of all attributes associated with a specific
    # migration task.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the ProgressUpdateStream.
    #
    # @option params [required, String] :migration_task_name
    #   The identifier given to the MigrationTask.
    #
    # @return [Types::DescribeMigrationTaskResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMigrationTaskResult#migration_task #migration_task} => Types::MigrationTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_migration_task({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.migration_task.progress_update_stream #=> String
    #   resp.migration_task.migration_task_name #=> String
    #   resp.migration_task.task.status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.migration_task.task.status_detail #=> String
    #   resp.migration_task.task.progress_percent #=> Integer
    #   resp.migration_task.update_date_time #=> Time
    #   resp.migration_task.resource_attribute_list #=> Array
    #   resp.migration_task.resource_attribute_list[0].type #=> String, one of "IPV4_ADDRESS", "IPV6_ADDRESS", "MAC_ADDRESS", "FQDN", "VM_MANAGER_ID", "VM_MANAGED_OBJECT_REFERENCE", "VM_NAME", "VM_PATH", "BIOS_ID", "MOTHERBOARD_SERIAL_NUMBER"
    #   resp.migration_task.resource_attribute_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DescribeMigrationTask AWS API Documentation
    #
    # @overload describe_migration_task(params = {})
    # @param [Hash] params ({})
    def describe_migration_task(params = {}, options = {})
      req = build_request(:describe_migration_task, params)
      req.send_request(options)
    end

    # Disassociates a created artifact of an AWS resource with a migration
    # task performed by a migration tool that was previously associated.
    # This API has the following traits:
    #
    # * A migration user can call the `DisassociateCreatedArtifacts`
    #   operation to disassociate a created AWS Artifact from a migration
    #   task.
    #
    # * The created artifact name must be provided in ARN (Amazon Resource
    #   Name) format which will contain information about type and region;
    #   for example:
    #   `arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b`.
    #
    # * Examples of the AWS resource behind the created artifact are,
    #   AMI's, EC2 instance, or RDS instance, etc.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the ProgressUpdateStream.
    #
    # @option params [required, String] :migration_task_name
    #   Unique identifier that references the migration task to be
    #   disassociated with the artifact.
    #
    # @option params [required, String] :created_artifact_name
    #   An ARN of the AWS resource related to the migration (e.g., AMI, EC2
    #   instance, RDS instance, etc.)
    #
    # @option params [Boolean] :dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_created_artifact({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     created_artifact_name: "CreatedArtifactName", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DisassociateCreatedArtifact AWS API Documentation
    #
    # @overload disassociate_created_artifact(params = {})
    # @param [Hash] params ({})
    def disassociate_created_artifact(params = {}, options = {})
      req = build_request(:disassociate_created_artifact, params)
      req.send_request(options)
    end

    # Disassociate an Application Discovery Service (ADS) discovered
    # resource from a migration task.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the ProgressUpdateStream.
    #
    # @option params [required, String] :migration_task_name
    #   The identifier given to the MigrationTask.
    #
    # @option params [required, String] :configuration_id
    #   ConfigurationId of the ADS resource to be disassociated.
    #
    # @option params [Boolean] :dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_discovered_resource({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     configuration_id: "ConfigurationId", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DisassociateDiscoveredResource AWS API Documentation
    #
    # @overload disassociate_discovered_resource(params = {})
    # @param [Hash] params ({})
    def disassociate_discovered_resource(params = {}, options = {})
      req = build_request(:disassociate_discovered_resource, params)
      req.send_request(options)
    end

    # Registers a new migration task which represents a server, database,
    # etc., being migrated to AWS by a migration tool.
    #
    # This API is a prerequisite to calling the `NotifyMigrationTaskState`
    # API as the migration tool must first register the migration task with
    # Migration Hub.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the ProgressUpdateStream.
    #
    # @option params [required, String] :migration_task_name
    #   Unique identifier that references the migration task.
    #
    # @option params [Boolean] :dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_migration_task({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ImportMigrationTask AWS API Documentation
    #
    # @overload import_migration_task(params = {})
    # @param [Hash] params ({})
    def import_migration_task(params = {}, options = {})
      req = build_request(:import_migration_task, params)
      req.send_request(options)
    end

    # Lists the created artifacts attached to a given migration task in an
    # update stream. This API has the following traits:
    #
    # * Gets the list of the created artifacts while migration is taking
    #   place.
    #
    # * Shows the artifacts created by the migration tool that was
    #   associated by the `AssociateCreatedArtifact` API.
    #
    # * Lists created artifacts in a paginated interface.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the ProgressUpdateStream.
    #
    # @option params [required, String] :migration_task_name
    #   Unique identifier that references the migration task.
    #
    # @option params [String] :next_token
    #   If a `NextToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the call
    #   again using the returned token in `NextToken`.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to be returned per page.
    #
    # @return [Types::ListCreatedArtifactsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCreatedArtifactsResult#next_token #next_token} => String
    #   * {Types::ListCreatedArtifactsResult#created_artifact_list #created_artifact_list} => Array&lt;Types::CreatedArtifact&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_created_artifacts({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.created_artifact_list #=> Array
    #   resp.created_artifact_list[0].name #=> String
    #   resp.created_artifact_list[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListCreatedArtifacts AWS API Documentation
    #
    # @overload list_created_artifacts(params = {})
    # @param [Hash] params ({})
    def list_created_artifacts(params = {}, options = {})
      req = build_request(:list_created_artifacts, params)
      req.send_request(options)
    end

    # Lists discovered resources associated with the given `MigrationTask`.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the ProgressUpdateStream.
    #
    # @option params [required, String] :migration_task_name
    #   The name of the MigrationTask.
    #
    # @option params [String] :next_token
    #   If a `NextToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the call
    #   again using the returned token in `NextToken`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results returned per page.
    #
    # @return [Types::ListDiscoveredResourcesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDiscoveredResourcesResult#next_token #next_token} => String
    #   * {Types::ListDiscoveredResourcesResult#discovered_resource_list #discovered_resource_list} => Array&lt;Types::DiscoveredResource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_discovered_resources({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.discovered_resource_list #=> Array
    #   resp.discovered_resource_list[0].configuration_id #=> String
    #   resp.discovered_resource_list[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListDiscoveredResources AWS API Documentation
    #
    # @overload list_discovered_resources(params = {})
    # @param [Hash] params ({})
    def list_discovered_resources(params = {}, options = {})
      req = build_request(:list_discovered_resources, params)
      req.send_request(options)
    end

    # Lists all, or filtered by resource name, migration tasks associated
    # with the user account making this call. This API has the following
    # traits:
    #
    # * Can show a summary list of the most recent migration tasks.
    #
    # * Can show a summary list of migration tasks associated with a given
    #   discovered resource.
    #
    # * Lists migration tasks in a paginated interface.
    #
    # @option params [String] :next_token
    #   If a `NextToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the call
    #   again using the returned token in `NextToken`.
    #
    # @option params [Integer] :max_results
    #   Value to specify how many results are returned per page.
    #
    # @option params [String] :resource_name
    #   Filter migration tasks by discovered resource name.
    #
    # @return [Types::ListMigrationTasksResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMigrationTasksResult#next_token #next_token} => String
    #   * {Types::ListMigrationTasksResult#migration_task_summary_list #migration_task_summary_list} => Array&lt;Types::MigrationTaskSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_migration_tasks({
    #     next_token: "Token",
    #     max_results: 1,
    #     resource_name: "ResourceName",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.migration_task_summary_list #=> Array
    #   resp.migration_task_summary_list[0].progress_update_stream #=> String
    #   resp.migration_task_summary_list[0].migration_task_name #=> String
    #   resp.migration_task_summary_list[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.migration_task_summary_list[0].progress_percent #=> Integer
    #   resp.migration_task_summary_list[0].status_detail #=> String
    #   resp.migration_task_summary_list[0].update_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListMigrationTasks AWS API Documentation
    #
    # @overload list_migration_tasks(params = {})
    # @param [Hash] params ({})
    def list_migration_tasks(params = {}, options = {})
      req = build_request(:list_migration_tasks, params)
      req.send_request(options)
    end

    # Lists progress update streams associated with the user account making
    # this call.
    #
    # @option params [String] :next_token
    #   If a `NextToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the call
    #   again using the returned token in `NextToken`.
    #
    # @option params [Integer] :max_results
    #   Filter to limit the maximum number of results to list per page.
    #
    # @return [Types::ListProgressUpdateStreamsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProgressUpdateStreamsResult#progress_update_stream_summary_list #progress_update_stream_summary_list} => Array&lt;Types::ProgressUpdateStreamSummary&gt;
    #   * {Types::ListProgressUpdateStreamsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_progress_update_streams({
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.progress_update_stream_summary_list #=> Array
    #   resp.progress_update_stream_summary_list[0].progress_update_stream_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListProgressUpdateStreams AWS API Documentation
    #
    # @overload list_progress_update_streams(params = {})
    # @param [Hash] params ({})
    def list_progress_update_streams(params = {}, options = {})
      req = build_request(:list_progress_update_streams, params)
      req.send_request(options)
    end

    # Sets the migration state of an application. For a given application
    # identified by the value passed to `ApplicationId`, its status is set
    # or updated by passing one of three values to `Status`\: `NOT_STARTED |
    # IN_PROGRESS | COMPLETED`.
    #
    # @option params [required, String] :application_id
    #   The configurationId in ADS that uniquely identifies the grouped
    #   application.
    #
    # @option params [required, String] :status
    #   Status of the application - Not Started, In-Progress, Complete.
    #
    # @option params [Boolean] :dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.notify_application_state({
    #     application_id: "ApplicationId", # required
    #     status: "NOT_STARTED", # required, accepts NOT_STARTED, IN_PROGRESS, COMPLETED
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/NotifyApplicationState AWS API Documentation
    #
    # @overload notify_application_state(params = {})
    # @param [Hash] params ({})
    def notify_application_state(params = {}, options = {})
      req = build_request(:notify_application_state, params)
      req.send_request(options)
    end

    # Notifies Migration Hub of the current status, progress, or other
    # detail regarding a migration task. This API has the following traits:
    #
    # * Migration tools will call the `NotifyMigrationTaskState` API to
    #   share the latest progress and status.
    #
    # * `MigrationTaskName` is used for addressing updates to the correct
    #   target.
    #
    # * `ProgressUpdateStream` is used for access control and to provide a
    #   namespace for each migration tool.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the ProgressUpdateStream.
    #
    # @option params [required, String] :migration_task_name
    #   Unique identifier that references the migration task.
    #
    # @option params [required, Types::Task] :task
    #   Information about the task's progress and status.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :update_date_time
    #   The timestamp when the task was gathered.
    #
    # @option params [required, Integer] :next_update_seconds
    #   Number of seconds after the UpdateDateTime within which the Migration
    #   Hub can expect an update. If Migration Hub does not receive an update
    #   within the specified interval, then the migration task will be
    #   considered stale.
    #
    # @option params [Boolean] :dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.notify_migration_task_state({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     task: { # required
    #       status: "NOT_STARTED", # required, accepts NOT_STARTED, IN_PROGRESS, FAILED, COMPLETED
    #       status_detail: "StatusDetail",
    #       progress_percent: 1,
    #     },
    #     update_date_time: Time.now, # required
    #     next_update_seconds: 1, # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/NotifyMigrationTaskState AWS API Documentation
    #
    # @overload notify_migration_task_state(params = {})
    # @param [Hash] params ({})
    def notify_migration_task_state(params = {}, options = {})
      req = build_request(:notify_migration_task_state, params)
      req.send_request(options)
    end

    # Provides identifying details of the resource being migrated so that it
    # can be associated in the Application Discovery Service (ADS)'s
    # repository. This association occurs asynchronously after
    # `PutResourceAttributes` returns.
    #
    # * Keep in mind that subsequent calls to PutResourceAttributes will
    #   override previously stored attributes. For example, if it is first
    #   called with a MAC address, but later, it is desired to *add* an IP
    #   address, it will then be required to call it with *both* the IP and
    #   MAC addresses to prevent overiding the MAC address.
    #
    # * Note the instructions regarding the special use case of the [
    #   `ResourceAttributeList` ][1] parameter when specifying any "VM"
    #   related value.
    #
    # <note markdown="1"> Because this is an asynchronous call, it will always return 200,
    # whether an association occurs or not. To confirm if an association was
    # found based on the provided details, call `ListDiscoveredResources`.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#migrationhub-PutResourceAttributes-request-ResourceAttributeList
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the ProgressUpdateStream.
    #
    # @option params [required, String] :migration_task_name
    #   Unique identifier that references the migration task.
    #
    # @option params [required, Array<Types::ResourceAttribute>] :resource_attribute_list
    #   Information about the resource that is being migrated. This data will
    #   be used to map the task to a resource in the Application Discovery
    #   Service (ADS)'s repository.
    #
    #   <note markdown="1"> Takes the object array of `ResourceAttribute` where the `Type` field
    #   is reserved for the following values: `IPV4_ADDRESS | IPV6_ADDRESS |
    #   MAC_ADDRESS | FQDN | VM_MANAGER_ID | VM_MANAGED_OBJECT_REFERENCE |
    #   VM_NAME | VM_PATH | BIOS_ID | MOTHERBOARD_SERIAL_NUMBER` where the
    #   identifying value can be a string up to 256 characters.
    #
    #    </note>
    #
    #   * If any "VM" related value is set for a `ResourceAttribute` object,
    #     it is required that `VM_MANAGER_ID`, as a minimum, is always set. If
    #     `VM_MANAGER_ID` is not set, then all "VM" fields will be discarded
    #     and "VM" fields will not be used for matching the migration task
    #     to a server in Application Discovery Service (ADS)'s repository.
    #     See the [Example][1] section below for a use case of specifying
    #     "VM" related values.
    #
    #   * If a server you are trying to match has multiple IP or MAC
    #     addresses, you should provide as many as you know in separate
    #     type/value pairs passed to the `ResourceAttributeList` parameter to
    #     maximize the chances of matching.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#API_PutResourceAttributes_Examples
    #
    # @option params [Boolean] :dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_attributes({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     resource_attribute_list: [ # required
    #       {
    #         type: "IPV4_ADDRESS", # required, accepts IPV4_ADDRESS, IPV6_ADDRESS, MAC_ADDRESS, FQDN, VM_MANAGER_ID, VM_MANAGED_OBJECT_REFERENCE, VM_NAME, VM_PATH, BIOS_ID, MOTHERBOARD_SERIAL_NUMBER
    #         value: "ResourceAttributeValue", # required
    #       },
    #     ],
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/PutResourceAttributes AWS API Documentation
    #
    # @overload put_resource_attributes(params = {})
    # @param [Hash] params ({})
    def put_resource_attributes(params = {}, options = {})
      req = build_request(:put_resource_attributes, params)
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
      context[:gem_name] = 'aws-sdk-migrationhub'
      context[:gem_version] = '1.5.0'
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
