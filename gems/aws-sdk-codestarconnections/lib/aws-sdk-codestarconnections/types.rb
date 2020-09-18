# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeStarconnections
  module Types

    # A resource that is used to connect third-party source providers with
    # services like AWS CodePipeline.
    #
    # Note: A connection created through CloudFormation, the CLI, or the SDK
    # is in `PENDING` status by default. You can make its status
    # `AVAILABLE` by updating the connection in the console.
    #
    # @!attribute [rw] connection_name
    #   The name of the connection. Connection names must be unique in an
    #   AWS user account.
    #   @return [String]
    #
    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of the connection. The ARN is used as
    #   the connection reference when the connection is shared between AWS
    #   services.
    #
    #   <note markdown="1"> The ARN is never reused if the connection is deleted.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The name of the external provider where your third-party code
    #   repository is configured. The valid provider type is Bitbucket.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The identifier of the external provider where your third-party code
    #   repository is configured. For Bitbucket, this is the account ID of
    #   the owner of the Bitbucket repository.
    #   @return [String]
    #
    # @!attribute [rw] connection_status
    #   The current status of the connection.
    #   @return [String]
    #
    # @!attribute [rw] host_arn
    #   The Amazon Resource Name (ARN) of the host associated with the
    #   connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/Connection AWS API Documentation
    #
    class Connection < Struct.new(
      :connection_name,
      :connection_arn,
      :provider_type,
      :owner_account_id,
      :connection_status,
      :host_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateConnectionInput
    #   data as a hash:
    #
    #       {
    #         provider_type: "Bitbucket", # accepts Bitbucket, GitHub, GitHubEnterpriseServer
    #         connection_name: "ConnectionName", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         host_arn: "HostArn",
    #       }
    #
    # @!attribute [rw] provider_type
    #   The name of the external provider where your third-party code
    #   repository is configured. The valid provider type is Bitbucket.
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection to be created. The name must be unique in
    #   the calling AWS account.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair to use when tagging the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] host_arn
    #   The Amazon Resource Name (ARN) of the host associated with the
    #   connection to be created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/CreateConnectionInput AWS API Documentation
    #
    class CreateConnectionInput < Struct.new(
      :provider_type,
      :connection_name,
      :tags,
      :host_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of the connection to be created. The
    #   ARN is used as the connection reference when the connection is
    #   shared between AWS services.
    #
    #   <note markdown="1"> The ARN is never reused if the connection is deleted.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Specifies the tags applied to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/CreateConnectionOutput AWS API Documentation
    #
    class CreateConnectionOutput < Struct.new(
      :connection_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateHostInput
    #   data as a hash:
    #
    #       {
    #         name: "HostName", # required
    #         provider_type: "Bitbucket", # required, accepts Bitbucket, GitHub, GitHubEnterpriseServer
    #         provider_endpoint: "Url", # required
    #         vpc_configuration: {
    #           vpc_id: "VpcId", # required
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["SecurityGroupId"], # required
    #           tls_certificate: "TlsCertificate",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the host to be created. The name must be unique in the
    #   calling AWS account.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The name of the installed provider to be associated with your
    #   connection. The host resource represents the infrastructure where
    #   your provider type is installed. The valid provider type is GitHub
    #   Enterprise Server.
    #   @return [String]
    #
    # @!attribute [rw] provider_endpoint
    #   The endpoint of the infrastructure to be represented by the host
    #   after it is created.
    #   @return [String]
    #
    # @!attribute [rw] vpc_configuration
    #   The VPC configuration to be provisioned for the host. A VPC must be
    #   configured and the infrastructure to be represented by the host must
    #   already be connected to the VPC.
    #   @return [Types::VpcConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/CreateHostInput AWS API Documentation
    #
    class CreateHostInput < Struct.new(
      :name,
      :provider_type,
      :provider_endpoint,
      :vpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] host_arn
    #   The Amazon Resource Name (ARN) of the host to be created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/CreateHostOutput AWS API Documentation
    #
    class CreateHostOutput < Struct.new(
      :host_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteConnectionInput
    #   data as a hash:
    #
    #       {
    #         connection_arn: "ConnectionArn", # required
    #       }
    #
    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of the connection to be deleted.
    #
    #   <note markdown="1"> The ARN is never reused if the connection is deleted.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/DeleteConnectionInput AWS API Documentation
    #
    class DeleteConnectionInput < Struct.new(
      :connection_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/DeleteConnectionOutput AWS API Documentation
    #
    class DeleteConnectionOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteHostInput
    #   data as a hash:
    #
    #       {
    #         host_arn: "HostArn", # required
    #       }
    #
    # @!attribute [rw] host_arn
    #   The Amazon Resource Name (ARN) of the host to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/DeleteHostInput AWS API Documentation
    #
    class DeleteHostInput < Struct.new(
      :host_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/DeleteHostOutput AWS API Documentation
    #
    class DeleteHostOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass GetConnectionInput
    #   data as a hash:
    #
    #       {
    #         connection_arn: "ConnectionArn", # required
    #       }
    #
    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of a connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/GetConnectionInput AWS API Documentation
    #
    class GetConnectionInput < Struct.new(
      :connection_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection
    #   The connection details, such as status, owner, and provider type.
    #   @return [Types::Connection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/GetConnectionOutput AWS API Documentation
    #
    class GetConnectionOutput < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetHostInput
    #   data as a hash:
    #
    #       {
    #         host_arn: "HostArn", # required
    #       }
    #
    # @!attribute [rw] host_arn
    #   The Amazon Resource Name (ARN) of the requested host.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/GetHostInput AWS API Documentation
    #
    class GetHostInput < Struct.new(
      :host_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the requested host.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the requested host.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The provider type of the requested host, such as GitHub Enterprise
    #   Server.
    #   @return [String]
    #
    # @!attribute [rw] provider_endpoint
    #   The endpoint of the infrastructure represented by the requested
    #   host.
    #   @return [String]
    #
    # @!attribute [rw] vpc_configuration
    #   The VPC configuration of the requested host.
    #   @return [Types::VpcConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/GetHostOutput AWS API Documentation
    #
    class GetHostOutput < Struct.new(
      :name,
      :status,
      :provider_type,
      :provider_endpoint,
      :vpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource that represents the infrastructure where a third-party
    # provider is installed. The host is used when you create connections to
    # an installed third-party provider type, such as GitHub Enterprise
    # Server. You create one host for all connections to that provider.
    #
    # <note markdown="1"> A host created through the CLI or the SDK is in `PENDING` status by
    # default. You can make its status `AVAILABLE` by setting up the host
    # in the console.
    #
    #  </note>
    #
    # @!attribute [rw] name
    #   The name of the host.
    #   @return [String]
    #
    # @!attribute [rw] host_arn
    #   The Amazon Resource Name (ARN) of the host.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The name of the installed provider to be associated with your
    #   connection. The host resource represents the infrastructure where
    #   your provider type is installed. The valid provider type is GitHub
    #   Enterprise Server.
    #   @return [String]
    #
    # @!attribute [rw] provider_endpoint
    #   The endpoint of the infrastructure where your provider type is
    #   installed.
    #   @return [String]
    #
    # @!attribute [rw] vpc_configuration
    #   The VPC configuration provisioned for the host.
    #   @return [Types::VpcConfiguration]
    #
    # @!attribute [rw] status
    #   The status of the host, such as PENDING, AVAILABLE,
    #   VPC\_CONFIG\_DELETING, VPC\_CONFIG\_INITIALIZING, and
    #   VPC\_CONFIG\_FAILED\_INITIALIZATION.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status description for the host.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/Host AWS API Documentation
    #
    class Host < Struct.new(
      :name,
      :host_arn,
      :provider_type,
      :provider_endpoint,
      :vpc_configuration,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exceeded the maximum limit for connections.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListConnectionsInput
    #   data as a hash:
    #
    #       {
    #         provider_type_filter: "Bitbucket", # accepts Bitbucket, GitHub, GitHubEnterpriseServer
    #         host_arn_filter: "HostArn",
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] provider_type_filter
    #   Filters the list of connections to those associated with a specified
    #   provider, such as Bitbucket.
    #   @return [String]
    #
    # @!attribute [rw] host_arn_filter
    #   Filters the list of connections to those associated with a specified
    #   host.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that was returned from the previous `ListConnections`
    #   call, which can be used to return the next set of connections in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/ListConnectionsInput AWS API Documentation
    #
    class ListConnectionsInput < Struct.new(
      :provider_type_filter,
      :host_arn_filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connections
    #   A list of connections and the details for each connection, such as
    #   status, owner, and provider type.
    #   @return [Array<Types::Connection>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used in the next `ListConnections` call. To view
    #   all items in the list, continue to call this operation with each
    #   subsequent token until no more `nextToken` values are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/ListConnectionsOutput AWS API Documentation
    #
    class ListConnectionsOutput < Struct.new(
      :connections,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListHostsInput
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that was returned from the previous `ListHosts` call,
    #   which can be used to return the next set of hosts in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/ListHostsInput AWS API Documentation
    #
    class ListHostsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hosts
    #   A list of hosts and the details for each host, such as status,
    #   endpoint, and provider type.
    #   @return [Array<Types::Host>]
    #
    # @!attribute [rw] next_token
    #   A token that can be used in the next `ListHosts` call. To view all
    #   items in the list, continue to call this operation with each
    #   subsequent token until no more `nextToken` values are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/ListHostsOutput AWS API Documentation
    #
    class ListHostsOutput < Struct.new(
      :hosts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   get information about tags, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tag key and value pairs associated with the specified
    #   resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resource not found. Verify the connection resource ARN and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resource not found. Verify the ARN for the host resource and try
    # again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/ResourceUnavailableException AWS API Documentation
    #
    class ResourceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag is a key-value pair that is used to manage the resource.
    #
    # This tag is available for use by AWS services that support tags.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The tag's key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag's value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which you want to
    #   add or update tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags you want to modify or add to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of keys for the tags to be removed from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # The VPC configuration provisioned for the host.
    #
    # @note When making an API call, you may pass VpcConfiguration
    #   data as a hash:
    #
    #       {
    #         vpc_id: "VpcId", # required
    #         subnet_ids: ["SubnetId"], # required
    #         security_group_ids: ["SecurityGroupId"], # required
    #         tls_certificate: "TlsCertificate",
    #       }
    #
    # @!attribute [rw] vpc_id
    #   The ID of the Amazon VPC connected to the infrastructure where your
    #   provider type is installed.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The ID of the subnet or subnets associated with the Amazon VPC
    #   connected to the infrastructure where your provider type is
    #   installed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The ID of the security group or security groups associated with the
    #   Amazon VPC connected to the infrastructure where your provider type
    #   is installed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tls_certificate
    #   The value of the Transport Layer Security (TLS) certificate
    #   associated with the infrastructure where your provider type is
    #   installed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/VpcConfiguration AWS API Documentation
    #
    class VpcConfiguration < Struct.new(
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :tls_certificate)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
