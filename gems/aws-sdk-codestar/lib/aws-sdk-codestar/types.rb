# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeStar
  module Types

    # @note When making an API call, you may pass AssociateTeamMemberRequest
    #   data as a hash:
    #
    #       {
    #         project_id: "ProjectId", # required
    #         client_request_token: "ClientRequestToken",
    #         user_arn: "UserArn", # required
    #         project_role: "Role", # required
    #         remote_access_allowed: false,
    #       }
    #
    # @!attribute [rw] project_id
    #   The ID of the project to which you will add the IAM user.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A user- or system-generated token that identifies the entity that
    #   requested the team member association to the project. This token can
    #   be used to repeat the request.
    #   @return [String]
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) for the IAM user you want to add to
    #   the AWS CodeStar project.
    #   @return [String]
    #
    # @!attribute [rw] project_role
    #   The AWS CodeStar project role that will apply to this user. This
    #   role determines what actions a user can take in an AWS CodeStar
    #   project.
    #   @return [String]
    #
    # @!attribute [rw] remote_access_allowed
    #   Whether the team member is allowed to use an SSH public/private key
    #   pair to remotely access project resources, for example Amazon EC2
    #   instances.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/AssociateTeamMemberRequest AWS API Documentation
    #
    class AssociateTeamMemberRequest < Struct.new(
      :project_id,
      :client_request_token,
      :user_arn,
      :project_role,
      :remote_access_allowed)
      include Aws::Structure
    end

    # @!attribute [rw] client_request_token
    #   The user- or system-generated token from the initial request that
    #   can be used to repeat the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/AssociateTeamMemberResult AWS API Documentation
    #
    class AssociateTeamMemberResult < Struct.new(
      :client_request_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateProjectRequest
    #   data as a hash:
    #
    #       {
    #         name: "ProjectName", # required
    #         id: "ProjectId", # required
    #         description: "ProjectDescription",
    #         client_request_token: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] name
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Reserved for future use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/CreateProjectRequest AWS API Documentation
    #
    class CreateProjectRequest < Struct.new(
      :name,
      :id,
      :description,
      :client_request_token)
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] project_template_id
    #   Reserved for future use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/CreateProjectResult AWS API Documentation
    #
    class CreateProjectResult < Struct.new(
      :id,
      :arn,
      :client_request_token,
      :project_template_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateUserProfileRequest
    #   data as a hash:
    #
    #       {
    #         user_arn: "UserArn", # required
    #         display_name: "UserProfileDisplayName", # required
    #         email_address: "Email", # required
    #         ssh_public_key: "SshPublicKey",
    #       }
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of the user in IAM.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name that will be displayed as the friendly name for the user in
    #   AWS CodeStar.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address that will be displayed as part of the user's
    #   profile in AWS CodeStar.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key
    #   The SSH public key associated with the user in AWS CodeStar. If a
    #   project owner allows the user remote access to project resources,
    #   this public key will be used along with the user's private key for
    #   SSH access.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/CreateUserProfileRequest AWS API Documentation
    #
    class CreateUserProfileRequest < Struct.new(
      :user_arn,
      :display_name,
      :email_address,
      :ssh_public_key)
      include Aws::Structure
    end

    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of the user in IAM.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name that is displayed as the friendly name for the user in AWS
    #   CodeStar.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address that is displayed as part of the user's profile
    #   in AWS CodeStar.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key
    #   The SSH public key associated with the user in AWS CodeStar. This is
    #   the public portion of the public/private keypair the user can use to
    #   access project resources if a project owner allows the user remote
    #   access to those resources.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The date the user profile was created, in timestamp format.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The date the user profile was last modified, in timestamp format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/CreateUserProfileResult AWS API Documentation
    #
    class CreateUserProfileResult < Struct.new(
      :user_arn,
      :display_name,
      :email_address,
      :ssh_public_key,
      :created_timestamp,
      :last_modified_timestamp)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteProjectRequest
    #   data as a hash:
    #
    #       {
    #         id: "ProjectId", # required
    #         client_request_token: "ClientRequestToken",
    #         delete_stack: false,
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the project to be deleted in AWS CodeStar.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A user- or system-generated token that identifies the entity that
    #   requested project deletion. This token can be used to repeat the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] delete_stack
    #   Whether to send a delete request for the primary stack in AWS
    #   CloudFormation originally used to generate the project and its
    #   resources. This option will delete all AWS resources for the project
    #   (except for any buckets in Amazon S3) as well as deleting the
    #   project itself. Recommended for most use cases.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/DeleteProjectRequest AWS API Documentation
    #
    class DeleteProjectRequest < Struct.new(
      :id,
      :client_request_token,
      :delete_stack)
      include Aws::Structure
    end

    # @!attribute [rw] stack_id
    #   The ID of the primary stack in AWS CloudFormation that will be
    #   deleted as part of deleting the project and its resources.
    #   @return [String]
    #
    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the deleted project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/DeleteProjectResult AWS API Documentation
    #
    class DeleteProjectResult < Struct.new(
      :stack_id,
      :project_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteUserProfileRequest
    #   data as a hash:
    #
    #       {
    #         user_arn: "UserArn", # required
    #       }
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of the user to delete from AWS
    #   CodeStar.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/DeleteUserProfileRequest AWS API Documentation
    #
    class DeleteUserProfileRequest < Struct.new(
      :user_arn)
      include Aws::Structure
    end

    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of the user deleted from AWS
    #   CodeStar.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/DeleteUserProfileResult AWS API Documentation
    #
    class DeleteUserProfileResult < Struct.new(
      :user_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProjectRequest
    #   data as a hash:
    #
    #       {
    #         id: "ProjectId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/DescribeProjectRequest AWS API Documentation
    #
    class DescribeProjectRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The display name for the project.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the project.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the project.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the project, if any.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A user- or system-generated token that identifies the entity that
    #   requested project creation.
    #   @return [String]
    #
    # @!attribute [rw] created_time_stamp
    #   The date and time the project was created, in timestamp format.
    #   @return [Time]
    #
    # @!attribute [rw] stack_id
    #   The ID of the primary stack in AWS CloudFormation used to generate
    #   resources for the project.
    #   @return [String]
    #
    # @!attribute [rw] project_template_id
    #   The ID for the AWS CodeStar project template used to create the
    #   project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/DescribeProjectResult AWS API Documentation
    #
    class DescribeProjectResult < Struct.new(
      :name,
      :id,
      :arn,
      :description,
      :client_request_token,
      :created_time_stamp,
      :stack_id,
      :project_template_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeUserProfileRequest
    #   data as a hash:
    #
    #       {
    #         user_arn: "UserArn", # required
    #       }
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/DescribeUserProfileRequest AWS API Documentation
    #
    class DescribeUserProfileRequest < Struct.new(
      :user_arn)
      include Aws::Structure
    end

    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of the user.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name shown for the user in AWS CodeStar projects. For
    #   example, this could be set to both first and last name ("Mary
    #   Major") or a single name ("Mary"). The display name is also used
    #   to generate the initial icon associated with the user in AWS
    #   CodeStar projects. If spaces are included in the display name, the
    #   first character that appears after the space will be used as the
    #   second character in the user initial icon. The initial icon displays
    #   a maximum of two characters, so a display name with more than one
    #   space (for example "Mary Jane Major") would generate an initial
    #   icon using the first character and the first character after the
    #   space ("MJ", not "MM").
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address for the user. Optional.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key
    #   The SSH public key associated with the user. This SSH public key is
    #   associated with the user profile, and can be used in conjunction
    #   with the associated private key for access to project resources,
    #   such as Amazon EC2 instances, if a project owner grants remote
    #   access to those resources.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The date and time when the user profile was created in AWS CodeStar,
    #   in timestamp format.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The date and time when the user profile was last modified, in
    #   timestamp format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/DescribeUserProfileResult AWS API Documentation
    #
    class DescribeUserProfileResult < Struct.new(
      :user_arn,
      :display_name,
      :email_address,
      :ssh_public_key,
      :created_timestamp,
      :last_modified_timestamp)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateTeamMemberRequest
    #   data as a hash:
    #
    #       {
    #         project_id: "ProjectId", # required
    #         user_arn: "UserArn", # required
    #       }
    #
    # @!attribute [rw] project_id
    #   The ID of the AWS CodeStar project from which you want to remove a
    #   team member.
    #   @return [String]
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of the IAM user or group whom you
    #   want to remove from the project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/DisassociateTeamMemberRequest AWS API Documentation
    #
    class DisassociateTeamMemberRequest < Struct.new(
      :project_id,
      :user_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/DisassociateTeamMemberResult AWS API Documentation
    #
    class DisassociateTeamMemberResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ListProjectsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The continuation token to be used to return the next set of results,
    #   if the results cannot be returned in one response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum amount of data that can be contained in a single set of
    #   results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ListProjectsRequest AWS API Documentation
    #
    class ListProjectsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] projects
    #   A list of projects.
    #   @return [Array<Types::ProjectSummary>]
    #
    # @!attribute [rw] next_token
    #   The continuation token to use when requesting the next set of
    #   results, if there are more results to be returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ListProjectsResult AWS API Documentation
    #
    class ListProjectsResult < Struct.new(
      :projects,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListResourcesRequest
    #   data as a hash:
    #
    #       {
    #         project_id: "ProjectId", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] project_id
    #   The ID of the project.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The continuation token for the next set of results, if the results
    #   cannot be returned in one response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum amount of data that can be contained in a single set of
    #   results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ListResourcesRequest AWS API Documentation
    #
    class ListResourcesRequest < Struct.new(
      :project_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] resources
    #   An array of resources associated with the project.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] next_token
    #   The continuation token to use when requesting the next set of
    #   results, if there are more results to be returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ListResourcesResult AWS API Documentation
    #
    class ListResourcesResult < Struct.new(
      :resources,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForProjectRequest
    #   data as a hash:
    #
    #       {
    #         id: "ProjectId", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the project to get tags for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Reserved for future use.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Reserved for future use.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ListTagsForProjectRequest AWS API Documentation
    #
    class ListTagsForProjectRequest < Struct.new(
      :id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the project.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] next_token
    #   Reserved for future use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ListTagsForProjectResult AWS API Documentation
    #
    class ListTagsForProjectResult < Struct.new(
      :tags,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTeamMembersRequest
    #   data as a hash:
    #
    #       {
    #         project_id: "ProjectId", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] project_id
    #   The ID of the project for which you want to list team members.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The continuation token for the next set of results, if the results
    #   cannot be returned in one response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of team members you want returned in a response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ListTeamMembersRequest AWS API Documentation
    #
    class ListTeamMembersRequest < Struct.new(
      :project_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] team_members
    #   A list of team member objects for the project.
    #   @return [Array<Types::TeamMember>]
    #
    # @!attribute [rw] next_token
    #   The continuation token to use when requesting the next set of
    #   results, if there are more results to be returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ListTeamMembersResult AWS API Documentation
    #
    class ListTeamMembersResult < Struct.new(
      :team_members,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListUserProfilesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The continuation token for the next set of results, if the results
    #   cannot be returned in one response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ListUserProfilesRequest AWS API Documentation
    #
    class ListUserProfilesRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] user_profiles
    #   All the user profiles configured in AWS CodeStar for an AWS account.
    #   @return [Array<Types::UserProfileSummary>]
    #
    # @!attribute [rw] next_token
    #   The continuation token to use when requesting the next set of
    #   results, if there are more results to be returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ListUserProfilesResult AWS API Documentation
    #
    class ListUserProfilesResult < Struct.new(
      :user_profiles,
      :next_token)
      include Aws::Structure
    end

    # Information about the metadata for a project.
    #
    # @!attribute [rw] project_id
    #   The ID of the project.
    #   @return [String]
    #
    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ProjectSummary AWS API Documentation
    #
    class ProjectSummary < Struct.new(
      :project_id,
      :project_arn)
      include Aws::Structure
    end

    # Information about a resource for a project.
    #
    # @!attribute [rw] id
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagProjectRequest
    #   data as a hash:
    #
    #       {
    #         id: "ProjectId", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the project you want to add a tag to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags you want to add to the project.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/TagProjectRequest AWS API Documentation
    #
    class TagProjectRequest < Struct.new(
      :id,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the project.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/TagProjectResult AWS API Documentation
    #
    class TagProjectResult < Struct.new(
      :tags)
      include Aws::Structure
    end

    # Information about a team member in a project.
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of the user in IAM.
    #   @return [String]
    #
    # @!attribute [rw] project_role
    #   The role assigned to the user in the project. Project roles have
    #   different levels of access. For more information, see [Working with
    #   Teams][1] in the *AWS CodeStar User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html
    #   @return [String]
    #
    # @!attribute [rw] remote_access_allowed
    #   Whether the user is allowed to remotely access project resources
    #   using an SSH public/private key pair.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/TeamMember AWS API Documentation
    #
    class TeamMember < Struct.new(
      :user_arn,
      :project_role,
      :remote_access_allowed)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagProjectRequest
    #   data as a hash:
    #
    #       {
    #         id: "ProjectId", # required
    #         tags: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the project to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to remove from the project.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/UntagProjectRequest AWS API Documentation
    #
    class UntagProjectRequest < Struct.new(
      :id,
      :tags)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/UntagProjectResult AWS API Documentation
    #
    class UntagProjectResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateProjectRequest
    #   data as a hash:
    #
    #       {
    #         id: "ProjectId", # required
    #         name: "ProjectName",
    #         description: "ProjectDescription",
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the project you want to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the project you want to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the project, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/UpdateProjectRequest AWS API Documentation
    #
    class UpdateProjectRequest < Struct.new(
      :id,
      :name,
      :description)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/UpdateProjectResult AWS API Documentation
    #
    class UpdateProjectResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateTeamMemberRequest
    #   data as a hash:
    #
    #       {
    #         project_id: "ProjectId", # required
    #         user_arn: "UserArn", # required
    #         project_role: "Role",
    #         remote_access_allowed: false,
    #       }
    #
    # @!attribute [rw] project_id
    #   The ID of the project.
    #   @return [String]
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of the user for whom you want to
    #   change team membership attributes.
    #   @return [String]
    #
    # @!attribute [rw] project_role
    #   The role assigned to the user in the project. Project roles have
    #   different levels of access. For more information, see [Working with
    #   Teams][1] in the *AWS CodeStar User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html
    #   @return [String]
    #
    # @!attribute [rw] remote_access_allowed
    #   Whether a team member is allowed to remotely access project
    #   resources using the SSH public key associated with the user's
    #   profile. Even if this is set to True, the user must associate a
    #   public key with their profile before the user can access resources.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/UpdateTeamMemberRequest AWS API Documentation
    #
    class UpdateTeamMemberRequest < Struct.new(
      :project_id,
      :user_arn,
      :project_role,
      :remote_access_allowed)
      include Aws::Structure
    end

    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of the user whose team membership
    #   attributes were updated.
    #   @return [String]
    #
    # @!attribute [rw] project_role
    #   The project role granted to the user.
    #   @return [String]
    #
    # @!attribute [rw] remote_access_allowed
    #   Whether a team member is allowed to remotely access project
    #   resources using the SSH public key associated with the user's
    #   profile.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/UpdateTeamMemberResult AWS API Documentation
    #
    class UpdateTeamMemberResult < Struct.new(
      :user_arn,
      :project_role,
      :remote_access_allowed)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserProfileRequest
    #   data as a hash:
    #
    #       {
    #         user_arn: "UserArn", # required
    #         display_name: "UserProfileDisplayName",
    #         email_address: "Email",
    #         ssh_public_key: "SshPublicKey",
    #       }
    #
    # @!attribute [rw] user_arn
    #   The name that will be displayed as the friendly name for the user in
    #   AWS CodeStar.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name that is displayed as the friendly name for the user in AWS
    #   CodeStar.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address that is displayed as part of the user's profile
    #   in AWS CodeStar.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key
    #   The SSH public key associated with the user in AWS CodeStar. If a
    #   project owner allows the user remote access to project resources,
    #   this public key will be used along with the user's private key for
    #   SSH access.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/UpdateUserProfileRequest AWS API Documentation
    #
    class UpdateUserProfileRequest < Struct.new(
      :user_arn,
      :display_name,
      :email_address,
      :ssh_public_key)
      include Aws::Structure
    end

    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of the user in IAM.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name that is displayed as the friendly name for the user in AWS
    #   CodeStar.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address that is displayed as part of the user's profile
    #   in AWS CodeStar.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key
    #   The SSH public key associated with the user in AWS CodeStar. This is
    #   the public portion of the public/private keypair the user can use to
    #   access project resources if a project owner allows the user remote
    #   access to those resources.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The date the user profile was created, in timestamp format.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The date the user profile was last modified, in timestamp format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/UpdateUserProfileResult AWS API Documentation
    #
    class UpdateUserProfileResult < Struct.new(
      :user_arn,
      :display_name,
      :email_address,
      :ssh_public_key,
      :created_timestamp,
      :last_modified_timestamp)
      include Aws::Structure
    end

    # Information about a user's profile in AWS CodeStar.
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of the user in IAM.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of a user in AWS CodeStar. For example, this could
    #   be set to both first and last name ("Mary Major") or a single name
    #   ("Mary"). The display name is also used to generate the initial
    #   icon associated with the user in AWS CodeStar projects. If spaces
    #   are included in the display name, the first character that appears
    #   after the space will be used as the second character in the user
    #   initial icon. The initial icon displays a maximum of two characters,
    #   so a display name with more than one space (for example "Mary Jane
    #   Major") would generate an initial icon using the first character
    #   and the first character after the space ("MJ", not "MM").
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address associated with the user.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key
    #   The SSH public key associated with the user in AWS CodeStar. If a
    #   project owner allows the user remote access to project resources,
    #   this public key will be used along with the user's private key for
    #   SSH access.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/UserProfileSummary AWS API Documentation
    #
    class UserProfileSummary < Struct.new(
      :user_arn,
      :display_name,
      :email_address,
      :ssh_public_key)
      include Aws::Structure
    end

  end
end
