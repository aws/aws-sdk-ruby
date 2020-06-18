# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeStarconnections
  module Types

    # The AWS::CodeStarConnections::Connection resource can be used to
    # connect external source providers with services like AWS CodePipeline.
    #
    # Note: A connection created through CloudFormation is in `PENDING`
    # status by default. You can make its status `AVAILABLE` by editing
    # the connection in the CodePipeline console.
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
    #   repository is configured. Currently, the valid provider type is
    #   Bitbucket.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/Connection AWS API Documentation
    #
    class Connection < Struct.new(
      :connection_name,
      :connection_arn,
      :provider_type,
      :owner_account_id,
      :connection_status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateConnectionInput
    #   data as a hash:
    #
    #       {
    #         provider_type: "Bitbucket", # required, accepts Bitbucket
    #         connection_name: "ConnectionName", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] provider_type
    #   The name of the external provider where your third-party code
    #   repository is configured. Currently, the valid provider type is
    #   Bitbucket.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/CreateConnectionInput AWS API Documentation
    #
    class CreateConnectionInput < Struct.new(
      :provider_type,
      :connection_name,
      :tags)
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/DeleteConnectionOutput AWS API Documentation
    #
    class DeleteConnectionOutput < Aws::EmptyStructure; end

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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListConnectionsInput
    #   data as a hash:
    #
    #       {
    #         provider_type_filter: "Bitbucket", # accepts Bitbucket
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] provider_type_filter
    #   Filters the list of connections to those associated with a specified
    #   provider, such as Bitbucket.
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
      :max_results,
      :next_token)
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

  end
end
