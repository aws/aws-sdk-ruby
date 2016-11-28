# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:ssm)

module Aws
  module SSM
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
      # @option options [String] :access_key_id
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      # @option options [String] :endpoint
      #   The client endpoint is normally constructed from the `:region`
      #   option. You should only configure an `:endpoint` when connecting
      #   to test endpoints. This should be avalid HTTP(S) URI.
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      # @option options [String] :profile ("default")
      #   Used when loading credentials from the shared credentials file
      #   at HOME/.aws/credentials.  When not specified, 'default' is used.
      # @option options [Integer] :retry_limit (3)
      #   The maximum number of times to retry failed requests.  Only
      #   ~ 500 level server errors and certain ~ 400 level client errors
      #   are retried.  Generally, these are throttling errors, data
      #   checksum errors, networking errors, timeout errors and auth
      #   errors from expired credentials.
      # @option options [String] :secret_access_key
      # @option options [String] :session_token
      # @option options [Boolean] :simple_json (false)
      #   Disables request parameter conversion, validation, and formatting.
      #   Also disable response data type conversions. This option is useful
      #   when you want to ensure the highest level of performance by
      #   avoiding overhead of walking request parameters and response data
      #   structures.
      #
      #   When `:simple_json` is enabled, the request parameters hash must
      #   be formatted exactly as the DynamoDB API expects.
      # @option options [Boolean] :stub_responses (false)
      #   Causes the client to return stubbed responses. By default
      #   fake responses are generated and returned. You can specify
      #   the response data to return or errors to raise by calling
      #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
      #
      #   ** Please note ** When response stubbing is enabled, no HTTP
      #   requests are made, and retries are disabled.
      # @option options [Boolean] :validate_params (true)
      #   When `true`, request parameters are validated before
      #   sending the request.
      def initialize(*args)
        super
      end

      # @!group API Operations

      # Adds or overwrites one or more tags for the specified resource. Tags
      # are metadata that you assign to your managed instances. Tags enable
      # you to categorize your managed instances in different ways, for
      # example, by purpose, owner, or environment. Each tag consists of a key
      # and an optional value, both of which you define. For example, you
      # could define a set of tags for your account's managed instances that
      # helps you track each instance's owner and stack level. For example:
      # Key=Owner and Value=DbAdmin, SysAdmin, or Dev. Or Key=Stack and
      # Value=Production, Pre-Production, or Test. Each resource can have a
      # maximum of 10 tags.
      #
      # We recommend that you devise a set of tag keys that meets your needs
      # for each resource type. Using a consistent set of tag keys makes it
      # easier for you to manage your resources. You can search and filter the
      # resources based on the tags you add. Tags don't have any semantic
      # meaning to Amazon EC2 and are interpreted strictly as a string of
      # characters.
      #
      # For more information about tags, see [Tagging Your Amazon EC2
      # Resources][1] in the Amazon EC2 User Guide.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html
      # @option params [required, String] :resource_type
      #   Specifies the type of resource you are tagging.
      # @option params [required, String] :resource_id
      #   The resource ID you want to tag.
      # @option params [required, Array<Types::Tag>] :tags
      #   One or more tags. The value parameter is required, but if you don't
      #   want the tag to have a value, specify the parameter with no value, and
      #   we set the value to an empty string.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.add_tags_to_resource({
      #     resource_type: "ManagedInstance", # required, accepts ManagedInstance
      #     resource_id: "ResourceId", # required
      #     tags: [ # required
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue", # required
      #       },
      #     ],
      #   })
      # @overload add_tags_to_resource(params = {})
      # @param [Hash] params ({})
      def add_tags_to_resource(params = {}, options = {})
        req = build_request(:add_tags_to_resource, params)
        req.send_request(options)
      end

      # Attempts to cancel the command specified by the Command ID. There is
      # no guarantee that the command will be terminated and the underlying
      # process stopped.
      # @option params [required, String] :command_id
      #   The ID of the command you want to cancel.
      # @option params [Array<String>] :instance_ids
      #   (Optional) A list of instance IDs on which you want to cancel the
      #   command. If not provided, the command is canceled on every instance on
      #   which it was requested.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.cancel_command({
      #     command_id: "CommandId", # required
      #     instance_ids: ["InstanceId"],
      #   })
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
      # activations, see [Setting Up Managed Instances (Linux)][1] or [Setting
      # Up Managed Instances (Windows)][2] in the Amazon EC2 User Guide.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/managed-instances.html
      # [2]: http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/managed-instances.html
      # @option params [String] :description
      #   A user-defined description of the resource that you want to register
      #   with Amazon EC2.
      # @option params [String] :default_instance_name
      #   The name of the registered, managed instance as it will appear in the
      #   Amazon EC2 console or when you use the AWS command line tools to list
      #   EC2 resources.
      # @option params [required, String] :iam_role
      #   The Amazon Identity and Access Management (IAM) role that you want to
      #   assign to the managed instance.
      # @option params [Integer] :registration_limit
      #   Specify the maximum number of managed instances you want to register.
      #   The default value is 1 instance.
      # @option params [Time,DateTime,Date,Integer,String] :expiration_date
      #   The date by which this activation request should expire. The default
      #   value is 24 hours.
      # @return [Types::CreateActivationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateActivationResult#activation_id #ActivationId} => String
      #   * {Types::CreateActivationResult#activation_code #ActivationCode} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_activation({
      #     description: "ActivationDescription",
      #     default_instance_name: "DefaultInstanceName",
      #     iam_role: "IamRole", # required
      #     registration_limit: 1,
      #     expiration_date: Time.now,
      #   })
      #
      # @example Response structure
      #   resp.activation_id #=> String
      #   resp.activation_code #=> String
      # @overload create_activation(params = {})
      # @param [Hash] params ({})
      def create_activation(params = {}, options = {})
        req = build_request(:create_activation, params)
        req.send_request(options)
      end

      # Associates the specified SSM document with the specified instance.
      #
      # When you associate an SSM document with an instance, the configuration
      # agent on the instance (SSM agent for Linux and EC2Config service for
      # Windows) processes the document and configures the instance as
      # specified.
      #
      # If you associate a document with an instance that already has an
      # associated document, the system throws the AssociationAlreadyExists
      # exception.
      # @option params [required, String] :name
      #   The name of the SSM document.
      # @option params [required, String] :instance_id
      #   The instance ID.
      # @option params [Hash<String,Array>] :parameters
      #   The parameters for the documents runtime configuration.
      # @return [Types::CreateAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateAssociationResult#association_description #AssociationDescription} => Types::AssociationDescription
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_association({
      #     name: "DocumentName", # required
      #     instance_id: "InstanceId", # required
      #     parameters: {
      #       "ParameterName" => ["ParameterValue"],
      #     },
      #   })
      #
      # @example Response structure
      #   resp.association_description.name #=> String
      #   resp.association_description.instance_id #=> String
      #   resp.association_description.date #=> Time
      #   resp.association_description.status.date #=> Time
      #   resp.association_description.status.name #=> String, one of "Pending", "Success", "Failed"
      #   resp.association_description.status.message #=> String
      #   resp.association_description.status.additional_info #=> String
      #   resp.association_description.parameters #=> Hash
      #   resp.association_description.parameters["ParameterName"] #=> Array
      #   resp.association_description.parameters["ParameterName"][0] #=> String
      # @overload create_association(params = {})
      # @param [Hash] params ({})
      def create_association(params = {}, options = {})
        req = build_request(:create_association, params)
        req.send_request(options)
      end

      # Associates the specified SSM document with the specified instances.
      #
      # When you associate an SSM document with an instance, the configuration
      # agent on the instance (SSM agent for Linux and EC2Config service for
      # Windows) processes the document and configures the instance as
      # specified.
      #
      # If you associate a document with an instance that already has an
      # associated document, the system throws the AssociationAlreadyExists
      # exception.
      # @option params [required, Array<Types::CreateAssociationBatchRequestEntry>] :entries
      #   One or more associations.
      # @return [Types::CreateAssociationBatchResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateAssociationBatchResult#successful #Successful} => Array&lt;Types::AssociationDescription&gt;
      #   * {Types::CreateAssociationBatchResult#failed #Failed} => Array&lt;Types::FailedCreateAssociation&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_association_batch({
      #     entries: [ # required
      #       {
      #         name: "DocumentName",
      #         instance_id: "InstanceId",
      #         parameters: {
      #           "ParameterName" => ["ParameterValue"],
      #         },
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.successful #=> Array
      #   resp.successful[0].name #=> String
      #   resp.successful[0].instance_id #=> String
      #   resp.successful[0].date #=> Time
      #   resp.successful[0].status.date #=> Time
      #   resp.successful[0].status.name #=> String, one of "Pending", "Success", "Failed"
      #   resp.successful[0].status.message #=> String
      #   resp.successful[0].status.additional_info #=> String
      #   resp.successful[0].parameters #=> Hash
      #   resp.successful[0].parameters["ParameterName"] #=> Array
      #   resp.successful[0].parameters["ParameterName"][0] #=> String
      #   resp.failed #=> Array
      #   resp.failed[0].entry.name #=> String
      #   resp.failed[0].entry.instance_id #=> String
      #   resp.failed[0].entry.parameters #=> Hash
      #   resp.failed[0].entry.parameters["ParameterName"] #=> Array
      #   resp.failed[0].entry.parameters["ParameterName"][0] #=> String
      #   resp.failed[0].message #=> String
      #   resp.failed[0].fault #=> String, one of "Client", "Server", "Unknown"
      # @overload create_association_batch(params = {})
      # @param [Hash] params ({})
      def create_association_batch(params = {}, options = {})
        req = build_request(:create_association_batch, params)
        req.send_request(options)
      end

      # Creates an SSM document.
      #
      # After you create an SSM document, you can use CreateAssociation to
      # associate it with one or more running instances.
      # @option params [required, String] :content
      #   A valid JSON string.
      # @option params [required, String] :name
      #   A name for the SSM document.
      # @return [Types::CreateDocumentResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateDocumentResult#document_description #DocumentDescription} => Types::DocumentDescription
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_document({
      #     content: "DocumentContent", # required
      #     name: "DocumentName", # required
      #   })
      #
      # @example Response structure
      #   resp.document_description.sha_1 #=> String
      #   resp.document_description.hash #=> String
      #   resp.document_description.hash_type #=> String, one of "Sha256", "Sha1"
      #   resp.document_description.name #=> String
      #   resp.document_description.owner #=> String
      #   resp.document_description.created_date #=> Time
      #   resp.document_description.status #=> String, one of "Creating", "Active", "Deleting"
      #   resp.document_description.description #=> String
      #   resp.document_description.parameters #=> Array
      #   resp.document_description.parameters[0].name #=> String
      #   resp.document_description.parameters[0].type #=> String, one of "String", "StringList"
      #   resp.document_description.parameters[0].description #=> String
      #   resp.document_description.parameters[0].default_value #=> String
      #   resp.document_description.platform_types #=> Array
      #   resp.document_description.platform_types[0] #=> String, one of "Windows", "Linux"
      # @overload create_document(params = {})
      # @param [Hash] params ({})
      def create_document(params = {}, options = {})
        req = build_request(:create_document, params)
        req.send_request(options)
      end

      # Deletes an activation. You are not required to delete an activation.
      # If you delete an activation, you can no longer use it to register
      # additional managed instances. Deleting an activation does not
      # de-register managed instances. You must manually de-register managed
      # instances.
      # @option params [required, String] :activation_id
      #   The ID of the activation that you want to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_activation({
      #     activation_id: "ActivationId", # required
      #   })
      # @overload delete_activation(params = {})
      # @param [Hash] params ({})
      def delete_activation(params = {}, options = {})
        req = build_request(:delete_activation, params)
        req.send_request(options)
      end

      # Disassociates the specified SSM document from the specified instance.
      #
      # When you disassociate an SSM document from an instance, it does not
      # change the configuration of the instance. To change the configuration
      # state of an instance after you disassociate a document, you must
      # create a new document with the desired configuration and associate it
      # with the instance.
      # @option params [required, String] :name
      #   The name of the SSM document.
      # @option params [required, String] :instance_id
      #   The ID of the instance.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_association({
      #     name: "DocumentName", # required
      #     instance_id: "InstanceId", # required
      #   })
      # @overload delete_association(params = {})
      # @param [Hash] params ({})
      def delete_association(params = {}, options = {})
        req = build_request(:delete_association, params)
        req.send_request(options)
      end

      # Deletes the SSM document and all instance associations to the
      # document.
      #
      # Before you delete the SSM document, we recommend that you use
      # DeleteAssociation to disassociate all instances that are associated
      # with the document.
      # @option params [required, String] :name
      #   The name of the SSM document.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_document({
      #     name: "DocumentName", # required
      #   })
      # @overload delete_document(params = {})
      # @param [Hash] params ({})
      def delete_document(params = {}, options = {})
        req = build_request(:delete_document, params)
        req.send_request(options)
      end

      # Removes the server or virtual machine from the list of registered
      # servers. You can reregister the instance again at any time. If you
      # don’t plan to use Run Command on the server, we suggest uninstalling
      # the SSM agent first.
      # @option params [required, String] :instance_id
      #   The ID assigned to the managed instance when you registered it using
      #   the activation process.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.deregister_managed_instance({
      #     instance_id: "ManagedInstanceId", # required
      #   })
      # @overload deregister_managed_instance(params = {})
      # @param [Hash] params ({})
      def deregister_managed_instance(params = {}, options = {})
        req = build_request(:deregister_managed_instance, params)
        req.send_request(options)
      end

      # Details about the activation, including: the date and time the
      # activation was created, the expiration date, the IAM role assigned to
      # the instances in the activation, and the number of instances activated
      # by this registration.
      # @option params [Array<Types::DescribeActivationsFilter>] :filters
      #   A filter to view information about your activations.
      # @option params [Integer] :max_results
      #   The maximum number of items to return for this call. The call also
      #   returns a token that you can specify in a subsequent call to get the
      #   next set of results.
      # @option params [String] :next_token
      #   A token to start the list. Use this token to get the next set of
      #   results.
      # @return [Types::DescribeActivationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeActivationsResult#activation_list #ActivationList} => Array&lt;Types::Activation&gt;
      #   * {Types::DescribeActivationsResult#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
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
      # @overload describe_activations(params = {})
      # @param [Hash] params ({})
      def describe_activations(params = {}, options = {})
        req = build_request(:describe_activations, params)
        req.send_request(options)
      end

      # Describes the associations for the specified SSM document or instance.
      # @option params [required, String] :name
      #   The name of the SSM document.
      # @option params [required, String] :instance_id
      #   The instance ID.
      # @return [Types::DescribeAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeAssociationResult#association_description #AssociationDescription} => Types::AssociationDescription
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_association({
      #     name: "DocumentName", # required
      #     instance_id: "InstanceId", # required
      #   })
      #
      # @example Response structure
      #   resp.association_description.name #=> String
      #   resp.association_description.instance_id #=> String
      #   resp.association_description.date #=> Time
      #   resp.association_description.status.date #=> Time
      #   resp.association_description.status.name #=> String, one of "Pending", "Success", "Failed"
      #   resp.association_description.status.message #=> String
      #   resp.association_description.status.additional_info #=> String
      #   resp.association_description.parameters #=> Hash
      #   resp.association_description.parameters["ParameterName"] #=> Array
      #   resp.association_description.parameters["ParameterName"][0] #=> String
      # @overload describe_association(params = {})
      # @param [Hash] params ({})
      def describe_association(params = {}, options = {})
        req = build_request(:describe_association, params)
        req.send_request(options)
      end

      # Describes the specified SSM document.
      # @option params [required, String] :name
      #   The name of the SSM document.
      # @return [Types::DescribeDocumentResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeDocumentResult#document #Document} => Types::DocumentDescription
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_document({
      #     name: "DocumentARN", # required
      #   })
      #
      # @example Response structure
      #   resp.document.sha_1 #=> String
      #   resp.document.hash #=> String
      #   resp.document.hash_type #=> String, one of "Sha256", "Sha1"
      #   resp.document.name #=> String
      #   resp.document.owner #=> String
      #   resp.document.created_date #=> Time
      #   resp.document.status #=> String, one of "Creating", "Active", "Deleting"
      #   resp.document.description #=> String
      #   resp.document.parameters #=> Array
      #   resp.document.parameters[0].name #=> String
      #   resp.document.parameters[0].type #=> String, one of "String", "StringList"
      #   resp.document.parameters[0].description #=> String
      #   resp.document.parameters[0].default_value #=> String
      #   resp.document.platform_types #=> Array
      #   resp.document.platform_types[0] #=> String, one of "Windows", "Linux"
      # @overload describe_document(params = {})
      # @param [Hash] params ({})
      def describe_document(params = {}, options = {})
        req = build_request(:describe_document, params)
        req.send_request(options)
      end

      # Describes the permissions for an SSM document. If you created the
      # document, you are the owner. If a document is shared, it can either be
      # shared privately (by specifying a user’s AWS account ID) or publicly
      # (*All*).
      # @option params [required, String] :name
      #   The name of the document for which you are the owner.
      # @option params [required, String] :permission_type
      #   The permission type for the document. The permission type can be
      #   *Share*.
      # @return [Types::DescribeDocumentPermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeDocumentPermissionResponse#account_ids #AccountIds} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_document_permission({
      #     name: "DocumentName", # required
      #     permission_type: "Share", # required, accepts Share
      #   })
      #
      # @example Response structure
      #   resp.account_ids #=> Array
      #   resp.account_ids[0] #=> String
      # @overload describe_document_permission(params = {})
      # @param [Hash] params ({})
      def describe_document_permission(params = {}, options = {})
        req = build_request(:describe_document_permission, params)
        req.send_request(options)
      end

      # Describes one or more of your instances. You can use this to get
      # information about instances like the operating system platform, the
      # SSM agent version (Linux), status etc. If you specify one or more
      # instance IDs, it returns information for those instances. If you do
      # not specify instance IDs, it returns information for all your
      # instances. If you specify an instance ID that is not valid or an
      # instance that you do not own, you receive an error.
      # @option params [Array<Types::InstanceInformationFilter>] :instance_information_filter_list
      #   One or more filters. Use a filter to return a more specific list of
      #   instances.
      # @option params [Integer] :max_results
      #   The maximum number of items to return for this call. The call also
      #   returns a token that you can specify in a subsequent call to get the
      #   next set of results.
      # @option params [String] :next_token
      #   The token for the next set of items to return. (You received this
      #   token from a previous call.)
      # @return [Types::DescribeInstanceInformationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeInstanceInformationResult#instance_information_list #InstanceInformationList} => Array&lt;Types::InstanceInformation&gt;
      #   * {Types::DescribeInstanceInformationResult#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_instance_information({
      #     instance_information_filter_list: [
      #       {
      #         key: "InstanceIds", # required, accepts InstanceIds, AgentVersion, PingStatus, PlatformTypes, ActivationIds, IamRole, ResourceType
      #         value_set: ["InstanceInformationFilterValue"], # required
      #       },
      #     ],
      #     max_results: 1,
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
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
      #   resp.next_token #=> String
      # @overload describe_instance_information(params = {})
      # @param [Hash] params ({})
      def describe_instance_information(params = {}, options = {})
        req = build_request(:describe_instance_information, params)
        req.send_request(options)
      end

      # Gets the contents of the specified SSM document.
      # @option params [required, String] :name
      #   The name of the SSM document.
      # @return [Types::GetDocumentResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetDocumentResult#name #Name} => String
      #   * {Types::GetDocumentResult#content #Content} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_document({
      #     name: "DocumentARN", # required
      #   })
      #
      # @example Response structure
      #   resp.name #=> String
      #   resp.content #=> String
      # @overload get_document(params = {})
      # @param [Hash] params ({})
      def get_document(params = {}, options = {})
        req = build_request(:get_document, params)
        req.send_request(options)
      end

      # Lists the associations for the specified SSM document or instance.
      # @option params [required, Array<Types::AssociationFilter>] :association_filter_list
      #   One or more filters. Use a filter to return a more specific list of
      #   results.
      # @option params [Integer] :max_results
      #   The maximum number of items to return for this call. The call also
      #   returns a token that you can specify in a subsequent call to get the
      #   next set of results.
      # @option params [String] :next_token
      #   The token for the next set of items to return. (You received this
      #   token from a previous call.)
      # @return [Types::ListAssociationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListAssociationsResult#associations #Associations} => Array&lt;Types::Association&gt;
      #   * {Types::ListAssociationsResult#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_associations({
      #     association_filter_list: [ # required
      #       {
      #         key: "InstanceId", # required, accepts InstanceId, Name
      #         value: "AssociationFilterValue", # required
      #       },
      #     ],
      #     max_results: 1,
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.associations #=> Array
      #   resp.associations[0].name #=> String
      #   resp.associations[0].instance_id #=> String
      #   resp.next_token #=> String
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
      # @option params [String] :command_id
      #   (Optional) The invocations for a specific command ID.
      # @option params [String] :instance_id
      #   (Optional) The command execution details for a specific instance ID.
      # @option params [Integer] :max_results
      #   (Optional) The maximum number of items to return for this call. The
      #   call also returns a token that you can specify in a subsequent call to
      #   get the next set of results.
      # @option params [String] :next_token
      #   (Optional) The token for the next set of items to return. (You
      #   received this token from a previous call.)
      # @option params [Array<Types::CommandFilter>] :filters
      #   (Optional) One or more filters. Use a filter to return a more specific
      #   list of results.
      # @option params [Boolean] :details
      #   (Optional) If set this returns the response of the command executions
      #   and any command output. By default this is set to False.
      # @return [Types::ListCommandInvocationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListCommandInvocationsResult#command_invocations #CommandInvocations} => Array&lt;Types::CommandInvocation&gt;
      #   * {Types::ListCommandInvocationsResult#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_command_invocations({
      #     command_id: "CommandId",
      #     instance_id: "InstanceId",
      #     max_results: 1,
      #     next_token: "NextToken",
      #     filters: [
      #       {
      #         key: "InvokedAfter", # required, accepts InvokedAfter, InvokedBefore, Status
      #         value: "CommandFilterValue", # required
      #       },
      #     ],
      #     details: false,
      #   })
      #
      # @example Response structure
      #   resp.command_invocations #=> Array
      #   resp.command_invocations[0].command_id #=> String
      #   resp.command_invocations[0].instance_id #=> String
      #   resp.command_invocations[0].comment #=> String
      #   resp.command_invocations[0].document_name #=> String
      #   resp.command_invocations[0].requested_date_time #=> Time
      #   resp.command_invocations[0].status #=> String, one of "Pending", "InProgress", "Cancelling", "Success", "TimedOut", "Cancelled", "Failed"
      #   resp.command_invocations[0].trace_output #=> String
      #   resp.command_invocations[0].command_plugins #=> Array
      #   resp.command_invocations[0].command_plugins[0].name #=> String
      #   resp.command_invocations[0].command_plugins[0].status #=> String, one of "Pending", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"
      #   resp.command_invocations[0].command_plugins[0].response_code #=> Integer
      #   resp.command_invocations[0].command_plugins[0].response_start_date_time #=> Time
      #   resp.command_invocations[0].command_plugins[0].response_finish_date_time #=> Time
      #   resp.command_invocations[0].command_plugins[0].output #=> String
      #   resp.command_invocations[0].command_plugins[0].output_s3_bucket_name #=> String
      #   resp.command_invocations[0].command_plugins[0].output_s3_key_prefix #=> String
      #   resp.command_invocations[0].service_role #=> String
      #   resp.command_invocations[0].notification_config.notification_arn #=> String
      #   resp.command_invocations[0].notification_config.notification_events #=> Array
      #   resp.command_invocations[0].notification_config.notification_events[0] #=> String, one of "All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"
      #   resp.command_invocations[0].notification_config.notification_type #=> String, one of "Command", "Invocation"
      #   resp.next_token #=> String
      # @overload list_command_invocations(params = {})
      # @param [Hash] params ({})
      def list_command_invocations(params = {}, options = {})
        req = build_request(:list_command_invocations, params)
        req.send_request(options)
      end

      # Lists the commands requested by users of the AWS account.
      # @option params [String] :command_id
      #   (Optional) If provided, lists only the specified command.
      # @option params [String] :instance_id
      #   (Optional) Lists commands issued against this instance ID.
      # @option params [Integer] :max_results
      #   (Optional) The maximum number of items to return for this call. The
      #   call also returns a token that you can specify in a subsequent call to
      #   get the next set of results.
      # @option params [String] :next_token
      #   (Optional) The token for the next set of items to return. (You
      #   received this token from a previous call.)
      # @option params [Array<Types::CommandFilter>] :filters
      #   (Optional) One or more filters. Use a filter to return a more specific
      #   list of results.
      # @return [Types::ListCommandsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListCommandsResult#commands #Commands} => Array&lt;Types::Command&gt;
      #   * {Types::ListCommandsResult#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_commands({
      #     command_id: "CommandId",
      #     instance_id: "InstanceId",
      #     max_results: 1,
      #     next_token: "NextToken",
      #     filters: [
      #       {
      #         key: "InvokedAfter", # required, accepts InvokedAfter, InvokedBefore, Status
      #         value: "CommandFilterValue", # required
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.commands #=> Array
      #   resp.commands[0].command_id #=> String
      #   resp.commands[0].document_name #=> String
      #   resp.commands[0].comment #=> String
      #   resp.commands[0].expires_after #=> Time
      #   resp.commands[0].parameters #=> Hash
      #   resp.commands[0].parameters["ParameterName"] #=> Array
      #   resp.commands[0].parameters["ParameterName"][0] #=> String
      #   resp.commands[0].instance_ids #=> Array
      #   resp.commands[0].instance_ids[0] #=> String
      #   resp.commands[0].requested_date_time #=> Time
      #   resp.commands[0].status #=> String, one of "Pending", "InProgress", "Cancelling", "Success", "TimedOut", "Cancelled", "Failed"
      #   resp.commands[0].output_s3_bucket_name #=> String
      #   resp.commands[0].output_s3_key_prefix #=> String
      #   resp.commands[0].service_role #=> String
      #   resp.commands[0].notification_config.notification_arn #=> String
      #   resp.commands[0].notification_config.notification_events #=> Array
      #   resp.commands[0].notification_config.notification_events[0] #=> String, one of "All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"
      #   resp.commands[0].notification_config.notification_type #=> String, one of "Command", "Invocation"
      #   resp.next_token #=> String
      # @overload list_commands(params = {})
      # @param [Hash] params ({})
      def list_commands(params = {}, options = {})
        req = build_request(:list_commands, params)
        req.send_request(options)
      end

      # Describes one or more of your SSM documents.
      # @option params [Array<Types::DocumentFilter>] :document_filter_list
      #   One or more filters. Use a filter to return a more specific list of
      #   results.
      # @option params [Integer] :max_results
      #   The maximum number of items to return for this call. The call also
      #   returns a token that you can specify in a subsequent call to get the
      #   next set of results.
      # @option params [String] :next_token
      #   The token for the next set of items to return. (You received this
      #   token from a previous call.)
      # @return [Types::ListDocumentsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListDocumentsResult#document_identifiers #DocumentIdentifiers} => Array&lt;Types::DocumentIdentifier&gt;
      #   * {Types::ListDocumentsResult#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_documents({
      #     document_filter_list: [
      #       {
      #         key: "Name", # required, accepts Name, Owner, PlatformTypes
      #         value: "DocumentFilterValue", # required
      #       },
      #     ],
      #     max_results: 1,
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.document_identifiers #=> Array
      #   resp.document_identifiers[0].name #=> String
      #   resp.document_identifiers[0].owner #=> String
      #   resp.document_identifiers[0].platform_types #=> Array
      #   resp.document_identifiers[0].platform_types[0] #=> String, one of "Windows", "Linux"
      #   resp.next_token #=> String
      # @overload list_documents(params = {})
      # @param [Hash] params ({})
      def list_documents(params = {}, options = {})
        req = build_request(:list_documents, params)
        req.send_request(options)
      end

      # Returns a list of the tags assigned to the specified resource.
      # @option params [required, String] :resource_type
      #   Returns a list of tags for a specific resource type.
      # @option params [required, String] :resource_id
      #   The resource ID for which you want to see a list of tags.
      # @return [Types::ListTagsForResourceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListTagsForResourceResult#tag_list #TagList} => Array&lt;Types::Tag&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_tags_for_resource({
      #     resource_type: "ManagedInstance", # required, accepts ManagedInstance
      #     resource_id: "ResourceId", # required
      #   })
      #
      # @example Response structure
      #   resp.tag_list #=> Array
      #   resp.tag_list[0].key #=> String
      #   resp.tag_list[0].value #=> String
      # @overload list_tags_for_resource(params = {})
      # @param [Hash] params ({})
      def list_tags_for_resource(params = {}, options = {})
        req = build_request(:list_tags_for_resource, params)
        req.send_request(options)
      end

      # Share a document publicly or privately. If you share a document
      # privately, you must specify the AWS user account IDs for those people
      # who can use the document. If you share a document publicly, you must
      # specify *All* as the account ID.
      # @option params [required, String] :name
      #   The name of the document that you want to share.
      # @option params [required, String] :permission_type
      #   The permission type for the document. The permission type can be
      #   *Share*.
      # @option params [Array<String>] :account_ids_to_add
      #   The AWS user accounts that should have access to the document. The
      #   account IDs can either be a group of account IDs or *All*.
      # @option params [Array<String>] :account_ids_to_remove
      #   The AWS user accounts that should no longer have access to the
      #   document. The AWS user account can either be a group of account IDs or
      #   *All*. This action has a higher priority than *AccountIdsToAdd*. If
      #   you specify an account ID to add and the same ID to remove, the system
      #   removes access to the document.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.modify_document_permission({
      #     name: "DocumentName", # required
      #     permission_type: "Share", # required, accepts Share
      #     account_ids_to_add: ["AccountId"],
      #     account_ids_to_remove: ["AccountId"],
      #   })
      # @overload modify_document_permission(params = {})
      # @param [Hash] params ({})
      def modify_document_permission(params = {}, options = {})
        req = build_request(:modify_document_permission, params)
        req.send_request(options)
      end

      # Removes all tags from the specified resource.
      # @option params [required, String] :resource_type
      #   The type of resource of which you want to remove a tag.
      # @option params [required, String] :resource_id
      #   The resource ID for which you want to remove tags.
      # @option params [required, Array<String>] :tag_keys
      #   Tag keys that you want to remove from the specified resource.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.remove_tags_from_resource({
      #     resource_type: "ManagedInstance", # required, accepts ManagedInstance
      #     resource_id: "ResourceId", # required
      #     tag_keys: ["TagKey"], # required
      #   })
      # @overload remove_tags_from_resource(params = {})
      # @param [Hash] params ({})
      def remove_tags_from_resource(params = {}, options = {})
        req = build_request(:remove_tags_from_resource, params)
        req.send_request(options)
      end

      # Executes commands on one or more remote instances.
      # @option params [required, Array<String>] :instance_ids
      #   Required. The instance IDs where the command should execute. You can
      #   specify a maximum of 50 IDs.
      # @option params [required, String] :document_name
      #   Required. The name of the SSM document to execute. This can be an SSM
      #   public document or a custom document.
      # @option params [String] :document_hash
      #   The Sha256 or Sha1 hash created by the system when the document was
      #   created.
      #
      #   <note markdown="1"> Sha1 hashes have been deprecated.
      #
      #    </note>
      # @option params [String] :document_hash_type
      #   Sha256 or Sha1.
      #
      #   <note markdown="1"> Sha1 hashes have been deprecated.
      #
      #    </note>
      # @option params [Integer] :timeout_seconds
      #   If this time is reached and the command has not already started
      #   executing, it will not execute.
      # @option params [String] :comment
      #   User-specified information about the command, such as a brief
      #   description of what the command should do.
      # @option params [Hash<String,Array>] :parameters
      #   The required and optional parameters specified in the SSM document
      #   being executed.
      # @option params [String] :output_s3_bucket_name
      #   The name of the S3 bucket where command execution responses should be
      #   stored.
      # @option params [String] :output_s3_key_prefix
      #   The directory structure within the S3 bucket where the responses
      #   should be stored.
      # @option params [String] :service_role_arn
      #   The IAM role that SSM uses to send notifications.
      # @option params [Types::NotificationConfig] :notification_config
      #   Configurations for sending notifications.
      # @return [Types::SendCommandResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::SendCommandResult#command #Command} => Types::Command
      #
      # @example Request syntax with placeholder values
      #   resp = client.send_command({
      #     instance_ids: ["InstanceId"], # required
      #     document_name: "DocumentARN", # required
      #     document_hash: "DocumentHash",
      #     document_hash_type: "Sha256", # accepts Sha256, Sha1
      #     timeout_seconds: 1,
      #     comment: "Comment",
      #     parameters: {
      #       "ParameterName" => ["ParameterValue"],
      #     },
      #     output_s3_bucket_name: "S3BucketName",
      #     output_s3_key_prefix: "S3KeyPrefix",
      #     service_role_arn: "ServiceRole",
      #     notification_config: {
      #       notification_arn: "NotificationArn",
      #       notification_events: ["All"], # accepts All, InProgress, Success, TimedOut, Cancelled, Failed
      #       notification_type: "Command", # accepts Command, Invocation
      #     },
      #   })
      #
      # @example Response structure
      #   resp.command.command_id #=> String
      #   resp.command.document_name #=> String
      #   resp.command.comment #=> String
      #   resp.command.expires_after #=> Time
      #   resp.command.parameters #=> Hash
      #   resp.command.parameters["ParameterName"] #=> Array
      #   resp.command.parameters["ParameterName"][0] #=> String
      #   resp.command.instance_ids #=> Array
      #   resp.command.instance_ids[0] #=> String
      #   resp.command.requested_date_time #=> Time
      #   resp.command.status #=> String, one of "Pending", "InProgress", "Cancelling", "Success", "TimedOut", "Cancelled", "Failed"
      #   resp.command.output_s3_bucket_name #=> String
      #   resp.command.output_s3_key_prefix #=> String
      #   resp.command.service_role #=> String
      #   resp.command.notification_config.notification_arn #=> String
      #   resp.command.notification_config.notification_events #=> Array
      #   resp.command.notification_config.notification_events[0] #=> String, one of "All", "InProgress", "Success", "TimedOut", "Cancelled", "Failed"
      #   resp.command.notification_config.notification_type #=> String, one of "Command", "Invocation"
      # @overload send_command(params = {})
      # @param [Hash] params ({})
      def send_command(params = {}, options = {})
        req = build_request(:send_command, params)
        req.send_request(options)
      end

      # Updates the status of the SSM document associated with the specified
      # instance.
      # @option params [required, String] :name
      #   The name of the SSM document.
      # @option params [required, String] :instance_id
      #   The ID of the instance.
      # @option params [required, Types::AssociationStatus] :association_status
      #   The association status.
      # @return [Types::UpdateAssociationStatusResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateAssociationStatusResult#association_description #AssociationDescription} => Types::AssociationDescription
      #
      # @example Request syntax with placeholder values
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
      #   resp.association_description.name #=> String
      #   resp.association_description.instance_id #=> String
      #   resp.association_description.date #=> Time
      #   resp.association_description.status.date #=> Time
      #   resp.association_description.status.name #=> String, one of "Pending", "Success", "Failed"
      #   resp.association_description.status.message #=> String
      #   resp.association_description.status.additional_info #=> String
      #   resp.association_description.parameters #=> Hash
      #   resp.association_description.parameters["ParameterName"] #=> Array
      #   resp.association_description.parameters["ParameterName"][0] #=> String
      # @overload update_association_status(params = {})
      # @param [Hash] params ({})
      def update_association_status(params = {}, options = {})
        req = build_request(:update_association_status, params)
        req.send_request(options)
      end

      # Assigns or changes an Amazon Identity and Access Management (IAM) role
      # to the managed instance.
      # @option params [required, String] :instance_id
      #   The ID of the managed instance where you want to update the role.
      # @option params [required, String] :iam_role
      #   The IAM role you want to assign or change.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_managed_instance_role({
      #     instance_id: "ManagedInstanceId", # required
      #     iam_role: "IamRole", # required
      #   })
      # @overload update_managed_instance_role(params = {})
      # @param [Hash] params ({})
      def update_managed_instance_role(params = {}, options = {})
        req = build_request(:update_managed_instance_role, params)
        req.send_request(options)
      end

      # @!endgroup

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
end
