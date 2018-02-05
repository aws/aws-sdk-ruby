# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Cloud9
  module Types

    # @note When making an API call, you may pass CreateEnvironmentEC2Request
    #   data as a hash:
    #
    #       {
    #         name: "EnvironmentName", # required
    #         description: "EnvironmentDescription",
    #         client_request_token: "ClientRequestToken",
    #         instance_type: "InstanceType", # required
    #         subnet_id: "SubnetId",
    #         automatic_stop_time_minutes: 1,
    #         owner_arn: "UserArn",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the environment to create.
    #
    #   This name is visible to other AWS IAM users in the same AWS account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the environment to create.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique, case-sensitive string that helps AWS Cloud9 to ensure this
    #   operation completes no more than one time.
    #
    #   For more information, see [Client Tokens][1] in the *Amazon EC2 API
    #   Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The type of instance to connect to the environment (for example,
    #   `t2.micro`).
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet in Amazon VPC that AWS Cloud9 will use to
    #   communicate with the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] automatic_stop_time_minutes
    #   The number of minutes until the running instance is shut down after
    #   the environment has last been used.
    #   @return [Integer]
    #
    # @!attribute [rw] owner_arn
    #   The Amazon Resource Name (ARN) of the environment owner. This ARN
    #   can be the ARN of any AWS IAM principal. If this value is not
    #   specified, the ARN defaults to this environment's creator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/CreateEnvironmentEC2Request AWS API Documentation
    #
    class CreateEnvironmentEC2Request < Struct.new(
      :name,
      :description,
      :client_request_token,
      :instance_type,
      :subnet_id,
      :automatic_stop_time_minutes,
      :owner_arn)
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   The ID of the environment that was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/CreateEnvironmentEC2Result AWS API Documentation
    #
    class CreateEnvironmentEC2Result < Struct.new(
      :environment_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEnvironmentMembershipRequest
    #   data as a hash:
    #
    #       {
    #         environment_id: "EnvironmentId", # required
    #         user_arn: "UserArn", # required
    #         permissions: "read-write", # required, accepts read-write, read-only
    #       }
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment that contains the environment member you
    #   want to add.
    #   @return [String]
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of the environment member you want to
    #   add.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   The type of environment member permissions you want to associate
    #   with this environment member. Available values include:
    #
    #   * `read-only`\: Has read-only access to the environment.
    #
    #   * `read-write`\: Has read-write access to the environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/CreateEnvironmentMembershipRequest AWS API Documentation
    #
    class CreateEnvironmentMembershipRequest < Struct.new(
      :environment_id,
      :user_arn,
      :permissions)
      include Aws::Structure
    end

    # @!attribute [rw] membership
    #   Information about the environment member that was added.
    #   @return [Types::EnvironmentMember]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/CreateEnvironmentMembershipResult AWS API Documentation
    #
    class CreateEnvironmentMembershipResult < Struct.new(
      :membership)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEnvironmentMembershipRequest
    #   data as a hash:
    #
    #       {
    #         environment_id: "EnvironmentId", # required
    #         user_arn: "UserArn", # required
    #       }
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment to delete the environment member from.
    #   @return [String]
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of the environment member to delete
    #   from the environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DeleteEnvironmentMembershipRequest AWS API Documentation
    #
    class DeleteEnvironmentMembershipRequest < Struct.new(
      :environment_id,
      :user_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DeleteEnvironmentMembershipResult AWS API Documentation
    #
    class DeleteEnvironmentMembershipResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteEnvironmentRequest
    #   data as a hash:
    #
    #       {
    #         environment_id: "EnvironmentId", # required
    #       }
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DeleteEnvironmentRequest AWS API Documentation
    #
    class DeleteEnvironmentRequest < Struct.new(
      :environment_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DeleteEnvironmentResult AWS API Documentation
    #
    class DeleteEnvironmentResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeEnvironmentMembershipsRequest
    #   data as a hash:
    #
    #       {
    #         user_arn: "UserArn",
    #         environment_id: "EnvironmentId",
    #         permissions: ["owner"], # accepts owner, read-write, read-only
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of an individual environment member
    #   to get information about. If no value is specified, information
    #   about all environment members are returned.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment to get environment member information
    #   about.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   The type of environment member permissions to get information about.
    #   Available values include:
    #
    #   * `owner`\: Owns the environment.
    #
    #   * `read-only`\: Has read-only access to the environment.
    #
    #   * `read-write`\: Has read-write access to the environment.
    #
    #   If no value is specified, information about all environment members
    #   are returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   During a previous call, if there are more than 25 items in the list,
    #   only the first 25 items are returned, along with a unique string
    #   called a *next token*. To get the next batch of items in the list,
    #   call this operation again, adding the next token to the call. To get
    #   all of the items in the list, keep calling this operation with each
    #   subsequent next token that is returned, until no more next tokens
    #   are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of environment members to get information about.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DescribeEnvironmentMembershipsRequest AWS API Documentation
    #
    class DescribeEnvironmentMembershipsRequest < Struct.new(
      :user_arn,
      :environment_id,
      :permissions,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] memberships
    #   Information about the environment members for the environment.
    #   @return [Array<Types::EnvironmentMember>]
    #
    # @!attribute [rw] next_token
    #   If there are more than 25 items in the list, only the first 25 items
    #   are returned, along with a unique string called a *next token*. To
    #   get the next batch of items in the list, call this operation again,
    #   adding the next token to the call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DescribeEnvironmentMembershipsResult AWS API Documentation
    #
    class DescribeEnvironmentMembershipsResult < Struct.new(
      :memberships,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEnvironmentStatusRequest
    #   data as a hash:
    #
    #       {
    #         environment_id: "EnvironmentId", # required
    #       }
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment to get status information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DescribeEnvironmentStatusRequest AWS API Documentation
    #
    class DescribeEnvironmentStatusRequest < Struct.new(
      :environment_id)
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the environment. Available values include:
    #
    #   * `connecting`\: The environment is connecting.
    #
    #   * `creating`\: The environment is being created.
    #
    #   * `deleting`\: The environment is being deleted.
    #
    #   * `error`\: The environment is in an error state.
    #
    #   * `ready`\: The environment is ready.
    #
    #   * `stopped`\: The environment is stopped.
    #
    #   * `stopping`\: The environment is stopping.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Any informational message about the status of the environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DescribeEnvironmentStatusResult AWS API Documentation
    #
    class DescribeEnvironmentStatusResult < Struct.new(
      :status,
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEnvironmentsRequest
    #   data as a hash:
    #
    #       {
    #         environment_ids: ["EnvironmentId"], # required
    #       }
    #
    # @!attribute [rw] environment_ids
    #   The IDs of individual environments to get information about.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DescribeEnvironmentsRequest AWS API Documentation
    #
    class DescribeEnvironmentsRequest < Struct.new(
      :environment_ids)
      include Aws::Structure
    end

    # @!attribute [rw] environments
    #   Information about the environments that are returned.
    #   @return [Array<Types::Environment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DescribeEnvironmentsResult AWS API Documentation
    #
    class DescribeEnvironmentsResult < Struct.new(
      :environments)
      include Aws::Structure
    end

    # Information about an AWS Cloud9 development environment.
    #
    # @!attribute [rw] id
    #   The ID of the environment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the environment.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of environment. Valid values include the following:
    #
    #   * `ec2`\: An Amazon Elastic Compute Cloud (Amazon EC2) instance
    #     connects to the environment.
    #
    #   * `ssh`\: Your own server connects to the environment.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the environment.
    #   @return [String]
    #
    # @!attribute [rw] owner_arn
    #   The Amazon Resource Name (ARN) of the environment owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/Environment AWS API Documentation
    #
    class Environment < Struct.new(
      :id,
      :name,
      :description,
      :type,
      :arn,
      :owner_arn)
      include Aws::Structure
    end

    # Information about an environment member for an AWS Cloud9 development
    # environment.
    #
    # @!attribute [rw] permissions
    #   The type of environment member permissions associated with this
    #   environment member. Available values include:
    #
    #   * `owner`\: Owns the environment.
    #
    #   * `read-only`\: Has read-only access to the environment.
    #
    #   * `read-write`\: Has read-write access to the environment.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID in AWS Identity and Access Management (AWS IAM) of the
    #   environment member.
    #   @return [String]
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of the environment member.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment for the environment member.
    #   @return [String]
    #
    # @!attribute [rw] last_access
    #   The time, expressed in epoch time format, when the environment
    #   member last opened the environment.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/EnvironmentMember AWS API Documentation
    #
    class EnvironmentMember < Struct.new(
      :permissions,
      :user_id,
      :user_arn,
      :environment_id,
      :last_access)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEnvironmentsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   During a previous call, if there are more than 25 items in the list,
    #   only the first 25 items are returned, along with a unique string
    #   called a *next token*. To get the next batch of items in the list,
    #   call this operation again, adding the next token to the call. To get
    #   all of the items in the list, keep calling this operation with each
    #   subsequent next token that is returned, until no more next tokens
    #   are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of environments to get identifiers for.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/ListEnvironmentsRequest AWS API Documentation
    #
    class ListEnvironmentsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are more than 25 items in the list, only the first 25 items
    #   are returned, along with a unique string called a *next token*. To
    #   get the next batch of items in the list, call this operation again,
    #   adding the next token to the call.
    #   @return [String]
    #
    # @!attribute [rw] environment_ids
    #   The list of environment identifiers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/ListEnvironmentsResult AWS API Documentation
    #
    class ListEnvironmentsResult < Struct.new(
      :next_token,
      :environment_ids)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEnvironmentMembershipRequest
    #   data as a hash:
    #
    #       {
    #         environment_id: "EnvironmentId", # required
    #         user_arn: "UserArn", # required
    #         permissions: "read-write", # required, accepts read-write, read-only
    #       }
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment for the environment member whose settings
    #   you want to change.
    #   @return [String]
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of the environment member whose
    #   settings you want to change.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   The replacement type of environment member permissions you want to
    #   associate with this environment member. Available values include:
    #
    #   * `read-only`\: Has read-only access to the environment.
    #
    #   * `read-write`\: Has read-write access to the environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/UpdateEnvironmentMembershipRequest AWS API Documentation
    #
    class UpdateEnvironmentMembershipRequest < Struct.new(
      :environment_id,
      :user_arn,
      :permissions)
      include Aws::Structure
    end

    # @!attribute [rw] membership
    #   Information about the environment member whose settings were
    #   changed.
    #   @return [Types::EnvironmentMember]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/UpdateEnvironmentMembershipResult AWS API Documentation
    #
    class UpdateEnvironmentMembershipResult < Struct.new(
      :membership)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEnvironmentRequest
    #   data as a hash:
    #
    #       {
    #         environment_id: "EnvironmentId", # required
    #         name: "EnvironmentName",
    #         description: "EnvironmentDescription",
    #       }
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment to change settings.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A replacement name for the environment.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Any new or replacement description for the environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/UpdateEnvironmentRequest AWS API Documentation
    #
    class UpdateEnvironmentRequest < Struct.new(
      :environment_id,
      :name,
      :description)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/UpdateEnvironmentResult AWS API Documentation
    #
    class UpdateEnvironmentResult < Aws::EmptyStructure; end

  end
end
