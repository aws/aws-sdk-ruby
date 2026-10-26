# frozen_string_literal: true

# This is generated code!

module Aws::Cloud9
  # This module contains the types returned by client operations.
  module Types

    # <p>The target request is invalid.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute class_name
    #   @return [String]
    # @!attribute code
    #   @return [Integer]
    class BadRequestException < Struct.new(
      nil,
      :message,
      :class_name,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:code] = 0 unless options.key?(:code)
        super
      end
    end

    # <p>A concurrent access issue occurred.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute class_name
    #   @return [String]
    # @!attribute code
    #   @return [Integer]
    class ConcurrentAccessException < Struct.new(
      nil,
      :message,
      :class_name,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:code] = 0 unless options.key?(:code)
        super
      end
    end

    # <p>A conflict occurred.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute class_name
    #   @return [String]
    # @!attribute code
    #   @return [Integer]
    class ConflictException < Struct.new(
      nil,
      :message,
      :class_name,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:code] = 0 unless options.key?(:code)
        super
      end
    end

    # @!attribute name
    #   <p>The name of the environment to create.</p>
    #            <p>This name is visible to other IAM users in the same Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the environment to create.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, case-sensitive string that helps Cloud9 to ensure this operation completes no
    #         more than one time.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Client Tokens</a> in the
    #           <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The type of instance to connect to the environment (for example,
    #         <code>t2.micro</code>).</p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>The ID of the subnet in Amazon VPC that Cloud9 will use to communicate with the Amazon EC2
    #         instance.</p>
    #   @return [String]
    # @!attribute image_id
    #   <p>The identifier for the Amazon Machine Image (AMI) that's used to create the EC2 instance.
    #         To choose an AMI for the instance, you must specify a valid AMI alias or a valid Amazon EC2 Systems Manager (SSM)
    #         path.</p>
    #            <p></p>
    #            <p>We recommend using Amazon Linux 2023 as the AMI to create your environment as it is fully
    #         supported.</p>
    #            <p>From December 16, 2024, Ubuntu 18.04 will be removed from the list of available
    #           <code>imageIds</code> for Cloud9. This change is necessary as Ubuntu 18.04 has ended standard
    #         support on May 31, 2023. This change will only affect direct API consumers, and not Cloud9
    #         console users.</p>
    #            <p>Since Ubuntu 18.04 has ended standard support as of May 31, 2023, we recommend you choose
    #         Ubuntu 22.04.</p>
    #            <p>
    #               <b>AMI aliases </b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Linux 2023 (recommended): <code>amazonlinux-2023-x86_64</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Ubuntu 22.04: <code>ubuntu-22.04-x86_64</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>SSM paths</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Linux 2023 (recommended):
    #               <code>resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2023-x86_64</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Ubuntu 22.04:
    #             <code>resolve:ssm:/aws/service/cloud9/amis/ubuntu-22.04-x86_64</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute automatic_stop_time_minutes
    #   <p>The number of minutes until the running instance is shut down after the environment has
    #         last been used.</p>
    #   @return [Integer]
    # @!attribute owner_arn
    #   <p>The Amazon Resource Name (ARN) of the environment owner. This ARN can be the ARN of any
    #         IAM principal. If this value is not specified, the ARN defaults to this environment's
    #         creator.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key-value pairs that will be associated with the new Cloud9 development
    #         environment.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute connection_type
    #   <p>The connection type used for connecting to an Amazon EC2 environment. Valid values are
    #           <code>CONNECT_SSH</code> (default) and <code>CONNECT_SSM</code> (connected through
    #         Amazon EC2 Systems Manager).</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloud9/latest/user-guide/ec2-ssm.html">Accessing no-ingress EC2 instances with
    #           Amazon EC2 Systems Manager</a> in the <i>Cloud9 User Guide</i>.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>. Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    #   @return [Boolean]
    class CreateEnvironmentEC2Request < Struct.new(
      nil,
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
      :dry_run,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>The ID of the environment that was created.</p>
    #   @return [String]
    class CreateEnvironmentEC2Result < Struct.new(
      nil,
      :environment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>The ID of the environment that contains the environment member you want to add.</p>
    #   @return [String]
    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the environment member you want to add.</p>
    #   @return [String]
    # @!attribute permissions
    #   <p>The type of environment member permissions you want to associate with this environment
    #         member. Available values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>read-only</code>: Has read-only access to the environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>read-write</code>: Has read-write access to the environment.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class CreateEnvironmentMembershipRequest < Struct.new(
      nil,
      :environment_id,
      :user_arn,
      :permissions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership
    #   <p>Information about the environment member that was added.</p>
    #   @return [Types::EnvironmentMember]
    class CreateEnvironmentMembershipResult < Struct.new(
      nil,
      :membership,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>The ID of the environment to delete the environment member from.</p>
    #   @return [String]
    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the environment member to delete from the
    #         environment.</p>
    #   @return [String]
    class DeleteEnvironmentMembershipRequest < Struct.new(
      nil,
      :environment_id,
      :user_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteEnvironmentMembershipResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>The ID of the environment to delete.</p>
    #   @return [String]
    class DeleteEnvironmentRequest < Struct.new(
      nil,
      :environment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteEnvironmentResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of an individual environment member to get information
    #         about. If no value is specified, information about all environment members are
    #         returned.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the environment to get environment member information about.</p>
    #   @return [String]
    # @!attribute permissions
    #   <p>The type of environment member permissions to get information about. Available values
    #         include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>owner</code>: Owns the environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>read-only</code>: Has read-only access to the environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>read-write</code>: Has read-write access to the environment.</p>
    #               </li>
    #            </ul>
    #            <p>If no value is specified, information about all environment members are returned.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>During a previous call, if there are more than 25 items in the list, only the first 25
    #         items are returned, along with a unique string called a <i>next token</i>. To
    #         get the next batch of items in the list, call this operation again, adding the next token to
    #         the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of environment members to get information about.</p>
    #   @return [Integer]
    class DescribeEnvironmentMembershipsRequest < Struct.new(
      nil,
      :user_arn,
      :environment_id,
      :permissions,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memberships
    #   <p>Information about the environment members for the environment.</p>
    #   @return [Array<Types::EnvironmentMember>]
    # @!attribute next_token
    #   <p>If there are more than 25 items in the list, only the first 25 items are returned, along
    #         with a unique string called a <i>next token</i>. To get the next batch of items
    #         in the list, call this operation again, adding the next token to the call.</p>
    #   @return [String]
    class DescribeEnvironmentMembershipsResult < Struct.new(
      nil,
      :memberships,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>The ID of the environment to get status information about.</p>
    #   @return [String]
    class DescribeEnvironmentStatusRequest < Struct.new(
      nil,
      :environment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the environment. Available values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>connecting</code>: The environment is connecting.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>creating</code>: The environment is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The environment is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>error</code>: The environment is in an error state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ready</code>: The environment is ready.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>stopped</code>: The environment is stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>stopping</code>: The environment is stopping.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>Any informational message about the status of the environment.</p>
    #   @return [String]
    class DescribeEnvironmentStatusResult < Struct.new(
      nil,
      :status,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_ids
    #   <p>The IDs of individual environments to get information about.</p>
    #   @return [Array<String>]
    class DescribeEnvironmentsRequest < Struct.new(
      nil,
      :environment_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environments
    #   <p>Information about the environments that are returned.</p>
    #   @return [Array<Types::Environment>]
    class DescribeEnvironmentsResult < Struct.new(
      nil,
      :environments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Cloud9 development environment.</p>
    # @!attribute id
    #   <p>The ID of the environment.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the environment.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of environment. Valid values include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ec2</code>: An Amazon Elastic Compute Cloud (Amazon EC2) instance connects to the environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ssh</code>: Your own server connects to the environment.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute connection_type
    #   <p>The connection type used for connecting to an Amazon EC2 environment. <code>CONNECT_SSH</code>
    #         is selected by default.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment.</p>
    #   @return [String]
    # @!attribute owner_arn
    #   <p>The Amazon Resource Name (ARN) of the environment owner.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>The state of the environment in its creation or deletion lifecycle.</p>
    #   @return [Types::EnvironmentLifecycle]
    # @!attribute managed_credentials_status
    #   <p>Describes the status of Amazon Web Services managed temporary credentials for the Cloud9 environment.
    #         Available values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED_ON_CREATE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENABLED_BY_OWNER</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED_BY_DEFAULT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED_BY_OWNER</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED_BY_COLLABORATOR</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING_REMOVAL_BY_COLLABORATOR</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING_REMOVAL_BY_OWNER</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED_REMOVAL_BY_COLLABORATOR</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENABLED_BY_OWNER</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED_BY_DEFAULT</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class Environment < Struct.new(
      nil,
      :id,
      :name,
      :description,
      :type,
      :connection_type,
      :arn,
      :owner_arn,
      :lifecycle,
      :managed_credentials_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the current creation or deletion lifecycle state of an Cloud9 development
    #       environment.</p>
    # @!attribute status
    #   <p>The current creation or deletion lifecycle state of the environment.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code>: The environment is in the process of being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATED</code>: The environment was successfully created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code>: The environment failed to be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code>: The environment is in the process of being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_FAILED</code>: The environment failed to delete.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute reason
    #   <p>Any informational message about the lifecycle state of the environment.</p>
    #   @return [String]
    # @!attribute failure_resource
    #   <p>If the environment failed to delete, the Amazon Resource Name (ARN) of the related Amazon Web Services
    #         resource.</p>
    #   @return [String]
    class EnvironmentLifecycle < Struct.new(
      nil,
      :status,
      :reason,
      :failure_resource,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an environment member for an Cloud9 development environment.</p>
    # @!attribute permissions
    #   <p>The type of environment member permissions associated with this environment member.
    #         Available values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>owner</code>: Owns the environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>read-only</code>: Has read-only access to the environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>read-write</code>: Has read-write access to the environment.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user ID in Identity and Access Management (IAM) of the environment member.</p>
    #   @return [String]
    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the environment member.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the environment for the environment member.</p>
    #   @return [String]
    # @!attribute last_access
    #   <p>The time, expressed in epoch time format, when the environment member last opened the
    #         environment.</p>
    #   @return [Time]
    class EnvironmentMember < Struct.new(
      nil,
      :permissions,
      :user_id,
      :user_arn,
      :environment_id,
      :last_access,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An access permissions issue occurred.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute class_name
    #   @return [String]
    # @!attribute code
    #   @return [Integer]
    class ForbiddenException < Struct.new(
      nil,
      :message,
      :class_name,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:code] = 0 unless options.key?(:code)
        super
      end
    end

    # <p>An internal server error occurred.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute class_name
    #   @return [String]
    # @!attribute code
    #   @return [Integer]
    class InternalServerErrorException < Struct.new(
      nil,
      :message,
      :class_name,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:code] = 0 unless options.key?(:code)
        super
      end
    end

    # <p>A service limit was exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute class_name
    #   @return [String]
    # @!attribute code
    #   @return [Integer]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      :class_name,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:code] = 0 unless options.key?(:code)
        super
      end
    end

    # @!attribute next_token
    #   <p>During a previous call, if there are more than 25 items in the list, only the first 25
    #         items are returned, along with a unique string called a <i>next token</i>. To
    #         get the next batch of items in the list, call this operation again, adding the next token to
    #         the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of environments to get identifiers for.</p>
    #   @return [Integer]
    class ListEnvironmentsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are more than 25 items in the list, only the first 25 items are returned, along
    #         with a unique string called a <i>next token</i>. To get the next batch of items
    #         in the list, call this operation again, adding the next token to the call.</p>
    #   @return [String]
    # @!attribute environment_ids
    #   <p>The list of environment identifiers.</p>
    #   @return [Array<String>]
    class ListEnvironmentsResult < Struct.new(
      nil,
      :next_token,
      :environment_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Cloud9 development environment to get the tags
    #         for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags associated with the Cloud9 development environment.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The target resource cannot be found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute class_name
    #   @return [String]
    # @!attribute code
    #   @return [Integer]
    class NotFoundException < Struct.new(
      nil,
      :message,
      :class_name,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:code] = 0 unless options.key?(:code)
        super
      end
    end

    # <p>Metadata that is associated with Amazon Web Services resources. In particular, a name-value pair that
    #       can be associated with an Cloud9 development environment. There are two types of tags:
    #         <i>user tags</i> and <i>system tags</i>. A user tag is created
    #       by the user. A system tag is automatically created by Amazon Web Services services. A system tag is prefixed
    #       with <code>"aws:"</code> and cannot be modified by the user.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute key
    #   <p>The <b>name</b> part of a tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The <b>value</b> part of a tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Cloud9 development environment to add tags
    #         to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tags to add to the given Cloud9 development environment.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Too many service requests were made over the given time period.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute class_name
    #   @return [String]
    # @!attribute code
    #   @return [Integer]
    class TooManyRequestsException < Struct.new(
      nil,
      :message,
      :class_name,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:code] = 0 unless options.key?(:code)
        super
      end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Cloud9 development environment to remove tags
    #         from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag names of the tags to remove from the given Cloud9 development
    #         environment.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>The ID of the environment for the environment member whose settings you want to
    #         change.</p>
    #   @return [String]
    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the environment member whose settings you want to
    #         change.</p>
    #   @return [String]
    # @!attribute permissions
    #   <p>The replacement type of environment member permissions you want to associate with this
    #         environment member. Available values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>read-only</code>: Has read-only access to the environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>read-write</code>: Has read-write access to the environment.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class UpdateEnvironmentMembershipRequest < Struct.new(
      nil,
      :environment_id,
      :user_arn,
      :permissions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership
    #   <p>Information about the environment member whose settings were changed.</p>
    #   @return [Types::EnvironmentMember]
    class UpdateEnvironmentMembershipResult < Struct.new(
      nil,
      :membership,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>The ID of the environment to change settings.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A replacement name for the environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Any new or replacement description for the environment.</p>
    #   @return [String]
    # @!attribute managed_credentials_action
    #   <p>Allows the environment owner to turn on or turn off the Amazon Web Services managed temporary
    #         credentials for an Cloud9 environment by using one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLE</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Only the environment owner can change the status of managed temporary credentials. An <code>AccessDeniedException</code> is thrown if an attempt to turn on or turn off managed temporary credentials is made by an account that's not the environment
    #         owner.</p>
    #            </note>
    #   @return [String]
    class UpdateEnvironmentRequest < Struct.new(
      nil,
      :environment_id,
      :name,
      :description,
      :managed_credentials_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateEnvironmentResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
