# frozen_string_literal: true

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Location and destination information about the source code files
    # provided with the project request. The source code is uploaded to the
    # new project source repository after project creation.
    #
    # @note When making an API call, you may pass Code
    #   data as a hash:
    #
    #       {
    #         source: { # required
    #           s3: { # required
    #             bucket_name: "BucketName",
    #             bucket_key: "BucketKey",
    #           },
    #         },
    #         destination: { # required
    #           code_commit: {
    #             name: "RepositoryName", # required
    #           },
    #           git_hub: {
    #             name: "RepositoryName", # required
    #             description: "RepositoryDescription",
    #             type: "RepositoryType", # required
    #             owner: "RepositoryOwner", # required
    #             private_repository: false, # required
    #             issues_enabled: false, # required
    #             token: "GitHubPersonalToken", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] source
    #   The location where the source code files provided with the project
    #   request are stored. AWS CodeStar retrieves the files during project
    #   creation.
    #   @return [Types::CodeSource]
    #
    # @!attribute [rw] destination
    #   The repository to be created in AWS CodeStar. Valid values are AWS
    #   CodeCommit or GitHub. After AWS CodeStar provisions the new
    #   repository, the source code files provided with the project request
    #   are placed in the repository.
    #   @return [Types::CodeDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/Code AWS API Documentation
    #
    class Code < Struct.new(
      :source,
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the AWS CodeCommit repository to be created in AWS
    # CodeStar. This is where the source code files provided with the
    # project request will be uploaded after project creation.
    #
    # @note When making an API call, you may pass CodeCommitCodeDestination
    #   data as a hash:
    #
    #       {
    #         name: "RepositoryName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the AWS CodeCommit repository to be created in AWS
    #   CodeStar.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/CodeCommitCodeDestination AWS API Documentation
    #
    class CodeCommitCodeDestination < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The repository to be created in AWS CodeStar. Valid values are AWS
    # CodeCommit or GitHub. After AWS CodeStar provisions the new
    # repository, the source code files provided with the project request
    # are placed in the repository.
    #
    # @note When making an API call, you may pass CodeDestination
    #   data as a hash:
    #
    #       {
    #         code_commit: {
    #           name: "RepositoryName", # required
    #         },
    #         git_hub: {
    #           name: "RepositoryName", # required
    #           description: "RepositoryDescription",
    #           type: "RepositoryType", # required
    #           owner: "RepositoryOwner", # required
    #           private_repository: false, # required
    #           issues_enabled: false, # required
    #           token: "GitHubPersonalToken", # required
    #         },
    #       }
    #
    # @!attribute [rw] code_commit
    #   Information about the AWS CodeCommit repository to be created in AWS
    #   CodeStar. This is where the source code files provided with the
    #   project request will be uploaded after project creation.
    #   @return [Types::CodeCommitCodeDestination]
    #
    # @!attribute [rw] git_hub
    #   Information about the GitHub repository to be created in AWS
    #   CodeStar. This is where the source code files provided with the
    #   project request will be uploaded after project creation.
    #   @return [Types::GitHubCodeDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/CodeDestination AWS API Documentation
    #
    class CodeDestination < Struct.new(
      :code_commit,
      :git_hub)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location where the source code files provided with the project
    # request are stored. AWS CodeStar retrieves the files during project
    # creation.
    #
    # @note When making an API call, you may pass CodeSource
    #   data as a hash:
    #
    #       {
    #         s3: { # required
    #           bucket_name: "BucketName",
    #           bucket_key: "BucketKey",
    #         },
    #       }
    #
    # @!attribute [rw] s3
    #   Information about the Amazon S3 location where the source code files
    #   provided with the project request are stored.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/CodeSource AWS API Documentation
    #
    class CodeSource < Struct.new(
      :s3)
      SENSITIVE = []
      include Aws::Structure
    end

    # Another modification is being made. That modification must complete
    # before you can make your change.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateProjectRequest
    #   data as a hash:
    #
    #       {
    #         name: "ProjectName", # required
    #         id: "ProjectId", # required
    #         description: "ProjectDescription",
    #         client_request_token: "ClientRequestToken",
    #         source_code: [
    #           {
    #             source: { # required
    #               s3: { # required
    #                 bucket_name: "BucketName",
    #                 bucket_key: "BucketKey",
    #               },
    #             },
    #             destination: { # required
    #               code_commit: {
    #                 name: "RepositoryName", # required
    #               },
    #               git_hub: {
    #                 name: "RepositoryName", # required
    #                 description: "RepositoryDescription",
    #                 type: "RepositoryType", # required
    #                 owner: "RepositoryOwner", # required
    #                 private_repository: false, # required
    #                 issues_enabled: false, # required
    #                 token: "GitHubPersonalToken", # required
    #               },
    #             },
    #           },
    #         ],
    #         toolchain: {
    #           source: { # required
    #             s3: { # required
    #               bucket_name: "BucketName",
    #               bucket_key: "BucketKey",
    #             },
    #           },
    #           role_arn: "RoleArn",
    #           stack_parameters: {
    #             "TemplateParameterKey" => "TemplateParameterValue",
    #           },
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The display name for the project to be created in AWS CodeStar.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the project to be created in AWS CodeStar.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the project, if any.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A user- or system-generated token that identifies the entity that
    #   requested project creation. This token can be used to repeat the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] source_code
    #   A list of the Code objects submitted with the project request. If
    #   this parameter is specified, the request must also include the
    #   toolchain parameter.
    #   @return [Array<Types::Code>]
    #
    # @!attribute [rw] toolchain
    #   The name of the toolchain template file submitted with the project
    #   request. If this parameter is specified, the request must also
    #   include the sourceCode parameter.
    #   @return [Types::Toolchain]
    #
    # @!attribute [rw] tags
    #   The tags created for the project.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/CreateProjectRequest AWS API Documentation
    #
    class CreateProjectRequest < Struct.new(
      :name,
      :id,
      :description,
      :client_request_token,
      :source_code,
      :toolchain,
      :tags)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the project.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the created project.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A user- or system-generated token that identifies the entity that
    #   requested project creation.
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
      SENSITIVE = []
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
      SENSITIVE = [:display_name, :email_address]
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
      SENSITIVE = [:display_name, :email_address]
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    # @!attribute [rw] status
    #   The project creation or deletion status.
    #   @return [Types::ProjectStatus]
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
      :project_template_id,
      :status)
      SENSITIVE = [:name, :description]
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
      SENSITIVE = []
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
      SENSITIVE = [:display_name, :email_address]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/DisassociateTeamMemberResult AWS API Documentation
    #
    class DisassociateTeamMemberResult < Aws::EmptyStructure; end

    # Information about the GitHub repository to be created in AWS CodeStar.
    # This is where the source code files provided with the project request
    # will be uploaded after project creation.
    #
    # @note When making an API call, you may pass GitHubCodeDestination
    #   data as a hash:
    #
    #       {
    #         name: "RepositoryName", # required
    #         description: "RepositoryDescription",
    #         type: "RepositoryType", # required
    #         owner: "RepositoryOwner", # required
    #         private_repository: false, # required
    #         issues_enabled: false, # required
    #         token: "GitHubPersonalToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   Name of the GitHub repository to be created in AWS CodeStar.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description for the GitHub repository to be created in AWS CodeStar.
    #   This description displays in GitHub after the repository is created.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of GitHub repository to be created in AWS CodeStar. Valid
    #   values are User or Organization.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The GitHub username for the owner of the GitHub repository to be
    #   created in AWS CodeStar. If this repository should be owned by a
    #   GitHub organization, provide its name.
    #   @return [String]
    #
    # @!attribute [rw] private_repository
    #   Whether the GitHub repository is to be a private repository.
    #   @return [Boolean]
    #
    # @!attribute [rw] issues_enabled
    #   Whether to enable issues for the GitHub repository.
    #   @return [Boolean]
    #
    # @!attribute [rw] token
    #   The GitHub user's personal access token for the GitHub repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/GitHubCodeDestination AWS API Documentation
    #
    class GitHubCodeDestination < Struct.new(
      :name,
      :description,
      :type,
      :owner,
      :private_repository,
      :issues_enabled,
      :token)
      SENSITIVE = [:token]
      include Aws::Structure
    end

    # The next token is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Aws::EmptyStructure; end

    # The service role is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/InvalidServiceRoleException AWS API Documentation
    #
    class InvalidServiceRoleException < Aws::EmptyStructure; end

    # A resource limit has been exceeded.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # An AWS CodeStar project with the same ID already exists in this region
    # for the AWS account. AWS CodeStar project IDs must be unique within a
    # region for the AWS account.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ProjectAlreadyExistsException AWS API Documentation
    #
    class ProjectAlreadyExistsException < Aws::EmptyStructure; end

    # Project configuration information is required but not specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ProjectConfigurationException AWS API Documentation
    #
    class ProjectConfigurationException < Aws::EmptyStructure; end

    # The project creation request was valid, but a nonspecific exception or
    # error occurred during project creation. The project could not be
    # created in AWS CodeStar.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ProjectCreationFailedException AWS API Documentation
    #
    class ProjectCreationFailedException < Aws::EmptyStructure; end

    # The specified AWS CodeStar project was not found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ProjectNotFoundException AWS API Documentation
    #
    class ProjectNotFoundException < Aws::EmptyStructure; end

    # An indication of whether a project creation or deletion is failed or
    # successful.
    #
    # @!attribute [rw] state
    #   The phase of completion for a project creation or deletion.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   In the case of a project creation or deletion failure, a reason for
    #   the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ProjectStatus AWS API Documentation
    #
    class ProjectStatus < Struct.new(
      :state,
      :reason)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 location where the source code files provided with the
    # project request are stored.
    #
    # @note When making an API call, you may pass S3Location
    #   data as a hash:
    #
    #       {
    #         bucket_name: "BucketName",
    #         bucket_key: "BucketKey",
    #       }
    #
    # @!attribute [rw] bucket_name
    #   The Amazon S3 bucket name where the source code files provided with
    #   the project request are stored.
    #   @return [String]
    #
    # @!attribute [rw] bucket_key
    #   The Amazon S3 object key where the source code files provided with
    #   the project request are stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :bucket_name,
      :bucket_key)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The team member is already associated with a role in this project.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/TeamMemberAlreadyAssociatedException AWS API Documentation
    #
    class TeamMemberAlreadyAssociatedException < Aws::EmptyStructure; end

    # The specified team member was not found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/TeamMemberNotFoundException AWS API Documentation
    #
    class TeamMemberNotFoundException < Aws::EmptyStructure; end

    # The toolchain template file provided with the project request. AWS
    # CodeStar uses the template to provision the toolchain stack in AWS
    # CloudFormation.
    #
    # @note When making an API call, you may pass Toolchain
    #   data as a hash:
    #
    #       {
    #         source: { # required
    #           s3: { # required
    #             bucket_name: "BucketName",
    #             bucket_key: "BucketKey",
    #           },
    #         },
    #         role_arn: "RoleArn",
    #         stack_parameters: {
    #           "TemplateParameterKey" => "TemplateParameterValue",
    #         },
    #       }
    #
    # @!attribute [rw] source
    #   The Amazon S3 location where the toolchain template file provided
    #   with the project request is stored. AWS CodeStar retrieves the file
    #   during project creation.
    #   @return [Types::ToolchainSource]
    #
    # @!attribute [rw] role_arn
    #   The service role ARN for AWS CodeStar to use for the toolchain
    #   template during stack provisioning.
    #   @return [String]
    #
    # @!attribute [rw] stack_parameters
    #   The list of parameter overrides to be passed into the toolchain
    #   template during stack provisioning, if any.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/Toolchain AWS API Documentation
    #
    class Toolchain < Struct.new(
      :source,
      :role_arn,
      :stack_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 location where the toolchain template file provided with
    # the project request is stored. AWS CodeStar retrieves the file during
    # project creation.
    #
    # @note When making an API call, you may pass ToolchainSource
    #   data as a hash:
    #
    #       {
    #         s3: { # required
    #           bucket_name: "BucketName",
    #           bucket_key: "BucketKey",
    #         },
    #       }
    #
    # @!attribute [rw] s3
    #   The Amazon S3 bucket where the toolchain template file provided with
    #   the project request is stored.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ToolchainSource AWS API Documentation
    #
    class ToolchainSource < Struct.new(
      :s3)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = [:name, :description]
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = [:display_name, :email_address]
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
      SENSITIVE = [:display_name, :email_address]
      include Aws::Structure
    end

    # A user profile with that name already exists in this region for the
    # AWS account. AWS CodeStar user profile names must be unique within a
    # region for the AWS account.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/UserProfileAlreadyExistsException AWS API Documentation
    #
    class UserProfileAlreadyExistsException < Aws::EmptyStructure; end

    # The user profile was not found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/UserProfileNotFoundException AWS API Documentation
    #
    class UserProfileNotFoundException < Aws::EmptyStructure; end

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
      SENSITIVE = [:display_name, :email_address]
      include Aws::Structure
    end

    # The specified input is either not valid, or it could not be validated.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-2017-04-19/ValidationException AWS API Documentation
    #
    class ValidationException < Aws::EmptyStructure; end

  end
end
