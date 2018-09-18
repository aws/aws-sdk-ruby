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

Aws::Plugins::GlobalConfiguration.add_identifier(:ssm)

module Aws::SSM
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :ssm

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

    # Adds or overwrites one or more tags for the specified resource. Tags
    # are metadata that you can assign to your documents, managed instances,
    # Maintenance Windows, Parameter Store parameters, and patch baselines.
    # Tags enable you to categorize your resources in different ways, for
    # example, by purpose, owner, or environment. Each tag consists of a key
    # and an optional value, both of which you define. For example, you
    # could define a set of tags for your account's managed instances that
    # helps you track each instance's owner and stack level. For example:
    # Key=Owner and Value=DbAdmin, SysAdmin, or Dev. Or Key=Stack and
    # Value=Production, Pre-Production, or Test.
    #
    # Each resource can have a maximum of 50 tags.
    #
    # We recommend that you devise a set of tag keys that meets your needs
    # for each resource type. Using a consistent set of tag keys makes it
    # easier for you to manage your resources. You can search and filter the
    # resources based on the tags you add. Tags don't have any semantic
    # meaning to Amazon EC2 and are interpreted strictly as a string of
    # characters.
    #
    # For more information about tags, see [Tagging Your Amazon EC2
    # Resources][1] in the *Amazon EC2 User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html
    #
    # @option params [required, String] :resource_type
    #   Specifies the type of resource you are tagging.
    #
    #   <note markdown="1"> The ManagedInstance type for this API action is for on-premises
    #   managed instances. You must specify the the name of the managed
    #   instance in the following format: mi-ID\_number. For example,
    #   mi-1a2b3c4d5e6f.
    #
    #    </note>
    #
    # @option params [required, String] :resource_id
    #   The resource ID you want to tag.
    #
    #   Use the ID of the resource. Here are some examples:
    #
    #   ManagedInstance: mi-012345abcde
    #
    #   MaintenanceWindow: mw-012345abcde
    #
    #   PatchBaseline: pb-012345abcde
    #
    #   For the Document and Parameter values, use the name of the resource.
    #
    #   <note markdown="1"> The ManagedInstance type for this API action is only for on-premises
    #   managed instances. You must specify the the name of the managed
    #   instance in the following format: mi-ID\_number. For example,
    #   mi-1a2b3c4d5e6f.
    #
    #    </note>
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   One or more tags. The value parameter is required, but if you don't
    #   want the tag to have a value, specify the parameter with no value, and
    #   we set the value to an empty string.
    #
    #   Do not enter personally identifiable information in this field.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_resource({
    #     resource_type: "Document", # required, accepts Document, ManagedInstance, MaintenanceWindow, Parameter, PatchBaseline
    #     resource_id: "ResourceId", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/AddTagsToResource AWS API Documentation
    #
    # @overload add_tags_to_resource(params = {})
    # @param [Hash] params ({})
    def add_tags_to_resource(params = {}, options = {})
      req = build_request(:add_tags_to_resource, params)
      req.send_request(options)
    end

    # Attempts to cancel the command specified by the Command ID. There is
    # no guarantee that the command will be terminated and the underlying
    # process stopped.
    #
    # @option params [required, String] :command_id
    #   The ID of the command you want to cancel.
    #
    # @option params [Array<String>] :instance_ids
    #   (Optional) A list of instance IDs on which you want to cancel the
    #   command. If not provided, the command is canceled on every instance on
    #   which it was requested.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_command({
    #     command_id: "CommandId", # required
    #     instance_ids: ["InstanceId"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CancelCommand AWS API Documentation
    #
    # @overload cancel_command(params = {})
    # @param [Hash] params ({})
    def cancel_command(params = {}, options = {})
      req = build_request(:cancel_command, params)
      req.send_request(options)
    end

    # Registers your on-premises server or virtual machine with Amazon EC2
    # so that you can manage these resources using Run Command. An
    # on-premises server or virtual machine that has been registered with
    # EC2 is called a managed instance. For more information about
    # activations, see [Setting Up Systems Manager in Hybrid
    # Environments][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-managedinstances.html
    #
    # @option params [String] :description
    #   A user-defined description of the resource that you want to register
    #   with Amazon EC2.
    #
    #   Do not enter personally identifiable information in this field.
    #
    # @option params [String] :default_instance_name
    #   The name of the registered, managed instance as it will appear in the
    #   Amazon EC2 console or when you use the AWS command line tools to list
    #   EC2 resources.
    #
    #   Do not enter personally identifiable information in this field.
    #
    # @option params [required, String] :iam_role
    #   The Amazon Identity and Access Management (IAM) role that you want to
    #   assign to the managed instance.
    #
    # @option params [Integer] :registration_limit
    #   Specify the maximum number of managed instances you want to register.
    #   The default value is 1 instance.
    #
    # @option params [Time,DateTime,Date,Integer,String] :expiration_date
    #   The date by which this activation request should expire. The default
    #   value is 24 hours.
    #
    # @return [Types::CreateActivationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateActivationResult#activation_id #activation_id} => String
    #   * {Types::CreateActivationResult#activation_code #activation_code} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_activation({
    #     description: "ActivationDescription",
    #     default_instance_name: "DefaultInstanceName",
    #     iam_role: "IamRole", # required
    #     registration_limit: 1,
    #     expiration_date: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.activation_id #=> String
    #   resp.activation_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateActivation AWS API Documentation
    #
    # @overload create_activation(params = {})
    # @param [Hash] params ({})
    def create_activation(params = {}, options = {})
      req = build_request(:create_activation, params)
      req.send_request(options)
    end

    # Associates the specified Systems Manager document with the specified
    # instances or targets.
    #
    # When you associate a document with one or more instances using
    # instance IDs or tags, SSM Agent running on the instance processes the
    # document and configures the instance as specified.
    #
    # If you associate a document with an instance that already has an
    # associated document, the system throws the AssociationAlreadyExists
    # exception.
    #
    # @option params [required, String] :name
    #   The name of the Systems Manager document.
    #
    # @option params [String] :document_version
    #   The document version you want to associate with the target(s). Can be
    #   a specific version or the default version.
    #
    # @option params [String] :instance_id
    #   The instance ID.
    #
    # @option params [Hash<String,Array>] :parameters
    #   The parameters for the documents runtime configuration.
    #
    # @option params [Array<Types::Target>] :targets
    #   The targets (either instances or tags) for the association.
    #
    # @option params [String] :schedule_expression
    #   A cron expression when the association will be applied to the
    #   target(s).
    #
    # @option params [Types::InstanceAssociationOutputLocation] :output_location
    #   An Amazon S3 bucket where you want to store the output details of the
    #   request.
    #
    # @option params [String] :association_name
    #   Specify a descriptive name for the association.
    #
    # @return [Types::CreateAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssociationResult#association_description #association_description} => Types::AssociationDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_association({
    #     name: "DocumentName", # required
    #     document_version: "DocumentVersion",
    #     instance_id: "InstanceId",
    #     parameters: {
    #       "ParameterName" => ["ParameterValue"],
    #     },
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"],
    #       },
    #     ],
    #     schedule_expression: "ScheduleExpression",
    #     output_location: {
    #       s3_location: {
    #         output_s3_region: "S3Region",
    #         output_s3_bucket_name: "S3BucketName",
    #         output_s3_key_prefix: "S3KeyPrefix",
    #       },
    #     },
    #     association_name: "AssociationName",
    #   })
    #
    # @example Response structure
    #
    #   resp.association_description.name #=> String
    #   resp.association_description.instance_id #=> String
    #   resp.association_description.association_version #=> String
    #   resp.association_description.date #=> Time
    #   resp.association_description.last_update_association_date #=> Time
    #   resp.association_description.status.date #=> Time
    #   resp.association_description.status.name #=> String, one of "Pending", "Success", "Failed"
    #   resp.association_description.status.message #=> String
    #   resp.association_description.status.additional_info #=> String
    #   resp.association_description.overview.status #=> String
    #   resp.association_description.overview.detailed_status #=> String
    #   resp.association_description.overview.association_status_aggregated_count #=> Hash
    #   resp.association_description.overview.association_status_aggregated_count["StatusName"] #=> Integer
    #   resp.association_description.document_version #=> String
    #   resp.association_description.parameters #=> Hash
    #   resp.association_description.parameters["ParameterName"] #=> Array
    #   resp.association_description.parameters["ParameterName"][0] #=> String
    #   resp.association_description.association_id #=> String
    #   resp.association_description.targets #=> Array
    #   resp.association_description.targets[0].key #=> String
    #   resp.association_description.targets[0].values #=> Array
    #   resp.association_description.targets[0].values[0] #=> String
    #   resp.association_description.schedule_expression #=> String
    #   resp.association_description.output_location.s3_location.output_s3_region #=> String
    #   resp.association_description.output_location.s3_location.output_s3_bucket_name #=> String
    #   resp.association_description.output_location.s3_location.output_s3_key_prefix #=> String
    #   resp.association_description.last_execution_date #=> Time
    #   resp.association_description.last_successful_execution_date #=> Time
    #   resp.association_description.association_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateAssociation AWS API Documentation
    #
    # @overload create_association(params = {})
    # @param [Hash] params ({})
    def create_association(params = {}, options = {})
      req = build_request(:create_association, params)
      req.send_request(options)
    end

    # Associates the specified Systems Manager document with the specified
    # instances or targets.
    #
    # When you associate a document with one or more instances using
    # instance IDs or tags, SSM Agent running on the instance processes the
    # document and configures the instance as specified.
    #
    # If you associate a document with an instance that already has an
    # associated document, the system throws the AssociationAlreadyExists
    # exception.
    #
    # @option params [required, Array<Types::CreateAssociationBatchRequestEntry>] :entries
    #   One or more associations.
    #
    # @return [Types::CreateAssociationBatchResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssociationBatchResult#successful #successful} => Array&lt;Types::AssociationDescription&gt;
    #   * {Types::CreateAssociationBatchResult#failed #failed} => Array&lt;Types::FailedCreateAssociation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_association_batch({
    #     entries: [ # required
    #       {
    #         name: "DocumentName", # required
    #         instance_id: "InstanceId",
    #         parameters: {
    #           "ParameterName" => ["ParameterValue"],
    #         },
    #         document_version: "DocumentVersion",
    #         targets: [
    #           {
    #             key: "TargetKey",
    #             values: ["TargetValue"],
    #           },
    #         ],
    #         schedule_expression: "ScheduleExpression",
    #         output_location: {
    #           s3_location: {
    #             output_s3_region: "S3Region",
    #             output_s3_bucket_name: "S3BucketName",
    #             output_s3_key_prefix: "S3KeyPrefix",
    #           },
    #         },
    #         association_name: "AssociationName",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.successful #=> Array
    #   resp.successful[0].name #=> String
    #   resp.successful[0].instance_id #=> String
    #   resp.successful[0].association_version #=> String
    #   resp.successful[0].date #=> Time
    #   resp.successful[0].last_update_association_date #=> Time
    #   resp.successful[0].status.date #=> Time
    #   resp.successful[0].status.name #=> String, one of "Pending", "Success", "Failed"
    #   resp.successful[0].status.message #=> String
    #   resp.successful[0].status.additional_info #=> String
    #   resp.successful[0].overview.status #=> String
    #   resp.successful[0].overview.detailed_status #=> String
    #   resp.successful[0].overview.association_status_aggregated_count #=> Hash
    #   resp.successful[0].overview.association_status_aggregated_count["StatusName"] #=> Integer
    #   resp.successful[0].document_version #=> String
    #   resp.successful[0].parameters #=> Hash
    #   resp.successful[0].parameters["ParameterName"] #=> Array
    #   resp.successful[0].parameters["ParameterName"][0] #=> String
    #   resp.successful[0].association_id #=> String
    #   resp.successful[0].targets #=> Array
    #   resp.successful[0].targets[0].key #=> String
    #   resp.successful[0].targets[0].values #=> Array
    #   resp.successful[0].targets[0].values[0] #=> String
    #   resp.successful[0].schedule_expression #=> String
    #   resp.successful[0].output_location.s3_location.output_s3_region #=> String
    #   resp.successful[0].output_location.s3_location.output_s3_bucket_name #=> String
    #   resp.successful[0].output_location.s3_location.output_s3_key_prefix #=> String
    #   resp.successful[0].last_execution_date #=> Time
    #   resp.successful[0].last_successful_execution_date #=> Time
    #   resp.successful[0].association_name #=> String
    #   resp.failed #=> Array
    #   resp.failed[0].entry.name #=> String
    #   resp.failed[0].entry.instance_id #=> String
    #   resp.failed[0].entry.parameters #=> Hash
    #   resp.failed[0].entry.parameters["ParameterName"] #=> Array
    #   resp.failed[0].entry.parameters["ParameterName"][0] #=> String
    #   resp.failed[0].entry.document_version #=> String
    #   resp.failed[0].entry.targets #=> Array
    #   resp.failed[0].entry.targets[0].key #=> String
    #   resp.failed[0].entry.targets[0].values #=> Array
    #   resp.failed[0].entry.targets[0].values[0] #=> String
    #   resp.failed[0].entry.schedule_expression #=> String
    #   resp.failed[0].entry.output_location.s3_location.output_s3_region #=> String
    #   resp.failed[0].entry.output_location.s3_location.output_s3_bucket_name #=> String
    #   resp.failed[0].entry.output_location.s3_location.output_s3_key_prefix #=> String
    #   resp.failed[0].entry.association_name #=> String
    #   resp.failed[0].message #=> String
    #   resp.failed[0].fault #=> String, one of "Client", "Server", "Unknown"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateAssociationBatch AWS API Documentation
    #
    # @overload create_association_batch(params = {})
    # @param [Hash] params ({})
    def create_association_batch(params = {}, options = {})
      req = build_request(:create_association_batch, params)
      req.send_request(options)
    end

    # Creates a Systems Manager document.
    #
    # After you create a document, you can use CreateAssociation to
    # associate it with one or more running instances.
    #
    # @option params [required, String] :content
    #   A valid JSON or YAML string.
    #
    # @option params [required, String] :name
    #   A name for the Systems Manager document.
    #
    #   Do not use the following to begin the names of documents you create.
    #   They are reserved by AWS for use as document prefixes:
    #
    #    * `aws`
    #
    #   * `amazon`
    #
    #   * `amzn`
    #
    # @option params [String] :document_type
    #   The type of document to create. Valid document types include: Policy,
    #   Automation, and Command.
    #
    # @option params [String] :document_format
    #   Specify the document format for the request. The document format can
    #   be either JSON or YAML. JSON is the default format.
    #
    # @option params [String] :target_type
    #   Specify a target type to define the kinds of resources the document
    #   can run on. For example, to run a document on EC2 instances, specify
    #   the following value: /AWS::EC2::Instance. If you specify a value of
    #   '/' the document can run on all types of resources. If you don't
    #   specify a value, the document can't run on any resources. For a list
    #   of valid resource types, see [AWS Resource Types Reference][1] in the
    #   *AWS CloudFormation User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #
    # @return [Types::CreateDocumentResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDocumentResult#document_description #document_description} => Types::DocumentDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_document({
    #     content: "DocumentContent", # required
    #     name: "DocumentName", # required
    #     document_type: "Command", # accepts Command, Policy, Automation, Session
    #     document_format: "YAML", # accepts YAML, JSON
    #     target_type: "TargetType",
    #   })
    #
    # @example Response structure
    #
    #   resp.document_description.sha_1 #=> String
    #   resp.document_description.hash #=> String
    #   resp.document_description.hash_type #=> String, one of "Sha256", "Sha1"
    #   resp.document_description.name #=> String
    #   resp.document_description.owner #=> String
    #   resp.document_description.created_date #=> Time
    #   resp.document_description.status #=> String, one of "Creating", "Active", "Updating", "Deleting"
    #   resp.document_description.document_version #=> String
    #   resp.document_description.description #=> String
    #   resp.document_description.parameters #=> Array
    #   resp.document_description.parameters[0].name #=> String
    #   resp.document_description.parameters[0].type #=> String, one of "String", "StringList"
    #   resp.document_description.parameters[0].description #=> String
    #   resp.document_description.parameters[0].default_value #=> String
    #   resp.document_description.platform_types #=> Array
    #   resp.document_description.platform_types[0] #=> String, one of "Windows", "Linux"
    #   resp.document_description.document_type #=> String, one of "Command", "Policy", "Automation", "Session"
    #   resp.document_description.schema_version #=> String
    #   resp.document_description.latest_version #=> String
    #   resp.document_description.default_version #=> String
    #   resp.document_description.document_format #=> String, one of "YAML", "JSON"
    #   resp.document_description.target_type #=> String
    #   resp.document_description.tags #=> Array
    #   resp.document_description.tags[0].key #=> String
    #   resp.document_description.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateDocument AWS API Documentation
    #
    # @overload create_document(params = {})
    # @param [Hash] params ({})
    def create_document(params = {}, options = {})
      req = build_request(:create_document, params)
      req.send_request(options)
    end

    # Creates a new Maintenance Window.
    #
    # @option params [required, String] :name
    #   The name of the Maintenance Window.
    #
    # @option params [String] :description
    #   An optional description for the Maintenance Window. We recommend
    #   specifying a description to help you organize your Maintenance
    #   Windows.
    #
    # @option params [required, String] :schedule
    #   The schedule of the Maintenance Window in the form of a cron or rate
    #   expression.
    #
    # @option params [required, Integer] :duration
    #   The duration of the Maintenance Window in hours.
    #
    # @option params [required, Integer] :cutoff
    #   The number of hours before the end of the Maintenance Window that
    #   Systems Manager stops scheduling new tasks for execution.
    #
    # @option params [required, Boolean] :allow_unassociated_targets
    #   Enables a Maintenance Window task to execute on managed instances,
    #   even if you have not registered those instances as targets. If
    #   enabled, then you must specify the unregistered instances (by instance
    #   ID) when you register a task with the Maintenance Window
    #
    #   If you don't enable this option, then you must specify
    #   previously-registered targets when you register a task with the
    #   Maintenance Window.
    #
    # @option params [String] :client_token
    #   User-provided idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateMaintenanceWindowResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMaintenanceWindowResult#window_id #window_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_maintenance_window({
    #     name: "MaintenanceWindowName", # required
    #     description: "MaintenanceWindowDescription",
    #     schedule: "MaintenanceWindowSchedule", # required
    #     duration: 1, # required
    #     cutoff: 1, # required
    #     allow_unassociated_targets: false, # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.window_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateMaintenanceWindow AWS API Documentation
    #
    # @overload create_maintenance_window(params = {})
    # @param [Hash] params ({})
    def create_maintenance_window(params = {}, options = {})
      req = build_request(:create_maintenance_window, params)
      req.send_request(options)
    end

    # Creates a patch baseline.
    #
    # <note markdown="1"> For information about valid key and value pairs in `PatchFilters` for
    # each supported operating system type, see [PatchFilter][1].
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/systems-manager/latest/APIReference/API_PatchFilter.html
    #
    # @option params [String] :operating_system
    #   Defines the operating system the patch baseline applies to. The
    #   Default value is WINDOWS.
    #
    # @option params [required, String] :name
    #   The name of the patch baseline.
    #
    # @option params [Types::PatchFilterGroup] :global_filters
    #   A set of global filters used to exclude patches from the baseline.
    #
    # @option params [Types::PatchRuleGroup] :approval_rules
    #   A set of rules used to include patches in the baseline.
    #
    # @option params [Array<String>] :approved_patches
    #   A list of explicitly approved patches for the baseline.
    #
    #   For information about accepted formats for lists of approved patches
    #   and rejected patches, see [Package Name Formats for Approved and
    #   Rejected Patch Lists][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html
    #
    # @option params [String] :approved_patches_compliance_level
    #   Defines the compliance level for approved patches. This means that if
    #   an approved patch is reported as missing, this is the severity of the
    #   compliance violation. The default value is UNSPECIFIED.
    #
    # @option params [Boolean] :approved_patches_enable_non_security
    #   Indicates whether the list of approved patches includes non-security
    #   updates that should be applied to the instances. The default value is
    #   'false'. Applies to Linux instances only.
    #
    # @option params [Array<String>] :rejected_patches
    #   A list of explicitly rejected patches for the baseline.
    #
    #   For information about accepted formats for lists of approved patches
    #   and rejected patches, see [Package Name Formats for Approved and
    #   Rejected Patch Lists][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html
    #
    # @option params [String] :description
    #   A description of the patch baseline.
    #
    # @option params [Array<Types::PatchSource>] :sources
    #   Information about the patches to use to update the instances,
    #   including target operating systems and source repositories. Applies to
    #   Linux instances only.
    #
    # @option params [String] :client_token
    #   User-provided idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreatePatchBaselineResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePatchBaselineResult#baseline_id #baseline_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_patch_baseline({
    #     operating_system: "WINDOWS", # accepts WINDOWS, AMAZON_LINUX, AMAZON_LINUX_2, UBUNTU, REDHAT_ENTERPRISE_LINUX, SUSE, CENTOS
    #     name: "BaselineName", # required
    #     global_filters: {
    #       patch_filters: [ # required
    #         {
    #           key: "PRODUCT", # required, accepts PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
    #           values: ["PatchFilterValue"], # required
    #         },
    #       ],
    #     },
    #     approval_rules: {
    #       patch_rules: [ # required
    #         {
    #           patch_filter_group: { # required
    #             patch_filters: [ # required
    #               {
    #                 key: "PRODUCT", # required, accepts PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
    #                 values: ["PatchFilterValue"], # required
    #               },
    #             ],
    #           },
    #           compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #           approve_after_days: 1, # required
    #           enable_non_security: false,
    #         },
    #       ],
    #     },
    #     approved_patches: ["PatchId"],
    #     approved_patches_compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #     approved_patches_enable_non_security: false,
    #     rejected_patches: ["PatchId"],
    #     description: "BaselineDescription",
    #     sources: [
    #       {
    #         name: "PatchSourceName", # required
    #         products: ["PatchSourceProduct"], # required
    #         configuration: "PatchSourceConfiguration", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.baseline_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreatePatchBaseline AWS API Documentation
    #
    # @overload create_patch_baseline(params = {})
    # @param [Hash] params ({})
    def create_patch_baseline(params = {}, options = {})
      req = build_request(:create_patch_baseline, params)
      req.send_request(options)
    end

    # Creates a resource data sync configuration to a single bucket in
    # Amazon S3. This is an asynchronous operation that returns immediately.
    # After a successful initial sync is completed, the system continuously
    # syncs data to the Amazon S3 bucket. To check the status of the sync,
    # use the ListResourceDataSync.
    #
    # By default, data is not encrypted in Amazon S3. We strongly recommend
    # that you enable encryption in Amazon S3 to ensure secure data storage.
    # We also recommend that you secure access to the Amazon S3 bucket by
    # creating a restrictive bucket policy. To view an example of a
    # restrictive Amazon S3 bucket policy for Resource Data Sync, see
    # [Create a Resource Data Sync for Inventory][1] in the *AWS Systems
    # Manager User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-datasync-create.html
    #
    # @option params [required, String] :sync_name
    #   A name for the configuration.
    #
    # @option params [required, Types::ResourceDataSyncS3Destination] :s3_destination
    #   Amazon S3 configuration details for the sync.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_data_sync({
    #     sync_name: "ResourceDataSyncName", # required
    #     s3_destination: { # required
    #       bucket_name: "ResourceDataSyncS3BucketName", # required
    #       prefix: "ResourceDataSyncS3Prefix",
    #       sync_format: "JsonSerDe", # required, accepts JsonSerDe
    #       region: "ResourceDataSyncS3Region", # required
    #       awskms_key_arn: "ResourceDataSyncAWSKMSKeyARN",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/CreateResourceDataSync AWS API Documentation
    #
    # @overload create_resource_data_sync(params = {})
    # @param [Hash] params ({})
    def create_resource_data_sync(params = {}, options = {})
      req = build_request(:create_resource_data_sync, params)
      req.send_request(options)
    end

    # Deletes an activation. You are not required to delete an activation.
    # If you delete an activation, you can no longer use it to register
    # additional managed instances. Deleting an activation does not
    # de-register managed instances. You must manually de-register managed
    # instances.
    #
    # @option params [required, String] :activation_id
    #   The ID of the activation that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_activation({
    #     activation_id: "ActivationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteActivation AWS API Documentation
    #
    # @overload delete_activation(params = {})
    # @param [Hash] params ({})
    def delete_activation(params = {}, options = {})
      req = build_request(:delete_activation, params)
      req.send_request(options)
    end

    # Disassociates the specified Systems Manager document from the
    # specified instance.
    #
    # When you disassociate a document from an instance, it does not change
    # the configuration of the instance. To change the configuration state
    # of an instance after you disassociate a document, you must create a
    # new document with the desired configuration and associate it with the
    # instance.
    #
    # @option params [String] :name
    #   The name of the Systems Manager document.
    #
    # @option params [String] :instance_id
    #   The ID of the instance.
    #
    # @option params [String] :association_id
    #   The association ID that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_association({
    #     name: "DocumentName",
    #     instance_id: "InstanceId",
    #     association_id: "AssociationId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteAssociation AWS API Documentation
    #
    # @overload delete_association(params = {})
    # @param [Hash] params ({})
    def delete_association(params = {}, options = {})
      req = build_request(:delete_association, params)
      req.send_request(options)
    end

    # Deletes the Systems Manager document and all instance associations to
    # the document.
    #
    # Before you delete the document, we recommend that you use
    # DeleteAssociation to disassociate all instances that are associated
    # with the document.
    #
    # @option params [required, String] :name
    #   The name of the document.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_document({
    #     name: "DocumentName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteDocument AWS API Documentation
    #
    # @overload delete_document(params = {})
    # @param [Hash] params ({})
    def delete_document(params = {}, options = {})
      req = build_request(:delete_document, params)
      req.send_request(options)
    end

    # Delete a custom inventory type, or the data associated with a custom
    # Inventory type. Deleting a custom inventory type is also referred to
    # as deleting a custom inventory schema.
    #
    # @option params [required, String] :type_name
    #   The name of the custom inventory type for which you want to delete
    #   either all previously collected data, or the inventory type itself.
    #
    # @option params [String] :schema_delete_option
    #   Use the `SchemaDeleteOption` to delete a custom inventory type
    #   (schema). If you don't choose this option, the system only deletes
    #   existing inventory data associated with the custom inventory type.
    #   Choose one of the following options:
    #
    #   DisableSchema: If you choose this option, the system ignores all
    #   inventory data for the specified version, and any earlier versions. To
    #   enable this schema again, you must call the `PutInventory` action for
    #   a version greater than the disbled version.
    #
    #   DeleteSchema: This option deletes the specified custom type from the
    #   Inventory service. You can recreate the schema later, if you want.
    #
    # @option params [Boolean] :dry_run
    #   Use this option to view a summary of the deletion request without
    #   deleting any data or the data type. This option is useful when you
    #   only want to understand what will be deleted. Once you validate that
    #   the data to be deleted is what you intend to delete, you can run the
    #   same command without specifying the `DryRun` option.
    #
    # @option params [String] :client_token
    #   User-provided idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteInventoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInventoryResult#deletion_id #deletion_id} => String
    #   * {Types::DeleteInventoryResult#type_name #type_name} => String
    #   * {Types::DeleteInventoryResult#deletion_summary #deletion_summary} => Types::InventoryDeletionSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_inventory({
    #     type_name: "InventoryItemTypeName", # required
    #     schema_delete_option: "DisableSchema", # accepts DisableSchema, DeleteSchema
    #     dry_run: false,
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.deletion_id #=> String
    #   resp.type_name #=> String
    #   resp.deletion_summary.total_count #=> Integer
    #   resp.deletion_summary.remaining_count #=> Integer
    #   resp.deletion_summary.summary_items #=> Array
    #   resp.deletion_summary.summary_items[0].version #=> String
    #   resp.deletion_summary.summary_items[0].count #=> Integer
    #   resp.deletion_summary.summary_items[0].remaining_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteInventory AWS API Documentation
    #
    # @overload delete_inventory(params = {})
    # @param [Hash] params ({})
    def delete_inventory(params = {}, options = {})
      req = build_request(:delete_inventory, params)
      req.send_request(options)
    end

    # Deletes a Maintenance Window.
    #
    # @option params [required, String] :window_id
    #   The ID of the Maintenance Window to delete.
    #
    # @return [Types::DeleteMaintenanceWindowResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMaintenanceWindowResult#window_id #window_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_maintenance_window({
    #     window_id: "MaintenanceWindowId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.window_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteMaintenanceWindow AWS API Documentation
    #
    # @overload delete_maintenance_window(params = {})
    # @param [Hash] params ({})
    def delete_maintenance_window(params = {}, options = {})
      req = build_request(:delete_maintenance_window, params)
      req.send_request(options)
    end

    # Delete a parameter from the system.
    #
    # @option params [required, String] :name
    #   The name of the parameter to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_parameter({
    #     name: "PSParameterName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteParameter AWS API Documentation
    #
    # @overload delete_parameter(params = {})
    # @param [Hash] params ({})
    def delete_parameter(params = {}, options = {})
      req = build_request(:delete_parameter, params)
      req.send_request(options)
    end

    # Delete a list of parameters. This API is used to delete parameters by
    # using the Amazon EC2 console.
    #
    # @option params [required, Array<String>] :names
    #   The names of the parameters to delete.
    #
    # @return [Types::DeleteParametersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteParametersResult#deleted_parameters #deleted_parameters} => Array&lt;String&gt;
    #   * {Types::DeleteParametersResult#invalid_parameters #invalid_parameters} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_parameters({
    #     names: ["PSParameterName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deleted_parameters #=> Array
    #   resp.deleted_parameters[0] #=> String
    #   resp.invalid_parameters #=> Array
    #   resp.invalid_parameters[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteParameters AWS API Documentation
    #
    # @overload delete_parameters(params = {})
    # @param [Hash] params ({})
    def delete_parameters(params = {}, options = {})
      req = build_request(:delete_parameters, params)
      req.send_request(options)
    end

    # Deletes a patch baseline.
    #
    # @option params [required, String] :baseline_id
    #   The ID of the patch baseline to delete.
    #
    # @return [Types::DeletePatchBaselineResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePatchBaselineResult#baseline_id #baseline_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_patch_baseline({
    #     baseline_id: "BaselineId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.baseline_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeletePatchBaseline AWS API Documentation
    #
    # @overload delete_patch_baseline(params = {})
    # @param [Hash] params ({})
    def delete_patch_baseline(params = {}, options = {})
      req = build_request(:delete_patch_baseline, params)
      req.send_request(options)
    end

    # Deletes a Resource Data Sync configuration. After the configuration is
    # deleted, changes to inventory data on managed instances are no longer
    # synced with the target Amazon S3 bucket. Deleting a sync configuration
    # does not delete data in the target Amazon S3 bucket.
    #
    # @option params [required, String] :sync_name
    #   The name of the configuration to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_data_sync({
    #     sync_name: "ResourceDataSyncName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeleteResourceDataSync AWS API Documentation
    #
    # @overload delete_resource_data_sync(params = {})
    # @param [Hash] params ({})
    def delete_resource_data_sync(params = {}, options = {})
      req = build_request(:delete_resource_data_sync, params)
      req.send_request(options)
    end

    # Removes the server or virtual machine from the list of registered
    # servers. You can reregister the instance again at any time. If you
    # don't plan to use Run Command on the server, we suggest uninstalling
    # SSM Agent first.
    #
    # @option params [required, String] :instance_id
    #   The ID assigned to the managed instance when you registered it using
    #   the activation process.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_managed_instance({
    #     instance_id: "ManagedInstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterManagedInstance AWS API Documentation
    #
    # @overload deregister_managed_instance(params = {})
    # @param [Hash] params ({})
    def deregister_managed_instance(params = {}, options = {})
      req = build_request(:deregister_managed_instance, params)
      req.send_request(options)
    end

    # Removes a patch group from a patch baseline.
    #
    # @option params [required, String] :baseline_id
    #   The ID of the patch baseline to deregister the patch group from.
    #
    # @option params [required, String] :patch_group
    #   The name of the patch group that should be deregistered from the patch
    #   baseline.
    #
    # @return [Types::DeregisterPatchBaselineForPatchGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeregisterPatchBaselineForPatchGroupResult#baseline_id #baseline_id} => String
    #   * {Types::DeregisterPatchBaselineForPatchGroupResult#patch_group #patch_group} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_patch_baseline_for_patch_group({
    #     baseline_id: "BaselineId", # required
    #     patch_group: "PatchGroup", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.baseline_id #=> String
    #   resp.patch_group #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterPatchBaselineForPatchGroup AWS API Documentation
    #
    # @overload deregister_patch_baseline_for_patch_group(params = {})
    # @param [Hash] params ({})
    def deregister_patch_baseline_for_patch_group(params = {}, options = {})
      req = build_request(:deregister_patch_baseline_for_patch_group, params)
      req.send_request(options)
    end

    # Removes a target from a Maintenance Window.
    #
    # @option params [required, String] :window_id
    #   The ID of the Maintenance Window the target should be removed from.
    #
    # @option params [required, String] :window_target_id
    #   The ID of the target definition to remove.
    #
    # @option params [Boolean] :safe
    #   The system checks if the target is being referenced by a task. If the
    #   target is being referenced, the system returns an error and does not
    #   deregister the target from the Maintenance Window.
    #
    # @return [Types::DeregisterTargetFromMaintenanceWindowResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeregisterTargetFromMaintenanceWindowResult#window_id #window_id} => String
    #   * {Types::DeregisterTargetFromMaintenanceWindowResult#window_target_id #window_target_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_target_from_maintenance_window({
    #     window_id: "MaintenanceWindowId", # required
    #     window_target_id: "MaintenanceWindowTargetId", # required
    #     safe: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.window_id #=> String
    #   resp.window_target_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterTargetFromMaintenanceWindow AWS API Documentation
    #
    # @overload deregister_target_from_maintenance_window(params = {})
    # @param [Hash] params ({})
    def deregister_target_from_maintenance_window(params = {}, options = {})
      req = build_request(:deregister_target_from_maintenance_window, params)
      req.send_request(options)
    end

    # Removes a task from a Maintenance Window.
    #
    # @option params [required, String] :window_id
    #   The ID of the Maintenance Window the task should be removed from.
    #
    # @option params [required, String] :window_task_id
    #   The ID of the task to remove from the Maintenance Window.
    #
    # @return [Types::DeregisterTaskFromMaintenanceWindowResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeregisterTaskFromMaintenanceWindowResult#window_id #window_id} => String
    #   * {Types::DeregisterTaskFromMaintenanceWindowResult#window_task_id #window_task_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_task_from_maintenance_window({
    #     window_id: "MaintenanceWindowId", # required
    #     window_task_id: "MaintenanceWindowTaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.window_id #=> String
    #   resp.window_task_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DeregisterTaskFromMaintenanceWindow AWS API Documentation
    #
    # @overload deregister_task_from_maintenance_window(params = {})
    # @param [Hash] params ({})
    def deregister_task_from_maintenance_window(params = {}, options = {})
      req = build_request(:deregister_task_from_maintenance_window, params)
      req.send_request(options)
    end

    # Details about the activation, including: the date and time the
    # activation was created, the expiration date, the IAM role assigned to
    # the instances in the activation, and the number of instances activated
    # by this registration.
    #
    # @option params [Array<Types::DescribeActivationsFilter>] :filters
    #   A filter to view information about your activations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @return [Types::DescribeActivationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeActivationsResult#activation_list #activation_list} => Array&lt;Types::Activation&gt;
    #   * {Types::DescribeActivationsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_activations({
    #     filters: [
    #       {
    #         filter_key: "ActivationIds", # accepts ActivationIds, DefaultInstanceName, IamRole
    #         filter_values: ["String"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.activation_list #=> Array
    #   resp.activation_list[0].activation_id #=> String
    #   resp.activation_list[0].description #=> String
    #   resp.activation_list[0].default_instance_name #=> String
    #   resp.activation_list[0].iam_role #=> String
    #   resp.activation_list[0].registration_limit #=> Integer
    #   resp.activation_list[0].registrations_count #=> Integer
    #   resp.activation_list[0].expiration_date #=> Time
    #   resp.activation_list[0].expired #=> Boolean
    #   resp.activation_list[0].created_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeActivations AWS API Documentation
    #
    # @overload describe_activations(params = {})
    # @param [Hash] params ({})
    def describe_activations(params = {}, options = {})
      req = build_request(:describe_activations, params)
      req.send_request(options)
    end

    # Describes the association for the specified target or instance. If you
    # created the association by using the `Targets` parameter, then you
    # must retrieve the association by using the association ID. If you
    # created the association by specifying an instance ID and a Systems
    # Manager document, then you retrieve the association by specifying the
    # document name and the instance ID.
    #
    # @option params [String] :name
    #   The name of the Systems Manager document.
    #
    # @option params [String] :instance_id
    #   The instance ID.
    #
    # @option params [String] :association_id
    #   The association ID for which you want information.
    #
    # @option params [String] :association_version
    #   Specify the association version to retrieve. To view the latest
    #   version, either specify `$LATEST` for this parameter, or omit this
    #   parameter. To view a list of all associations for an instance, use
    #   ListInstanceAssociations. To get a list of versions for a specific
    #   association, use ListAssociationVersions.
    #
    # @return [Types::DescribeAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAssociationResult#association_description #association_description} => Types::AssociationDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_association({
    #     name: "DocumentName",
    #     instance_id: "InstanceId",
    #     association_id: "AssociationId",
    #     association_version: "AssociationVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.association_description.name #=> String
    #   resp.association_description.instance_id #=> String
    #   resp.association_description.association_version #=> String
    #   resp.association_description.date #=> Time
    #   resp.association_description.last_update_association_date #=> Time
    #   resp.association_description.status.date #=> Time
    #   resp.association_description.status.name #=> String, one of "Pending", "Success", "Failed"
    #   resp.association_description.status.message #=> String
    #   resp.association_description.status.additional_info #=> String
    #   resp.association_description.overview.status #=> String
    #   resp.association_description.overview.detailed_status #=> String
    #   resp.association_description.overview.association_status_aggregated_count #=> Hash
    #   resp.association_description.overview.association_status_aggregated_count["StatusName"] #=> Integer
    #   resp.association_description.document_version #=> String
    #   resp.association_description.parameters #=> Hash
    #   resp.association_description.parameters["ParameterName"] #=> Array
    #   resp.association_description.parameters["ParameterName"][0] #=> String
    #   resp.association_description.association_id #=> String
    #   resp.association_description.targets #=> Array
    #   resp.association_description.targets[0].key #=> String
    #   resp.association_description.targets[0].values #=> Array
    #   resp.association_description.targets[0].values[0] #=> String
    #   resp.association_description.schedule_expression #=> String
    #   resp.association_description.output_location.s3_location.output_s3_region #=> String
    #   resp.association_description.output_location.s3_location.output_s3_bucket_name #=> String
    #   resp.association_description.output_location.s3_location.output_s3_key_prefix #=> String
    #   resp.association_description.last_execution_date #=> Time
    #   resp.association_description.last_successful_execution_date #=> Time
    #   resp.association_description.association_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAssociation AWS API Documentation
    #
    # @overload describe_association(params = {})
    # @param [Hash] params ({})
    def describe_association(params = {}, options = {})
      req = build_request(:describe_association, params)
      req.send_request(options)
    end

    # Use this API action to view information about a specific execution of
    # a specific association.
    #
    # @option params [required, String] :association_id
    #   The association ID that includes the execution for which you want to
    #   view details.
    #
    # @option params [required, String] :execution_id
    #   The execution ID for which you want to view details.
    #
    # @option params [Array<Types::AssociationExecutionTargetsFilter>] :filters
    #   Filters for the request. You can specify the following filters and
    #   values.
    #
    #   Status (EQUAL)
    #
    #   ResourceId (EQUAL)
    #
    #   ResourceType (EQUAL)
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @return [Types::DescribeAssociationExecutionTargetsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAssociationExecutionTargetsResult#association_execution_targets #association_execution_targets} => Array&lt;Types::AssociationExecutionTarget&gt;
    #   * {Types::DescribeAssociationExecutionTargetsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_association_execution_targets({
    #     association_id: "AssociationId", # required
    #     execution_id: "AssociationExecutionId", # required
    #     filters: [
    #       {
    #         key: "Status", # required, accepts Status, ResourceId, ResourceType
    #         value: "AssociationExecutionTargetsFilterValue", # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.association_execution_targets #=> Array
    #   resp.association_execution_targets[0].association_id #=> String
    #   resp.association_execution_targets[0].association_version #=> String
    #   resp.association_execution_targets[0].execution_id #=> String
    #   resp.association_execution_targets[0].resource_id #=> String
    #   resp.association_execution_targets[0].resource_type #=> String
    #   resp.association_execution_targets[0].status #=> String
    #   resp.association_execution_targets[0].detailed_status #=> String
    #   resp.association_execution_targets[0].last_execution_date #=> Time
    #   resp.association_execution_targets[0].output_source.output_source_id #=> String
    #   resp.association_execution_targets[0].output_source.output_source_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAssociationExecutionTargets AWS API Documentation
    #
    # @overload describe_association_execution_targets(params = {})
    # @param [Hash] params ({})
    def describe_association_execution_targets(params = {}, options = {})
      req = build_request(:describe_association_execution_targets, params)
      req.send_request(options)
    end

    # Use this API action to view all executions for a specific association
    # ID.
    #
    # @option params [required, String] :association_id
    #   The association ID for which you want to view execution history
    #   details.
    #
    # @option params [Array<Types::AssociationExecutionFilter>] :filters
    #   Filters for the request. You can specify the following filters and
    #   values.
    #
    #   ExecutionId (EQUAL)
    #
    #   Status (EQUAL)
    #
    #   CreatedTime (EQUAL, GREATER\_THAN, LESS\_THAN)
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @return [Types::DescribeAssociationExecutionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAssociationExecutionsResult#association_executions #association_executions} => Array&lt;Types::AssociationExecution&gt;
    #   * {Types::DescribeAssociationExecutionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_association_executions({
    #     association_id: "AssociationId", # required
    #     filters: [
    #       {
    #         key: "ExecutionId", # required, accepts ExecutionId, Status, CreatedTime
    #         value: "AssociationExecutionFilterValue", # required
    #         type: "EQUAL", # required, accepts EQUAL, LESS_THAN, GREATER_THAN
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.association_executions #=> Array
    #   resp.association_executions[0].association_id #=> String
    #   resp.association_executions[0].association_version #=> String
    #   resp.association_executions[0].execution_id #=> String
    #   resp.association_executions[0].status #=> String
    #   resp.association_executions[0].detailed_status #=> String
    #   resp.association_executions[0].created_time #=> Time
    #   resp.association_executions[0].last_execution_date #=> Time
    #   resp.association_executions[0].resource_count_by_status #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAssociationExecutions AWS API Documentation
    #
    # @overload describe_association_executions(params = {})
    # @param [Hash] params ({})
    def describe_association_executions(params = {}, options = {})
      req = build_request(:describe_association_executions, params)
      req.send_request(options)
    end

    # Provides details about all active and terminated Automation
    # executions.
    #
    # @option params [Array<Types::AutomationExecutionFilter>] :filters
    #   Filters used to limit the scope of executions that are requested.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeAutomationExecutionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAutomationExecutionsResult#automation_execution_metadata_list #automation_execution_metadata_list} => Array&lt;Types::AutomationExecutionMetadata&gt;
    #   * {Types::DescribeAutomationExecutionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_automation_executions({
    #     filters: [
    #       {
    #         key: "DocumentNamePrefix", # required, accepts DocumentNamePrefix, ExecutionStatus, ExecutionId, ParentExecutionId, CurrentAction, StartTimeBefore, StartTimeAfter
    #         values: ["AutomationExecutionFilterValue"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.automation_execution_metadata_list #=> Array
    #   resp.automation_execution_metadata_list[0].automation_execution_id #=> String
    #   resp.automation_execution_metadata_list[0].document_name #=> String
    #   resp.automation_execution_metadata_list[0].document_version #=> String
    #   resp.automation_execution_metadata_list[0].automation_execution_status #=> String, one of "Pending", "InProgress", "Waiting", "Success", "TimedOut", "Cancelling", "Cancelled", "Failed"
    #   resp.automation_execution_metadata_list[0].execution_start_time #=> Time
    #   resp.automation_execution_metadata_list[0].execution_end_time #=> Time
    #   resp.automation_execution_metadata_list[0].executed_by #=> String
    #   resp.automation_execution_metadata_list[0].log_file #=> String
    #   resp.automation_execution_metadata_list[0].outputs #=> Hash
    #   resp.automation_execution_metadata_list[0].outputs["AutomationParameterKey"] #=> Array
    #   resp.automation_execution_metadata_list[0].outputs["AutomationParameterKey"][0] #=> String
    #   resp.automation_execution_metadata_list[0].mode #=> String, one of "Auto", "Interactive"
    #   resp.automation_execution_metadata_list[0].parent_automation_execution_id #=> String
    #   resp.automation_execution_metadata_list[0].current_step_name #=> String
    #   resp.automation_execution_metadata_list[0].current_action #=> String
    #   resp.automation_execution_metadata_list[0].failure_message #=> String
    #   resp.automation_execution_metadata_list[0].target_parameter_name #=> String
    #   resp.automation_execution_metadata_list[0].targets #=> Array
    #   resp.automation_execution_metadata_list[0].targets[0].key #=> String
    #   resp.automation_execution_metadata_list[0].targets[0].values #=> Array
    #   resp.automation_execution_metadata_list[0].targets[0].values[0] #=> String
    #   resp.automation_execution_metadata_list[0].target_maps #=> Array
    #   resp.automation_execution_metadata_list[0].target_maps[0] #=> Hash
    #   resp.automation_execution_metadata_list[0].target_maps[0]["TargetMapKey"] #=> Array
    #   resp.automation_execution_metadata_list[0].target_maps[0]["TargetMapKey"][0] #=> String
    #   resp.automation_execution_metadata_list[0].resolved_targets.parameter_values #=> Array
    #   resp.automation_execution_metadata_list[0].resolved_targets.parameter_values[0] #=> String
    #   resp.automation_execution_metadata_list[0].resolved_targets.truncated #=> Boolean
    #   resp.automation_execution_metadata_list[0].max_concurrency #=> String
    #   resp.automation_execution_metadata_list[0].max_errors #=> String
    #   resp.automation_execution_metadata_list[0].target #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAutomationExecutions AWS API Documentation
    #
    # @overload describe_automation_executions(params = {})
    # @param [Hash] params ({})
    def describe_automation_executions(params = {}, options = {})
      req = build_request(:describe_automation_executions, params)
      req.send_request(options)
    end

    # Information about all active and terminated step executions in an
    # Automation workflow.
    #
    # @option params [required, String] :automation_execution_id
    #   The Automation execution ID for which you want step execution
    #   descriptions.
    #
    # @option params [Array<Types::StepExecutionFilter>] :filters
    #   One or more filters to limit the number of step executions returned by
    #   the request.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [Boolean] :reverse_order
    #   A boolean that indicates whether to list step executions in reverse
    #   order by start time. The default value is false.
    #
    # @return [Types::DescribeAutomationStepExecutionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAutomationStepExecutionsResult#step_executions #step_executions} => Array&lt;Types::StepExecution&gt;
    #   * {Types::DescribeAutomationStepExecutionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_automation_step_executions({
    #     automation_execution_id: "AutomationExecutionId", # required
    #     filters: [
    #       {
    #         key: "StartTimeBefore", # required, accepts StartTimeBefore, StartTimeAfter, StepExecutionStatus, StepExecutionId, StepName, Action
    #         values: ["StepExecutionFilterValue"], # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     reverse_order: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.step_executions #=> Array
    #   resp.step_executions[0].step_name #=> String
    #   resp.step_executions[0].action #=> String
    #   resp.step_executions[0].timeout_seconds #=> Integer
    #   resp.step_executions[0].on_failure #=> String
    #   resp.step_executions[0].max_attempts #=> Integer
    #   resp.step_executions[0].execution_start_time #=> Time
    #   resp.step_executions[0].execution_end_time #=> Time
    #   resp.step_executions[0].step_status #=> String, one of "Pending", "InProgress", "Waiting", "Success", "TimedOut", "Cancelling", "Cancelled", "Failed"
    #   resp.step_executions[0].response_code #=> String
    #   resp.step_executions[0].inputs #=> Hash
    #   resp.step_executions[0].inputs["String"] #=> String
    #   resp.step_executions[0].outputs #=> Hash
    #   resp.step_executions[0].outputs["AutomationParameterKey"] #=> Array
    #   resp.step_executions[0].outputs["AutomationParameterKey"][0] #=> String
    #   resp.step_executions[0].response #=> String
    #   resp.step_executions[0].failure_message #=> String
    #   resp.step_executions[0].failure_details.failure_stage #=> String
    #   resp.step_executions[0].failure_details.failure_type #=> String
    #   resp.step_executions[0].failure_details.details #=> Hash
    #   resp.step_executions[0].failure_details.details["AutomationParameterKey"] #=> Array
    #   resp.step_executions[0].failure_details.details["AutomationParameterKey"][0] #=> String
    #   resp.step_executions[0].step_execution_id #=> String
    #   resp.step_executions[0].overridden_parameters #=> Hash
    #   resp.step_executions[0].overridden_parameters["AutomationParameterKey"] #=> Array
    #   resp.step_executions[0].overridden_parameters["AutomationParameterKey"][0] #=> String
    #   resp.step_executions[0].is_end #=> Boolean
    #   resp.step_executions[0].next_step #=> String
    #   resp.step_executions[0].is_critical #=> Boolean
    #   resp.step_executions[0].valid_next_steps #=> Array
    #   resp.step_executions[0].valid_next_steps[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAutomationStepExecutions AWS API Documentation
    #
    # @overload describe_automation_step_executions(params = {})
    # @param [Hash] params ({})
    def describe_automation_step_executions(params = {}, options = {})
      req = build_request(:describe_automation_step_executions, params)
      req.send_request(options)
    end

    # Lists all patches that could possibly be included in a patch baseline.
    #
    # @option params [Array<Types::PatchOrchestratorFilter>] :filters
    #   Filters used to scope down the returned patches.
    #
    # @option params [Integer] :max_results
    #   The maximum number of patches to return (per page).
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeAvailablePatchesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAvailablePatchesResult#patches #patches} => Array&lt;Types::Patch&gt;
    #   * {Types::DescribeAvailablePatchesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_available_patches({
    #     filters: [
    #       {
    #         key: "PatchOrchestratorFilterKey",
    #         values: ["PatchOrchestratorFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.patches #=> Array
    #   resp.patches[0].id #=> String
    #   resp.patches[0].release_date #=> Time
    #   resp.patches[0].title #=> String
    #   resp.patches[0].description #=> String
    #   resp.patches[0].content_url #=> String
    #   resp.patches[0].vendor #=> String
    #   resp.patches[0].product_family #=> String
    #   resp.patches[0].product #=> String
    #   resp.patches[0].classification #=> String
    #   resp.patches[0].msrc_severity #=> String
    #   resp.patches[0].kb_number #=> String
    #   resp.patches[0].msrc_number #=> String
    #   resp.patches[0].language #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeAvailablePatches AWS API Documentation
    #
    # @overload describe_available_patches(params = {})
    # @param [Hash] params ({})
    def describe_available_patches(params = {}, options = {})
      req = build_request(:describe_available_patches, params)
      req.send_request(options)
    end

    # Describes the specified Systems Manager document.
    #
    # @option params [required, String] :name
    #   The name of the Systems Manager document.
    #
    # @option params [String] :document_version
    #   The document version for which you want information. Can be a specific
    #   version or the default version.
    #
    # @return [Types::DescribeDocumentResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDocumentResult#document #document} => Types::DocumentDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_document({
    #     name: "DocumentARN", # required
    #     document_version: "DocumentVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.document.sha_1 #=> String
    #   resp.document.hash #=> String
    #   resp.document.hash_type #=> String, one of "Sha256", "Sha1"
    #   resp.document.name #=> String
    #   resp.document.owner #=> String
    #   resp.document.created_date #=> Time
    #   resp.document.status #=> String, one of "Creating", "Active", "Updating", "Deleting"
    #   resp.document.document_version #=> String
    #   resp.document.description #=> String
    #   resp.document.parameters #=> Array
    #   resp.document.parameters[0].name #=> String
    #   resp.document.parameters[0].type #=> String, one of "String", "StringList"
    #   resp.document.parameters[0].description #=> String
    #   resp.document.parameters[0].default_value #=> String
    #   resp.document.platform_types #=> Array
    #   resp.document.platform_types[0] #=> String, one of "Windows", "Linux"
    #   resp.document.document_type #=> String, one of "Command", "Policy", "Automation", "Session"
    #   resp.document.schema_version #=> String
    #   resp.document.latest_version #=> String
    #   resp.document.default_version #=> String
    #   resp.document.document_format #=> String, one of "YAML", "JSON"
    #   resp.document.target_type #=> String
    #   resp.document.tags #=> Array
    #   resp.document.tags[0].key #=> String
    #   resp.document.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeDocument AWS API Documentation
    #
    # @overload describe_document(params = {})
    # @param [Hash] params ({})
    def describe_document(params = {}, options = {})
      req = build_request(:describe_document, params)
      req.send_request(options)
    end

    # Describes the permissions for a Systems Manager document. If you
    # created the document, you are the owner. If a document is shared, it
    # can either be shared privately (by specifying a user's AWS account
    # ID) or publicly (*All*).
    #
    # @option params [required, String] :name
    #   The name of the document for which you are the owner.
    #
    # @option params [required, String] :permission_type
    #   The permission type for the document. The permission type can be
    #   *Share*.
    #
    # @return [Types::DescribeDocumentPermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDocumentPermissionResponse#account_ids #account_ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_document_permission({
    #     name: "DocumentName", # required
    #     permission_type: "Share", # required, accepts Share
    #   })
    #
    # @example Response structure
    #
    #   resp.account_ids #=> Array
    #   resp.account_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeDocumentPermission AWS API Documentation
    #
    # @overload describe_document_permission(params = {})
    # @param [Hash] params ({})
    def describe_document_permission(params = {}, options = {})
      req = build_request(:describe_document_permission, params)
      req.send_request(options)
    end

    # All associations for the instance(s).
    #
    # @option params [required, String] :instance_id
    #   The instance ID for which you want to view all associations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeEffectiveInstanceAssociationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEffectiveInstanceAssociationsResult#associations #associations} => Array&lt;Types::InstanceAssociation&gt;
    #   * {Types::DescribeEffectiveInstanceAssociationsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_effective_instance_associations({
    #     instance_id: "InstanceId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.associations #=> Array
    #   resp.associations[0].association_id #=> String
    #   resp.associations[0].instance_id #=> String
    #   resp.associations[0].content #=> String
    #   resp.associations[0].association_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeEffectiveInstanceAssociations AWS API Documentation
    #
    # @overload describe_effective_instance_associations(params = {})
    # @param [Hash] params ({})
    def describe_effective_instance_associations(params = {}, options = {})
      req = build_request(:describe_effective_instance_associations, params)
      req.send_request(options)
    end

    # Retrieves the current effective patches (the patch and the approval
    # state) for the specified patch baseline. Note that this API applies
    # only to Windows patch baselines.
    #
    # @option params [required, String] :baseline_id
    #   The ID of the patch baseline to retrieve the effective patches for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of patches to return (per page).
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeEffectivePatchesForPatchBaselineResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEffectivePatchesForPatchBaselineResult#effective_patches #effective_patches} => Array&lt;Types::EffectivePatch&gt;
    #   * {Types::DescribeEffectivePatchesForPatchBaselineResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_effective_patches_for_patch_baseline({
    #     baseline_id: "BaselineId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.effective_patches #=> Array
    #   resp.effective_patches[0].patch.id #=> String
    #   resp.effective_patches[0].patch.release_date #=> Time
    #   resp.effective_patches[0].patch.title #=> String
    #   resp.effective_patches[0].patch.description #=> String
    #   resp.effective_patches[0].patch.content_url #=> String
    #   resp.effective_patches[0].patch.vendor #=> String
    #   resp.effective_patches[0].patch.product_family #=> String
    #   resp.effective_patches[0].patch.product #=> String
    #   resp.effective_patches[0].patch.classification #=> String
    #   resp.effective_patches[0].patch.msrc_severity #=> String
    #   resp.effective_patches[0].patch.kb_number #=> String
    #   resp.effective_patches[0].patch.msrc_number #=> String
    #   resp.effective_patches[0].patch.language #=> String
    #   resp.effective_patches[0].patch_status.deployment_status #=> String, one of "APPROVED", "PENDING_APPROVAL", "EXPLICIT_APPROVED", "EXPLICIT_REJECTED"
    #   resp.effective_patches[0].patch_status.compliance_level #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"
    #   resp.effective_patches[0].patch_status.approval_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeEffectivePatchesForPatchBaseline AWS API Documentation
    #
    # @overload describe_effective_patches_for_patch_baseline(params = {})
    # @param [Hash] params ({})
    def describe_effective_patches_for_patch_baseline(params = {}, options = {})
      req = build_request(:describe_effective_patches_for_patch_baseline, params)
      req.send_request(options)
    end

    # The status of the associations for the instance(s).
    #
    # @option params [required, String] :instance_id
    #   The instance IDs for which you want association status information.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeInstanceAssociationsStatusResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstanceAssociationsStatusResult#instance_association_status_infos #instance_association_status_infos} => Array&lt;Types::InstanceAssociationStatusInfo&gt;
    #   * {Types::DescribeInstanceAssociationsStatusResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_associations_status({
    #     instance_id: "InstanceId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_association_status_infos #=> Array
    #   resp.instance_association_status_infos[0].association_id #=> String
    #   resp.instance_association_status_infos[0].name #=> String
    #   resp.instance_association_status_infos[0].document_version #=> String
    #   resp.instance_association_status_infos[0].association_version #=> String
    #   resp.instance_association_status_infos[0].instance_id #=> String
    #   resp.instance_association_status_infos[0].execution_date #=> Time
    #   resp.instance_association_status_infos[0].status #=> String
    #   resp.instance_association_status_infos[0].detailed_status #=> String
    #   resp.instance_association_status_infos[0].execution_summary #=> String
    #   resp.instance_association_status_infos[0].error_code #=> String
    #   resp.instance_association_status_infos[0].output_url.s3_output_url.output_url #=> String
    #   resp.instance_association_status_infos[0].association_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstanceAssociationsStatus AWS API Documentation
    #
    # @overload describe_instance_associations_status(params = {})
    # @param [Hash] params ({})
    def describe_instance_associations_status(params = {}, options = {})
      req = build_request(:describe_instance_associations_status, params)
      req.send_request(options)
    end

    # Describes one or more of your instances. You can use this to get
    # information about instances like the operating system platform, the
    # SSM Agent version (Linux), status etc. If you specify one or more
    # instance IDs, it returns information for those instances. If you do
    # not specify instance IDs, it returns information for all your
    # instances. If you specify an instance ID that is not valid or an
    # instance that you do not own, you receive an error.
    #
    # <note markdown="1"> The IamRole field for this API action is the Amazon Identity and
    # Access Management (IAM) role assigned to on-premises instances. This
    # call does not return the IAM role for Amazon EC2 instances.
    #
    #  </note>
    #
    # @option params [Array<Types::InstanceInformationFilter>] :instance_information_filter_list
    #   This is a legacy method. We recommend that you don't use this method.
    #   Instead, use the InstanceInformationFilter action. The
    #   `InstanceInformationFilter` action enables you to return instance
    #   information by using tags that are specified as a key-value mapping.
    #
    #   If you do use this method, then you can't use the
    #   `InstanceInformationFilter` action. Using this method and the
    #   `InstanceInformationFilter` action causes an exception error.
    #
    # @option params [Array<Types::InstanceInformationStringFilter>] :filters
    #   One or more filters. Use a filter to return a more specific list of
    #   instances.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeInstanceInformationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstanceInformationResult#instance_information_list #instance_information_list} => Array&lt;Types::InstanceInformation&gt;
    #   * {Types::DescribeInstanceInformationResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_information({
    #     instance_information_filter_list: [
    #       {
    #         key: "InstanceIds", # required, accepts InstanceIds, AgentVersion, PingStatus, PlatformTypes, ActivationIds, IamRole, ResourceType, AssociationStatus
    #         value_set: ["InstanceInformationFilterValue"], # required
    #       },
    #     ],
    #     filters: [
    #       {
    #         key: "InstanceInformationStringFilterKey", # required
    #         values: ["InstanceInformationFilterValue"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_information_list #=> Array
    #   resp.instance_information_list[0].instance_id #=> String
    #   resp.instance_information_list[0].ping_status #=> String, one of "Online", "ConnectionLost", "Inactive"
    #   resp.instance_information_list[0].last_ping_date_time #=> Time
    #   resp.instance_information_list[0].agent_version #=> String
    #   resp.instance_information_list[0].is_latest_version #=> Boolean
    #   resp.instance_information_list[0].platform_type #=> String, one of "Windows", "Linux"
    #   resp.instance_information_list[0].platform_name #=> String
    #   resp.instance_information_list[0].platform_version #=> String
    #   resp.instance_information_list[0].activation_id #=> String
    #   resp.instance_information_list[0].iam_role #=> String
    #   resp.instance_information_list[0].registration_date #=> Time
    #   resp.instance_information_list[0].resource_type #=> String, one of "ManagedInstance", "Document", "EC2Instance"
    #   resp.instance_information_list[0].name #=> String
    #   resp.instance_information_list[0].ip_address #=> String
    #   resp.instance_information_list[0].computer_name #=> String
    #   resp.instance_information_list[0].association_status #=> String
    #   resp.instance_information_list[0].last_association_execution_date #=> Time
    #   resp.instance_information_list[0].last_successful_association_execution_date #=> Time
    #   resp.instance_information_list[0].association_overview.detailed_status #=> String
    #   resp.instance_information_list[0].association_overview.instance_association_status_aggregated_count #=> Hash
    #   resp.instance_information_list[0].association_overview.instance_association_status_aggregated_count["StatusName"] #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstanceInformation AWS API Documentation
    #
    # @overload describe_instance_information(params = {})
    # @param [Hash] params ({})
    def describe_instance_information(params = {}, options = {})
      req = build_request(:describe_instance_information, params)
      req.send_request(options)
    end

    # Retrieves the high-level patch state of one or more instances.
    #
    # @option params [required, Array<String>] :instance_ids
    #   The ID of the instance whose patch state information should be
    #   retrieved.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_results
    #   The maximum number of instances to return (per page).
    #
    # @return [Types::DescribeInstancePatchStatesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstancePatchStatesResult#instance_patch_states #instance_patch_states} => Array&lt;Types::InstancePatchState&gt;
    #   * {Types::DescribeInstancePatchStatesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_patch_states({
    #     instance_ids: ["InstanceId"], # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_patch_states #=> Array
    #   resp.instance_patch_states[0].instance_id #=> String
    #   resp.instance_patch_states[0].patch_group #=> String
    #   resp.instance_patch_states[0].baseline_id #=> String
    #   resp.instance_patch_states[0].snapshot_id #=> String
    #   resp.instance_patch_states[0].owner_information #=> String
    #   resp.instance_patch_states[0].installed_count #=> Integer
    #   resp.instance_patch_states[0].installed_other_count #=> Integer
    #   resp.instance_patch_states[0].missing_count #=> Integer
    #   resp.instance_patch_states[0].failed_count #=> Integer
    #   resp.instance_patch_states[0].not_applicable_count #=> Integer
    #   resp.instance_patch_states[0].operation_start_time #=> Time
    #   resp.instance_patch_states[0].operation_end_time #=> Time
    #   resp.instance_patch_states[0].operation #=> String, one of "Scan", "Install"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstancePatchStates AWS API Documentation
    #
    # @overload describe_instance_patch_states(params = {})
    # @param [Hash] params ({})
    def describe_instance_patch_states(params = {}, options = {})
      req = build_request(:describe_instance_patch_states, params)
      req.send_request(options)
    end

    # Retrieves the high-level patch state for the instances in the
    # specified patch group.
    #
    # @option params [required, String] :patch_group
    #   The name of the patch group for which the patch state information
    #   should be retrieved.
    #
    # @option params [Array<Types::InstancePatchStateFilter>] :filters
    #   Each entry in the array is a structure containing:
    #
    #   Key (string between 1 and 200 characters)
    #
    #   Values (array containing a single string)
    #
    #   Type (string "Equal", "NotEqual", "LessThan", "GreaterThan")
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_results
    #   The maximum number of patches to return (per page).
    #
    # @return [Types::DescribeInstancePatchStatesForPatchGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstancePatchStatesForPatchGroupResult#instance_patch_states #instance_patch_states} => Array&lt;Types::InstancePatchState&gt;
    #   * {Types::DescribeInstancePatchStatesForPatchGroupResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_patch_states_for_patch_group({
    #     patch_group: "PatchGroup", # required
    #     filters: [
    #       {
    #         key: "InstancePatchStateFilterKey", # required
    #         values: ["InstancePatchStateFilterValue"], # required
    #         type: "Equal", # required, accepts Equal, NotEqual, LessThan, GreaterThan
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_patch_states #=> Array
    #   resp.instance_patch_states[0].instance_id #=> String
    #   resp.instance_patch_states[0].patch_group #=> String
    #   resp.instance_patch_states[0].baseline_id #=> String
    #   resp.instance_patch_states[0].snapshot_id #=> String
    #   resp.instance_patch_states[0].owner_information #=> String
    #   resp.instance_patch_states[0].installed_count #=> Integer
    #   resp.instance_patch_states[0].installed_other_count #=> Integer
    #   resp.instance_patch_states[0].missing_count #=> Integer
    #   resp.instance_patch_states[0].failed_count #=> Integer
    #   resp.instance_patch_states[0].not_applicable_count #=> Integer
    #   resp.instance_patch_states[0].operation_start_time #=> Time
    #   resp.instance_patch_states[0].operation_end_time #=> Time
    #   resp.instance_patch_states[0].operation #=> String, one of "Scan", "Install"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstancePatchStatesForPatchGroup AWS API Documentation
    #
    # @overload describe_instance_patch_states_for_patch_group(params = {})
    # @param [Hash] params ({})
    def describe_instance_patch_states_for_patch_group(params = {}, options = {})
      req = build_request(:describe_instance_patch_states_for_patch_group, params)
      req.send_request(options)
    end

    # Retrieves information about the patches on the specified instance and
    # their state relative to the patch baseline being used for the
    # instance.
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance whose patch state information should be
    #   retrieved.
    #
    # @option params [Array<Types::PatchOrchestratorFilter>] :filters
    #   Each entry in the array is a structure containing:
    #
    #   Key (string, between 1 and 128 characters)
    #
    #   Values (array of strings, each string between 1 and 256 characters)
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_results
    #   The maximum number of patches to return (per page).
    #
    # @return [Types::DescribeInstancePatchesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstancePatchesResult#patches #patches} => Array&lt;Types::PatchComplianceData&gt;
    #   * {Types::DescribeInstancePatchesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_patches({
    #     instance_id: "InstanceId", # required
    #     filters: [
    #       {
    #         key: "PatchOrchestratorFilterKey",
    #         values: ["PatchOrchestratorFilterValue"],
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.patches #=> Array
    #   resp.patches[0].title #=> String
    #   resp.patches[0].kb_id #=> String
    #   resp.patches[0].classification #=> String
    #   resp.patches[0].severity #=> String
    #   resp.patches[0].state #=> String, one of "INSTALLED", "INSTALLED_OTHER", "MISSING", "NOT_APPLICABLE", "FAILED"
    #   resp.patches[0].installed_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInstancePatches AWS API Documentation
    #
    # @overload describe_instance_patches(params = {})
    # @param [Hash] params ({})
    def describe_instance_patches(params = {}, options = {})
      req = build_request(:describe_instance_patches, params)
      req.send_request(options)
    end

    # Describes a specific delete inventory operation.
    #
    # @option params [String] :deletion_id
    #   Specify the delete inventory ID for which you want information. This
    #   ID was returned by the `DeleteInventory` action.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @return [Types::DescribeInventoryDeletionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInventoryDeletionsResult#inventory_deletions #inventory_deletions} => Array&lt;Types::InventoryDeletionStatusItem&gt;
    #   * {Types::DescribeInventoryDeletionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_inventory_deletions({
    #     deletion_id: "InventoryDeletionId",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.inventory_deletions #=> Array
    #   resp.inventory_deletions[0].deletion_id #=> String
    #   resp.inventory_deletions[0].type_name #=> String
    #   resp.inventory_deletions[0].deletion_start_time #=> Time
    #   resp.inventory_deletions[0].last_status #=> String, one of "InProgress", "Complete"
    #   resp.inventory_deletions[0].last_status_message #=> String
    #   resp.inventory_deletions[0].deletion_summary.total_count #=> Integer
    #   resp.inventory_deletions[0].deletion_summary.remaining_count #=> Integer
    #   resp.inventory_deletions[0].deletion_summary.summary_items #=> Array
    #   resp.inventory_deletions[0].deletion_summary.summary_items[0].version #=> String
    #   resp.inventory_deletions[0].deletion_summary.summary_items[0].count #=> Integer
    #   resp.inventory_deletions[0].deletion_summary.summary_items[0].remaining_count #=> Integer
    #   resp.inventory_deletions[0].last_status_update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeInventoryDeletions AWS API Documentation
    #
    # @overload describe_inventory_deletions(params = {})
    # @param [Hash] params ({})
    def describe_inventory_deletions(params = {}, options = {})
      req = build_request(:describe_inventory_deletions, params)
      req.send_request(options)
    end

    # Retrieves the individual task executions (one per target) for a
    # particular task executed as part of a Maintenance Window execution.
    #
    # @option params [required, String] :window_execution_id
    #   The ID of the Maintenance Window execution the task is part of.
    #
    # @option params [required, String] :task_id
    #   The ID of the specific task in the Maintenance Window task that should
    #   be retrieved.
    #
    # @option params [Array<Types::MaintenanceWindowFilter>] :filters
    #   Optional filters used to scope down the returned task invocations. The
    #   supported filter key is STATUS with the corresponding values PENDING,
    #   IN\_PROGRESS, SUCCESS, FAILED, TIMED\_OUT, CANCELLING, and CANCELLED.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeMaintenanceWindowExecutionTaskInvocationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMaintenanceWindowExecutionTaskInvocationsResult#window_execution_task_invocation_identities #window_execution_task_invocation_identities} => Array&lt;Types::MaintenanceWindowExecutionTaskInvocationIdentity&gt;
    #   * {Types::DescribeMaintenanceWindowExecutionTaskInvocationsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_window_execution_task_invocations({
    #     window_execution_id: "MaintenanceWindowExecutionId", # required
    #     task_id: "MaintenanceWindowExecutionTaskId", # required
    #     filters: [
    #       {
    #         key: "MaintenanceWindowFilterKey",
    #         values: ["MaintenanceWindowFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.window_execution_task_invocation_identities #=> Array
    #   resp.window_execution_task_invocation_identities[0].window_execution_id #=> String
    #   resp.window_execution_task_invocation_identities[0].task_execution_id #=> String
    #   resp.window_execution_task_invocation_identities[0].invocation_id #=> String
    #   resp.window_execution_task_invocation_identities[0].execution_id #=> String
    #   resp.window_execution_task_invocation_identities[0].task_type #=> String, one of "RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"
    #   resp.window_execution_task_invocation_identities[0].parameters #=> String
    #   resp.window_execution_task_invocation_identities[0].status #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"
    #   resp.window_execution_task_invocation_identities[0].status_details #=> String
    #   resp.window_execution_task_invocation_identities[0].start_time #=> Time
    #   resp.window_execution_task_invocation_identities[0].end_time #=> Time
    #   resp.window_execution_task_invocation_identities[0].owner_information #=> String
    #   resp.window_execution_task_invocation_identities[0].window_target_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowExecutionTaskInvocations AWS API Documentation
    #
    # @overload describe_maintenance_window_execution_task_invocations(params = {})
    # @param [Hash] params ({})
    def describe_maintenance_window_execution_task_invocations(params = {}, options = {})
      req = build_request(:describe_maintenance_window_execution_task_invocations, params)
      req.send_request(options)
    end

    # For a given Maintenance Window execution, lists the tasks that were
    # executed.
    #
    # @option params [required, String] :window_execution_id
    #   The ID of the Maintenance Window execution whose task executions
    #   should be retrieved.
    #
    # @option params [Array<Types::MaintenanceWindowFilter>] :filters
    #   Optional filters used to scope down the returned tasks. The supported
    #   filter key is STATUS with the corresponding values PENDING,
    #   IN\_PROGRESS, SUCCESS, FAILED, TIMED\_OUT, CANCELLING, and CANCELLED.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeMaintenanceWindowExecutionTasksResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMaintenanceWindowExecutionTasksResult#window_execution_task_identities #window_execution_task_identities} => Array&lt;Types::MaintenanceWindowExecutionTaskIdentity&gt;
    #   * {Types::DescribeMaintenanceWindowExecutionTasksResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_window_execution_tasks({
    #     window_execution_id: "MaintenanceWindowExecutionId", # required
    #     filters: [
    #       {
    #         key: "MaintenanceWindowFilterKey",
    #         values: ["MaintenanceWindowFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.window_execution_task_identities #=> Array
    #   resp.window_execution_task_identities[0].window_execution_id #=> String
    #   resp.window_execution_task_identities[0].task_execution_id #=> String
    #   resp.window_execution_task_identities[0].status #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"
    #   resp.window_execution_task_identities[0].status_details #=> String
    #   resp.window_execution_task_identities[0].start_time #=> Time
    #   resp.window_execution_task_identities[0].end_time #=> Time
    #   resp.window_execution_task_identities[0].task_arn #=> String
    #   resp.window_execution_task_identities[0].task_type #=> String, one of "RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowExecutionTasks AWS API Documentation
    #
    # @overload describe_maintenance_window_execution_tasks(params = {})
    # @param [Hash] params ({})
    def describe_maintenance_window_execution_tasks(params = {}, options = {})
      req = build_request(:describe_maintenance_window_execution_tasks, params)
      req.send_request(options)
    end

    # Lists the executions of a Maintenance Window. This includes
    # information about when the Maintenance Window was scheduled to be
    # active, and information about tasks registered and run with the
    # Maintenance Window.
    #
    # @option params [required, String] :window_id
    #   The ID of the Maintenance Window whose executions should be retrieved.
    #
    # @option params [Array<Types::MaintenanceWindowFilter>] :filters
    #   Each entry in the array is a structure containing:
    #
    #   Key (string, between 1 and 128 characters)
    #
    #   Values (array of strings, each string is between 1 and 256 characters)
    #
    #   The supported Keys are ExecutedBefore and ExecutedAfter with the value
    #   being a date/time string such as 2016-11-04T05:00:00Z.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeMaintenanceWindowExecutionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMaintenanceWindowExecutionsResult#window_executions #window_executions} => Array&lt;Types::MaintenanceWindowExecution&gt;
    #   * {Types::DescribeMaintenanceWindowExecutionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_window_executions({
    #     window_id: "MaintenanceWindowId", # required
    #     filters: [
    #       {
    #         key: "MaintenanceWindowFilterKey",
    #         values: ["MaintenanceWindowFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.window_executions #=> Array
    #   resp.window_executions[0].window_id #=> String
    #   resp.window_executions[0].window_execution_id #=> String
    #   resp.window_executions[0].status #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"
    #   resp.window_executions[0].status_details #=> String
    #   resp.window_executions[0].start_time #=> Time
    #   resp.window_executions[0].end_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowExecutions AWS API Documentation
    #
    # @overload describe_maintenance_window_executions(params = {})
    # @param [Hash] params ({})
    def describe_maintenance_window_executions(params = {}, options = {})
      req = build_request(:describe_maintenance_window_executions, params)
      req.send_request(options)
    end

    # Lists the targets registered with the Maintenance Window.
    #
    # @option params [required, String] :window_id
    #   The ID of the Maintenance Window whose targets should be retrieved.
    #
    # @option params [Array<Types::MaintenanceWindowFilter>] :filters
    #   Optional filters that can be used to narrow down the scope of the
    #   returned window targets. The supported filter keys are Type,
    #   WindowTargetId and OwnerInformation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeMaintenanceWindowTargetsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMaintenanceWindowTargetsResult#targets #targets} => Array&lt;Types::MaintenanceWindowTarget&gt;
    #   * {Types::DescribeMaintenanceWindowTargetsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_window_targets({
    #     window_id: "MaintenanceWindowId", # required
    #     filters: [
    #       {
    #         key: "MaintenanceWindowFilterKey",
    #         values: ["MaintenanceWindowFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.targets #=> Array
    #   resp.targets[0].window_id #=> String
    #   resp.targets[0].window_target_id #=> String
    #   resp.targets[0].resource_type #=> String, one of "INSTANCE"
    #   resp.targets[0].targets #=> Array
    #   resp.targets[0].targets[0].key #=> String
    #   resp.targets[0].targets[0].values #=> Array
    #   resp.targets[0].targets[0].values[0] #=> String
    #   resp.targets[0].owner_information #=> String
    #   resp.targets[0].name #=> String
    #   resp.targets[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowTargets AWS API Documentation
    #
    # @overload describe_maintenance_window_targets(params = {})
    # @param [Hash] params ({})
    def describe_maintenance_window_targets(params = {}, options = {})
      req = build_request(:describe_maintenance_window_targets, params)
      req.send_request(options)
    end

    # Lists the tasks in a Maintenance Window.
    #
    # @option params [required, String] :window_id
    #   The ID of the Maintenance Window whose tasks should be retrieved.
    #
    # @option params [Array<Types::MaintenanceWindowFilter>] :filters
    #   Optional filters used to narrow down the scope of the returned tasks.
    #   The supported filter keys are WindowTaskId, TaskArn, Priority, and
    #   TaskType.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeMaintenanceWindowTasksResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMaintenanceWindowTasksResult#tasks #tasks} => Array&lt;Types::MaintenanceWindowTask&gt;
    #   * {Types::DescribeMaintenanceWindowTasksResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_window_tasks({
    #     window_id: "MaintenanceWindowId", # required
    #     filters: [
    #       {
    #         key: "MaintenanceWindowFilterKey",
    #         values: ["MaintenanceWindowFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.tasks #=> Array
    #   resp.tasks[0].window_id #=> String
    #   resp.tasks[0].window_task_id #=> String
    #   resp.tasks[0].task_arn #=> String
    #   resp.tasks[0].type #=> String, one of "RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"
    #   resp.tasks[0].targets #=> Array
    #   resp.tasks[0].targets[0].key #=> String
    #   resp.tasks[0].targets[0].values #=> Array
    #   resp.tasks[0].targets[0].values[0] #=> String
    #   resp.tasks[0].task_parameters #=> Hash
    #   resp.tasks[0].task_parameters["MaintenanceWindowTaskParameterName"].values #=> Array
    #   resp.tasks[0].task_parameters["MaintenanceWindowTaskParameterName"].values[0] #=> String
    #   resp.tasks[0].priority #=> Integer
    #   resp.tasks[0].logging_info.s3_bucket_name #=> String
    #   resp.tasks[0].logging_info.s3_key_prefix #=> String
    #   resp.tasks[0].logging_info.s3_region #=> String
    #   resp.tasks[0].service_role_arn #=> String
    #   resp.tasks[0].max_concurrency #=> String
    #   resp.tasks[0].max_errors #=> String
    #   resp.tasks[0].name #=> String
    #   resp.tasks[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindowTasks AWS API Documentation
    #
    # @overload describe_maintenance_window_tasks(params = {})
    # @param [Hash] params ({})
    def describe_maintenance_window_tasks(params = {}, options = {})
      req = build_request(:describe_maintenance_window_tasks, params)
      req.send_request(options)
    end

    # Retrieves the Maintenance Windows in an AWS account.
    #
    # @option params [Array<Types::MaintenanceWindowFilter>] :filters
    #   Optional filters used to narrow down the scope of the returned
    #   Maintenance Windows. Supported filter keys are Name and Enabled.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeMaintenanceWindowsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMaintenanceWindowsResult#window_identities #window_identities} => Array&lt;Types::MaintenanceWindowIdentity&gt;
    #   * {Types::DescribeMaintenanceWindowsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_windows({
    #     filters: [
    #       {
    #         key: "MaintenanceWindowFilterKey",
    #         values: ["MaintenanceWindowFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.window_identities #=> Array
    #   resp.window_identities[0].window_id #=> String
    #   resp.window_identities[0].name #=> String
    #   resp.window_identities[0].description #=> String
    #   resp.window_identities[0].enabled #=> Boolean
    #   resp.window_identities[0].duration #=> Integer
    #   resp.window_identities[0].cutoff #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeMaintenanceWindows AWS API Documentation
    #
    # @overload describe_maintenance_windows(params = {})
    # @param [Hash] params ({})
    def describe_maintenance_windows(params = {}, options = {})
      req = build_request(:describe_maintenance_windows, params)
      req.send_request(options)
    end

    # Get information about a parameter.
    #
    # Request results are returned on a best-effort basis. If you specify
    # `MaxResults` in the request, the response includes information up to
    # the limit specified. The number of items returned, however, can be
    # between zero and the value of `MaxResults`. If the service reaches an
    # internal limit while processing the results, it stops the operation
    # and returns the matching values up to that point and a `NextToken`.
    # You can specify the `NextToken` in a subsequent call to get the next
    # set of results.
    #
    # @option params [Array<Types::ParametersFilter>] :filters
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #
    # @option params [Array<Types::ParameterStringFilter>] :parameter_filters
    #   Filters to limit the request results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeParametersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeParametersResult#parameters #parameters} => Array&lt;Types::ParameterMetadata&gt;
    #   * {Types::DescribeParametersResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_parameters({
    #     filters: [
    #       {
    #         key: "Name", # required, accepts Name, Type, KeyId
    #         values: ["ParametersFilterValue"], # required
    #       },
    #     ],
    #     parameter_filters: [
    #       {
    #         key: "ParameterStringFilterKey", # required
    #         option: "ParameterStringQueryOption",
    #         values: ["ParameterStringFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.parameters #=> Array
    #   resp.parameters[0].name #=> String
    #   resp.parameters[0].type #=> String, one of "String", "StringList", "SecureString"
    #   resp.parameters[0].key_id #=> String
    #   resp.parameters[0].last_modified_date #=> Time
    #   resp.parameters[0].last_modified_user #=> String
    #   resp.parameters[0].description #=> String
    #   resp.parameters[0].allowed_pattern #=> String
    #   resp.parameters[0].version #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeParameters AWS API Documentation
    #
    # @overload describe_parameters(params = {})
    # @param [Hash] params ({})
    def describe_parameters(params = {}, options = {})
      req = build_request(:describe_parameters, params)
      req.send_request(options)
    end

    # Lists the patch baselines in your AWS account.
    #
    # @option params [Array<Types::PatchOrchestratorFilter>] :filters
    #   Each element in the array is a structure containing:
    #
    #   Key: (string, "NAME\_PREFIX" or "OWNER")
    #
    #   Value: (array of strings, exactly 1 entry, between 1 and 255
    #   characters)
    #
    # @option params [Integer] :max_results
    #   The maximum number of patch baselines to return (per page).
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribePatchBaselinesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePatchBaselinesResult#baseline_identities #baseline_identities} => Array&lt;Types::PatchBaselineIdentity&gt;
    #   * {Types::DescribePatchBaselinesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_patch_baselines({
    #     filters: [
    #       {
    #         key: "PatchOrchestratorFilterKey",
    #         values: ["PatchOrchestratorFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.baseline_identities #=> Array
    #   resp.baseline_identities[0].baseline_id #=> String
    #   resp.baseline_identities[0].baseline_name #=> String
    #   resp.baseline_identities[0].operating_system #=> String, one of "WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS"
    #   resp.baseline_identities[0].baseline_description #=> String
    #   resp.baseline_identities[0].default_baseline #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribePatchBaselines AWS API Documentation
    #
    # @overload describe_patch_baselines(params = {})
    # @param [Hash] params ({})
    def describe_patch_baselines(params = {}, options = {})
      req = build_request(:describe_patch_baselines, params)
      req.send_request(options)
    end

    # Returns high-level aggregated patch compliance state for a patch
    # group.
    #
    # @option params [required, String] :patch_group
    #   The name of the patch group whose patch snapshot should be retrieved.
    #
    # @return [Types::DescribePatchGroupStateResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePatchGroupStateResult#instances #instances} => Integer
    #   * {Types::DescribePatchGroupStateResult#instances_with_installed_patches #instances_with_installed_patches} => Integer
    #   * {Types::DescribePatchGroupStateResult#instances_with_installed_other_patches #instances_with_installed_other_patches} => Integer
    #   * {Types::DescribePatchGroupStateResult#instances_with_missing_patches #instances_with_missing_patches} => Integer
    #   * {Types::DescribePatchGroupStateResult#instances_with_failed_patches #instances_with_failed_patches} => Integer
    #   * {Types::DescribePatchGroupStateResult#instances_with_not_applicable_patches #instances_with_not_applicable_patches} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_patch_group_state({
    #     patch_group: "PatchGroup", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instances #=> Integer
    #   resp.instances_with_installed_patches #=> Integer
    #   resp.instances_with_installed_other_patches #=> Integer
    #   resp.instances_with_missing_patches #=> Integer
    #   resp.instances_with_failed_patches #=> Integer
    #   resp.instances_with_not_applicable_patches #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribePatchGroupState AWS API Documentation
    #
    # @overload describe_patch_group_state(params = {})
    # @param [Hash] params ({})
    def describe_patch_group_state(params = {}, options = {})
      req = build_request(:describe_patch_group_state, params)
      req.send_request(options)
    end

    # Lists all patch groups that have been registered with patch baselines.
    #
    # @option params [Integer] :max_results
    #   The maximum number of patch groups to return (per page).
    #
    # @option params [Array<Types::PatchOrchestratorFilter>] :filters
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribePatchGroupsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePatchGroupsResult#mappings #mappings} => Array&lt;Types::PatchGroupPatchBaselineMapping&gt;
    #   * {Types::DescribePatchGroupsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_patch_groups({
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "PatchOrchestratorFilterKey",
    #         values: ["PatchOrchestratorFilterValue"],
    #       },
    #     ],
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.mappings #=> Array
    #   resp.mappings[0].patch_group #=> String
    #   resp.mappings[0].baseline_identity.baseline_id #=> String
    #   resp.mappings[0].baseline_identity.baseline_name #=> String
    #   resp.mappings[0].baseline_identity.operating_system #=> String, one of "WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS"
    #   resp.mappings[0].baseline_identity.baseline_description #=> String
    #   resp.mappings[0].baseline_identity.default_baseline #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribePatchGroups AWS API Documentation
    #
    # @overload describe_patch_groups(params = {})
    # @param [Hash] params ({})
    def describe_patch_groups(params = {}, options = {})
      req = build_request(:describe_patch_groups, params)
      req.send_request(options)
    end

    # Retrieves a list of all active sessions (both connected and
    # disconnected) or terminated sessions from the past 30 days.
    #
    # @option params [required, String] :state
    #   The session status to retrieve a list of sessions for. For example,
    #   "active".
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Array<Types::SessionFilter>] :filters
    #   One or more filters to limit the type of sessions returned by the
    #   request.
    #
    # @return [Types::DescribeSessionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSessionsResponse#sessions #sessions} => Array&lt;Types::Session&gt;
    #   * {Types::DescribeSessionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_sessions({
    #     state: "Active", # required, accepts Active, History
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         key: "InvokedAfter", # required, accepts InvokedAfter, InvokedBefore, Target, Owner, Status
    #         value: "SessionFilterValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.sessions #=> Array
    #   resp.sessions[0].session_id #=> String
    #   resp.sessions[0].target #=> String
    #   resp.sessions[0].status #=> String, one of "Connected", "Connecting", "Disconnected", "Terminated", "Terminating", "Failed"
    #   resp.sessions[0].start_date #=> Time
    #   resp.sessions[0].end_date #=> Time
    #   resp.sessions[0].document_name #=> String
    #   resp.sessions[0].owner #=> String
    #   resp.sessions[0].details #=> String
    #   resp.sessions[0].output_url.s3_output_url #=> String
    #   resp.sessions[0].output_url.cloud_watch_output_url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/DescribeSessions AWS API Documentation
    #
    # @overload describe_sessions(params = {})
    # @param [Hash] params ({})
    def describe_sessions(params = {}, options = {})
      req = build_request(:describe_sessions, params)
      req.send_request(options)
    end

    # Get detailed information about a particular Automation execution.
    #
    # @option params [required, String] :automation_execution_id
    #   The unique identifier for an existing automation execution to examine.
    #   The execution ID is returned by StartAutomationExecution when the
    #   execution of an Automation document is initiated.
    #
    # @return [Types::GetAutomationExecutionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAutomationExecutionResult#automation_execution #automation_execution} => Types::AutomationExecution
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_automation_execution({
    #     automation_execution_id: "AutomationExecutionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.automation_execution.automation_execution_id #=> String
    #   resp.automation_execution.document_name #=> String
    #   resp.automation_execution.document_version #=> String
    #   resp.automation_execution.execution_start_time #=> Time
    #   resp.automation_execution.execution_end_time #=> Time
    #   resp.automation_execution.automation_execution_status #=> String, one of "Pending", "InProgress", "Waiting", "Success", "TimedOut", "Cancelling", "Cancelled", "Failed"
    #   resp.automation_execution.step_executions #=> Array
    #   resp.automation_execution.step_executions[0].step_name #=> String
    #   resp.automation_execution.step_executions[0].action #=> String
    #   resp.automation_execution.step_executions[0].timeout_seconds #=> Integer
    #   resp.automation_execution.step_executions[0].on_failure #=> String
    #   resp.automation_execution.step_executions[0].max_attempts #=> Integer
    #   resp.automation_execution.step_executions[0].execution_start_time #=> Time
    #   resp.automation_execution.step_executions[0].execution_end_time #=> Time
    #   resp.automation_execution.step_executions[0].step_status #=> String, one of "Pending", "InProgress", "Waiting", "Success", "TimedOut", "Cancelling", "Cancelled", "Failed"
    #   resp.automation_execution.step_executions[0].response_code #=> String
    #   resp.automation_execution.step_executions[0].inputs #=> Hash
    #   resp.automation_execution.step_executions[0].inputs["String"] #=> String
    #   resp.automation_execution.step_executions[0].outputs #=> Hash
    #   resp.automation_execution.step_executions[0].outputs["AutomationParameterKey"] #=> Array
    #   resp.automation_execution.step_executions[0].outputs["AutomationParameterKey"][0] #=> String
    #   resp.automation_execution.step_executions[0].response #=> String
    #   resp.automation_execution.step_executions[0].failure_message #=> String
    #   resp.automation_execution.step_executions[0].failure_details.failure_stage #=> String
    #   resp.automation_execution.step_executions[0].failure_details.failure_type #=> String
    #   resp.automation_execution.step_executions[0].failure_details.details #=> Hash
    #   resp.automation_execution.step_executions[0].failure_details.details["AutomationParameterKey"] #=> Array
    #   resp.automation_execution.step_executions[0].failure_details.details["AutomationParameterKey"][0] #=> String
    #   resp.automation_execution.step_executions[0].step_execution_id #=> String
    #   resp.automation_execution.step_executions[0].overridden_parameters #=> Hash
    #   resp.automation_execution.step_executions[0].overridden_parameters["AutomationParameterKey"] #=> Array
    #   resp.automation_execution.step_executions[0].overridden_parameters["AutomationParameterKey"][0] #=> String
    #   resp.automation_execution.step_executions[0].is_end #=> Boolean
    #   resp.automation_execution.step_executions[0].next_step #=> String
    #   resp.automation_execution.step_executions[0].is_critical #=> Boolean
    #   resp.automation_execution.step_executions[0].valid_next_steps #=> Array
    #   resp.automation_execution.step_executions[0].valid_next_steps[0] #=> String
    #   resp.automation_execution.step_executions_truncated #=> Boolean
    #   resp.automation_execution.parameters #=> Hash
    #   resp.automation_execution.parameters["AutomationParameterKey"] #=> Array
    #   resp.automation_execution.parameters["AutomationParameterKey"][0] #=> String
    #   resp.automation_execution.outputs #=> Hash
    #   resp.automation_execution.outputs["AutomationParameterKey"] #=> Array
    #   resp.automation_execution.outputs["AutomationParameterKey"][0] #=> String
    #   resp.automation_execution.failure_message #=> String
    #   resp.automation_execution.mode #=> String, one of "Auto", "Interactive"
    #   resp.automation_execution.parent_automation_execution_id #=> String
    #   resp.automation_execution.executed_by #=> String
    #   resp.automation_execution.current_step_name #=> String
    #   resp.automation_execution.current_action #=> String
    #   resp.automation_execution.target_parameter_name #=> String
    #   resp.automation_execution.targets #=> Array
    #   resp.automation_execution.targets[0].key #=> String
    #   resp.automation_execution.targets[0].values #=> Array
    #   resp.automation_execution.targets[0].values[0] #=> String
    #   resp.automation_execution.target_maps #=> Array
    #   resp.automation_execution.target_maps[0] #=> Hash
    #   resp.automation_execution.target_maps[0]["TargetMapKey"] #=> Array
    #   resp.automation_execution.target_maps[0]["TargetMapKey"][0] #=> String
    #   resp.automation_execution.resolved_targets.parameter_values #=> Array
    #   resp.automation_execution.resolved_targets.parameter_values[0] #=> String
    #   resp.automation_execution.resolved_targets.truncated #=> Boolean
    #   resp.automation_execution.max_concurrency #=> String
    #   resp.automation_execution.max_errors #=> String
    #   resp.automation_execution.target #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetAutomationExecution AWS API Documentation
    #
    # @overload get_automation_execution(params = {})
    # @param [Hash] params ({})
    def get_automation_execution(params = {}, options = {})
      req = build_request(:get_automation_execution, params)
      req.send_request(options)
    end

    # Returns detailed information about command execution for an invocation
    # or plugin.
    #
    # @option params [required, String] :command_id
    #   (Required) The parent command ID of the invocation plugin.
    #
    # @option params [required, String] :instance_id
    #   (Required) The ID of the managed instance targeted by the command. A
    #   managed instance can be an Amazon EC2 instance or an instance in your
    #   hybrid environment that is configured for Systems Manager.
    #
    # @option params [String] :plugin_name
    #   (Optional) The name of the plugin for which you want detailed results.
    #   If the document contains only one plugin, the name can be omitted and
    #   the details will be returned.
    #
    # @return [Types::GetCommandInvocationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCommandInvocationResult#command_id #command_id} => String
    #   * {Types::GetCommandInvocationResult#instance_id #instance_id} => String
    #   * {Types::GetCommandInvocationResult#comment #comment} => String
    #   * {Types::GetCommandInvocationResult#document_name #document_name} => String
    #   * {Types::GetCommandInvocationResult#document_version #document_version} => String
    #   * {Types::GetCommandInvocationResult#plugin_name #plugin_name} => String
    #   * {Types::GetCommandInvocationResult#response_code #response_code} => Integer
    #   * {Types::GetCommandInvocationResult#execution_start_date_time #execution_start_date_time} => String
    #   * {Types::GetCommandInvocationResult#execution_elapsed_time #execution_elapsed_time} => String
    #   * {Types::GetCommandInvocationResult#execution_end_date_time #execution_end_date_time} => String
    #   * {Types::GetCommandInvocationResult#status #status} => String
    #   * {Types::GetCommandInvocationResult#status_details #status_details} => String
    #   * {Types::GetCommandInvocationResult#standard_output_content #standard_output_content} => String
    #   * {Types::GetCommandInvocationResult#standard_output_url #standard_output_url} => String
    #   * {Types::GetCommandInvocationResult#standard_error_content #standard_error_content} => String
    #   * {Types::GetCommandInvocationResult#standard_error_url #standard_error_url} => String
    #   * {Types::GetCommandInvocationResult#cloud_watch_output_config #cloud_watch_output_config} => Types::CloudWatchOutputConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_command_invocation({
    #     command_id: "CommandId", # required
    #     instance_id: "InstanceId", # required
    #     plugin_name: "CommandPluginName",
    #   })
    #
    # @example Response structure
    #
    #   resp.command_id #=> String
    #   resp.instance_id #=> String
    #   resp.comment #=> String
    #   resp.document_name #=> String
    #   resp.document_version #=> String
    #   resp.plugin_name #=> String
    #   resp.response_code #=> Integer
    #   resp.execution_start_date_time #=> String
    #   resp.execution_elapsed_time #=> String
    #   resp.execution_end_date_time #=> String
    #   resp.status #=> String, one of "Pending", "InProgress", "Delayed", "Success", "Cancelled", "TimedOut", "Failed", "Cancelling"
    #   resp.status_details #=> String
    #   resp.standard_output_content #=> String
    #   resp.standard_output_url #=> String
    #   resp.standard_error_content #=> String
    #   resp.standard_error_url #=> String
    #   resp.cloud_watch_output_config.cloud_watch_log_group_name #=> String
    #   resp.cloud_watch_output_config.cloud_watch_output_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetCommandInvocation AWS API Documentation
    #
    # @overload get_command_invocation(params = {})
    # @param [Hash] params ({})
    def get_command_invocation(params = {}, options = {})
      req = build_request(:get_command_invocation, params)
      req.send_request(options)
    end

    # Retrieves the Session Manager connection status for an instance to
    # determine whether it is connected and ready to receive Session Manager
    # connections.
    #
    # @option params [required, String] :target
    #   The ID of the instance.
    #
    # @return [Types::GetConnectionStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectionStatusResponse#target #target} => String
    #   * {Types::GetConnectionStatusResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connection_status({
    #     target: "SessionTarget", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.target #=> String
    #   resp.status #=> String, one of "Connected", "NotConnected"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetConnectionStatus AWS API Documentation
    #
    # @overload get_connection_status(params = {})
    # @param [Hash] params ({})
    def get_connection_status(params = {}, options = {})
      req = build_request(:get_connection_status, params)
      req.send_request(options)
    end

    # Retrieves the default patch baseline. Note that Systems Manager
    # supports creating multiple default patch baselines. For example, you
    # can create a default patch baseline for each operating system.
    #
    # If you do not specify an operating system value, the default patch
    # baseline for Windows is returned.
    #
    # @option params [String] :operating_system
    #   Returns the default patch baseline for the specified operating system.
    #
    # @return [Types::GetDefaultPatchBaselineResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDefaultPatchBaselineResult#baseline_id #baseline_id} => String
    #   * {Types::GetDefaultPatchBaselineResult#operating_system #operating_system} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_default_patch_baseline({
    #     operating_system: "WINDOWS", # accepts WINDOWS, AMAZON_LINUX, AMAZON_LINUX_2, UBUNTU, REDHAT_ENTERPRISE_LINUX, SUSE, CENTOS
    #   })
    #
    # @example Response structure
    #
    #   resp.baseline_id #=> String
    #   resp.operating_system #=> String, one of "WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDefaultPatchBaseline AWS API Documentation
    #
    # @overload get_default_patch_baseline(params = {})
    # @param [Hash] params ({})
    def get_default_patch_baseline(params = {}, options = {})
      req = build_request(:get_default_patch_baseline, params)
      req.send_request(options)
    end

    # Retrieves the current snapshot for the patch baseline the instance
    # uses. This API is primarily used by the AWS-RunPatchBaseline Systems
    # Manager document.
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance for which the appropriate patch snapshot should
    #   be retrieved.
    #
    # @option params [required, String] :snapshot_id
    #   The user-defined snapshot ID.
    #
    # @return [Types::GetDeployablePatchSnapshotForInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeployablePatchSnapshotForInstanceResult#instance_id #instance_id} => String
    #   * {Types::GetDeployablePatchSnapshotForInstanceResult#snapshot_id #snapshot_id} => String
    #   * {Types::GetDeployablePatchSnapshotForInstanceResult#snapshot_download_url #snapshot_download_url} => String
    #   * {Types::GetDeployablePatchSnapshotForInstanceResult#product #product} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployable_patch_snapshot_for_instance({
    #     instance_id: "InstanceId", # required
    #     snapshot_id: "SnapshotId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_id #=> String
    #   resp.snapshot_id #=> String
    #   resp.snapshot_download_url #=> String
    #   resp.product #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDeployablePatchSnapshotForInstance AWS API Documentation
    #
    # @overload get_deployable_patch_snapshot_for_instance(params = {})
    # @param [Hash] params ({})
    def get_deployable_patch_snapshot_for_instance(params = {}, options = {})
      req = build_request(:get_deployable_patch_snapshot_for_instance, params)
      req.send_request(options)
    end

    # Gets the contents of the specified Systems Manager document.
    #
    # @option params [required, String] :name
    #   The name of the Systems Manager document.
    #
    # @option params [String] :document_version
    #   The document version for which you want information.
    #
    # @option params [String] :document_format
    #   Returns the document in the specified format. The document format can
    #   be either JSON or YAML. JSON is the default format.
    #
    # @return [Types::GetDocumentResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDocumentResult#name #name} => String
    #   * {Types::GetDocumentResult#document_version #document_version} => String
    #   * {Types::GetDocumentResult#content #content} => String
    #   * {Types::GetDocumentResult#document_type #document_type} => String
    #   * {Types::GetDocumentResult#document_format #document_format} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_document({
    #     name: "DocumentARN", # required
    #     document_version: "DocumentVersion",
    #     document_format: "YAML", # accepts YAML, JSON
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.document_version #=> String
    #   resp.content #=> String
    #   resp.document_type #=> String, one of "Command", "Policy", "Automation", "Session"
    #   resp.document_format #=> String, one of "YAML", "JSON"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetDocument AWS API Documentation
    #
    # @overload get_document(params = {})
    # @param [Hash] params ({})
    def get_document(params = {}, options = {})
      req = build_request(:get_document, params)
      req.send_request(options)
    end

    # Query inventory information.
    #
    # @option params [Array<Types::InventoryFilter>] :filters
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #
    # @option params [Array<Types::InventoryAggregator>] :aggregators
    #   Returns counts of inventory types based on one or more expressions.
    #   For example, if you aggregate by using an expression that uses the
    #   `AWS:InstanceInformation.PlatformType` type, you can see a count of
    #   how many Windows and Linux instances exist in your inventoried fleet.
    #
    # @option params [Array<Types::ResultAttribute>] :result_attributes
    #   The list of inventory item types to return.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @return [Types::GetInventoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInventoryResult#entities #entities} => Array&lt;Types::InventoryResultEntity&gt;
    #   * {Types::GetInventoryResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_inventory({
    #     filters: [
    #       {
    #         key: "InventoryFilterKey", # required
    #         values: ["InventoryFilterValue"], # required
    #         type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists
    #       },
    #     ],
    #     aggregators: [
    #       {
    #         expression: "InventoryAggregatorExpression",
    #         aggregators: {
    #           # recursive InventoryAggregatorList
    #         },
    #         groups: [
    #           {
    #             name: "InventoryGroupName", # required
    #             filters: [ # required
    #               {
    #                 key: "InventoryFilterKey", # required
    #                 values: ["InventoryFilterValue"], # required
    #                 type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #     ],
    #     result_attributes: [
    #       {
    #         type_name: "InventoryItemTypeName", # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].id #=> String
    #   resp.entities[0].data #=> Hash
    #   resp.entities[0].data["InventoryResultItemKey"].type_name #=> String
    #   resp.entities[0].data["InventoryResultItemKey"].schema_version #=> String
    #   resp.entities[0].data["InventoryResultItemKey"].capture_time #=> String
    #   resp.entities[0].data["InventoryResultItemKey"].content_hash #=> String
    #   resp.entities[0].data["InventoryResultItemKey"].content #=> Array
    #   resp.entities[0].data["InventoryResultItemKey"].content[0] #=> Hash
    #   resp.entities[0].data["InventoryResultItemKey"].content[0]["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetInventory AWS API Documentation
    #
    # @overload get_inventory(params = {})
    # @param [Hash] params ({})
    def get_inventory(params = {}, options = {})
      req = build_request(:get_inventory, params)
      req.send_request(options)
    end

    # Return a list of inventory type names for the account, or return a
    # list of attribute names for a specific Inventory item type.
    #
    # @option params [String] :type_name
    #   The type of inventory item to return.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [Boolean] :aggregator
    #   Returns inventory schemas that support aggregation. For example, this
    #   call returns the `AWS:InstanceInformation` type, because it supports
    #   aggregation based on the `PlatformName`, `PlatformType`, and
    #   `PlatformVersion` attributes.
    #
    # @option params [Boolean] :sub_type
    #   Returns the sub-type schema for a specified inventory type.
    #
    # @return [Types::GetInventorySchemaResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInventorySchemaResult#schemas #schemas} => Array&lt;Types::InventoryItemSchema&gt;
    #   * {Types::GetInventorySchemaResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_inventory_schema({
    #     type_name: "InventoryItemTypeNameFilter",
    #     next_token: "NextToken",
    #     max_results: 1,
    #     aggregator: false,
    #     sub_type: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.schemas #=> Array
    #   resp.schemas[0].type_name #=> String
    #   resp.schemas[0].version #=> String
    #   resp.schemas[0].attributes #=> Array
    #   resp.schemas[0].attributes[0].name #=> String
    #   resp.schemas[0].attributes[0].data_type #=> String, one of "string", "number"
    #   resp.schemas[0].display_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetInventorySchema AWS API Documentation
    #
    # @overload get_inventory_schema(params = {})
    # @param [Hash] params ({})
    def get_inventory_schema(params = {}, options = {})
      req = build_request(:get_inventory_schema, params)
      req.send_request(options)
    end

    # Retrieves a Maintenance Window.
    #
    # @option params [required, String] :window_id
    #   The ID of the desired Maintenance Window.
    #
    # @return [Types::GetMaintenanceWindowResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMaintenanceWindowResult#window_id #window_id} => String
    #   * {Types::GetMaintenanceWindowResult#name #name} => String
    #   * {Types::GetMaintenanceWindowResult#description #description} => String
    #   * {Types::GetMaintenanceWindowResult#schedule #schedule} => String
    #   * {Types::GetMaintenanceWindowResult#duration #duration} => Integer
    #   * {Types::GetMaintenanceWindowResult#cutoff #cutoff} => Integer
    #   * {Types::GetMaintenanceWindowResult#allow_unassociated_targets #allow_unassociated_targets} => Boolean
    #   * {Types::GetMaintenanceWindowResult#enabled #enabled} => Boolean
    #   * {Types::GetMaintenanceWindowResult#created_date #created_date} => Time
    #   * {Types::GetMaintenanceWindowResult#modified_date #modified_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_maintenance_window({
    #     window_id: "MaintenanceWindowId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.window_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.schedule #=> String
    #   resp.duration #=> Integer
    #   resp.cutoff #=> Integer
    #   resp.allow_unassociated_targets #=> Boolean
    #   resp.enabled #=> Boolean
    #   resp.created_date #=> Time
    #   resp.modified_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindow AWS API Documentation
    #
    # @overload get_maintenance_window(params = {})
    # @param [Hash] params ({})
    def get_maintenance_window(params = {}, options = {})
      req = build_request(:get_maintenance_window, params)
      req.send_request(options)
    end

    # Retrieves details about a specific task executed as part of a
    # Maintenance Window execution.
    #
    # @option params [required, String] :window_execution_id
    #   The ID of the Maintenance Window execution that includes the task.
    #
    # @return [Types::GetMaintenanceWindowExecutionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMaintenanceWindowExecutionResult#window_execution_id #window_execution_id} => String
    #   * {Types::GetMaintenanceWindowExecutionResult#task_ids #task_ids} => Array&lt;String&gt;
    #   * {Types::GetMaintenanceWindowExecutionResult#status #status} => String
    #   * {Types::GetMaintenanceWindowExecutionResult#status_details #status_details} => String
    #   * {Types::GetMaintenanceWindowExecutionResult#start_time #start_time} => Time
    #   * {Types::GetMaintenanceWindowExecutionResult#end_time #end_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_maintenance_window_execution({
    #     window_execution_id: "MaintenanceWindowExecutionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.window_execution_id #=> String
    #   resp.task_ids #=> Array
    #   resp.task_ids[0] #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"
    #   resp.status_details #=> String
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowExecution AWS API Documentation
    #
    # @overload get_maintenance_window_execution(params = {})
    # @param [Hash] params ({})
    def get_maintenance_window_execution(params = {}, options = {})
      req = build_request(:get_maintenance_window_execution, params)
      req.send_request(options)
    end

    # Retrieves the details about a specific task executed as part of a
    # Maintenance Window execution.
    #
    # @option params [required, String] :window_execution_id
    #   The ID of the Maintenance Window execution that includes the task.
    #
    # @option params [required, String] :task_id
    #   The ID of the specific task execution in the Maintenance Window task
    #   that should be retrieved.
    #
    # @return [Types::GetMaintenanceWindowExecutionTaskResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#window_execution_id #window_execution_id} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#task_execution_id #task_execution_id} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#task_arn #task_arn} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#service_role #service_role} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#type #type} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#task_parameters #task_parameters} => Array&lt;Hash&lt;String,Types::MaintenanceWindowTaskParameterValueExpression&gt;&gt;
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#priority #priority} => Integer
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#max_concurrency #max_concurrency} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#max_errors #max_errors} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#status #status} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#status_details #status_details} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#start_time #start_time} => Time
    #   * {Types::GetMaintenanceWindowExecutionTaskResult#end_time #end_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_maintenance_window_execution_task({
    #     window_execution_id: "MaintenanceWindowExecutionId", # required
    #     task_id: "MaintenanceWindowExecutionTaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.window_execution_id #=> String
    #   resp.task_execution_id #=> String
    #   resp.task_arn #=> String
    #   resp.service_role #=> String
    #   resp.type #=> String, one of "RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"
    #   resp.task_parameters #=> Array
    #   resp.task_parameters[0] #=> Hash
    #   resp.task_parameters[0]["MaintenanceWindowTaskParameterName"].values #=> Array
    #   resp.task_parameters[0]["MaintenanceWindowTaskParameterName"].values[0] #=> String
    #   resp.priority #=> Integer
    #   resp.max_concurrency #=> String
    #   resp.max_errors #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"
    #   resp.status_details #=> String
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowExecutionTask AWS API Documentation
    #
    # @overload get_maintenance_window_execution_task(params = {})
    # @param [Hash] params ({})
    def get_maintenance_window_execution_task(params = {}, options = {})
      req = build_request(:get_maintenance_window_execution_task, params)
      req.send_request(options)
    end

    # Retrieves a task invocation. A task invocation is a specific task
    # executing on a specific target. Maintenance Windows report status for
    # all invocations.
    #
    # @option params [required, String] :window_execution_id
    #   The ID of the Maintenance Window execution for which the task is a
    #   part.
    #
    # @option params [required, String] :task_id
    #   The ID of the specific task in the Maintenance Window task that should
    #   be retrieved.
    #
    # @option params [required, String] :invocation_id
    #   The invocation ID to retrieve.
    #
    # @return [Types::GetMaintenanceWindowExecutionTaskInvocationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#window_execution_id #window_execution_id} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#task_execution_id #task_execution_id} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#invocation_id #invocation_id} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#execution_id #execution_id} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#task_type #task_type} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#parameters #parameters} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#status #status} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#status_details #status_details} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#start_time #start_time} => Time
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#end_time #end_time} => Time
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#owner_information #owner_information} => String
    #   * {Types::GetMaintenanceWindowExecutionTaskInvocationResult#window_target_id #window_target_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_maintenance_window_execution_task_invocation({
    #     window_execution_id: "MaintenanceWindowExecutionId", # required
    #     task_id: "MaintenanceWindowExecutionTaskId", # required
    #     invocation_id: "MaintenanceWindowExecutionTaskInvocationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.window_execution_id #=> String
    #   resp.task_execution_id #=> String
    #   resp.invocation_id #=> String
    #   resp.execution_id #=> String
    #   resp.task_type #=> String, one of "RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"
    #   resp.parameters #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "SUCCESS", "FAILED", "TIMED_OUT", "CANCELLING", "CANCELLED", "SKIPPED_OVERLAPPING"
    #   resp.status_details #=> String
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #   resp.owner_information #=> String
    #   resp.window_target_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowExecutionTaskInvocation AWS API Documentation
    #
    # @overload get_maintenance_window_execution_task_invocation(params = {})
    # @param [Hash] params ({})
    def get_maintenance_window_execution_task_invocation(params = {}, options = {})
      req = build_request(:get_maintenance_window_execution_task_invocation, params)
      req.send_request(options)
    end

    # Lists the tasks in a Maintenance Window.
    #
    # @option params [required, String] :window_id
    #   The Maintenance Window ID that includes the task to retrieve.
    #
    # @option params [required, String] :window_task_id
    #   The Maintenance Window task ID to retrieve.
    #
    # @return [Types::GetMaintenanceWindowTaskResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMaintenanceWindowTaskResult#window_id #window_id} => String
    #   * {Types::GetMaintenanceWindowTaskResult#window_task_id #window_task_id} => String
    #   * {Types::GetMaintenanceWindowTaskResult#targets #targets} => Array&lt;Types::Target&gt;
    #   * {Types::GetMaintenanceWindowTaskResult#task_arn #task_arn} => String
    #   * {Types::GetMaintenanceWindowTaskResult#service_role_arn #service_role_arn} => String
    #   * {Types::GetMaintenanceWindowTaskResult#task_type #task_type} => String
    #   * {Types::GetMaintenanceWindowTaskResult#task_parameters #task_parameters} => Hash&lt;String,Types::MaintenanceWindowTaskParameterValueExpression&gt;
    #   * {Types::GetMaintenanceWindowTaskResult#task_invocation_parameters #task_invocation_parameters} => Types::MaintenanceWindowTaskInvocationParameters
    #   * {Types::GetMaintenanceWindowTaskResult#priority #priority} => Integer
    #   * {Types::GetMaintenanceWindowTaskResult#max_concurrency #max_concurrency} => String
    #   * {Types::GetMaintenanceWindowTaskResult#max_errors #max_errors} => String
    #   * {Types::GetMaintenanceWindowTaskResult#logging_info #logging_info} => Types::LoggingInfo
    #   * {Types::GetMaintenanceWindowTaskResult#name #name} => String
    #   * {Types::GetMaintenanceWindowTaskResult#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_maintenance_window_task({
    #     window_id: "MaintenanceWindowId", # required
    #     window_task_id: "MaintenanceWindowTaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.window_id #=> String
    #   resp.window_task_id #=> String
    #   resp.targets #=> Array
    #   resp.targets[0].key #=> String
    #   resp.targets[0].values #=> Array
    #   resp.targets[0].values[0] #=> String
    #   resp.task_arn #=> String
    #   resp.service_role_arn #=> String
    #   resp.task_type #=> String, one of "RUN_COMMAND", "AUTOMATION", "STEP_FUNCTIONS", "LAMBDA"
    #   resp.task_parameters #=> Hash
    #   resp.task_parameters["MaintenanceWindowTaskParameterName"].values #=> Array
    #   resp.task_parameters["MaintenanceWindowTaskParameterName"].values[0] #=> String
    #   resp.task_invocation_parameters.run_command.comment #=> String
    #   resp.task_invocation_parameters.run_command.document_hash #=> String
    #   resp.task_invocation_parameters.run_command.document_hash_type #=> String, one of "Sha256", "Sha1"
    #   resp.task_invocation_parameters.run_command.notification_config.notification_arn #=> String
    #   resp.task_invocation_parameters.run_command.notification_config.notification_events #=> Array
    #   resp.task_invocation_parameters.run_command.notification_config.notification_events[0] #=> String, one of "All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"
    #   resp.task_invocation_parameters.run_command.notification_config.notification_type #=> String, one of "Command", "Invocation"
    #   resp.task_invocation_parameters.run_command.output_s3_bucket_name #=> String
    #   resp.task_invocation_parameters.run_command.output_s3_key_prefix #=> String
    #   resp.task_invocation_parameters.run_command.parameters #=> Hash
    #   resp.task_invocation_parameters.run_command.parameters["ParameterName"] #=> Array
    #   resp.task_invocation_parameters.run_command.parameters["ParameterName"][0] #=> String
    #   resp.task_invocation_parameters.run_command.service_role_arn #=> String
    #   resp.task_invocation_parameters.run_command.timeout_seconds #=> Integer
    #   resp.task_invocation_parameters.automation.document_version #=> String
    #   resp.task_invocation_parameters.automation.parameters #=> Hash
    #   resp.task_invocation_parameters.automation.parameters["AutomationParameterKey"] #=> Array
    #   resp.task_invocation_parameters.automation.parameters["AutomationParameterKey"][0] #=> String
    #   resp.task_invocation_parameters.step_functions.input #=> String
    #   resp.task_invocation_parameters.step_functions.name #=> String
    #   resp.task_invocation_parameters.lambda.client_context #=> String
    #   resp.task_invocation_parameters.lambda.qualifier #=> String
    #   resp.task_invocation_parameters.lambda.payload #=> String
    #   resp.priority #=> Integer
    #   resp.max_concurrency #=> String
    #   resp.max_errors #=> String
    #   resp.logging_info.s3_bucket_name #=> String
    #   resp.logging_info.s3_key_prefix #=> String
    #   resp.logging_info.s3_region #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetMaintenanceWindowTask AWS API Documentation
    #
    # @overload get_maintenance_window_task(params = {})
    # @param [Hash] params ({})
    def get_maintenance_window_task(params = {}, options = {})
      req = build_request(:get_maintenance_window_task, params)
      req.send_request(options)
    end

    # Get information about a parameter by using the parameter name. Don't
    # confuse this API action with the GetParameters API action.
    #
    # @option params [required, String] :name
    #   The name of the parameter you want to query.
    #
    # @option params [Boolean] :with_decryption
    #   Return decrypted values for secure string parameters. This flag is
    #   ignored for String and StringList parameter types.
    #
    # @return [Types::GetParameterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetParameterResult#parameter #parameter} => Types::Parameter
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_parameter({
    #     name: "PSParameterName", # required
    #     with_decryption: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.parameter.name #=> String
    #   resp.parameter.type #=> String, one of "String", "StringList", "SecureString"
    #   resp.parameter.value #=> String
    #   resp.parameter.version #=> Integer
    #   resp.parameter.selector #=> String
    #   resp.parameter.source_result #=> String
    #   resp.parameter.last_modified_date #=> Time
    #   resp.parameter.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParameter AWS API Documentation
    #
    # @overload get_parameter(params = {})
    # @param [Hash] params ({})
    def get_parameter(params = {}, options = {})
      req = build_request(:get_parameter, params)
      req.send_request(options)
    end

    # Query a list of all parameters used by the AWS account.
    #
    # @option params [required, String] :name
    #   The name of a parameter you want to query.
    #
    # @option params [Boolean] :with_decryption
    #   Return decrypted values for secure string parameters. This flag is
    #   ignored for String and StringList parameter types.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::GetParameterHistoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetParameterHistoryResult#parameters #parameters} => Array&lt;Types::ParameterHistory&gt;
    #   * {Types::GetParameterHistoryResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_parameter_history({
    #     name: "PSParameterName", # required
    #     with_decryption: false,
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.parameters #=> Array
    #   resp.parameters[0].name #=> String
    #   resp.parameters[0].type #=> String, one of "String", "StringList", "SecureString"
    #   resp.parameters[0].key_id #=> String
    #   resp.parameters[0].last_modified_date #=> Time
    #   resp.parameters[0].last_modified_user #=> String
    #   resp.parameters[0].description #=> String
    #   resp.parameters[0].value #=> String
    #   resp.parameters[0].allowed_pattern #=> String
    #   resp.parameters[0].version #=> Integer
    #   resp.parameters[0].labels #=> Array
    #   resp.parameters[0].labels[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParameterHistory AWS API Documentation
    #
    # @overload get_parameter_history(params = {})
    # @param [Hash] params ({})
    def get_parameter_history(params = {}, options = {})
      req = build_request(:get_parameter_history, params)
      req.send_request(options)
    end

    # Get details of a parameter. Don't confuse this API action with the
    # GetParameter API action.
    #
    # @option params [required, Array<String>] :names
    #   Names of the parameters for which you want to query information.
    #
    # @option params [Boolean] :with_decryption
    #   Return decrypted secure string value. Return decrypted values for
    #   secure string parameters. This flag is ignored for String and
    #   StringList parameter types.
    #
    # @return [Types::GetParametersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetParametersResult#parameters #parameters} => Array&lt;Types::Parameter&gt;
    #   * {Types::GetParametersResult#invalid_parameters #invalid_parameters} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_parameters({
    #     names: ["PSParameterName"], # required
    #     with_decryption: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.parameters #=> Array
    #   resp.parameters[0].name #=> String
    #   resp.parameters[0].type #=> String, one of "String", "StringList", "SecureString"
    #   resp.parameters[0].value #=> String
    #   resp.parameters[0].version #=> Integer
    #   resp.parameters[0].selector #=> String
    #   resp.parameters[0].source_result #=> String
    #   resp.parameters[0].last_modified_date #=> Time
    #   resp.parameters[0].arn #=> String
    #   resp.invalid_parameters #=> Array
    #   resp.invalid_parameters[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParameters AWS API Documentation
    #
    # @overload get_parameters(params = {})
    # @param [Hash] params ({})
    def get_parameters(params = {}, options = {})
      req = build_request(:get_parameters, params)
      req.send_request(options)
    end

    # Retrieve parameters in a specific hierarchy. For more information, see
    # [Working with Systems Manager Parameters][1] in the *AWS Systems
    # Manager User Guide*.
    #
    # Request results are returned on a best-effort basis. If you specify
    # `MaxResults` in the request, the response includes information up to
    # the limit specified. The number of items returned, however, can be
    # between zero and the value of `MaxResults`. If the service reaches an
    # internal limit while processing the results, it stops the operation
    # and returns the matching values up to that point and a `NextToken`.
    # You can specify the `NextToken` in a subsequent call to get the next
    # set of results.
    #
    # <note markdown="1"> This API action doesn't support filtering by tags.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-working.html
    #
    # @option params [required, String] :path
    #   The hierarchy for the parameter. Hierarchies start with a forward
    #   slash (/) and end with the parameter name. A parameter name hierarchy
    #   can have a maximum of 15 levels. Here is an example of a hierarchy:
    #   `/Finance/Prod/IAD/WinServ2016/license33`
    #
    # @option params [Boolean] :recursive
    #   Retrieve all parameters within a hierarchy.
    #
    #   If a user has access to a path, then the user can access all levels of
    #   that path. For example, if a user has permission to access path /a,
    #   then the user can also access /a/b. Even if a user has explicitly been
    #   denied access in IAM for parameter /a, they can still call the
    #   GetParametersByPath API action recursively and view /a/b.
    #
    # @option params [Array<Types::ParameterStringFilter>] :parameter_filters
    #   Filters to limit the request results.
    #
    #   <note markdown="1"> You can't filter using the parameter name.
    #
    #    </note>
    #
    # @option params [Boolean] :with_decryption
    #   Retrieve all parameters in a hierarchy with their value decrypted.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @return [Types::GetParametersByPathResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetParametersByPathResult#parameters #parameters} => Array&lt;Types::Parameter&gt;
    #   * {Types::GetParametersByPathResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_parameters_by_path({
    #     path: "PSParameterName", # required
    #     recursive: false,
    #     parameter_filters: [
    #       {
    #         key: "ParameterStringFilterKey", # required
    #         option: "ParameterStringQueryOption",
    #         values: ["ParameterStringFilterValue"],
    #       },
    #     ],
    #     with_decryption: false,
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.parameters #=> Array
    #   resp.parameters[0].name #=> String
    #   resp.parameters[0].type #=> String, one of "String", "StringList", "SecureString"
    #   resp.parameters[0].value #=> String
    #   resp.parameters[0].version #=> Integer
    #   resp.parameters[0].selector #=> String
    #   resp.parameters[0].source_result #=> String
    #   resp.parameters[0].last_modified_date #=> Time
    #   resp.parameters[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetParametersByPath AWS API Documentation
    #
    # @overload get_parameters_by_path(params = {})
    # @param [Hash] params ({})
    def get_parameters_by_path(params = {}, options = {})
      req = build_request(:get_parameters_by_path, params)
      req.send_request(options)
    end

    # Retrieves information about a patch baseline.
    #
    # @option params [required, String] :baseline_id
    #   The ID of the patch baseline to retrieve.
    #
    # @return [Types::GetPatchBaselineResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPatchBaselineResult#baseline_id #baseline_id} => String
    #   * {Types::GetPatchBaselineResult#name #name} => String
    #   * {Types::GetPatchBaselineResult#operating_system #operating_system} => String
    #   * {Types::GetPatchBaselineResult#global_filters #global_filters} => Types::PatchFilterGroup
    #   * {Types::GetPatchBaselineResult#approval_rules #approval_rules} => Types::PatchRuleGroup
    #   * {Types::GetPatchBaselineResult#approved_patches #approved_patches} => Array&lt;String&gt;
    #   * {Types::GetPatchBaselineResult#approved_patches_compliance_level #approved_patches_compliance_level} => String
    #   * {Types::GetPatchBaselineResult#approved_patches_enable_non_security #approved_patches_enable_non_security} => Boolean
    #   * {Types::GetPatchBaselineResult#rejected_patches #rejected_patches} => Array&lt;String&gt;
    #   * {Types::GetPatchBaselineResult#patch_groups #patch_groups} => Array&lt;String&gt;
    #   * {Types::GetPatchBaselineResult#created_date #created_date} => Time
    #   * {Types::GetPatchBaselineResult#modified_date #modified_date} => Time
    #   * {Types::GetPatchBaselineResult#description #description} => String
    #   * {Types::GetPatchBaselineResult#sources #sources} => Array&lt;Types::PatchSource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_patch_baseline({
    #     baseline_id: "BaselineId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.baseline_id #=> String
    #   resp.name #=> String
    #   resp.operating_system #=> String, one of "WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS"
    #   resp.global_filters.patch_filters #=> Array
    #   resp.global_filters.patch_filters[0].key #=> String, one of "PRODUCT", "CLASSIFICATION", "MSRC_SEVERITY", "PATCH_ID", "SECTION", "PRIORITY", "SEVERITY"
    #   resp.global_filters.patch_filters[0].values #=> Array
    #   resp.global_filters.patch_filters[0].values[0] #=> String
    #   resp.approval_rules.patch_rules #=> Array
    #   resp.approval_rules.patch_rules[0].patch_filter_group.patch_filters #=> Array
    #   resp.approval_rules.patch_rules[0].patch_filter_group.patch_filters[0].key #=> String, one of "PRODUCT", "CLASSIFICATION", "MSRC_SEVERITY", "PATCH_ID", "SECTION", "PRIORITY", "SEVERITY"
    #   resp.approval_rules.patch_rules[0].patch_filter_group.patch_filters[0].values #=> Array
    #   resp.approval_rules.patch_rules[0].patch_filter_group.patch_filters[0].values[0] #=> String
    #   resp.approval_rules.patch_rules[0].compliance_level #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"
    #   resp.approval_rules.patch_rules[0].approve_after_days #=> Integer
    #   resp.approval_rules.patch_rules[0].enable_non_security #=> Boolean
    #   resp.approved_patches #=> Array
    #   resp.approved_patches[0] #=> String
    #   resp.approved_patches_compliance_level #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"
    #   resp.approved_patches_enable_non_security #=> Boolean
    #   resp.rejected_patches #=> Array
    #   resp.rejected_patches[0] #=> String
    #   resp.patch_groups #=> Array
    #   resp.patch_groups[0] #=> String
    #   resp.created_date #=> Time
    #   resp.modified_date #=> Time
    #   resp.description #=> String
    #   resp.sources #=> Array
    #   resp.sources[0].name #=> String
    #   resp.sources[0].products #=> Array
    #   resp.sources[0].products[0] #=> String
    #   resp.sources[0].configuration #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetPatchBaseline AWS API Documentation
    #
    # @overload get_patch_baseline(params = {})
    # @param [Hash] params ({})
    def get_patch_baseline(params = {}, options = {})
      req = build_request(:get_patch_baseline, params)
      req.send_request(options)
    end

    # Retrieves the patch baseline that should be used for the specified
    # patch group.
    #
    # @option params [required, String] :patch_group
    #   The name of the patch group whose patch baseline should be retrieved.
    #
    # @option params [String] :operating_system
    #   Returns he operating system rule specified for patch groups using the
    #   patch baseline.
    #
    # @return [Types::GetPatchBaselineForPatchGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPatchBaselineForPatchGroupResult#baseline_id #baseline_id} => String
    #   * {Types::GetPatchBaselineForPatchGroupResult#patch_group #patch_group} => String
    #   * {Types::GetPatchBaselineForPatchGroupResult#operating_system #operating_system} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_patch_baseline_for_patch_group({
    #     patch_group: "PatchGroup", # required
    #     operating_system: "WINDOWS", # accepts WINDOWS, AMAZON_LINUX, AMAZON_LINUX_2, UBUNTU, REDHAT_ENTERPRISE_LINUX, SUSE, CENTOS
    #   })
    #
    # @example Response structure
    #
    #   resp.baseline_id #=> String
    #   resp.patch_group #=> String
    #   resp.operating_system #=> String, one of "WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/GetPatchBaselineForPatchGroup AWS API Documentation
    #
    # @overload get_patch_baseline_for_patch_group(params = {})
    # @param [Hash] params ({})
    def get_patch_baseline_for_patch_group(params = {}, options = {})
      req = build_request(:get_patch_baseline_for_patch_group, params)
      req.send_request(options)
    end

    # A parameter label is a user-defined alias to help you manage different
    # versions of a parameter. When you modify a parameter, Systems Manager
    # automatically saves a new version and increments the version number by
    # one. A label can help you remember the purpose of a parameter when
    # there are multiple versions.
    #
    # Parameter labels have the following requirements and restrictions.
    #
    # * A version of a parameter can have a maximum of 10 labels.
    #
    # * You can't attach the same label to different versions of the same
    #   parameter. For example, if version 1 has the label Production, then
    #   you can't attach Production to version 2.
    #
    # * You can move a label from one version of a parameter to another.
    #
    # * You can't create a label when you create a new parameter. You must
    #   attach a label to a specific version of a parameter.
    #
    # * You can't delete a parameter label. If you no longer want to use a
    #   parameter label, then you must move it to a different version of a
    #   parameter.
    #
    # * A label can have a maximum of 100 characters.
    #
    # * Labels can contain letters (case sensitive), numbers, periods (.),
    #   hyphens (-), or underscores (\_).
    #
    # * Labels can't begin with a number, "aws," or "ssm" (not case
    #   sensitive). If a label fails to meet these requirements, then the
    #   label is not associated with a parameter and the system displays it
    #   in the list of InvalidLabels.
    #
    # @option params [required, String] :name
    #   The parameter name on which you want to attach one or more labels.
    #
    # @option params [Integer] :parameter_version
    #   The specific version of the parameter on which you want to attach one
    #   or more labels. If no version is specified, the system attaches the
    #   label to the latest version.)
    #
    # @option params [required, Array<String>] :labels
    #   One or more labels to attach to the specified parameter version.
    #
    # @return [Types::LabelParameterVersionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::LabelParameterVersionResult#invalid_labels #invalid_labels} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.label_parameter_version({
    #     name: "PSParameterName", # required
    #     parameter_version: 1,
    #     labels: ["ParameterLabel"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.invalid_labels #=> Array
    #   resp.invalid_labels[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/LabelParameterVersion AWS API Documentation
    #
    # @overload label_parameter_version(params = {})
    # @param [Hash] params ({})
    def label_parameter_version(params = {}, options = {})
      req = build_request(:label_parameter_version, params)
      req.send_request(options)
    end

    # Retrieves all versions of an association for a specific association
    # ID.
    #
    # @option params [required, String] :association_id
    #   The association ID for which you want to view all versions.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @return [Types::ListAssociationVersionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociationVersionsResult#association_versions #association_versions} => Array&lt;Types::AssociationVersionInfo&gt;
    #   * {Types::ListAssociationVersionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_association_versions({
    #     association_id: "AssociationId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.association_versions #=> Array
    #   resp.association_versions[0].association_id #=> String
    #   resp.association_versions[0].association_version #=> String
    #   resp.association_versions[0].created_date #=> Time
    #   resp.association_versions[0].name #=> String
    #   resp.association_versions[0].document_version #=> String
    #   resp.association_versions[0].parameters #=> Hash
    #   resp.association_versions[0].parameters["ParameterName"] #=> Array
    #   resp.association_versions[0].parameters["ParameterName"][0] #=> String
    #   resp.association_versions[0].targets #=> Array
    #   resp.association_versions[0].targets[0].key #=> String
    #   resp.association_versions[0].targets[0].values #=> Array
    #   resp.association_versions[0].targets[0].values[0] #=> String
    #   resp.association_versions[0].schedule_expression #=> String
    #   resp.association_versions[0].output_location.s3_location.output_s3_region #=> String
    #   resp.association_versions[0].output_location.s3_location.output_s3_bucket_name #=> String
    #   resp.association_versions[0].output_location.s3_location.output_s3_key_prefix #=> String
    #   resp.association_versions[0].association_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListAssociationVersions AWS API Documentation
    #
    # @overload list_association_versions(params = {})
    # @param [Hash] params ({})
    def list_association_versions(params = {}, options = {})
      req = build_request(:list_association_versions, params)
      req.send_request(options)
    end

    # Lists the associations for the specified Systems Manager document or
    # instance.
    #
    # @option params [Array<Types::AssociationFilter>] :association_filter_list
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::ListAssociationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociationsResult#associations #associations} => Array&lt;Types::Association&gt;
    #   * {Types::ListAssociationsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associations({
    #     association_filter_list: [
    #       {
    #         key: "InstanceId", # required, accepts InstanceId, Name, AssociationId, AssociationStatusName, LastExecutedBefore, LastExecutedAfter, AssociationName
    #         value: "AssociationFilterValue", # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.associations #=> Array
    #   resp.associations[0].name #=> String
    #   resp.associations[0].instance_id #=> String
    #   resp.associations[0].association_id #=> String
    #   resp.associations[0].association_version #=> String
    #   resp.associations[0].document_version #=> String
    #   resp.associations[0].targets #=> Array
    #   resp.associations[0].targets[0].key #=> String
    #   resp.associations[0].targets[0].values #=> Array
    #   resp.associations[0].targets[0].values[0] #=> String
    #   resp.associations[0].last_execution_date #=> Time
    #   resp.associations[0].overview.status #=> String
    #   resp.associations[0].overview.detailed_status #=> String
    #   resp.associations[0].overview.association_status_aggregated_count #=> Hash
    #   resp.associations[0].overview.association_status_aggregated_count["StatusName"] #=> Integer
    #   resp.associations[0].schedule_expression #=> String
    #   resp.associations[0].association_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListAssociations AWS API Documentation
    #
    # @overload list_associations(params = {})
    # @param [Hash] params ({})
    def list_associations(params = {}, options = {})
      req = build_request(:list_associations, params)
      req.send_request(options)
    end

    # An invocation is copy of a command sent to a specific instance. A
    # command can apply to one or more instances. A command invocation
    # applies to one instance. For example, if a user executes SendCommand
    # against three instances, then a command invocation is created for each
    # requested instance ID. ListCommandInvocations provide status about
    # command execution.
    #
    # @option params [String] :command_id
    #   (Optional) The invocations for a specific command ID.
    #
    # @option params [String] :instance_id
    #   (Optional) The command execution details for a specific instance ID.
    #
    # @option params [Integer] :max_results
    #   (Optional) The maximum number of items to return for this call. The
    #   call also returns a token that you can specify in a subsequent call to
    #   get the next set of results.
    #
    # @option params [String] :next_token
    #   (Optional) The token for the next set of items to return. (You
    #   received this token from a previous call.)
    #
    # @option params [Array<Types::CommandFilter>] :filters
    #   (Optional) One or more filters. Use a filter to return a more specific
    #   list of results.
    #
    # @option params [Boolean] :details
    #   (Optional) If set this returns the response of the command executions
    #   and any command output. By default this is set to False.
    #
    # @return [Types::ListCommandInvocationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCommandInvocationsResult#command_invocations #command_invocations} => Array&lt;Types::CommandInvocation&gt;
    #   * {Types::ListCommandInvocationsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_command_invocations({
    #     command_id: "CommandId",
    #     instance_id: "InstanceId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         key: "InvokedAfter", # required, accepts InvokedAfter, InvokedBefore, Status, ExecutionStage, DocumentName
    #         value: "CommandFilterValue", # required
    #       },
    #     ],
    #     details: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.command_invocations #=> Array
    #   resp.command_invocations[0].command_id #=> String
    #   resp.command_invocations[0].instance_id #=> String
    #   resp.command_invocations[0].instance_name #=> String
    #   resp.command_invocations[0].comment #=> String
    #   resp.command_invocations[0].document_name #=> String
    #   resp.command_invocations[0].document_version #=> String
    #   resp.command_invocations[0].requested_date_time #=> Time
    #   resp.command_invocations[0].status #=> String, one of "Pending", "InProgress", "Delayed", "Success", "Cancelled", "TimedOut", "Failed", "Cancelling"
    #   resp.command_invocations[0].status_details #=> String
    #   resp.command_invocations[0].trace_output #=> String
    #   resp.command_invocations[0].standard_output_url #=> String
    #   resp.command_invocations[0].standard_error_url #=> String
    #   resp.command_invocations[0].command_plugins #=> Array
    #   resp.command_invocations[0].command_plugins[0].name #=> String
    #   resp.command_invocations[0].command_plugins[0].status #=> String, one of "Pending", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"
    #   resp.command_invocations[0].command_plugins[0].status_details #=> String
    #   resp.command_invocations[0].command_plugins[0].response_code #=> Integer
    #   resp.command_invocations[0].command_plugins[0].response_start_date_time #=> Time
    #   resp.command_invocations[0].command_plugins[0].response_finish_date_time #=> Time
    #   resp.command_invocations[0].command_plugins[0].output #=> String
    #   resp.command_invocations[0].command_plugins[0].standard_output_url #=> String
    #   resp.command_invocations[0].command_plugins[0].standard_error_url #=> String
    #   resp.command_invocations[0].command_plugins[0].output_s3_region #=> String
    #   resp.command_invocations[0].command_plugins[0].output_s3_bucket_name #=> String
    #   resp.command_invocations[0].command_plugins[0].output_s3_key_prefix #=> String
    #   resp.command_invocations[0].service_role #=> String
    #   resp.command_invocations[0].notification_config.notification_arn #=> String
    #   resp.command_invocations[0].notification_config.notification_events #=> Array
    #   resp.command_invocations[0].notification_config.notification_events[0] #=> String, one of "All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"
    #   resp.command_invocations[0].notification_config.notification_type #=> String, one of "Command", "Invocation"
    #   resp.command_invocations[0].cloud_watch_output_config.cloud_watch_log_group_name #=> String
    #   resp.command_invocations[0].cloud_watch_output_config.cloud_watch_output_enabled #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListCommandInvocations AWS API Documentation
    #
    # @overload list_command_invocations(params = {})
    # @param [Hash] params ({})
    def list_command_invocations(params = {}, options = {})
      req = build_request(:list_command_invocations, params)
      req.send_request(options)
    end

    # Lists the commands requested by users of the AWS account.
    #
    # @option params [String] :command_id
    #   (Optional) If provided, lists only the specified command.
    #
    # @option params [String] :instance_id
    #   (Optional) Lists commands issued against this instance ID.
    #
    # @option params [Integer] :max_results
    #   (Optional) The maximum number of items to return for this call. The
    #   call also returns a token that you can specify in a subsequent call to
    #   get the next set of results.
    #
    # @option params [String] :next_token
    #   (Optional) The token for the next set of items to return. (You
    #   received this token from a previous call.)
    #
    # @option params [Array<Types::CommandFilter>] :filters
    #   (Optional) One or more filters. Use a filter to return a more specific
    #   list of results.
    #
    # @return [Types::ListCommandsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCommandsResult#commands #commands} => Array&lt;Types::Command&gt;
    #   * {Types::ListCommandsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_commands({
    #     command_id: "CommandId",
    #     instance_id: "InstanceId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         key: "InvokedAfter", # required, accepts InvokedAfter, InvokedBefore, Status, ExecutionStage, DocumentName
    #         value: "CommandFilterValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.commands #=> Array
    #   resp.commands[0].command_id #=> String
    #   resp.commands[0].document_name #=> String
    #   resp.commands[0].document_version #=> String
    #   resp.commands[0].comment #=> String
    #   resp.commands[0].expires_after #=> Time
    #   resp.commands[0].parameters #=> Hash
    #   resp.commands[0].parameters["ParameterName"] #=> Array
    #   resp.commands[0].parameters["ParameterName"][0] #=> String
    #   resp.commands[0].instance_ids #=> Array
    #   resp.commands[0].instance_ids[0] #=> String
    #   resp.commands[0].targets #=> Array
    #   resp.commands[0].targets[0].key #=> String
    #   resp.commands[0].targets[0].values #=> Array
    #   resp.commands[0].targets[0].values[0] #=> String
    #   resp.commands[0].requested_date_time #=> Time
    #   resp.commands[0].status #=> String, one of "Pending", "InProgress", "Success", "Cancelled", "Failed", "TimedOut", "Cancelling"
    #   resp.commands[0].status_details #=> String
    #   resp.commands[0].output_s3_region #=> String
    #   resp.commands[0].output_s3_bucket_name #=> String
    #   resp.commands[0].output_s3_key_prefix #=> String
    #   resp.commands[0].max_concurrency #=> String
    #   resp.commands[0].max_errors #=> String
    #   resp.commands[0].target_count #=> Integer
    #   resp.commands[0].completed_count #=> Integer
    #   resp.commands[0].error_count #=> Integer
    #   resp.commands[0].delivery_timed_out_count #=> Integer
    #   resp.commands[0].service_role #=> String
    #   resp.commands[0].notification_config.notification_arn #=> String
    #   resp.commands[0].notification_config.notification_events #=> Array
    #   resp.commands[0].notification_config.notification_events[0] #=> String, one of "All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"
    #   resp.commands[0].notification_config.notification_type #=> String, one of "Command", "Invocation"
    #   resp.commands[0].cloud_watch_output_config.cloud_watch_log_group_name #=> String
    #   resp.commands[0].cloud_watch_output_config.cloud_watch_output_enabled #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListCommands AWS API Documentation
    #
    # @overload list_commands(params = {})
    # @param [Hash] params ({})
    def list_commands(params = {}, options = {})
      req = build_request(:list_commands, params)
      req.send_request(options)
    end

    # For a specified resource ID, this API action returns a list of
    # compliance statuses for different resource types. Currently, you can
    # only specify one resource ID per call. List results depend on the
    # criteria specified in the filter.
    #
    # @option params [Array<Types::ComplianceStringFilter>] :filters
    #   One or more compliance filters. Use a filter to return a more specific
    #   list of results.
    #
    # @option params [Array<String>] :resource_ids
    #   The ID for the resources from which to get compliance information.
    #   Currently, you can only specify one resource ID.
    #
    # @option params [Array<String>] :resource_types
    #   The type of resource from which to get compliance information.
    #   Currently, the only supported resource type is `ManagedInstance`.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @return [Types::ListComplianceItemsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComplianceItemsResult#compliance_items #compliance_items} => Array&lt;Types::ComplianceItem&gt;
    #   * {Types::ListComplianceItemsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_compliance_items({
    #     filters: [
    #       {
    #         key: "ComplianceStringFilterKey",
    #         values: ["ComplianceFilterValue"],
    #         type: "EQUAL", # accepts EQUAL, NOT_EQUAL, BEGIN_WITH, LESS_THAN, GREATER_THAN
    #       },
    #     ],
    #     resource_ids: ["ComplianceResourceId"],
    #     resource_types: ["ComplianceResourceType"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.compliance_items #=> Array
    #   resp.compliance_items[0].compliance_type #=> String
    #   resp.compliance_items[0].resource_type #=> String
    #   resp.compliance_items[0].resource_id #=> String
    #   resp.compliance_items[0].id #=> String
    #   resp.compliance_items[0].title #=> String
    #   resp.compliance_items[0].status #=> String, one of "COMPLIANT", "NON_COMPLIANT"
    #   resp.compliance_items[0].severity #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"
    #   resp.compliance_items[0].execution_summary.execution_time #=> Time
    #   resp.compliance_items[0].execution_summary.execution_id #=> String
    #   resp.compliance_items[0].execution_summary.execution_type #=> String
    #   resp.compliance_items[0].details #=> Hash
    #   resp.compliance_items[0].details["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListComplianceItems AWS API Documentation
    #
    # @overload list_compliance_items(params = {})
    # @param [Hash] params ({})
    def list_compliance_items(params = {}, options = {})
      req = build_request(:list_compliance_items, params)
      req.send_request(options)
    end

    # Returns a summary count of compliant and non-compliant resources for a
    # compliance type. For example, this call can return State Manager
    # associations, patches, or custom compliance types according to the
    # filter criteria that you specify.
    #
    # @option params [Array<Types::ComplianceStringFilter>] :filters
    #   One or more compliance or inventory filters. Use a filter to return a
    #   more specific list of results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. Currently, you
    #   can specify null or 50. The call also returns a token that you can
    #   specify in a subsequent call to get the next set of results.
    #
    # @return [Types::ListComplianceSummariesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComplianceSummariesResult#compliance_summary_items #compliance_summary_items} => Array&lt;Types::ComplianceSummaryItem&gt;
    #   * {Types::ListComplianceSummariesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_compliance_summaries({
    #     filters: [
    #       {
    #         key: "ComplianceStringFilterKey",
    #         values: ["ComplianceFilterValue"],
    #         type: "EQUAL", # accepts EQUAL, NOT_EQUAL, BEGIN_WITH, LESS_THAN, GREATER_THAN
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.compliance_summary_items #=> Array
    #   resp.compliance_summary_items[0].compliance_type #=> String
    #   resp.compliance_summary_items[0].compliant_summary.compliant_count #=> Integer
    #   resp.compliance_summary_items[0].compliant_summary.severity_summary.critical_count #=> Integer
    #   resp.compliance_summary_items[0].compliant_summary.severity_summary.high_count #=> Integer
    #   resp.compliance_summary_items[0].compliant_summary.severity_summary.medium_count #=> Integer
    #   resp.compliance_summary_items[0].compliant_summary.severity_summary.low_count #=> Integer
    #   resp.compliance_summary_items[0].compliant_summary.severity_summary.informational_count #=> Integer
    #   resp.compliance_summary_items[0].compliant_summary.severity_summary.unspecified_count #=> Integer
    #   resp.compliance_summary_items[0].non_compliant_summary.non_compliant_count #=> Integer
    #   resp.compliance_summary_items[0].non_compliant_summary.severity_summary.critical_count #=> Integer
    #   resp.compliance_summary_items[0].non_compliant_summary.severity_summary.high_count #=> Integer
    #   resp.compliance_summary_items[0].non_compliant_summary.severity_summary.medium_count #=> Integer
    #   resp.compliance_summary_items[0].non_compliant_summary.severity_summary.low_count #=> Integer
    #   resp.compliance_summary_items[0].non_compliant_summary.severity_summary.informational_count #=> Integer
    #   resp.compliance_summary_items[0].non_compliant_summary.severity_summary.unspecified_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListComplianceSummaries AWS API Documentation
    #
    # @overload list_compliance_summaries(params = {})
    # @param [Hash] params ({})
    def list_compliance_summaries(params = {}, options = {})
      req = build_request(:list_compliance_summaries, params)
      req.send_request(options)
    end

    # List all versions for a document.
    #
    # @option params [required, String] :name
    #   The name of the document about which you want version information.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::ListDocumentVersionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDocumentVersionsResult#document_versions #document_versions} => Array&lt;Types::DocumentVersionInfo&gt;
    #   * {Types::ListDocumentVersionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_document_versions({
    #     name: "DocumentName", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.document_versions #=> Array
    #   resp.document_versions[0].name #=> String
    #   resp.document_versions[0].document_version #=> String
    #   resp.document_versions[0].created_date #=> Time
    #   resp.document_versions[0].is_default_version #=> Boolean
    #   resp.document_versions[0].document_format #=> String, one of "YAML", "JSON"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListDocumentVersions AWS API Documentation
    #
    # @overload list_document_versions(params = {})
    # @param [Hash] params ({})
    def list_document_versions(params = {}, options = {})
      req = build_request(:list_document_versions, params)
      req.send_request(options)
    end

    # Describes one or more of your Systems Manager documents.
    #
    # @option params [Array<Types::DocumentFilter>] :document_filter_list
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #
    # @option params [Array<Types::DocumentKeyValuesFilter>] :filters
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::ListDocumentsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDocumentsResult#document_identifiers #document_identifiers} => Array&lt;Types::DocumentIdentifier&gt;
    #   * {Types::ListDocumentsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_documents({
    #     document_filter_list: [
    #       {
    #         key: "Name", # required, accepts Name, Owner, PlatformTypes, DocumentType
    #         value: "DocumentFilterValue", # required
    #       },
    #     ],
    #     filters: [
    #       {
    #         key: "DocumentKeyValuesFilterKey",
    #         values: ["DocumentKeyValuesFilterValue"],
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.document_identifiers #=> Array
    #   resp.document_identifiers[0].name #=> String
    #   resp.document_identifiers[0].owner #=> String
    #   resp.document_identifiers[0].platform_types #=> Array
    #   resp.document_identifiers[0].platform_types[0] #=> String, one of "Windows", "Linux"
    #   resp.document_identifiers[0].document_version #=> String
    #   resp.document_identifiers[0].document_type #=> String, one of "Command", "Policy", "Automation", "Session"
    #   resp.document_identifiers[0].schema_version #=> String
    #   resp.document_identifiers[0].document_format #=> String, one of "YAML", "JSON"
    #   resp.document_identifiers[0].target_type #=> String
    #   resp.document_identifiers[0].tags #=> Array
    #   resp.document_identifiers[0].tags[0].key #=> String
    #   resp.document_identifiers[0].tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListDocuments AWS API Documentation
    #
    # @overload list_documents(params = {})
    # @param [Hash] params ({})
    def list_documents(params = {}, options = {})
      req = build_request(:list_documents, params)
      req.send_request(options)
    end

    # A list of inventory items returned by the request.
    #
    # @option params [required, String] :instance_id
    #   The instance ID for which you want inventory information.
    #
    # @option params [required, String] :type_name
    #   The type of inventory item for which you want information.
    #
    # @option params [Array<Types::InventoryFilter>] :filters
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @return [Types::ListInventoryEntriesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInventoryEntriesResult#type_name #type_name} => String
    #   * {Types::ListInventoryEntriesResult#instance_id #instance_id} => String
    #   * {Types::ListInventoryEntriesResult#schema_version #schema_version} => String
    #   * {Types::ListInventoryEntriesResult#capture_time #capture_time} => String
    #   * {Types::ListInventoryEntriesResult#entries #entries} => Array&lt;Hash&lt;String,String&gt;&gt;
    #   * {Types::ListInventoryEntriesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_inventory_entries({
    #     instance_id: "InstanceId", # required
    #     type_name: "InventoryItemTypeName", # required
    #     filters: [
    #       {
    #         key: "InventoryFilterKey", # required
    #         values: ["InventoryFilterValue"], # required
    #         type: "Equal", # accepts Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.type_name #=> String
    #   resp.instance_id #=> String
    #   resp.schema_version #=> String
    #   resp.capture_time #=> String
    #   resp.entries #=> Array
    #   resp.entries[0] #=> Hash
    #   resp.entries[0]["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListInventoryEntries AWS API Documentation
    #
    # @overload list_inventory_entries(params = {})
    # @param [Hash] params ({})
    def list_inventory_entries(params = {}, options = {})
      req = build_request(:list_inventory_entries, params)
      req.send_request(options)
    end

    # Returns a resource-level summary count. The summary includes
    # information about compliant and non-compliant statuses and detailed
    # compliance-item severity counts, according to the filter criteria you
    # specify.
    #
    # @option params [Array<Types::ComplianceStringFilter>] :filters
    #   One or more filters. Use a filter to return a more specific list of
    #   results.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @return [Types::ListResourceComplianceSummariesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceComplianceSummariesResult#resource_compliance_summary_items #resource_compliance_summary_items} => Array&lt;Types::ResourceComplianceSummaryItem&gt;
    #   * {Types::ListResourceComplianceSummariesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_compliance_summaries({
    #     filters: [
    #       {
    #         key: "ComplianceStringFilterKey",
    #         values: ["ComplianceFilterValue"],
    #         type: "EQUAL", # accepts EQUAL, NOT_EQUAL, BEGIN_WITH, LESS_THAN, GREATER_THAN
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_compliance_summary_items #=> Array
    #   resp.resource_compliance_summary_items[0].compliance_type #=> String
    #   resp.resource_compliance_summary_items[0].resource_type #=> String
    #   resp.resource_compliance_summary_items[0].resource_id #=> String
    #   resp.resource_compliance_summary_items[0].status #=> String, one of "COMPLIANT", "NON_COMPLIANT"
    #   resp.resource_compliance_summary_items[0].overall_severity #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"
    #   resp.resource_compliance_summary_items[0].execution_summary.execution_time #=> Time
    #   resp.resource_compliance_summary_items[0].execution_summary.execution_id #=> String
    #   resp.resource_compliance_summary_items[0].execution_summary.execution_type #=> String
    #   resp.resource_compliance_summary_items[0].compliant_summary.compliant_count #=> Integer
    #   resp.resource_compliance_summary_items[0].compliant_summary.severity_summary.critical_count #=> Integer
    #   resp.resource_compliance_summary_items[0].compliant_summary.severity_summary.high_count #=> Integer
    #   resp.resource_compliance_summary_items[0].compliant_summary.severity_summary.medium_count #=> Integer
    #   resp.resource_compliance_summary_items[0].compliant_summary.severity_summary.low_count #=> Integer
    #   resp.resource_compliance_summary_items[0].compliant_summary.severity_summary.informational_count #=> Integer
    #   resp.resource_compliance_summary_items[0].compliant_summary.severity_summary.unspecified_count #=> Integer
    #   resp.resource_compliance_summary_items[0].non_compliant_summary.non_compliant_count #=> Integer
    #   resp.resource_compliance_summary_items[0].non_compliant_summary.severity_summary.critical_count #=> Integer
    #   resp.resource_compliance_summary_items[0].non_compliant_summary.severity_summary.high_count #=> Integer
    #   resp.resource_compliance_summary_items[0].non_compliant_summary.severity_summary.medium_count #=> Integer
    #   resp.resource_compliance_summary_items[0].non_compliant_summary.severity_summary.low_count #=> Integer
    #   resp.resource_compliance_summary_items[0].non_compliant_summary.severity_summary.informational_count #=> Integer
    #   resp.resource_compliance_summary_items[0].non_compliant_summary.severity_summary.unspecified_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListResourceComplianceSummaries AWS API Documentation
    #
    # @overload list_resource_compliance_summaries(params = {})
    # @param [Hash] params ({})
    def list_resource_compliance_summaries(params = {}, options = {})
      req = build_request(:list_resource_compliance_summaries, params)
      req.send_request(options)
    end

    # Lists your resource data sync configurations. Includes information
    # about the last time a sync attempted to start, the last sync status,
    # and the last time a sync successfully completed.
    #
    # The number of sync configurations might be too large to return using a
    # single call to `ListResourceDataSync`. You can limit the number of
    # sync configurations returned by using the `MaxResults` parameter. To
    # determine whether there are more sync configurations to list, check
    # the value of `NextToken` in the output. If there are more sync
    # configurations to list, you can request them by specifying the
    # `NextToken` returned in the call to the parameter of a subsequent
    # call.
    #
    # @option params [String] :next_token
    #   A token to start the list. Use this token to get the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return for this call. The call also
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    # @return [Types::ListResourceDataSyncResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourceDataSyncResult#resource_data_sync_items #resource_data_sync_items} => Array&lt;Types::ResourceDataSyncItem&gt;
    #   * {Types::ListResourceDataSyncResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_data_sync({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_data_sync_items #=> Array
    #   resp.resource_data_sync_items[0].sync_name #=> String
    #   resp.resource_data_sync_items[0].s3_destination.bucket_name #=> String
    #   resp.resource_data_sync_items[0].s3_destination.prefix #=> String
    #   resp.resource_data_sync_items[0].s3_destination.sync_format #=> String, one of "JsonSerDe"
    #   resp.resource_data_sync_items[0].s3_destination.region #=> String
    #   resp.resource_data_sync_items[0].s3_destination.awskms_key_arn #=> String
    #   resp.resource_data_sync_items[0].last_sync_time #=> Time
    #   resp.resource_data_sync_items[0].last_successful_sync_time #=> Time
    #   resp.resource_data_sync_items[0].last_status #=> String, one of "Successful", "Failed", "InProgress"
    #   resp.resource_data_sync_items[0].sync_created_time #=> Time
    #   resp.resource_data_sync_items[0].last_sync_status_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListResourceDataSync AWS API Documentation
    #
    # @overload list_resource_data_sync(params = {})
    # @param [Hash] params ({})
    def list_resource_data_sync(params = {}, options = {})
      req = build_request(:list_resource_data_sync, params)
      req.send_request(options)
    end

    # Returns a list of the tags assigned to the specified resource.
    #
    # @option params [required, String] :resource_type
    #   Returns a list of tags for a specific resource type.
    #
    # @option params [required, String] :resource_id
    #   The resource ID for which you want to see a list of tags.
    #
    # @return [Types::ListTagsForResourceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResult#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_type: "Document", # required, accepts Document, ManagedInstance, MaintenanceWindow, Parameter, PatchBaseline
    #     resource_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Shares a Systems Manager document publicly or privately. If you share
    # a document privately, you must specify the AWS user account IDs for
    # those people who can use the document. If you share a document
    # publicly, you must specify *All* as the account ID.
    #
    # @option params [required, String] :name
    #   The name of the document that you want to share.
    #
    # @option params [required, String] :permission_type
    #   The permission type for the document. The permission type can be
    #   *Share*.
    #
    # @option params [Array<String>] :account_ids_to_add
    #   The AWS user accounts that should have access to the document. The
    #   account IDs can either be a group of account IDs or *All*.
    #
    # @option params [Array<String>] :account_ids_to_remove
    #   The AWS user accounts that should no longer have access to the
    #   document. The AWS user account can either be a group of account IDs or
    #   *All*. This action has a higher priority than *AccountIdsToAdd*. If
    #   you specify an account ID to add and the same ID to remove, the system
    #   removes access to the document.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_document_permission({
    #     name: "DocumentName", # required
    #     permission_type: "Share", # required, accepts Share
    #     account_ids_to_add: ["AccountId"],
    #     account_ids_to_remove: ["AccountId"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ModifyDocumentPermission AWS API Documentation
    #
    # @overload modify_document_permission(params = {})
    # @param [Hash] params ({})
    def modify_document_permission(params = {}, options = {})
      req = build_request(:modify_document_permission, params)
      req.send_request(options)
    end

    # Registers a compliance type and other compliance details on a
    # designated resource. This action lets you register custom compliance
    # details with a resource. This call overwrites existing compliance
    # information on the resource, so you must provide a full list of
    # compliance items each time that you send the request.
    #
    # ComplianceType can be one of the following:
    #
    # * ExecutionId: The execution ID when the patch, association, or custom
    #   compliance item was applied.
    #
    # * ExecutionType: Specify patch, association, or Custom:`string`.
    #
    # * ExecutionTime. The time the patch, association, or custom compliance
    #   item was applied to the instance.
    #
    # * Id: The patch, association, or custom compliance ID.
    #
    # * Title: A title.
    #
    # * Status: The status of the compliance item. For example, `approved`
    #   for patches, or `Failed` for associations.
    #
    # * Severity: A patch severity. For example, `critical`.
    #
    # * DocumentName: A SSM document name. For example,
    #   AWS-RunPatchBaseline.
    #
    # * DocumentVersion: An SSM document version number. For example, 4.
    #
    # * Classification: A patch classification. For example, `security
    #   updates`.
    #
    # * PatchBaselineId: A patch baseline ID.
    #
    # * PatchSeverity: A patch severity. For example, `Critical`.
    #
    # * PatchState: A patch state. For example,
    #   `InstancesWithFailedPatches`.
    #
    # * PatchGroup: The name of a patch group.
    #
    # * InstalledTime: The time the association, patch, or custom compliance
    #   item was applied to the resource. Specify the time by using the
    #   following format: yyyy-MM-dd'T'HH:mm:ss'Z'
    #
    # @option params [required, String] :resource_id
    #   Specify an ID for this resource. For a managed instance, this is the
    #   instance ID.
    #
    # @option params [required, String] :resource_type
    #   Specify the type of resource. `ManagedInstance` is currently the only
    #   supported resource type.
    #
    # @option params [required, String] :compliance_type
    #   Specify the compliance type. For example, specify Association (for a
    #   State Manager association), Patch, or Custom:`string`.
    #
    # @option params [required, Types::ComplianceExecutionSummary] :execution_summary
    #   A summary of the call execution that includes an execution ID, the
    #   type of execution (for example, `Command`), and the date/time of the
    #   execution using a datetime object that is saved in the following
    #   format: yyyy-MM-dd'T'HH:mm:ss'Z'.
    #
    # @option params [required, Array<Types::ComplianceItemEntry>] :items
    #   Information about the compliance as defined by the resource type. For
    #   example, for a patch compliance type, `Items` includes information
    #   about the PatchSeverity, Classification, etc.
    #
    # @option params [String] :item_content_hash
    #   MD5 or SHA-256 content hash. The content hash is used to determine if
    #   existing information should be overwritten or ignored. If the content
    #   hashes match, the request to put compliance information is ignored.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_compliance_items({
    #     resource_id: "ComplianceResourceId", # required
    #     resource_type: "ComplianceResourceType", # required
    #     compliance_type: "ComplianceTypeName", # required
    #     execution_summary: { # required
    #       execution_time: Time.now, # required
    #       execution_id: "ComplianceExecutionId",
    #       execution_type: "ComplianceExecutionType",
    #     },
    #     items: [ # required
    #       {
    #         id: "ComplianceItemId",
    #         title: "ComplianceItemTitle",
    #         severity: "CRITICAL", # required, accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #         status: "COMPLIANT", # required, accepts COMPLIANT, NON_COMPLIANT
    #         details: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #       },
    #     ],
    #     item_content_hash: "ComplianceItemContentHash",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutComplianceItems AWS API Documentation
    #
    # @overload put_compliance_items(params = {})
    # @param [Hash] params ({})
    def put_compliance_items(params = {}, options = {})
      req = build_request(:put_compliance_items, params)
      req.send_request(options)
    end

    # Bulk update custom inventory items on one more instance. The request
    # adds an inventory item, if it doesn't already exist, or updates an
    # inventory item, if it does exist.
    #
    # @option params [required, String] :instance_id
    #   One or more instance IDs where you want to add or update inventory
    #   items.
    #
    # @option params [required, Array<Types::InventoryItem>] :items
    #   The inventory items that you want to add or update on instances.
    #
    # @return [Types::PutInventoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutInventoryResult#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_inventory({
    #     instance_id: "InstanceId", # required
    #     items: [ # required
    #       {
    #         type_name: "InventoryItemTypeName", # required
    #         schema_version: "InventoryItemSchemaVersion", # required
    #         capture_time: "InventoryItemCaptureTime", # required
    #         content_hash: "InventoryItemContentHash",
    #         content: [
    #           {
    #             "AttributeName" => "AttributeValue",
    #           },
    #         ],
    #         context: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutInventory AWS API Documentation
    #
    # @overload put_inventory(params = {})
    # @param [Hash] params ({})
    def put_inventory(params = {}, options = {})
      req = build_request(:put_inventory, params)
      req.send_request(options)
    end

    # Add a parameter to the system.
    #
    # @option params [required, String] :name
    #   The fully qualified name of the parameter that you want to add to the
    #   system. The fully qualified name includes the complete hierarchy of
    #   the parameter path and name. For example:
    #   `/Dev/DBServer/MySQL/db-string13`
    #
    #   Naming Constraints:
    #
    #   * Parameter names are case sensitive.
    #
    #   * A parameter name must be unique within an AWS Region
    #
    #   * A parameter name can't be prefixed with "aws" or "ssm"
    #     (case-insensitive).
    #
    #   * Parameter names can include only the following symbols and letters:
    #     `a-zA-Z0-9_.-/`
    #
    #   * A parameter name can't include spaces.
    #
    #   * Parameter hierarchies are limited to a maximum depth of fifteen
    #     levels.
    #
    #   For additional information about valid values for parameter names, see
    #   [Requirements and Constraints for Parameter Names][1] in the *AWS
    #   Systems Manager User Guide*.
    #
    #   <note markdown="1"> The maximum length constraint listed below includes capacity for
    #   additional system attributes that are not part of the name. The
    #   maximum length for the fully qualified parameter name is 1011
    #   characters.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-parameter-name-constraints.html
    #
    # @option params [String] :description
    #   Information about the parameter that you want to add to the system.
    #   Optional but recommended.
    #
    #   Do not enter personally identifiable information in this field.
    #
    # @option params [required, String] :value
    #   The parameter value that you want to add to the system.
    #
    # @option params [required, String] :type
    #   The type of parameter that you want to add to the system.
    #
    #   Items in a `StringList` must be separated by a comma (,). You can't
    #   use other punctuation or special character to escape items in the
    #   list. If you have a parameter value that requires a comma, then use
    #   the `String` data type.
    #
    #   <note markdown="1"> `SecureString` is not currently supported for AWS CloudFormation
    #   templates or in the China Regions.
    #
    #    </note>
    #
    # @option params [String] :key_id
    #   The KMS Key ID that you want to use to encrypt a parameter. Either the
    #   default AWS Key Management Service (AWS KMS) key automatically
    #   assigned to your AWS account or a custom key. Required for parameters
    #   that use the `SecureString` data type.
    #
    #   If you don't specify a key ID, the system uses the default key
    #   associated with your AWS account.
    #
    #   * To use your default AWS KMS key, choose the `SecureString` data
    #     type, and do *not* specify the `Key ID` when you create the
    #     parameter. The system automatically populates `Key ID` with your
    #     default KMS key.
    #
    #   * To use a custom KMS key, choose the `SecureString` data type with
    #     the `Key ID` parameter.
    #
    # @option params [Boolean] :overwrite
    #   Overwrite an existing parameter. If not specified, will default to
    #   "false".
    #
    # @option params [String] :allowed_pattern
    #   A regular expression used to validate the parameter value. For
    #   example, for String types with values restricted to numbers, you can
    #   specify the following: AllowedPattern=^\\d+$
    #
    # @return [Types::PutParameterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutParameterResult#version #version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_parameter({
    #     name: "PSParameterName", # required
    #     description: "ParameterDescription",
    #     value: "PSParameterValue", # required
    #     type: "String", # required, accepts String, StringList, SecureString
    #     key_id: "ParameterKeyId",
    #     overwrite: false,
    #     allowed_pattern: "AllowedPattern",
    #   })
    #
    # @example Response structure
    #
    #   resp.version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/PutParameter AWS API Documentation
    #
    # @overload put_parameter(params = {})
    # @param [Hash] params ({})
    def put_parameter(params = {}, options = {})
      req = build_request(:put_parameter, params)
      req.send_request(options)
    end

    # Defines the default patch baseline.
    #
    # @option params [required, String] :baseline_id
    #   The ID of the patch baseline that should be the default patch
    #   baseline.
    #
    # @return [Types::RegisterDefaultPatchBaselineResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterDefaultPatchBaselineResult#baseline_id #baseline_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_default_patch_baseline({
    #     baseline_id: "BaselineId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.baseline_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterDefaultPatchBaseline AWS API Documentation
    #
    # @overload register_default_patch_baseline(params = {})
    # @param [Hash] params ({})
    def register_default_patch_baseline(params = {}, options = {})
      req = build_request(:register_default_patch_baseline, params)
      req.send_request(options)
    end

    # Registers a patch baseline for a patch group.
    #
    # @option params [required, String] :baseline_id
    #   The ID of the patch baseline to register the patch group with.
    #
    # @option params [required, String] :patch_group
    #   The name of the patch group that should be registered with the patch
    #   baseline.
    #
    # @return [Types::RegisterPatchBaselineForPatchGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterPatchBaselineForPatchGroupResult#baseline_id #baseline_id} => String
    #   * {Types::RegisterPatchBaselineForPatchGroupResult#patch_group #patch_group} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_patch_baseline_for_patch_group({
    #     baseline_id: "BaselineId", # required
    #     patch_group: "PatchGroup", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.baseline_id #=> String
    #   resp.patch_group #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterPatchBaselineForPatchGroup AWS API Documentation
    #
    # @overload register_patch_baseline_for_patch_group(params = {})
    # @param [Hash] params ({})
    def register_patch_baseline_for_patch_group(params = {}, options = {})
      req = build_request(:register_patch_baseline_for_patch_group, params)
      req.send_request(options)
    end

    # Registers a target with a Maintenance Window.
    #
    # @option params [required, String] :window_id
    #   The ID of the Maintenance Window the target should be registered with.
    #
    # @option params [required, String] :resource_type
    #   The type of target being registered with the Maintenance Window.
    #
    # @option params [required, Array<Types::Target>] :targets
    #   The targets (either instances or tags).
    #
    #   Specify instances using the following format:
    #
    #   `Key=InstanceIds,Values=<instance-id-1>,<instance-id-2>`
    #
    #   Specify tags using either of the following formats:
    #
    #   `Key=tag:<tag-key>,Values=<tag-value-1>,<tag-value-2>`
    #
    #   `Key=tag-key,Values=<tag-key-1>,<tag-key-2>`
    #
    # @option params [String] :owner_information
    #   User-provided value that will be included in any CloudWatch events
    #   raised while running tasks for these targets in this Maintenance
    #   Window.
    #
    # @option params [String] :name
    #   An optional name for the target.
    #
    # @option params [String] :description
    #   An optional description for the target.
    #
    # @option params [String] :client_token
    #   User-provided idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::RegisterTargetWithMaintenanceWindowResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterTargetWithMaintenanceWindowResult#window_target_id #window_target_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_target_with_maintenance_window({
    #     window_id: "MaintenanceWindowId", # required
    #     resource_type: "INSTANCE", # required, accepts INSTANCE
    #     targets: [ # required
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"],
    #       },
    #     ],
    #     owner_information: "OwnerInformation",
    #     name: "MaintenanceWindowName",
    #     description: "MaintenanceWindowDescription",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.window_target_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterTargetWithMaintenanceWindow AWS API Documentation
    #
    # @overload register_target_with_maintenance_window(params = {})
    # @param [Hash] params ({})
    def register_target_with_maintenance_window(params = {}, options = {})
      req = build_request(:register_target_with_maintenance_window, params)
      req.send_request(options)
    end

    # Adds a new task to a Maintenance Window.
    #
    # @option params [required, String] :window_id
    #   The ID of the Maintenance Window the task should be added to.
    #
    # @option params [required, Array<Types::Target>] :targets
    #   The targets (either instances or Maintenance Window targets).
    #
    #   Specify instances using the following format:
    #
    #   `Key=InstanceIds,Values=<instance-id-1>,<instance-id-2>`
    #
    #   Specify Maintenance Window targets using the following format:
    #
    #   `Key=<WindowTargetIds>,Values=<window-target-id-1>,<window-target-id-2>`
    #
    # @option params [required, String] :task_arn
    #   The ARN of the task to execute
    #
    # @option params [String] :service_role_arn
    #   The role to assume when running the Maintenance Window task.
    #
    #   If you do not specify a service role ARN, Systems Manager will use
    #   your account's service-linked role for Systems Manager by default. If
    #   no service-linked role for Systems Manager exists in your account, it
    #   will be created when you run `RegisterTaskWithMaintenanceWindow`
    #   without specifying a service role ARN.
    #
    #   For more information, see [Service-Linked Role Permissions for Systems
    #   Manager][1] and [Should I Use a Service-Linked Role or a Custom
    #   Service Role to Run Maintenance Window Tasks? ][2] in the *AWS Systems
    #   Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html#slr-permissions
    #   [2]: http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html#maintenance-window-tasks-service-role
    #
    # @option params [required, String] :task_type
    #   The type of task being registered.
    #
    # @option params [Hash<String,Types::MaintenanceWindowTaskParameterValueExpression>] :task_parameters
    #   The parameters that should be passed to the task when it is executed.
    #
    #   <note markdown="1"> `TaskParameters` has been deprecated. To specify parameters to pass to
    #   a task when it runs, instead use the `Parameters` option in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Systems Manager handles these options for the supported Maintenance
    #   Window task types, see MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #
    # @option params [Types::MaintenanceWindowTaskInvocationParameters] :task_invocation_parameters
    #   The parameters that the task should use during execution. Populate
    #   only the fields that match the task type. All other fields should be
    #   empty.
    #
    # @option params [Integer] :priority
    #   The priority of the task in the Maintenance Window, the lower the
    #   number the higher the priority. Tasks in a Maintenance Window are
    #   scheduled in priority order with tasks that have the same priority
    #   scheduled in parallel.
    #
    # @option params [required, String] :max_concurrency
    #   The maximum number of targets this task can be run for in parallel.
    #
    # @option params [required, String] :max_errors
    #   The maximum number of errors allowed before this task stops being
    #   scheduled.
    #
    # @option params [Types::LoggingInfo] :logging_info
    #   A structure containing information about an Amazon S3 bucket to write
    #   instance-level logs to.
    #
    #   <note markdown="1"> `LoggingInfo` has been deprecated. To specify an S3 bucket to contain
    #   logs, instead use the `OutputS3BucketName` and `OutputS3KeyPrefix`
    #   options in the `TaskInvocationParameters` structure. For information
    #   about how Systems Manager handles these options for the supported
    #   Maintenance Window task types, see
    #   MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #
    # @option params [String] :name
    #   An optional name for the task.
    #
    # @option params [String] :description
    #   An optional description for the task.
    #
    # @option params [String] :client_token
    #   User-provided idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::RegisterTaskWithMaintenanceWindowResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterTaskWithMaintenanceWindowResult#window_task_id #window_task_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_task_with_maintenance_window({
    #     window_id: "MaintenanceWindowId", # required
    #     targets: [ # required
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"],
    #       },
    #     ],
    #     task_arn: "MaintenanceWindowTaskArn", # required
    #     service_role_arn: "ServiceRole",
    #     task_type: "RUN_COMMAND", # required, accepts RUN_COMMAND, AUTOMATION, STEP_FUNCTIONS, LAMBDA
    #     task_parameters: {
    #       "MaintenanceWindowTaskParameterName" => {
    #         values: ["MaintenanceWindowTaskParameterValue"],
    #       },
    #     },
    #     task_invocation_parameters: {
    #       run_command: {
    #         comment: "Comment",
    #         document_hash: "DocumentHash",
    #         document_hash_type: "Sha256", # accepts Sha256, Sha1
    #         notification_config: {
    #           notification_arn: "NotificationArn",
    #           notification_events: ["All"], # accepts All, InProgress, Success, TimedOut, Cancelled, Failed
    #           notification_type: "Command", # accepts Command, Invocation
    #         },
    #         output_s3_bucket_name: "S3BucketName",
    #         output_s3_key_prefix: "S3KeyPrefix",
    #         parameters: {
    #           "ParameterName" => ["ParameterValue"],
    #         },
    #         service_role_arn: "ServiceRole",
    #         timeout_seconds: 1,
    #       },
    #       automation: {
    #         document_version: "DocumentVersion",
    #         parameters: {
    #           "AutomationParameterKey" => ["AutomationParameterValue"],
    #         },
    #       },
    #       step_functions: {
    #         input: "MaintenanceWindowStepFunctionsInput",
    #         name: "MaintenanceWindowStepFunctionsName",
    #       },
    #       lambda: {
    #         client_context: "MaintenanceWindowLambdaClientContext",
    #         qualifier: "MaintenanceWindowLambdaQualifier",
    #         payload: "data",
    #       },
    #     },
    #     priority: 1,
    #     max_concurrency: "MaxConcurrency", # required
    #     max_errors: "MaxErrors", # required
    #     logging_info: {
    #       s3_bucket_name: "S3BucketName", # required
    #       s3_key_prefix: "S3KeyPrefix",
    #       s3_region: "S3Region", # required
    #     },
    #     name: "MaintenanceWindowName",
    #     description: "MaintenanceWindowDescription",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.window_task_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RegisterTaskWithMaintenanceWindow AWS API Documentation
    #
    # @overload register_task_with_maintenance_window(params = {})
    # @param [Hash] params ({})
    def register_task_with_maintenance_window(params = {}, options = {})
      req = build_request(:register_task_with_maintenance_window, params)
      req.send_request(options)
    end

    # Removes all tags from the specified resource.
    #
    # @option params [required, String] :resource_type
    #   The type of resource of which you want to remove a tag.
    #
    #   <note markdown="1"> The ManagedInstance type for this API action is only for on-premises
    #   managed instances. You must specify the the name of the managed
    #   instance in the following format: mi-ID\_number. For example,
    #   mi-1a2b3c4d5e6f.
    #
    #    </note>
    #
    # @option params [required, String] :resource_id
    #   The resource ID for which you want to remove tags. Use the ID of the
    #   resource. Here are some examples:
    #
    #   ManagedInstance: mi-012345abcde
    #
    #   MaintenanceWindow: mw-012345abcde
    #
    #   PatchBaseline: pb-012345abcde
    #
    #   For the Document and Parameter values, use the name of the resource.
    #
    #   <note markdown="1"> The ManagedInstance type for this API action is only for on-premises
    #   managed instances. You must specify the the name of the managed
    #   instance in the following format: mi-ID\_number. For example,
    #   mi-1a2b3c4d5e6f.
    #
    #    </note>
    #
    # @option params [required, Array<String>] :tag_keys
    #   Tag keys that you want to remove from the specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_resource({
    #     resource_type: "Document", # required, accepts Document, ManagedInstance, MaintenanceWindow, Parameter, PatchBaseline
    #     resource_id: "ResourceId", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/RemoveTagsFromResource AWS API Documentation
    #
    # @overload remove_tags_from_resource(params = {})
    # @param [Hash] params ({})
    def remove_tags_from_resource(params = {}, options = {})
      req = build_request(:remove_tags_from_resource, params)
      req.send_request(options)
    end

    # Reconnects a session to an instance after it has been disconnected.
    # Connections can be resumed for disconnected sessions, but not
    # terminated sessions.
    #
    # <note markdown="1"> This command is primarily for use by client machines to automatically
    # reconnect during intermittent network issues. It is not intended for
    # any other use.
    #
    #  </note>
    #
    # @option params [required, String] :session_id
    #   The ID of the disconnected session to resume.
    #
    # @return [Types::ResumeSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResumeSessionResponse#session_id #session_id} => String
    #   * {Types::ResumeSessionResponse#token_value #token_value} => String
    #   * {Types::ResumeSessionResponse#stream_url #stream_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_session({
    #     session_id: "SessionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #   resp.token_value #=> String
    #   resp.stream_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/ResumeSession AWS API Documentation
    #
    # @overload resume_session(params = {})
    # @param [Hash] params ({})
    def resume_session(params = {}, options = {})
      req = build_request(:resume_session, params)
      req.send_request(options)
    end

    # Sends a signal to an Automation execution to change the current
    # behavior or status of the execution.
    #
    # @option params [required, String] :automation_execution_id
    #   The unique identifier for an existing Automation execution that you
    #   want to send the signal to.
    #
    # @option params [required, String] :signal_type
    #   The type of signal. Valid signal types include the following: Approve
    #   and Reject
    #
    # @option params [Hash<String,Array>] :payload
    #   The data sent with the signal. The data schema depends on the type of
    #   signal used in the request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_automation_signal({
    #     automation_execution_id: "AutomationExecutionId", # required
    #     signal_type: "Approve", # required, accepts Approve, Reject, StartStep, StopStep, Resume
    #     payload: {
    #       "AutomationParameterKey" => ["AutomationParameterValue"],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/SendAutomationSignal AWS API Documentation
    #
    # @overload send_automation_signal(params = {})
    # @param [Hash] params ({})
    def send_automation_signal(params = {}, options = {})
      req = build_request(:send_automation_signal, params)
      req.send_request(options)
    end

    # Executes commands on one or more managed instances.
    #
    # @option params [Array<String>] :instance_ids
    #   The instance IDs where the command should execute. You can specify a
    #   maximum of 50 IDs. If you prefer not to list individual instance IDs,
    #   you can instead send commands to a fleet of instances using the
    #   Targets parameter, which accepts EC2 tags. For more information about
    #   how to use Targets, see [Sending Commands to a Fleet][1] in the *AWS
    #   Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html
    #
    # @option params [Array<Types::Target>] :targets
    #   (Optional) An array of search criteria that targets instances using a
    #   Key,Value combination that you specify. Targets is required if you
    #   don't provide one or more instance IDs in the call. For more
    #   information about how to use Targets, see [Sending Commands to a
    #   Fleet][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html
    #
    # @option params [required, String] :document_name
    #   Required. The name of the Systems Manager document to execute. This
    #   can be a public document or a custom document.
    #
    # @option params [String] :document_version
    #   The SSM document version to use in the request. You can specify
    #   $DEFAULT, $LATEST, or a specific version number. If you execute
    #   commands by using the AWS CLI, then you must escape the first two
    #   options by using a backslash. If you specify a version number, then
    #   you don't need to use the backslash. For example:
    #
    #   --document-version "\\$DEFAULT"
    #
    #   --document-version "\\$LATEST"
    #
    #   --document-version "3"
    #
    # @option params [String] :document_hash
    #   The Sha256 or Sha1 hash created by the system when the document was
    #   created.
    #
    #   <note markdown="1"> Sha1 hashes have been deprecated.
    #
    #    </note>
    #
    # @option params [String] :document_hash_type
    #   Sha256 or Sha1.
    #
    #   <note markdown="1"> Sha1 hashes have been deprecated.
    #
    #    </note>
    #
    # @option params [Integer] :timeout_seconds
    #   If this time is reached and the command has not already started
    #   executing, it will not run.
    #
    # @option params [String] :comment
    #   User-specified information about the command, such as a brief
    #   description of what the command should do.
    #
    # @option params [Hash<String,Array>] :parameters
    #   The required and optional parameters specified in the document being
    #   executed.
    #
    # @option params [String] :output_s3_region
    #   (Deprecated) You can no longer specify this parameter. The system
    #   ignores it. Instead, Systems Manager automatically determines the
    #   Amazon S3 bucket region.
    #
    # @option params [String] :output_s3_bucket_name
    #   The name of the S3 bucket where command execution responses should be
    #   stored.
    #
    # @option params [String] :output_s3_key_prefix
    #   The directory structure within the S3 bucket where the responses
    #   should be stored.
    #
    # @option params [String] :max_concurrency
    #   (Optional) The maximum number of instances that are allowed to execute
    #   the command at the same time. You can specify a number such as 10 or a
    #   percentage such as 10%. The default value is 50. For more information
    #   about how to use MaxConcurrency, see [Using Concurrency Controls][1]
    #   in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-velocity
    #
    # @option params [String] :max_errors
    #   The maximum number of errors allowed without the command failing. When
    #   the command fails one more time beyond the value of MaxErrors, the
    #   systems stops sending the command to additional targets. You can
    #   specify a number like 10 or a percentage like 10%. The default value
    #   is 0. For more information about how to use MaxErrors, see [Using
    #   Error Controls][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-maxerrors
    #
    # @option params [String] :service_role_arn
    #   The IAM role that Systems Manager uses to send notifications.
    #
    # @option params [Types::NotificationConfig] :notification_config
    #   Configurations for sending notifications.
    #
    # @option params [Types::CloudWatchOutputConfig] :cloud_watch_output_config
    #   Enables Systems Manager to send Run Command output to Amazon
    #   CloudWatch Logs.
    #
    # @return [Types::SendCommandResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendCommandResult#command #command} => Types::Command
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_command({
    #     instance_ids: ["InstanceId"],
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"],
    #       },
    #     ],
    #     document_name: "DocumentARN", # required
    #     document_version: "DocumentVersion",
    #     document_hash: "DocumentHash",
    #     document_hash_type: "Sha256", # accepts Sha256, Sha1
    #     timeout_seconds: 1,
    #     comment: "Comment",
    #     parameters: {
    #       "ParameterName" => ["ParameterValue"],
    #     },
    #     output_s3_region: "S3Region",
    #     output_s3_bucket_name: "S3BucketName",
    #     output_s3_key_prefix: "S3KeyPrefix",
    #     max_concurrency: "MaxConcurrency",
    #     max_errors: "MaxErrors",
    #     service_role_arn: "ServiceRole",
    #     notification_config: {
    #       notification_arn: "NotificationArn",
    #       notification_events: ["All"], # accepts All, InProgress, Success, TimedOut, Cancelled, Failed
    #       notification_type: "Command", # accepts Command, Invocation
    #     },
    #     cloud_watch_output_config: {
    #       cloud_watch_log_group_name: "CloudWatchLogGroupName",
    #       cloud_watch_output_enabled: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.command.command_id #=> String
    #   resp.command.document_name #=> String
    #   resp.command.document_version #=> String
    #   resp.command.comment #=> String
    #   resp.command.expires_after #=> Time
    #   resp.command.parameters #=> Hash
    #   resp.command.parameters["ParameterName"] #=> Array
    #   resp.command.parameters["ParameterName"][0] #=> String
    #   resp.command.instance_ids #=> Array
    #   resp.command.instance_ids[0] #=> String
    #   resp.command.targets #=> Array
    #   resp.command.targets[0].key #=> String
    #   resp.command.targets[0].values #=> Array
    #   resp.command.targets[0].values[0] #=> String
    #   resp.command.requested_date_time #=> Time
    #   resp.command.status #=> String, one of "Pending", "InProgress", "Success", "Cancelled", "Failed", "TimedOut", "Cancelling"
    #   resp.command.status_details #=> String
    #   resp.command.output_s3_region #=> String
    #   resp.command.output_s3_bucket_name #=> String
    #   resp.command.output_s3_key_prefix #=> String
    #   resp.command.max_concurrency #=> String
    #   resp.command.max_errors #=> String
    #   resp.command.target_count #=> Integer
    #   resp.command.completed_count #=> Integer
    #   resp.command.error_count #=> Integer
    #   resp.command.delivery_timed_out_count #=> Integer
    #   resp.command.service_role #=> String
    #   resp.command.notification_config.notification_arn #=> String
    #   resp.command.notification_config.notification_events #=> Array
    #   resp.command.notification_config.notification_events[0] #=> String, one of "All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"
    #   resp.command.notification_config.notification_type #=> String, one of "Command", "Invocation"
    #   resp.command.cloud_watch_output_config.cloud_watch_log_group_name #=> String
    #   resp.command.cloud_watch_output_config.cloud_watch_output_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/SendCommand AWS API Documentation
    #
    # @overload send_command(params = {})
    # @param [Hash] params ({})
    def send_command(params = {}, options = {})
      req = build_request(:send_command, params)
      req.send_request(options)
    end

    # Use this API action to execute an association immediately and only one
    # time. This action can be helpful when troubleshooting associations.
    #
    # @option params [required, Array<String>] :association_ids
    #   The association IDs that you want to execute immediately and only one
    #   time.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_associations_once({
    #     association_ids: ["AssociationId"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartAssociationsOnce AWS API Documentation
    #
    # @overload start_associations_once(params = {})
    # @param [Hash] params ({})
    def start_associations_once(params = {}, options = {})
      req = build_request(:start_associations_once, params)
      req.send_request(options)
    end

    # Initiates execution of an Automation document.
    #
    # @option params [required, String] :document_name
    #   The name of the Automation document to use for this execution.
    #
    # @option params [String] :document_version
    #   The version of the Automation document to use for this execution.
    #
    # @option params [Hash<String,Array>] :parameters
    #   A key-value map of execution parameters, which match the declared
    #   parameters in the Automation document.
    #
    # @option params [String] :client_token
    #   User-provided idempotency token. The token must be unique, is case
    #   insensitive, enforces the UUID format, and can't be reused.
    #
    # @option params [String] :mode
    #   The execution mode of the automation. Valid modes include the
    #   following: Auto and Interactive. The default mode is Auto.
    #
    # @option params [String] :target_parameter_name
    #   The name of the parameter used as the target resource for the
    #   rate-controlled execution. Required if you specify Targets.
    #
    # @option params [Array<Types::Target>] :targets
    #   A key-value mapping to target resources. Required if you specify
    #   TargetParameterName.
    #
    # @option params [Array<Hash>] :target_maps
    #   A key-value mapping of document parameters to target resources. Both
    #   Targets and TargetMaps cannot be specified together.
    #
    # @option params [String] :max_concurrency
    #   The maximum number of targets allowed to run this task in parallel.
    #   You can specify a number, such as 10, or a percentage, such as 10%.
    #   The default value is 10.
    #
    # @option params [String] :max_errors
    #   The number of errors that are allowed before the system stops running
    #   the automation on additional targets. You can specify either an
    #   absolute number of errors, for example 10, or a percentage of the
    #   target set, for example 10%. If you specify 3, for example, the system
    #   stops running the automation when the fourth error is received. If you
    #   specify 0, then the system stops running the automation on additional
    #   targets after the first error result is returned. If you run an
    #   automation on 50 resources and set max-errors to 10%, then the system
    #   stops running the automation on additional targets when the sixth
    #   error is received.
    #
    #   Executions that are already running an automation when max-errors is
    #   reached are allowed to complete, but some of these executions may fail
    #   as well. If you need to ensure that there won't be more than
    #   max-errors failed executions, set max-concurrency to 1 so the
    #   executions proceed one at a time.
    #
    # @return [Types::StartAutomationExecutionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAutomationExecutionResult#automation_execution_id #automation_execution_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_automation_execution({
    #     document_name: "DocumentARN", # required
    #     document_version: "DocumentVersion",
    #     parameters: {
    #       "AutomationParameterKey" => ["AutomationParameterValue"],
    #     },
    #     client_token: "IdempotencyToken",
    #     mode: "Auto", # accepts Auto, Interactive
    #     target_parameter_name: "AutomationParameterKey",
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"],
    #       },
    #     ],
    #     target_maps: [
    #       {
    #         "TargetMapKey" => ["TargetMapValue"],
    #       },
    #     ],
    #     max_concurrency: "MaxConcurrency",
    #     max_errors: "MaxErrors",
    #   })
    #
    # @example Response structure
    #
    #   resp.automation_execution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartAutomationExecution AWS API Documentation
    #
    # @overload start_automation_execution(params = {})
    # @param [Hash] params ({})
    def start_automation_execution(params = {}, options = {})
      req = build_request(:start_automation_execution, params)
      req.send_request(options)
    end

    # Initiates a connection to a target (for example, an instance) for a
    # Session Manager session. Returns a URL and token that can be used to
    # open a WebSocket connection for sending input and receiving outputs.
    #
    # <note markdown="1"> AWS CLI usage: `start-session` is an interactive command that requires
    # the Session Manager plugin to be installed on the client machine
    # making the call. For information, see [ Install the Session Manager
    # Plugin for the AWS CLI][1] in the *AWS Systems Manager User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html
    #
    # @option params [required, String] :target
    #   The instance to connect to for the session.
    #
    # @option params [String] :document_name
    #   The name of the SSM document to define the parameters and plugin
    #   settings for the session. For example, `SSM-SessionManagerRunShell`.
    #   If no document name is provided, a shell to the instance is launched
    #   by default.
    #
    # @option params [Hash<String,Array>] :parameters
    #   Reserved for future use.
    #
    # @return [Types::StartSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSessionResponse#session_id #session_id} => String
    #   * {Types::StartSessionResponse#token_value #token_value} => String
    #   * {Types::StartSessionResponse#stream_url #stream_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_session({
    #     target: "SessionTarget", # required
    #     document_name: "DocumentARN",
    #     parameters: {
    #       "SessionManagerParameterName" => ["SessionManagerParameterValue"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #   resp.token_value #=> String
    #   resp.stream_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StartSession AWS API Documentation
    #
    # @overload start_session(params = {})
    # @param [Hash] params ({})
    def start_session(params = {}, options = {})
      req = build_request(:start_session, params)
      req.send_request(options)
    end

    # Stop an Automation that is currently executing.
    #
    # @option params [required, String] :automation_execution_id
    #   The execution ID of the Automation to stop.
    #
    # @option params [String] :type
    #   The stop request type. Valid types include the following: Cancel and
    #   Complete. The default type is Cancel.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_automation_execution({
    #     automation_execution_id: "AutomationExecutionId", # required
    #     type: "Complete", # accepts Complete, Cancel
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/StopAutomationExecution AWS API Documentation
    #
    # @overload stop_automation_execution(params = {})
    # @param [Hash] params ({})
    def stop_automation_execution(params = {}, options = {})
      req = build_request(:stop_automation_execution, params)
      req.send_request(options)
    end

    # Permanently ends a session and closes the data connection between the
    # Session Manager client and SSM Agent on the instance. A terminated
    # session cannot be resumed.
    #
    # @option params [required, String] :session_id
    #   The ID of the session to terminate.
    #
    # @return [Types::TerminateSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TerminateSessionResponse#session_id #session_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_session({
    #     session_id: "SessionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/TerminateSession AWS API Documentation
    #
    # @overload terminate_session(params = {})
    # @param [Hash] params ({})
    def terminate_session(params = {}, options = {})
      req = build_request(:terminate_session, params)
      req.send_request(options)
    end

    # Updates an association. You can update the association name and
    # version, the document version, schedule, parameters, and Amazon S3
    # output.
    #
    # @option params [required, String] :association_id
    #   The ID of the association you want to update.
    #
    # @option params [Hash<String,Array>] :parameters
    #   The parameters you want to update for the association. If you create a
    #   parameter using Parameter Store, you can reference the parameter using
    #   \\\{\\\{ssm:parameter-name\\}\\}
    #
    # @option params [String] :document_version
    #   The document version you want update for the association.
    #
    # @option params [String] :schedule_expression
    #   The cron expression used to schedule the association that you want to
    #   update.
    #
    # @option params [Types::InstanceAssociationOutputLocation] :output_location
    #   An Amazon S3 bucket where you want to store the results of this
    #   request.
    #
    # @option params [String] :name
    #   The name of the association document.
    #
    # @option params [Array<Types::Target>] :targets
    #   The targets of the association.
    #
    # @option params [String] :association_name
    #   The name of the association that you want to update.
    #
    # @option params [String] :association_version
    #   This parameter is provided for concurrency control purposes. You must
    #   specify the latest association version in the service. If you want to
    #   ensure that this request succeeds, either specify `$LATEST`, or omit
    #   this parameter.
    #
    # @return [Types::UpdateAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAssociationResult#association_description #association_description} => Types::AssociationDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_association({
    #     association_id: "AssociationId", # required
    #     parameters: {
    #       "ParameterName" => ["ParameterValue"],
    #     },
    #     document_version: "DocumentVersion",
    #     schedule_expression: "ScheduleExpression",
    #     output_location: {
    #       s3_location: {
    #         output_s3_region: "S3Region",
    #         output_s3_bucket_name: "S3BucketName",
    #         output_s3_key_prefix: "S3KeyPrefix",
    #       },
    #     },
    #     name: "DocumentName",
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"],
    #       },
    #     ],
    #     association_name: "AssociationName",
    #     association_version: "AssociationVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.association_description.name #=> String
    #   resp.association_description.instance_id #=> String
    #   resp.association_description.association_version #=> String
    #   resp.association_description.date #=> Time
    #   resp.association_description.last_update_association_date #=> Time
    #   resp.association_description.status.date #=> Time
    #   resp.association_description.status.name #=> String, one of "Pending", "Success", "Failed"
    #   resp.association_description.status.message #=> String
    #   resp.association_description.status.additional_info #=> String
    #   resp.association_description.overview.status #=> String
    #   resp.association_description.overview.detailed_status #=> String
    #   resp.association_description.overview.association_status_aggregated_count #=> Hash
    #   resp.association_description.overview.association_status_aggregated_count["StatusName"] #=> Integer
    #   resp.association_description.document_version #=> String
    #   resp.association_description.parameters #=> Hash
    #   resp.association_description.parameters["ParameterName"] #=> Array
    #   resp.association_description.parameters["ParameterName"][0] #=> String
    #   resp.association_description.association_id #=> String
    #   resp.association_description.targets #=> Array
    #   resp.association_description.targets[0].key #=> String
    #   resp.association_description.targets[0].values #=> Array
    #   resp.association_description.targets[0].values[0] #=> String
    #   resp.association_description.schedule_expression #=> String
    #   resp.association_description.output_location.s3_location.output_s3_region #=> String
    #   resp.association_description.output_location.s3_location.output_s3_bucket_name #=> String
    #   resp.association_description.output_location.s3_location.output_s3_key_prefix #=> String
    #   resp.association_description.last_execution_date #=> Time
    #   resp.association_description.last_successful_execution_date #=> Time
    #   resp.association_description.association_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateAssociation AWS API Documentation
    #
    # @overload update_association(params = {})
    # @param [Hash] params ({})
    def update_association(params = {}, options = {})
      req = build_request(:update_association, params)
      req.send_request(options)
    end

    # Updates the status of the Systems Manager document associated with the
    # specified instance.
    #
    # @option params [required, String] :name
    #   The name of the Systems Manager document.
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance.
    #
    # @option params [required, Types::AssociationStatus] :association_status
    #   The association status.
    #
    # @return [Types::UpdateAssociationStatusResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAssociationStatusResult#association_description #association_description} => Types::AssociationDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_association_status({
    #     name: "DocumentName", # required
    #     instance_id: "InstanceId", # required
    #     association_status: { # required
    #       date: Time.now, # required
    #       name: "Pending", # required, accepts Pending, Success, Failed
    #       message: "StatusMessage", # required
    #       additional_info: "StatusAdditionalInfo",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.association_description.name #=> String
    #   resp.association_description.instance_id #=> String
    #   resp.association_description.association_version #=> String
    #   resp.association_description.date #=> Time
    #   resp.association_description.last_update_association_date #=> Time
    #   resp.association_description.status.date #=> Time
    #   resp.association_description.status.name #=> String, one of "Pending", "Success", "Failed"
    #   resp.association_description.status.message #=> String
    #   resp.association_description.status.additional_info #=> String
    #   resp.association_description.overview.status #=> String
    #   resp.association_description.overview.detailed_status #=> String
    #   resp.association_description.overview.association_status_aggregated_count #=> Hash
    #   resp.association_description.overview.association_status_aggregated_count["StatusName"] #=> Integer
    #   resp.association_description.document_version #=> String
    #   resp.association_description.parameters #=> Hash
    #   resp.association_description.parameters["ParameterName"] #=> Array
    #   resp.association_description.parameters["ParameterName"][0] #=> String
    #   resp.association_description.association_id #=> String
    #   resp.association_description.targets #=> Array
    #   resp.association_description.targets[0].key #=> String
    #   resp.association_description.targets[0].values #=> Array
    #   resp.association_description.targets[0].values[0] #=> String
    #   resp.association_description.schedule_expression #=> String
    #   resp.association_description.output_location.s3_location.output_s3_region #=> String
    #   resp.association_description.output_location.s3_location.output_s3_bucket_name #=> String
    #   resp.association_description.output_location.s3_location.output_s3_key_prefix #=> String
    #   resp.association_description.last_execution_date #=> Time
    #   resp.association_description.last_successful_execution_date #=> Time
    #   resp.association_description.association_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateAssociationStatus AWS API Documentation
    #
    # @overload update_association_status(params = {})
    # @param [Hash] params ({})
    def update_association_status(params = {}, options = {})
      req = build_request(:update_association_status, params)
      req.send_request(options)
    end

    # The document you want to update.
    #
    # @option params [required, String] :content
    #   The content in a document that you want to update.
    #
    # @option params [required, String] :name
    #   The name of the document that you want to update.
    #
    # @option params [String] :document_version
    #   The version of the document that you want to update.
    #
    # @option params [String] :document_format
    #   Specify the document format for the new document version. Systems
    #   Manager supports JSON and YAML documents. JSON is the default format.
    #
    # @option params [String] :target_type
    #   Specify a new target type for the document.
    #
    # @return [Types::UpdateDocumentResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDocumentResult#document_description #document_description} => Types::DocumentDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_document({
    #     content: "DocumentContent", # required
    #     name: "DocumentName", # required
    #     document_version: "DocumentVersion",
    #     document_format: "YAML", # accepts YAML, JSON
    #     target_type: "TargetType",
    #   })
    #
    # @example Response structure
    #
    #   resp.document_description.sha_1 #=> String
    #   resp.document_description.hash #=> String
    #   resp.document_description.hash_type #=> String, one of "Sha256", "Sha1"
    #   resp.document_description.name #=> String
    #   resp.document_description.owner #=> String
    #   resp.document_description.created_date #=> Time
    #   resp.document_description.status #=> String, one of "Creating", "Active", "Updating", "Deleting"
    #   resp.document_description.document_version #=> String
    #   resp.document_description.description #=> String
    #   resp.document_description.parameters #=> Array
    #   resp.document_description.parameters[0].name #=> String
    #   resp.document_description.parameters[0].type #=> String, one of "String", "StringList"
    #   resp.document_description.parameters[0].description #=> String
    #   resp.document_description.parameters[0].default_value #=> String
    #   resp.document_description.platform_types #=> Array
    #   resp.document_description.platform_types[0] #=> String, one of "Windows", "Linux"
    #   resp.document_description.document_type #=> String, one of "Command", "Policy", "Automation", "Session"
    #   resp.document_description.schema_version #=> String
    #   resp.document_description.latest_version #=> String
    #   resp.document_description.default_version #=> String
    #   resp.document_description.document_format #=> String, one of "YAML", "JSON"
    #   resp.document_description.target_type #=> String
    #   resp.document_description.tags #=> Array
    #   resp.document_description.tags[0].key #=> String
    #   resp.document_description.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateDocument AWS API Documentation
    #
    # @overload update_document(params = {})
    # @param [Hash] params ({})
    def update_document(params = {}, options = {})
      req = build_request(:update_document, params)
      req.send_request(options)
    end

    # Set the default version of a document.
    #
    # @option params [required, String] :name
    #   The name of a custom document that you want to set as the default
    #   version.
    #
    # @option params [required, String] :document_version
    #   The version of a custom document that you want to set as the default
    #   version.
    #
    # @return [Types::UpdateDocumentDefaultVersionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDocumentDefaultVersionResult#description #description} => Types::DocumentDefaultVersionDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_document_default_version({
    #     name: "DocumentName", # required
    #     document_version: "DocumentVersionNumber", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.description.name #=> String
    #   resp.description.default_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateDocumentDefaultVersion AWS API Documentation
    #
    # @overload update_document_default_version(params = {})
    # @param [Hash] params ({})
    def update_document_default_version(params = {}, options = {})
      req = build_request(:update_document_default_version, params)
      req.send_request(options)
    end

    # Updates an existing Maintenance Window. Only specified parameters are
    # modified.
    #
    # @option params [required, String] :window_id
    #   The ID of the Maintenance Window to update.
    #
    # @option params [String] :name
    #   The name of the Maintenance Window.
    #
    # @option params [String] :description
    #   An optional description for the update request.
    #
    # @option params [String] :schedule
    #   The schedule of the Maintenance Window in the form of a cron or rate
    #   expression.
    #
    # @option params [Integer] :duration
    #   The duration of the Maintenance Window in hours.
    #
    # @option params [Integer] :cutoff
    #   The number of hours before the end of the Maintenance Window that
    #   Systems Manager stops scheduling new tasks for execution.
    #
    # @option params [Boolean] :allow_unassociated_targets
    #   Whether targets must be registered with the Maintenance Window before
    #   tasks can be defined for those targets.
    #
    # @option params [Boolean] :enabled
    #   Whether the Maintenance Window is enabled.
    #
    # @option params [Boolean] :replace
    #   If True, then all fields that are required by the
    #   CreateMaintenanceWindow action are also required for this API request.
    #   Optional fields that are not specified are set to null.
    #
    # @return [Types::UpdateMaintenanceWindowResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMaintenanceWindowResult#window_id #window_id} => String
    #   * {Types::UpdateMaintenanceWindowResult#name #name} => String
    #   * {Types::UpdateMaintenanceWindowResult#description #description} => String
    #   * {Types::UpdateMaintenanceWindowResult#schedule #schedule} => String
    #   * {Types::UpdateMaintenanceWindowResult#duration #duration} => Integer
    #   * {Types::UpdateMaintenanceWindowResult#cutoff #cutoff} => Integer
    #   * {Types::UpdateMaintenanceWindowResult#allow_unassociated_targets #allow_unassociated_targets} => Boolean
    #   * {Types::UpdateMaintenanceWindowResult#enabled #enabled} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_maintenance_window({
    #     window_id: "MaintenanceWindowId", # required
    #     name: "MaintenanceWindowName",
    #     description: "MaintenanceWindowDescription",
    #     schedule: "MaintenanceWindowSchedule",
    #     duration: 1,
    #     cutoff: 1,
    #     allow_unassociated_targets: false,
    #     enabled: false,
    #     replace: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.window_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.schedule #=> String
    #   resp.duration #=> Integer
    #   resp.cutoff #=> Integer
    #   resp.allow_unassociated_targets #=> Boolean
    #   resp.enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateMaintenanceWindow AWS API Documentation
    #
    # @overload update_maintenance_window(params = {})
    # @param [Hash] params ({})
    def update_maintenance_window(params = {}, options = {})
      req = build_request(:update_maintenance_window, params)
      req.send_request(options)
    end

    # Modifies the target of an existing Maintenance Window. You can't
    # change the target type, but you can change the following:
    #
    # The target from being an ID target to a Tag target, or a Tag target to
    # an ID target.
    #
    # IDs for an ID target.
    #
    # Tags for a Tag target.
    #
    # Owner.
    #
    # Name.
    #
    # Description.
    #
    # If a parameter is null, then the corresponding field is not modified.
    #
    # @option params [required, String] :window_id
    #   The Maintenance Window ID with which to modify the target.
    #
    # @option params [required, String] :window_target_id
    #   The target ID to modify.
    #
    # @option params [Array<Types::Target>] :targets
    #   The targets to add or replace.
    #
    # @option params [String] :owner_information
    #   User-provided value that will be included in any CloudWatch events
    #   raised while running tasks for these targets in this Maintenance
    #   Window.
    #
    # @option params [String] :name
    #   A name for the update.
    #
    # @option params [String] :description
    #   An optional description for the update.
    #
    # @option params [Boolean] :replace
    #   If True, then all fields that are required by the
    #   RegisterTargetWithMaintenanceWindow action are also required for this
    #   API request. Optional fields that are not specified are set to null.
    #
    # @return [Types::UpdateMaintenanceWindowTargetResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMaintenanceWindowTargetResult#window_id #window_id} => String
    #   * {Types::UpdateMaintenanceWindowTargetResult#window_target_id #window_target_id} => String
    #   * {Types::UpdateMaintenanceWindowTargetResult#targets #targets} => Array&lt;Types::Target&gt;
    #   * {Types::UpdateMaintenanceWindowTargetResult#owner_information #owner_information} => String
    #   * {Types::UpdateMaintenanceWindowTargetResult#name #name} => String
    #   * {Types::UpdateMaintenanceWindowTargetResult#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_maintenance_window_target({
    #     window_id: "MaintenanceWindowId", # required
    #     window_target_id: "MaintenanceWindowTargetId", # required
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"],
    #       },
    #     ],
    #     owner_information: "OwnerInformation",
    #     name: "MaintenanceWindowName",
    #     description: "MaintenanceWindowDescription",
    #     replace: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.window_id #=> String
    #   resp.window_target_id #=> String
    #   resp.targets #=> Array
    #   resp.targets[0].key #=> String
    #   resp.targets[0].values #=> Array
    #   resp.targets[0].values[0] #=> String
    #   resp.owner_information #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateMaintenanceWindowTarget AWS API Documentation
    #
    # @overload update_maintenance_window_target(params = {})
    # @param [Hash] params ({})
    def update_maintenance_window_target(params = {}, options = {})
      req = build_request(:update_maintenance_window_target, params)
      req.send_request(options)
    end

    # Modifies a task assigned to a Maintenance Window. You can't change
    # the task type, but you can change the following values:
    #
    # * TaskARN. For example, you can change a RUN\_COMMAND task from
    #   AWS-RunPowerShellScript to AWS-RunShellScript.
    #
    # * ServiceRoleArn
    #
    # * TaskInvocationParameters
    #
    # * Priority
    #
    # * MaxConcurrency
    #
    # * MaxErrors
    #
    # If a parameter is null, then the corresponding field is not modified.
    # Also, if you set Replace to true, then all fields required by the
    # RegisterTaskWithMaintenanceWindow action are required for this
    # request. Optional fields that aren't specified are set to null.
    #
    # @option params [required, String] :window_id
    #   The Maintenance Window ID that contains the task to modify.
    #
    # @option params [required, String] :window_task_id
    #   The task ID to modify.
    #
    # @option params [Array<Types::Target>] :targets
    #   The targets (either instances or tags) to modify. Instances are
    #   specified using Key=instanceids,Values=instanceID\_1,instanceID\_2.
    #   Tags are specified using Key=tag\_name,Values=tag\_value.
    #
    # @option params [String] :task_arn
    #   The task ARN to modify.
    #
    # @option params [String] :service_role_arn
    #   The IAM service role ARN to modify. The system assumes this role
    #   during task execution.
    #
    #   If you do not specify a service role ARN, Systems Manager will use
    #   your account's service-linked role for Systems Manager by default. If
    #   no service-linked role for Systems Manager exists in your account, it
    #   will be created when you run `RegisterTaskWithMaintenanceWindow`
    #   without specifying a service role ARN.
    #
    #   For more information, see [Service-Linked Role Permissions for Systems
    #   Manager][1] and [Should I Use a Service-Linked Role or a Custom
    #   Service Role to Run Maintenance Window Tasks? ][2] in the *AWS Systems
    #   Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/using-service-linked-roles.html#slr-permissions
    #   [2]: http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html#maintenance-window-tasks-service-role
    #
    # @option params [Hash<String,Types::MaintenanceWindowTaskParameterValueExpression>] :task_parameters
    #   The parameters to modify.
    #
    #   <note markdown="1"> `TaskParameters` has been deprecated. To specify parameters to pass to
    #   a task when it runs, instead use the `Parameters` option in the
    #   `TaskInvocationParameters` structure. For information about how
    #   Systems Manager handles these options for the supported Maintenance
    #   Window task types, see MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #
    #   The map has the following format:
    #
    #   Key: string, between 1 and 255 characters
    #
    #   Value: an array of strings, each string is between 1 and 255
    #   characters
    #
    # @option params [Types::MaintenanceWindowTaskInvocationParameters] :task_invocation_parameters
    #   The parameters that the task should use during execution. Populate
    #   only the fields that match the task type. All other fields should be
    #   empty.
    #
    # @option params [Integer] :priority
    #   The new task priority to specify. The lower the number, the higher the
    #   priority. Tasks that have the same priority are scheduled in parallel.
    #
    # @option params [String] :max_concurrency
    #   The new `MaxConcurrency` value you want to specify. `MaxConcurrency`
    #   is the number of targets that are allowed to run this task in
    #   parallel.
    #
    # @option params [String] :max_errors
    #   The new `MaxErrors` value to specify. `MaxErrors` is the maximum
    #   number of errors that are allowed before the task stops being
    #   scheduled.
    #
    # @option params [Types::LoggingInfo] :logging_info
    #   The new logging location in Amazon S3 to specify.
    #
    #   <note markdown="1"> `LoggingInfo` has been deprecated. To specify an S3 bucket to contain
    #   logs, instead use the `OutputS3BucketName` and `OutputS3KeyPrefix`
    #   options in the `TaskInvocationParameters` structure. For information
    #   about how Systems Manager handles these options for the supported
    #   Maintenance Window task types, see
    #   MaintenanceWindowTaskInvocationParameters.
    #
    #    </note>
    #
    # @option params [String] :name
    #   The new task name to specify.
    #
    # @option params [String] :description
    #   The new task description to specify.
    #
    # @option params [Boolean] :replace
    #   If True, then all fields that are required by the
    #   RegisterTaskWithMaintenanceWndow action are also required for this API
    #   request. Optional fields that are not specified are set to null.
    #
    # @return [Types::UpdateMaintenanceWindowTaskResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMaintenanceWindowTaskResult#window_id #window_id} => String
    #   * {Types::UpdateMaintenanceWindowTaskResult#window_task_id #window_task_id} => String
    #   * {Types::UpdateMaintenanceWindowTaskResult#targets #targets} => Array&lt;Types::Target&gt;
    #   * {Types::UpdateMaintenanceWindowTaskResult#task_arn #task_arn} => String
    #   * {Types::UpdateMaintenanceWindowTaskResult#service_role_arn #service_role_arn} => String
    #   * {Types::UpdateMaintenanceWindowTaskResult#task_parameters #task_parameters} => Hash&lt;String,Types::MaintenanceWindowTaskParameterValueExpression&gt;
    #   * {Types::UpdateMaintenanceWindowTaskResult#task_invocation_parameters #task_invocation_parameters} => Types::MaintenanceWindowTaskInvocationParameters
    #   * {Types::UpdateMaintenanceWindowTaskResult#priority #priority} => Integer
    #   * {Types::UpdateMaintenanceWindowTaskResult#max_concurrency #max_concurrency} => String
    #   * {Types::UpdateMaintenanceWindowTaskResult#max_errors #max_errors} => String
    #   * {Types::UpdateMaintenanceWindowTaskResult#logging_info #logging_info} => Types::LoggingInfo
    #   * {Types::UpdateMaintenanceWindowTaskResult#name #name} => String
    #   * {Types::UpdateMaintenanceWindowTaskResult#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_maintenance_window_task({
    #     window_id: "MaintenanceWindowId", # required
    #     window_task_id: "MaintenanceWindowTaskId", # required
    #     targets: [
    #       {
    #         key: "TargetKey",
    #         values: ["TargetValue"],
    #       },
    #     ],
    #     task_arn: "MaintenanceWindowTaskArn",
    #     service_role_arn: "ServiceRole",
    #     task_parameters: {
    #       "MaintenanceWindowTaskParameterName" => {
    #         values: ["MaintenanceWindowTaskParameterValue"],
    #       },
    #     },
    #     task_invocation_parameters: {
    #       run_command: {
    #         comment: "Comment",
    #         document_hash: "DocumentHash",
    #         document_hash_type: "Sha256", # accepts Sha256, Sha1
    #         notification_config: {
    #           notification_arn: "NotificationArn",
    #           notification_events: ["All"], # accepts All, InProgress, Success, TimedOut, Cancelled, Failed
    #           notification_type: "Command", # accepts Command, Invocation
    #         },
    #         output_s3_bucket_name: "S3BucketName",
    #         output_s3_key_prefix: "S3KeyPrefix",
    #         parameters: {
    #           "ParameterName" => ["ParameterValue"],
    #         },
    #         service_role_arn: "ServiceRole",
    #         timeout_seconds: 1,
    #       },
    #       automation: {
    #         document_version: "DocumentVersion",
    #         parameters: {
    #           "AutomationParameterKey" => ["AutomationParameterValue"],
    #         },
    #       },
    #       step_functions: {
    #         input: "MaintenanceWindowStepFunctionsInput",
    #         name: "MaintenanceWindowStepFunctionsName",
    #       },
    #       lambda: {
    #         client_context: "MaintenanceWindowLambdaClientContext",
    #         qualifier: "MaintenanceWindowLambdaQualifier",
    #         payload: "data",
    #       },
    #     },
    #     priority: 1,
    #     max_concurrency: "MaxConcurrency",
    #     max_errors: "MaxErrors",
    #     logging_info: {
    #       s3_bucket_name: "S3BucketName", # required
    #       s3_key_prefix: "S3KeyPrefix",
    #       s3_region: "S3Region", # required
    #     },
    #     name: "MaintenanceWindowName",
    #     description: "MaintenanceWindowDescription",
    #     replace: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.window_id #=> String
    #   resp.window_task_id #=> String
    #   resp.targets #=> Array
    #   resp.targets[0].key #=> String
    #   resp.targets[0].values #=> Array
    #   resp.targets[0].values[0] #=> String
    #   resp.task_arn #=> String
    #   resp.service_role_arn #=> String
    #   resp.task_parameters #=> Hash
    #   resp.task_parameters["MaintenanceWindowTaskParameterName"].values #=> Array
    #   resp.task_parameters["MaintenanceWindowTaskParameterName"].values[0] #=> String
    #   resp.task_invocation_parameters.run_command.comment #=> String
    #   resp.task_invocation_parameters.run_command.document_hash #=> String
    #   resp.task_invocation_parameters.run_command.document_hash_type #=> String, one of "Sha256", "Sha1"
    #   resp.task_invocation_parameters.run_command.notification_config.notification_arn #=> String
    #   resp.task_invocation_parameters.run_command.notification_config.notification_events #=> Array
    #   resp.task_invocation_parameters.run_command.notification_config.notification_events[0] #=> String, one of "All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"
    #   resp.task_invocation_parameters.run_command.notification_config.notification_type #=> String, one of "Command", "Invocation"
    #   resp.task_invocation_parameters.run_command.output_s3_bucket_name #=> String
    #   resp.task_invocation_parameters.run_command.output_s3_key_prefix #=> String
    #   resp.task_invocation_parameters.run_command.parameters #=> Hash
    #   resp.task_invocation_parameters.run_command.parameters["ParameterName"] #=> Array
    #   resp.task_invocation_parameters.run_command.parameters["ParameterName"][0] #=> String
    #   resp.task_invocation_parameters.run_command.service_role_arn #=> String
    #   resp.task_invocation_parameters.run_command.timeout_seconds #=> Integer
    #   resp.task_invocation_parameters.automation.document_version #=> String
    #   resp.task_invocation_parameters.automation.parameters #=> Hash
    #   resp.task_invocation_parameters.automation.parameters["AutomationParameterKey"] #=> Array
    #   resp.task_invocation_parameters.automation.parameters["AutomationParameterKey"][0] #=> String
    #   resp.task_invocation_parameters.step_functions.input #=> String
    #   resp.task_invocation_parameters.step_functions.name #=> String
    #   resp.task_invocation_parameters.lambda.client_context #=> String
    #   resp.task_invocation_parameters.lambda.qualifier #=> String
    #   resp.task_invocation_parameters.lambda.payload #=> String
    #   resp.priority #=> Integer
    #   resp.max_concurrency #=> String
    #   resp.max_errors #=> String
    #   resp.logging_info.s3_bucket_name #=> String
    #   resp.logging_info.s3_key_prefix #=> String
    #   resp.logging_info.s3_region #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateMaintenanceWindowTask AWS API Documentation
    #
    # @overload update_maintenance_window_task(params = {})
    # @param [Hash] params ({})
    def update_maintenance_window_task(params = {}, options = {})
      req = build_request(:update_maintenance_window_task, params)
      req.send_request(options)
    end

    # Assigns or changes an Amazon Identity and Access Management (IAM) role
    # to the managed instance.
    #
    # @option params [required, String] :instance_id
    #   The ID of the managed instance where you want to update the role.
    #
    # @option params [required, String] :iam_role
    #   The IAM role you want to assign or change.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_managed_instance_role({
    #     instance_id: "ManagedInstanceId", # required
    #     iam_role: "IamRole", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdateManagedInstanceRole AWS API Documentation
    #
    # @overload update_managed_instance_role(params = {})
    # @param [Hash] params ({})
    def update_managed_instance_role(params = {}, options = {})
      req = build_request(:update_managed_instance_role, params)
      req.send_request(options)
    end

    # Modifies an existing patch baseline. Fields not specified in the
    # request are left unchanged.
    #
    # <note markdown="1"> For information about valid key and value pairs in `PatchFilters` for
    # each supported operating system type, see [PatchFilter][1].
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/systems-manager/latest/APIReference/API_PatchFilter.html
    #
    # @option params [required, String] :baseline_id
    #   The ID of the patch baseline to update.
    #
    # @option params [String] :name
    #   The name of the patch baseline.
    #
    # @option params [Types::PatchFilterGroup] :global_filters
    #   A set of global filters used to exclude patches from the baseline.
    #
    # @option params [Types::PatchRuleGroup] :approval_rules
    #   A set of rules used to include patches in the baseline.
    #
    # @option params [Array<String>] :approved_patches
    #   A list of explicitly approved patches for the baseline.
    #
    #   For information about accepted formats for lists of approved patches
    #   and rejected patches, see [Package Name Formats for Approved and
    #   Rejected Patch Lists][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html
    #
    # @option params [String] :approved_patches_compliance_level
    #   Assigns a new compliance severity level to an existing patch baseline.
    #
    # @option params [Boolean] :approved_patches_enable_non_security
    #   Indicates whether the list of approved patches includes non-security
    #   updates that should be applied to the instances. The default value is
    #   'false'. Applies to Linux instances only.
    #
    # @option params [Array<String>] :rejected_patches
    #   A list of explicitly rejected patches for the baseline.
    #
    #   For information about accepted formats for lists of approved patches
    #   and rejected patches, see [Package Name Formats for Approved and
    #   Rejected Patch Lists][1] in the *AWS Systems Manager User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html
    #
    # @option params [String] :description
    #   A description of the patch baseline.
    #
    # @option params [Array<Types::PatchSource>] :sources
    #   Information about the patches to use to update the instances,
    #   including target operating systems and source repositories. Applies to
    #   Linux instances only.
    #
    # @option params [Boolean] :replace
    #   If True, then all fields that are required by the CreatePatchBaseline
    #   action are also required for this API request. Optional fields that
    #   are not specified are set to null.
    #
    # @return [Types::UpdatePatchBaselineResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePatchBaselineResult#baseline_id #baseline_id} => String
    #   * {Types::UpdatePatchBaselineResult#name #name} => String
    #   * {Types::UpdatePatchBaselineResult#operating_system #operating_system} => String
    #   * {Types::UpdatePatchBaselineResult#global_filters #global_filters} => Types::PatchFilterGroup
    #   * {Types::UpdatePatchBaselineResult#approval_rules #approval_rules} => Types::PatchRuleGroup
    #   * {Types::UpdatePatchBaselineResult#approved_patches #approved_patches} => Array&lt;String&gt;
    #   * {Types::UpdatePatchBaselineResult#approved_patches_compliance_level #approved_patches_compliance_level} => String
    #   * {Types::UpdatePatchBaselineResult#approved_patches_enable_non_security #approved_patches_enable_non_security} => Boolean
    #   * {Types::UpdatePatchBaselineResult#rejected_patches #rejected_patches} => Array&lt;String&gt;
    #   * {Types::UpdatePatchBaselineResult#created_date #created_date} => Time
    #   * {Types::UpdatePatchBaselineResult#modified_date #modified_date} => Time
    #   * {Types::UpdatePatchBaselineResult#description #description} => String
    #   * {Types::UpdatePatchBaselineResult#sources #sources} => Array&lt;Types::PatchSource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_patch_baseline({
    #     baseline_id: "BaselineId", # required
    #     name: "BaselineName",
    #     global_filters: {
    #       patch_filters: [ # required
    #         {
    #           key: "PRODUCT", # required, accepts PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
    #           values: ["PatchFilterValue"], # required
    #         },
    #       ],
    #     },
    #     approval_rules: {
    #       patch_rules: [ # required
    #         {
    #           patch_filter_group: { # required
    #             patch_filters: [ # required
    #               {
    #                 key: "PRODUCT", # required, accepts PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID, SECTION, PRIORITY, SEVERITY
    #                 values: ["PatchFilterValue"], # required
    #               },
    #             ],
    #           },
    #           compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #           approve_after_days: 1, # required
    #           enable_non_security: false,
    #         },
    #       ],
    #     },
    #     approved_patches: ["PatchId"],
    #     approved_patches_compliance_level: "CRITICAL", # accepts CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
    #     approved_patches_enable_non_security: false,
    #     rejected_patches: ["PatchId"],
    #     description: "BaselineDescription",
    #     sources: [
    #       {
    #         name: "PatchSourceName", # required
    #         products: ["PatchSourceProduct"], # required
    #         configuration: "PatchSourceConfiguration", # required
    #       },
    #     ],
    #     replace: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.baseline_id #=> String
    #   resp.name #=> String
    #   resp.operating_system #=> String, one of "WINDOWS", "AMAZON_LINUX", "AMAZON_LINUX_2", "UBUNTU", "REDHAT_ENTERPRISE_LINUX", "SUSE", "CENTOS"
    #   resp.global_filters.patch_filters #=> Array
    #   resp.global_filters.patch_filters[0].key #=> String, one of "PRODUCT", "CLASSIFICATION", "MSRC_SEVERITY", "PATCH_ID", "SECTION", "PRIORITY", "SEVERITY"
    #   resp.global_filters.patch_filters[0].values #=> Array
    #   resp.global_filters.patch_filters[0].values[0] #=> String
    #   resp.approval_rules.patch_rules #=> Array
    #   resp.approval_rules.patch_rules[0].patch_filter_group.patch_filters #=> Array
    #   resp.approval_rules.patch_rules[0].patch_filter_group.patch_filters[0].key #=> String, one of "PRODUCT", "CLASSIFICATION", "MSRC_SEVERITY", "PATCH_ID", "SECTION", "PRIORITY", "SEVERITY"
    #   resp.approval_rules.patch_rules[0].patch_filter_group.patch_filters[0].values #=> Array
    #   resp.approval_rules.patch_rules[0].patch_filter_group.patch_filters[0].values[0] #=> String
    #   resp.approval_rules.patch_rules[0].compliance_level #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"
    #   resp.approval_rules.patch_rules[0].approve_after_days #=> Integer
    #   resp.approval_rules.patch_rules[0].enable_non_security #=> Boolean
    #   resp.approved_patches #=> Array
    #   resp.approved_patches[0] #=> String
    #   resp.approved_patches_compliance_level #=> String, one of "CRITICAL", "HIGH", "MEDIUM", "LOW", "INFORMATIONAL", "UNSPECIFIED"
    #   resp.approved_patches_enable_non_security #=> Boolean
    #   resp.rejected_patches #=> Array
    #   resp.rejected_patches[0] #=> String
    #   resp.created_date #=> Time
    #   resp.modified_date #=> Time
    #   resp.description #=> String
    #   resp.sources #=> Array
    #   resp.sources[0].name #=> String
    #   resp.sources[0].products #=> Array
    #   resp.sources[0].products[0] #=> String
    #   resp.sources[0].configuration #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ssm-2014-11-06/UpdatePatchBaseline AWS API Documentation
    #
    # @overload update_patch_baseline(params = {})
    # @param [Hash] params ({})
    def update_patch_baseline(params = {}, options = {})
      req = build_request(:update_patch_baseline, params)
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
      context[:gem_name] = 'aws-sdk-ssm'
      context[:gem_version] = '1.26.0'
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
