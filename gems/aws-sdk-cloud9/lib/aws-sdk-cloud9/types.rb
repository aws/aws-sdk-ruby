# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Cloud9
  module Types

    # The target request is invalid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/BadRequestException AWS API Documentation
    #
    class BadRequestException < Aws::EmptyStructure; end

    # A concurrent access issue occurred.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/ConcurrentAccessException AWS API Documentation
    #
    class ConcurrentAccessException < Aws::EmptyStructure; end

    # A conflict occurred.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/ConflictException AWS API Documentation
    #
    class ConflictException < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the environment to create.
    #
    #   This name is visible to other IAM users in the same Amazon Web
    #   Services account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the environment to create.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique, case-sensitive string that helps Cloud9 to ensure this
    #   operation completes no more than one time.
    #
    #   For more information, see [Client Tokens][1] in the *Amazon EC2 API
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The type of instance to connect to the environment (for example,
    #   `t2.micro`).
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet in Amazon VPC that Cloud9 will use to
    #   communicate with the Amazon EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The identifier for the Amazon Machine Image (AMI) that's used to
    #   create the EC2 instance. To choose an AMI for the instance, you must
    #   specify a valid AMI alias or a valid Amazon EC2 Systems Manager
    #   (SSM) path.
    #
    #   The default Amazon Linux AMI is currently used if the parameter
    #   isn't explicitly assigned a value in the request.
    #
    #   In the future the parameter for Amazon Linux will no longer be
    #   available when you specify an AMI for your instance. Amazon Linux 2
    #   will then become the default AMI, which is used to launch your
    #   instance if no parameter is explicitly defined.
    #
    #   <b>AMI aliases </b>
    #
    #   * <b>Amazon Linux (default): <code>amazonlinux-1-x86_64</code> </b>
    #
    #   * Amazon Linux 2: `amazonlinux-2-x86_64`
    #
    #   * Ubuntu 18.04: `ubuntu-18.04-x86_64`
    #
    #   **SSM paths**
    #
    #   * <b>Amazon Linux (default):
    #     <code>resolve:ssm:/aws/service/cloud9/amis/amazonlinux-1-x86_64</code>
    #     </b>
    #
    #   * Amazon Linux 2:
    #     `resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2-x86_64`
    #
    #   * Ubuntu 18.04:
    #     `resolve:ssm:/aws/service/cloud9/amis/ubuntu-18.04-x86_64`
    #   @return [String]
    #
    # @!attribute [rw] automatic_stop_time_minutes
    #   The number of minutes until the running instance is shut down after
    #   the environment has last been used.
    #   @return [Integer]
    #
    # @!attribute [rw] owner_arn
    #   The Amazon Resource Name (ARN) of the environment owner. This ARN
    #   can be the ARN of any IAM principal. If this value is not specified,
    #   the ARN defaults to this environment's creator.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs that will be associated with the new
    #   Cloud9 development environment.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] connection_type
    #   The connection type used for connecting to an Amazon EC2
    #   environment. Valid values are `CONNECT_SSH` (default) and
    #   `CONNECT_SSM` (connected through Amazon EC2 Systems Manager).
    #
    #   For more information, see [Accessing no-ingress EC2 instances with
    #   Amazon EC2 Systems Manager][1] in the *Cloud9 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud9/latest/user-guide/ec2-ssm.html
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/CreateEnvironmentEC2Request AWS API Documentation
    #
    class CreateEnvironmentEC2Request < Struct.new(
      :name,
      :description,
      :client_request_token,
      :instance_type,
      :subnet_id,
      :image_id,
      :automatic_stop_time_minutes,
      :owner_arn,
      :tags,
      :connection_type,
      :dry_run)
      SENSITIVE = [:description, :tags]
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   * `read-only`: Has read-only access to the environment.
    #
    #   * `read-write`: Has read-write access to the environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/CreateEnvironmentMembershipRequest AWS API Documentation
    #
    class CreateEnvironmentMembershipRequest < Struct.new(
      :environment_id,
      :user_arn,
      :permissions)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DeleteEnvironmentMembershipResult AWS API Documentation
    #
    class DeleteEnvironmentMembershipResult < Aws::EmptyStructure; end

    # @!attribute [rw] environment_id
    #   The ID of the environment to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DeleteEnvironmentRequest AWS API Documentation
    #
    class DeleteEnvironmentRequest < Struct.new(
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DeleteEnvironmentResult AWS API Documentation
    #
    class DeleteEnvironmentResult < Aws::EmptyStructure; end

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
    #   * `owner`: Owns the environment.
    #
    #   * `read-only`: Has read-only access to the environment.
    #
    #   * `read-write`: Has read-write access to the environment.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   The ID of the environment to get status information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DescribeEnvironmentStatusRequest AWS API Documentation
    #
    class DescribeEnvironmentStatusRequest < Struct.new(
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the environment. Available values include:
    #
    #   * `connecting`: The environment is connecting.
    #
    #   * `creating`: The environment is being created.
    #
    #   * `deleting`: The environment is being deleted.
    #
    #   * `error`: The environment is in an error state.
    #
    #   * `ready`: The environment is ready.
    #
    #   * `stopped`: The environment is stopped.
    #
    #   * `stopping`: The environment is stopping.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_ids
    #   The IDs of individual environments to get information about.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DescribeEnvironmentsRequest AWS API Documentation
    #
    class DescribeEnvironmentsRequest < Struct.new(
      :environment_ids)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Cloud9 development environment.
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
    #   * `ec2`: An Amazon Elastic Compute Cloud (Amazon EC2) instance
    #     connects to the environment.
    #
    #   * `ssh`: Your own server connects to the environment.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The connection type used for connecting to an Amazon EC2
    #   environment. `CONNECT_SSH` is selected by default.
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
    # @!attribute [rw] lifecycle
    #   The state of the environment in its creation or deletion lifecycle.
    #   @return [Types::EnvironmentLifecycle]
    #
    # @!attribute [rw] managed_credentials_status
    #   Describes the status of Amazon Web Services managed temporary
    #   credentials for the Cloud9 environment. Available values are:
    #
    #   * `ENABLED_ON_CREATE`
    #
    #   * `ENABLED_BY_OWNER`
    #
    #   * `DISABLED_BY_DEFAULT`
    #
    #   * `DISABLED_BY_OWNER`
    #
    #   * `DISABLED_BY_COLLABORATOR`
    #
    #   * `PENDING_REMOVAL_BY_COLLABORATOR`
    #
    #   * `PENDING_REMOVAL_BY_OWNER`
    #
    #   * `FAILED_REMOVAL_BY_COLLABORATOR`
    #
    #   * `ENABLED_BY_OWNER`
    #
    #   * `DISABLED_BY_DEFAULT`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/Environment AWS API Documentation
    #
    class Environment < Struct.new(
      :id,
      :name,
      :description,
      :type,
      :connection_type,
      :arn,
      :owner_arn,
      :lifecycle,
      :managed_credentials_status)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Information about the current creation or deletion lifecycle state of
    # an Cloud9 development environment.
    #
    # @!attribute [rw] status
    #   The current creation or deletion lifecycle state of the environment.
    #
    #   * `CREATING`: The environment is in the process of being created.
    #
    #   * `CREATED`: The environment was successfully created.
    #
    #   * `CREATE_FAILED`: The environment failed to be created.
    #
    #   * `DELETING`: The environment is in the process of being deleted.
    #
    #   * `DELETE_FAILED`: The environment failed to delete.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Any informational message about the lifecycle state of the
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] failure_resource
    #   If the environment failed to delete, the Amazon Resource Name (ARN)
    #   of the related Amazon Web Services resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/EnvironmentLifecycle AWS API Documentation
    #
    class EnvironmentLifecycle < Struct.new(
      :status,
      :reason,
      :failure_resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an environment member for an Cloud9 development
    # environment.
    #
    # @!attribute [rw] permissions
    #   The type of environment member permissions associated with this
    #   environment member. Available values include:
    #
    #   * `owner`: Owns the environment.
    #
    #   * `read-only`: Has read-only access to the environment.
    #
    #   * `read-write`: Has read-write access to the environment.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID in Identity and Access Management (IAM) of the
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
      SENSITIVE = []
      include Aws::Structure
    end

    # An access permissions issue occurred.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Aws::EmptyStructure; end

    # An internal server error occurred.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Aws::EmptyStructure; end

    # A service limit was exceeded.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Cloud9 development environment
    #   to get the tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags associated with the Cloud9 development environment.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # The target resource cannot be found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/NotFoundException AWS API Documentation
    #
    class NotFoundException < Aws::EmptyStructure; end

    # Metadata that is associated with Amazon Web Services resources. In
    # particular, a name-value pair that can be associated with an Cloud9
    # development environment. There are two types of tags: *user tags* and
    # *system tags*. A user tag is created by the user. A system tag is
    # automatically created by Amazon Web Services services. A system tag is
    # prefixed with `"aws:"` and cannot be modified by the user.
    #
    # @!attribute [rw] key
    #   The **name** part of a tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The **value** part of a tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = [:key, :value]
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Cloud9 development environment
    #   to add tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags to add to the given Cloud9 development environment.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Too many service requests were made over the given time period.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Cloud9 development environment
    #   to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag names of the tags to remove from the given Cloud9
    #   development environment.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = [:tag_keys]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

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
    #   * `read-only`: Has read-only access to the environment.
    #
    #   * `read-write`: Has read-write access to the environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/UpdateEnvironmentMembershipRequest AWS API Documentation
    #
    class UpdateEnvironmentMembershipRequest < Struct.new(
      :environment_id,
      :user_arn,
      :permissions)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] managed_credentials_action
    #   Allows the environment owner to turn on or turn off the Amazon Web
    #   Services managed temporary credentials for an Cloud9 environment by
    #   using one of the following values:
    #
    #   * `ENABLE`
    #
    #   * `DISABLE`
    #
    #   <note markdown="1"> Only the environment owner can change the status of managed
    #   temporary credentials. An `AccessDeniedException` is thrown if an
    #   attempt to turn on or turn off managed temporary credentials is made
    #   by an account that's not the environment owner.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/UpdateEnvironmentRequest AWS API Documentation
    #
    class UpdateEnvironmentRequest < Struct.new(
      :environment_id,
      :name,
      :description,
      :managed_credentials_action)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/UpdateEnvironmentResult AWS API Documentation
    #
    class UpdateEnvironmentResult < Aws::EmptyStructure; end

  end
end
