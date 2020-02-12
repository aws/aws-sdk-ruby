# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeStarconnections
  module Types

    # The configuration that allows a service such as CodePipeline to
    # connect to a third-party code repository.
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
    #   The name of the external provider where your third-party code
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/CreateConnectionInput AWS API Documentation
    #
    class CreateConnectionInput < Struct.new(
      :provider_type,
      :connection_name)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01/CreateConnectionOutput AWS API Documentation
    #
    class CreateConnectionOutput < Struct.new(
      :connection_arn)
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

  end
end
