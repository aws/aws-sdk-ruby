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
  module DirectoryService
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :directoryservice

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @!group API Operations

      # Adds or overwrites one or more tags for the specified Amazon Directory
      # Services directory. Each directory can have a maximum of 10 tags. Each
      # tag consists of a key and optional value. Tag keys must be unique per
      # resource.
      # @option params [required, String] :resource_id
      #   The ID of the directory to which to add the tag.
      # @option params [required, Array<Types::Tag>] :tags
      #   The tags to be assigned to the Amazon Directory Services directory.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.add_tags_to_resource({
      #     resource_id: "ResourceId", # required
      #     tags: [ # required
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue", # required
      #       },
      #     ],
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def add_tags_to_resource(params = {}, options = {})
        req = build_request(:add_tags_to_resource, params)
        req.send_request(options)
      end

      # Creates an AD Connector to connect to an on-premises directory.
      # @option params [required, String] :name
      #   The fully-qualified name of the on-premises directory, such as
      #   `corp.example.com`.
      # @option params [String] :short_name
      #   The NetBIOS name of the on-premises directory, such as `CORP`.
      # @option params [required, String] :password
      #   The password for the on-premises user account.
      # @option params [String] :description
      #   A textual description for the directory.
      # @option params [required, String] :size
      #   The size of the directory.
      # @option params [required, Types::DirectoryConnectSettings] :connect_settings
      #   A DirectoryConnectSettings object that contains additional information
      #   for the operation.
      # @return [Types::ConnectDirectoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ConnectDirectoryResult#directory_id #DirectoryId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.connect_directory({
      #     name: "DirectoryName", # required
      #     short_name: "DirectoryShortName",
      #     password: "ConnectPassword", # required
      #     description: "Description",
      #     size: "Small", # required, accepts Small, Large
      #     connect_settings: { # required
      #       vpc_id: "VpcId", # required
      #       subnet_ids: ["SubnetId"], # required
      #       customer_dns_ips: ["IpAddr"], # required
      #       customer_user_name: "UserName", # required
      #     },
      #   })
      #
      # @example Response structure
      #   resp.directory_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def connect_directory(params = {}, options = {})
        req = build_request(:connect_directory, params)
        req.send_request(options)
      end

      # Creates an alias for a directory and assigns the alias to the
      # directory. The alias is used to construct the access URL for the
      # directory, such as `http://<alias>.awsapps.com`.
      #
      # <important markdown="1"> After an alias has been created, it cannot be deleted or reused, so
      # this operation should only be used when absolutely necessary.
      #
      #  </important>
      # @option params [required, String] :directory_id
      #   The identifier of the directory for which to create the alias.
      # @option params [required, String] :alias
      #   The requested alias.
      #
      #   The alias must be unique amongst all aliases in AWS. This operation
      #   throws an `EntityAlreadyExistsException` error if the alias already
      #   exists.
      # @return [Types::CreateAliasResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateAliasResult#directory_id #DirectoryId} => String
      #   * {Types::CreateAliasResult#alias #Alias} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_alias({
      #     directory_id: "DirectoryId", # required
      #     alias: "AliasName", # required
      #   })
      #
      # @example Response structure
      #   resp.directory_id #=> String
      #   resp.alias #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_alias(params = {}, options = {})
        req = build_request(:create_alias, params)
        req.send_request(options)
      end

      # Creates a computer account in the specified directory, and joins the
      # computer to the directory.
      # @option params [required, String] :directory_id
      #   The identifier of the directory in which to create the computer
      #   account.
      # @option params [required, String] :computer_name
      #   The name of the computer account.
      # @option params [required, String] :password
      #   A one-time password that is used to join the computer to the
      #   directory. You should generate a random, strong password to use for
      #   this parameter.
      # @option params [String] :organizational_unit_distinguished_name
      #   The fully-qualified distinguished name of the organizational unit to
      #   place the computer account in.
      # @option params [Array<Types::Attribute>] :computer_attributes
      #   An array of Attribute objects that contain any LDAP attributes to
      #   apply to the computer account.
      # @return [Types::CreateComputerResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateComputerResult#computer #Computer} => Types::Computer
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_computer({
      #     directory_id: "DirectoryId", # required
      #     computer_name: "ComputerName", # required
      #     password: "ComputerPassword", # required
      #     organizational_unit_distinguished_name: "OrganizationalUnitDN",
      #     computer_attributes: [
      #       {
      #         name: "AttributeName",
      #         value: "AttributeValue",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.computer.computer_id #=> String
      #   resp.computer.computer_name #=> String
      #   resp.computer.computer_attributes #=> Array
      #   resp.computer.computer_attributes[0].name #=> String
      #   resp.computer.computer_attributes[0].value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_computer(params = {}, options = {})
        req = build_request(:create_computer, params)
        req.send_request(options)
      end

      # Creates a conditional forwarder associated with your AWS directory.
      # Conditional forwarders are required in order to set up a trust
      # relationship with another domain. The conditional forwarder points to
      # the trusted domain.
      # @option params [required, String] :directory_id
      #   The directory ID of the AWS directory for which you are creating the
      #   conditional forwarder.
      # @option params [required, String] :remote_domain_name
      #   The fully qualified domain name (FQDN) of the remote domain with which
      #   you will set up a trust relationship.
      # @option params [required, Array<String>] :dns_ip_addrs
      #   The IP addresses of the remote DNS server associated with
      #   RemoteDomainName.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_conditional_forwarder({
      #     directory_id: "DirectoryId", # required
      #     remote_domain_name: "RemoteDomainName", # required
      #     dns_ip_addrs: ["IpAddr"], # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_conditional_forwarder(params = {}, options = {})
        req = build_request(:create_conditional_forwarder, params)
        req.send_request(options)
      end

      # Creates a Simple AD directory.
      # @option params [required, String] :name
      #   The fully qualified name for the directory, such as
      #   `corp.example.com`.
      # @option params [String] :short_name
      #   The short name of the directory, such as `CORP`.
      # @option params [required, String] :password
      #   The password for the directory administrator. The directory creation
      #   process creates a directory administrator account with the username
      #   `Administrator` and this password.
      # @option params [String] :description
      #   A textual description for the directory.
      # @option params [required, String] :size
      #   The size of the directory.
      # @option params [Types::DirectoryVpcSettings] :vpc_settings
      #   A DirectoryVpcSettings object that contains additional information for
      #   the operation.
      # @return [Types::CreateDirectoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateDirectoryResult#directory_id #DirectoryId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_directory({
      #     name: "DirectoryName", # required
      #     short_name: "DirectoryShortName",
      #     password: "Password", # required
      #     description: "Description",
      #     size: "Small", # required, accepts Small, Large
      #     vpc_settings: {
      #       vpc_id: "VpcId", # required
      #       subnet_ids: ["SubnetId"], # required
      #     },
      #   })
      #
      # @example Response structure
      #   resp.directory_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_directory(params = {}, options = {})
        req = build_request(:create_directory, params)
        req.send_request(options)
      end

      # Creates a Microsoft AD in the AWS cloud.
      # @option params [required, String] :name
      #   The fully qualified domain name for the directory, such as
      #   `corp.example.com`. This name will resolve inside your VPC only. It
      #   does not need to be publicly resolvable.
      # @option params [String] :short_name
      #   The NetBIOS name for your domain. A short identifier for your domain,
      #   such as `CORP`. If you don\'t specify a NetBIOS name, it will default
      #   to the first part of your directory DNS. For example, `CORP` for the
      #   directory DNS `corp.example.com`.
      # @option params [required, String] :password
      #   The password for the default administrative user named `Admin`.
      # @option params [String] :description
      #   A textual description for the directory. This label will appear on the
      #   AWS console `Directory Details` page after the directory is created.
      # @option params [required, Types::DirectoryVpcSettings] :vpc_settings
      #   Contains VPC information for the CreateDirectory or CreateMicrosoftAD
      #   operation.
      # @return [Types::CreateMicrosoftADResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateMicrosoftADResult#directory_id #DirectoryId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_microsoft_ad({
      #     name: "DirectoryName", # required
      #     short_name: "DirectoryShortName",
      #     password: "Password", # required
      #     description: "Description",
      #     vpc_settings: { # required
      #       vpc_id: "VpcId", # required
      #       subnet_ids: ["SubnetId"], # required
      #     },
      #   })
      #
      # @example Response structure
      #   resp.directory_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_microsoft_ad(params = {}, options = {})
        req = build_request(:create_microsoft_ad, params)
        req.send_request(options)
      end

      # Creates a snapshot of a Simple AD or Microsoft AD directory in the AWS
      # cloud.
      #
      # <note markdown="1"> You cannot take snapshots of AD Connector directories.
      #
      #  </note>
      # @option params [required, String] :directory_id
      #   The identifier of the directory of which to take a snapshot.
      # @option params [String] :name
      #   The descriptive name to apply to the snapshot.
      # @return [Types::CreateSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateSnapshotResult#snapshot_id #SnapshotId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_snapshot({
      #     directory_id: "DirectoryId", # required
      #     name: "SnapshotName",
      #   })
      #
      # @example Response structure
      #   resp.snapshot_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_snapshot(params = {}, options = {})
        req = build_request(:create_snapshot, params)
        req.send_request(options)
      end

      # AWS Directory Service for Microsoft Active Directory allows you to
      # configure trust relationships. For example, you can establish a trust
      # between your Microsoft AD in the AWS cloud, and your existing
      # on-premises Microsoft Active Directory. This would allow you to
      # provide users and groups access to resources in either domain, with a
      # single set of credentials.
      #
      # This action initiates the creation of the AWS side of a trust
      # relationship between a Microsoft AD in the AWS cloud and an external
      # domain.
      # @option params [required, String] :directory_id
      #   The Directory ID of the Microsoft AD in the AWS cloud for which to
      #   establish the trust relationship.
      # @option params [required, String] :remote_domain_name
      #   The Fully Qualified Domain Name (FQDN) of the external domain for
      #   which to create the trust relationship.
      # @option params [required, String] :trust_password
      #   The trust password. The must be the same password that was used when
      #   creating the trust relationship on the external domain.
      # @option params [required, String] :trust_direction
      #   The direction of the trust relationship.
      # @option params [String] :trust_type
      #   The trust relationship type.
      # @option params [Array<String>] :conditional_forwarder_ip_addrs
      #   The IP addresses of the remote DNS server associated with
      #   RemoteDomainName.
      # @return [Types::CreateTrustResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateTrustResult#trust_id #TrustId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_trust({
      #     directory_id: "DirectoryId", # required
      #     remote_domain_name: "RemoteDomainName", # required
      #     trust_password: "TrustPassword", # required
      #     trust_direction: "One-Way: Outgoing", # required, accepts One-Way: Outgoing, One-Way: Incoming, Two-Way
      #     trust_type: "Forest", # accepts Forest
      #     conditional_forwarder_ip_addrs: ["IpAddr"],
      #   })
      #
      # @example Response structure
      #   resp.trust_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_trust(params = {}, options = {})
        req = build_request(:create_trust, params)
        req.send_request(options)
      end

      # Deletes a conditional forwarder that has been set up for your AWS
      # directory.
      # @option params [required, String] :directory_id
      #   The directory ID for which you are deleting the conditional forwarder.
      # @option params [required, String] :remote_domain_name
      #   The fully qualified domain name (FQDN) of the remote domain with which
      #   you are deleting the conditional forwarder.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_conditional_forwarder({
      #     directory_id: "DirectoryId", # required
      #     remote_domain_name: "RemoteDomainName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_conditional_forwarder(params = {}, options = {})
        req = build_request(:delete_conditional_forwarder, params)
        req.send_request(options)
      end

      # Deletes an AWS Directory Service directory.
      # @option params [required, String] :directory_id
      #   The identifier of the directory to delete.
      # @return [Types::DeleteDirectoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteDirectoryResult#directory_id #DirectoryId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_directory({
      #     directory_id: "DirectoryId", # required
      #   })
      #
      # @example Response structure
      #   resp.directory_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_directory(params = {}, options = {})
        req = build_request(:delete_directory, params)
        req.send_request(options)
      end

      # Deletes a directory snapshot.
      # @option params [required, String] :snapshot_id
      #   The identifier of the directory snapshot to be deleted.
      # @return [Types::DeleteSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteSnapshotResult#snapshot_id #SnapshotId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_snapshot({
      #     snapshot_id: "SnapshotId", # required
      #   })
      #
      # @example Response structure
      #   resp.snapshot_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_snapshot(params = {}, options = {})
        req = build_request(:delete_snapshot, params)
        req.send_request(options)
      end

      # Deletes an existing trust relationship between your Microsoft AD in
      # the AWS cloud and an external domain.
      # @option params [required, String] :trust_id
      #   The Trust ID of the trust relationship to be deleted.
      # @option params [Boolean] :delete_associated_conditional_forwarder
      #   Delete a conditional forwarder as part of a DeleteTrustRequest.
      # @return [Types::DeleteTrustResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteTrustResult#trust_id #TrustId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_trust({
      #     trust_id: "TrustId", # required
      #     delete_associated_conditional_forwarder: false,
      #   })
      #
      # @example Response structure
      #   resp.trust_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_trust(params = {}, options = {})
        req = build_request(:delete_trust, params)
        req.send_request(options)
      end

      # Removes the specified directory as a publisher to the specified SNS
      # topic.
      # @option params [required, String] :directory_id
      #   The Directory ID to remove as a publisher. This directory will no
      #   longer send messages to the specified SNS topic.
      # @option params [required, String] :topic_name
      #   The name of the SNS topic from which to remove the directory as a
      #   publisher.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.deregister_event_topic({
      #     directory_id: "DirectoryId", # required
      #     topic_name: "TopicName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def deregister_event_topic(params = {}, options = {})
        req = build_request(:deregister_event_topic, params)
        req.send_request(options)
      end

      # Obtains information about the conditional forwarders for this account.
      #
      # If no input parameters are provided for RemoteDomainNames, this
      # request describes all conditional forwarders for the specified
      # directory ID.
      # @option params [required, String] :directory_id
      #   The directory ID for which to get the list of associated conditional
      #   forwarders.
      # @option params [Array<String>] :remote_domain_names
      #   The fully qualified domain names (FQDN) of the remote domains for
      #   which to get the list of associated conditional forwarders. If this
      #   member is null, all conditional forwarders are returned.
      # @return [Types::DescribeConditionalForwardersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeConditionalForwardersResult#conditional_forwarders #ConditionalForwarders} => Array&lt;Types::ConditionalForwarder&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_conditional_forwarders({
      #     directory_id: "DirectoryId", # required
      #     remote_domain_names: ["RemoteDomainName"],
      #   })
      #
      # @example Response structure
      #   resp.conditional_forwarders #=> Array
      #   resp.conditional_forwarders[0].remote_domain_name #=> String
      #   resp.conditional_forwarders[0].dns_ip_addrs #=> Array
      #   resp.conditional_forwarders[0].dns_ip_addrs[0] #=> String
      #   resp.conditional_forwarders[0].replication_scope #=> String, one of "Domain"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_conditional_forwarders(params = {}, options = {})
        req = build_request(:describe_conditional_forwarders, params)
        req.send_request(options)
      end

      # Obtains information about the directories that belong to this account.
      #
      # You can retrieve information about specific directories by passing the
      # directory identifiers in the *DirectoryIds* parameter. Otherwise, all
      # directories that belong to the current account are returned.
      #
      # This operation supports pagination with the use of the *NextToken*
      # request and response parameters. If more results are available, the
      # *DescribeDirectoriesResult.NextToken* member contains a token that you
      # pass in the next call to DescribeDirectories to retrieve the next set
      # of items.
      #
      # You can also specify a maximum number of return results with the
      # *Limit* parameter.
      # @option params [Array<String>] :directory_ids
      #   A list of identifiers of the directories for which to obtain the
      #   information. If this member is null, all directories that belong to
      #   the current account are returned.
      #
      #   An empty list results in an `InvalidParameterException` being thrown.
      # @option params [String] :next_token
      #   The *DescribeDirectoriesResult.NextToken* value from a previous call
      #   to DescribeDirectories. Pass null if this is the first call.
      # @option params [Integer] :limit
      #   The maximum number of items to return. If this value is zero, the
      #   maximum number of items is specified by the limitations of the
      #   operation.
      # @return [Types::DescribeDirectoriesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeDirectoriesResult#directory_descriptions #DirectoryDescriptions} => Array&lt;Types::DirectoryDescription&gt;
      #   * {Types::DescribeDirectoriesResult#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_directories({
      #     directory_ids: ["DirectoryId"],
      #     next_token: "NextToken",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.directory_descriptions #=> Array
      #   resp.directory_descriptions[0].directory_id #=> String
      #   resp.directory_descriptions[0].name #=> String
      #   resp.directory_descriptions[0].short_name #=> String
      #   resp.directory_descriptions[0].size #=> String, one of "Small", "Large"
      #   resp.directory_descriptions[0].alias #=> String
      #   resp.directory_descriptions[0].access_url #=> String
      #   resp.directory_descriptions[0].description #=> String
      #   resp.directory_descriptions[0].dns_ip_addrs #=> Array
      #   resp.directory_descriptions[0].dns_ip_addrs[0] #=> String
      #   resp.directory_descriptions[0].stage #=> String, one of "Requested", "Creating", "Created", "Active", "Inoperable", "Impaired", "Restoring", "RestoreFailed", "Deleting", "Deleted", "Failed"
      #   resp.directory_descriptions[0].launch_time #=> Time
      #   resp.directory_descriptions[0].stage_last_updated_date_time #=> Time
      #   resp.directory_descriptions[0].type #=> String, one of "SimpleAD", "ADConnector", "MicrosoftAD"
      #   resp.directory_descriptions[0].vpc_settings.vpc_id #=> String
      #   resp.directory_descriptions[0].vpc_settings.subnet_ids #=> Array
      #   resp.directory_descriptions[0].vpc_settings.subnet_ids[0] #=> String
      #   resp.directory_descriptions[0].vpc_settings.security_group_id #=> String
      #   resp.directory_descriptions[0].vpc_settings.availability_zones #=> Array
      #   resp.directory_descriptions[0].vpc_settings.availability_zones[0] #=> String
      #   resp.directory_descriptions[0].connect_settings.vpc_id #=> String
      #   resp.directory_descriptions[0].connect_settings.subnet_ids #=> Array
      #   resp.directory_descriptions[0].connect_settings.subnet_ids[0] #=> String
      #   resp.directory_descriptions[0].connect_settings.customer_user_name #=> String
      #   resp.directory_descriptions[0].connect_settings.security_group_id #=> String
      #   resp.directory_descriptions[0].connect_settings.availability_zones #=> Array
      #   resp.directory_descriptions[0].connect_settings.availability_zones[0] #=> String
      #   resp.directory_descriptions[0].connect_settings.connect_ips #=> Array
      #   resp.directory_descriptions[0].connect_settings.connect_ips[0] #=> String
      #   resp.directory_descriptions[0].radius_settings.radius_servers #=> Array
      #   resp.directory_descriptions[0].radius_settings.radius_servers[0] #=> String
      #   resp.directory_descriptions[0].radius_settings.radius_port #=> Integer
      #   resp.directory_descriptions[0].radius_settings.radius_timeout #=> Integer
      #   resp.directory_descriptions[0].radius_settings.radius_retries #=> Integer
      #   resp.directory_descriptions[0].radius_settings.shared_secret #=> String
      #   resp.directory_descriptions[0].radius_settings.authentication_protocol #=> String, one of "PAP", "CHAP", "MS-CHAPv1", "MS-CHAPv2"
      #   resp.directory_descriptions[0].radius_settings.display_label #=> String
      #   resp.directory_descriptions[0].radius_settings.use_same_username #=> Boolean
      #   resp.directory_descriptions[0].radius_status #=> String, one of "Creating", "Completed", "Failed"
      #   resp.directory_descriptions[0].stage_reason #=> String
      #   resp.directory_descriptions[0].sso_enabled #=> Boolean
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_directories(params = {}, options = {})
        req = build_request(:describe_directories, params)
        req.send_request(options)
      end

      # Obtains information about which SNS topics receive status messages
      # from the specified directory.
      #
      # If no input parameters are provided, such as DirectoryId or TopicName,
      # this request describes all of the associations in the account.
      # @option params [String] :directory_id
      #   The Directory ID for which to get the list of associated SNS topics.
      #   If this member is null, associations for all Directory IDs are
      #   returned.
      # @option params [Array<String>] :topic_names
      #   A list of SNS topic names for which to obtain the information. If this
      #   member is null, all associations for the specified Directory ID are
      #   returned.
      #
      #   An empty list results in an `InvalidParameterException` being thrown.
      # @return [Types::DescribeEventTopicsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeEventTopicsResult#event_topics #EventTopics} => Array&lt;Types::EventTopic&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_event_topics({
      #     directory_id: "DirectoryId",
      #     topic_names: ["TopicName"],
      #   })
      #
      # @example Response structure
      #   resp.event_topics #=> Array
      #   resp.event_topics[0].directory_id #=> String
      #   resp.event_topics[0].topic_name #=> String
      #   resp.event_topics[0].topic_arn #=> String
      #   resp.event_topics[0].created_date_time #=> Time
      #   resp.event_topics[0].status #=> String, one of "Registered", "Topic not found", "Failed", "Deleted"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_event_topics(params = {}, options = {})
        req = build_request(:describe_event_topics, params)
        req.send_request(options)
      end

      # Obtains information about the directory snapshots that belong to this
      # account.
      #
      # This operation supports pagination with the use of the *NextToken*
      # request and response parameters. If more results are available, the
      # *DescribeSnapshots.NextToken* member contains a token that you pass in
      # the next call to DescribeSnapshots to retrieve the next set of items.
      #
      # You can also specify a maximum number of return results with the
      # *Limit* parameter.
      # @option params [String] :directory_id
      #   The identifier of the directory for which to retrieve snapshot
      #   information.
      # @option params [Array<String>] :snapshot_ids
      #   A list of identifiers of the snapshots to obtain the information for.
      #   If this member is null or empty, all snapshots are returned using the
      #   *Limit* and *NextToken* members.
      # @option params [String] :next_token
      #   The *DescribeSnapshotsResult.NextToken* value from a previous call to
      #   DescribeSnapshots. Pass null if this is the first call.
      # @option params [Integer] :limit
      #   The maximum number of objects to return.
      # @return [Types::DescribeSnapshotsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeSnapshotsResult#snapshots #Snapshots} => Array&lt;Types::Snapshot&gt;
      #   * {Types::DescribeSnapshotsResult#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_snapshots({
      #     directory_id: "DirectoryId",
      #     snapshot_ids: ["SnapshotId"],
      #     next_token: "NextToken",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.snapshots #=> Array
      #   resp.snapshots[0].directory_id #=> String
      #   resp.snapshots[0].snapshot_id #=> String
      #   resp.snapshots[0].type #=> String, one of "Auto", "Manual"
      #   resp.snapshots[0].name #=> String
      #   resp.snapshots[0].status #=> String, one of "Creating", "Completed", "Failed"
      #   resp.snapshots[0].start_time #=> Time
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_snapshots(params = {}, options = {})
        req = build_request(:describe_snapshots, params)
        req.send_request(options)
      end

      # Obtains information about the trust relationships for this account.
      #
      # If no input parameters are provided, such as DirectoryId or TrustIds,
      # this request describes all the trust relationships belonging to the
      # account.
      # @option params [String] :directory_id
      #   The Directory ID of the AWS directory that is a part of the requested
      #   trust relationship.
      # @option params [Array<String>] :trust_ids
      #   A list of identifiers of the trust relationships for which to obtain
      #   the information. If this member is null, all trust relationships that
      #   belong to the current account are returned.
      #
      #   An empty list results in an `InvalidParameterException` being thrown.
      # @option params [String] :next_token
      #   The *DescribeTrustsResult.NextToken* value from a previous call to
      #   DescribeTrusts. Pass null if this is the first call.
      # @option params [Integer] :limit
      #   The maximum number of objects to return.
      # @return [Types::DescribeTrustsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeTrustsResult#trusts #Trusts} => Array&lt;Types::Trust&gt;
      #   * {Types::DescribeTrustsResult#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_trusts({
      #     directory_id: "DirectoryId",
      #     trust_ids: ["TrustId"],
      #     next_token: "NextToken",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.trusts #=> Array
      #   resp.trusts[0].directory_id #=> String
      #   resp.trusts[0].trust_id #=> String
      #   resp.trusts[0].remote_domain_name #=> String
      #   resp.trusts[0].trust_type #=> String, one of "Forest"
      #   resp.trusts[0].trust_direction #=> String, one of "One-Way: Outgoing", "One-Way: Incoming", "Two-Way"
      #   resp.trusts[0].trust_state #=> String, one of "Creating", "Created", "Verifying", "VerifyFailed", "Verified", "Deleting", "Deleted", "Failed"
      #   resp.trusts[0].created_date_time #=> Time
      #   resp.trusts[0].last_updated_date_time #=> Time
      #   resp.trusts[0].state_last_updated_date_time #=> Time
      #   resp.trusts[0].trust_state_reason #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_trusts(params = {}, options = {})
        req = build_request(:describe_trusts, params)
        req.send_request(options)
      end

      # Disables multi-factor authentication (MFA) with the Remote
      # Authentication Dial In User Service (RADIUS) server for an AD
      # Connector directory.
      # @option params [required, String] :directory_id
      #   The identifier of the directory for which to disable MFA.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.disable_radius({
      #     directory_id: "DirectoryId", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def disable_radius(params = {}, options = {})
        req = build_request(:disable_radius, params)
        req.send_request(options)
      end

      # Disables single-sign on for a directory.
      # @option params [required, String] :directory_id
      #   The identifier of the directory for which to disable single-sign on.
      # @option params [String] :user_name
      #   The username of an alternate account to use to disable single-sign on.
      #   This is only used for AD Connector directories. This account must have
      #   privileges to remove a service principal name.
      #
      #   If the AD Connector service account does not have privileges to remove
      #   a service principal name, you can specify an alternate account with
      #   the *UserName* and *Password* parameters. These credentials are only
      #   used to disable single sign-on and are not stored by the service. The
      #   AD Connector service account is not changed.
      # @option params [String] :password
      #   The password of an alternate account to use to disable single-sign on.
      #   This is only used for AD Connector directories. For more information,
      #   see the *UserName* parameter.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.disable_sso({
      #     directory_id: "DirectoryId", # required
      #     user_name: "UserName",
      #     password: "ConnectPassword",
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def disable_sso(params = {}, options = {})
        req = build_request(:disable_sso, params)
        req.send_request(options)
      end

      # Enables multi-factor authentication (MFA) with the Remote
      # Authentication Dial In User Service (RADIUS) server for an AD
      # Connector directory.
      # @option params [required, String] :directory_id
      #   The identifier of the directory for which to enable MFA.
      # @option params [required, Types::RadiusSettings] :radius_settings
      #   A RadiusSettings object that contains information about the RADIUS
      #   server.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.enable_radius({
      #     directory_id: "DirectoryId", # required
      #     radius_settings: { # required
      #       radius_servers: ["Server"],
      #       radius_port: 1,
      #       radius_timeout: 1,
      #       radius_retries: 1,
      #       shared_secret: "RadiusSharedSecret",
      #       authentication_protocol: "PAP", # accepts PAP, CHAP, MS-CHAPv1, MS-CHAPv2
      #       display_label: "RadiusDisplayLabel",
      #       use_same_username: false,
      #     },
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def enable_radius(params = {}, options = {})
        req = build_request(:enable_radius, params)
        req.send_request(options)
      end

      # Enables single-sign on for a directory.
      # @option params [required, String] :directory_id
      #   The identifier of the directory for which to enable single-sign on.
      # @option params [String] :user_name
      #   The username of an alternate account to use to enable single-sign on.
      #   This is only used for AD Connector directories. This account must have
      #   privileges to add a service principal name.
      #
      #   If the AD Connector service account does not have privileges to add a
      #   service principal name, you can specify an alternate account with the
      #   *UserName* and *Password* parameters. These credentials are only used
      #   to enable single sign-on and are not stored by the service. The AD
      #   Connector service account is not changed.
      # @option params [String] :password
      #   The password of an alternate account to use to enable single-sign on.
      #   This is only used for AD Connector directories. For more information,
      #   see the *UserName* parameter.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.enable_sso({
      #     directory_id: "DirectoryId", # required
      #     user_name: "UserName",
      #     password: "ConnectPassword",
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def enable_sso(params = {}, options = {})
        req = build_request(:enable_sso, params)
        req.send_request(options)
      end

      # Obtains directory limit information for the current region.
      # @return [Types::GetDirectoryLimitsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetDirectoryLimitsResult#directory_limits #DirectoryLimits} => Types::DirectoryLimits
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_directory_limits()
      #
      # @example Response structure
      #   resp.directory_limits.cloud_only_directories_limit #=> Integer
      #   resp.directory_limits.cloud_only_directories_current_count #=> Integer
      #   resp.directory_limits.cloud_only_directories_limit_reached #=> Boolean
      #   resp.directory_limits.cloud_only_microsoft_ad_limit #=> Integer
      #   resp.directory_limits.cloud_only_microsoft_ad_current_count #=> Integer
      #   resp.directory_limits.cloud_only_microsoft_ad_limit_reached #=> Boolean
      #   resp.directory_limits.connected_directories_limit #=> Integer
      #   resp.directory_limits.connected_directories_current_count #=> Integer
      #   resp.directory_limits.connected_directories_limit_reached #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_directory_limits(params = {}, options = {})
        req = build_request(:get_directory_limits, params)
        req.send_request(options)
      end

      # Obtains the manual snapshot limits for a directory.
      # @option params [required, String] :directory_id
      #   Contains the identifier of the directory to obtain the limits for.
      # @return [Types::GetSnapshotLimitsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetSnapshotLimitsResult#snapshot_limits #SnapshotLimits} => Types::SnapshotLimits
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_snapshot_limits({
      #     directory_id: "DirectoryId", # required
      #   })
      #
      # @example Response structure
      #   resp.snapshot_limits.manual_snapshots_limit #=> Integer
      #   resp.snapshot_limits.manual_snapshots_current_count #=> Integer
      #   resp.snapshot_limits.manual_snapshots_limit_reached #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_snapshot_limits(params = {}, options = {})
        req = build_request(:get_snapshot_limits, params)
        req.send_request(options)
      end

      # Lists all tags on an Amazon Directory Services directory.
      # @option params [required, String] :resource_id
      #   The ID of the directory for which you want to retrieve tags.
      # @option params [String] :next_token
      #   Reserved for future use.
      # @option params [Integer] :limit
      #   Reserved for future use.
      # @return [Types::ListTagsForResourceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListTagsForResourceResult#tags #Tags} => Array&lt;Types::Tag&gt;
      #   * {Types::ListTagsForResourceResult#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_tags_for_resource({
      #     resource_id: "ResourceId", # required
      #     next_token: "NextToken",
      #     limit: 1,
      #   })
      #
      # @example Response structure
      #   resp.tags #=> Array
      #   resp.tags[0].key #=> String
      #   resp.tags[0].value #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_tags_for_resource(params = {}, options = {})
        req = build_request(:list_tags_for_resource, params)
        req.send_request(options)
      end

      # Associates a directory with an SNS topic. This establishes the
      # directory as a publisher to the specified SNS topic. You can then
      # receive email or text (SMS) messages when the status of your directory
      # changes. You get notified if your directory goes from an Active status
      # to an Impaired or Inoperable status. You also receive a notification
      # when the directory returns to an Active status.
      # @option params [required, String] :directory_id
      #   The Directory ID that will publish status messages to the SNS topic.
      # @option params [required, String] :topic_name
      #   The SNS topic name to which the directory will publish status
      #   messages. This SNS topic must be in the same region as the specified
      #   Directory ID.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.register_event_topic({
      #     directory_id: "DirectoryId", # required
      #     topic_name: "TopicName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def register_event_topic(params = {}, options = {})
        req = build_request(:register_event_topic, params)
        req.send_request(options)
      end

      # Removes tags from an Amazon Directory Services directory.
      # @option params [required, String] :resource_id
      #   The ID of the directory from which to remove the tag.
      # @option params [required, Array<String>] :tag_keys
      #   The tag key (name) of the tag to be removed.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.remove_tags_from_resource({
      #     resource_id: "ResourceId", # required
      #     tag_keys: ["TagKey"], # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def remove_tags_from_resource(params = {}, options = {})
        req = build_request(:remove_tags_from_resource, params)
        req.send_request(options)
      end

      # Restores a directory using an existing directory snapshot.
      #
      # When you restore a directory from a snapshot, any changes made to the
      # directory after the snapshot date are overwritten.
      #
      # This action returns as soon as the restore operation is initiated. You
      # can monitor the progress of the restore operation by calling the
      # DescribeDirectories operation with the directory identifier. When the
      # **DirectoryDescription.Stage** value changes to `Active`, the restore
      # operation is complete.
      # @option params [required, String] :snapshot_id
      #   The identifier of the snapshot to restore from.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.restore_from_snapshot({
      #     snapshot_id: "SnapshotId", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def restore_from_snapshot(params = {}, options = {})
        req = build_request(:restore_from_snapshot, params)
        req.send_request(options)
      end

      # Updates a conditional forwarder that has been set up for your AWS
      # directory.
      # @option params [required, String] :directory_id
      #   The directory ID of the AWS directory for which to update the
      #   conditional forwarder.
      # @option params [required, String] :remote_domain_name
      #   The fully qualified domain name (FQDN) of the remote domain with which
      #   you will set up a trust relationship.
      # @option params [required, Array<String>] :dns_ip_addrs
      #   The updated IP addresses of the remote DNS server associated with the
      #   conditional forwarder.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_conditional_forwarder({
      #     directory_id: "DirectoryId", # required
      #     remote_domain_name: "RemoteDomainName", # required
      #     dns_ip_addrs: ["IpAddr"], # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_conditional_forwarder(params = {}, options = {})
        req = build_request(:update_conditional_forwarder, params)
        req.send_request(options)
      end

      # Updates the Remote Authentication Dial In User Service (RADIUS) server
      # information for an AD Connector directory.
      # @option params [required, String] :directory_id
      #   The identifier of the directory for which to update the RADIUS server
      #   information.
      # @option params [required, Types::RadiusSettings] :radius_settings
      #   A RadiusSettings object that contains information about the RADIUS
      #   server.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_radius({
      #     directory_id: "DirectoryId", # required
      #     radius_settings: { # required
      #       radius_servers: ["Server"],
      #       radius_port: 1,
      #       radius_timeout: 1,
      #       radius_retries: 1,
      #       shared_secret: "RadiusSharedSecret",
      #       authentication_protocol: "PAP", # accepts PAP, CHAP, MS-CHAPv1, MS-CHAPv2
      #       display_label: "RadiusDisplayLabel",
      #       use_same_username: false,
      #     },
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_radius(params = {}, options = {})
        req = build_request(:update_radius, params)
        req.send_request(options)
      end

      # AWS Directory Service for Microsoft Active Directory allows you to
      # configure and verify trust relationships.
      #
      # This action verifies a trust relationship between your Microsoft AD in
      # the AWS cloud and an external domain.
      # @option params [required, String] :trust_id
      #   The unique Trust ID of the trust relationship to verify.
      # @return [Types::VerifyTrustResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::VerifyTrustResult#trust_id #TrustId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.verify_trust({
      #     trust_id: "TrustId", # required
      #   })
      #
      # @example Response structure
      #   resp.trust_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def verify_trust(params = {}, options = {})
        req = build_request(:verify_trust, params)
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
