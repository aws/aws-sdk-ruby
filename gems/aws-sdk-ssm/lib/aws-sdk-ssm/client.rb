# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module SSM
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :ssm

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @!group API Operations

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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def cancel_command(params = {}, options = {})
        req = build_request(:cancel_command, params)
        req.send_request(options)
      end

      # Associates the specified SSM document with the specified instance.
      #
      # When you associate an SSM document with an instance, the configuration
      # agent on the instance processes the document and configures the
      # instance as specified.
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_association(params = {}, options = {})
        req = build_request(:create_association, params)
        req.send_request(options)
      end

      # Associates the specified SSM document with the specified instances.
      #
      # When you associate an SSM document with an instance, the configuration
      # agent on the instance processes the document and configures the
      # instance as specified.
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_document(params = {}, options = {})
        req = build_request(:create_document, params)
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_document(params = {}, options = {})
        req = build_request(:delete_document, params)
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_document_permission(params = {}, options = {})
        req = build_request(:describe_document_permission, params)
        req.send_request(options)
      end

      # Describes one or more of your instances. You can use this to get
      # information about instances like the operating system platform, the
      # SSM agent version, status etc. If you specify one or more instance
      # IDs, it returns information for those instances. If you do not specify
      # instance IDs, it returns information for all your instances. If you
      # specify an instance ID that is not valid or an instance that you do
      # not own, you receive an error.
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
      #         key: "InstanceIds", # required, accepts InstanceIds, AgentVersion, PingStatus, PlatformTypes
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
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_documents(params = {}, options = {})
        req = build_request(:list_documents, params)
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def modify_document_permission(params = {}, options = {})
        req = build_request(:modify_document_permission, params)
        req.send_request(options)
      end

      # Executes commands on one or more remote instances.
      # @option params [required, Array<String>] :instance_ids
      #   Required. The instance IDs where the command should execute.
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
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
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_association_status(params = {}, options = {})
        req = build_request(:update_association_status, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
