# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeStar
  # @api private
  module ClientApi

    include Seahorse::Model

    AssociateTeamMemberRequest = Shapes::StructureShape.new(name: 'AssociateTeamMemberRequest')
    AssociateTeamMemberResult = Shapes::StructureShape.new(name: 'AssociateTeamMemberResult')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    CreateProjectRequest = Shapes::StructureShape.new(name: 'CreateProjectRequest')
    CreateProjectResult = Shapes::StructureShape.new(name: 'CreateProjectResult')
    CreateUserProfileRequest = Shapes::StructureShape.new(name: 'CreateUserProfileRequest')
    CreateUserProfileResult = Shapes::StructureShape.new(name: 'CreateUserProfileResult')
    CreatedTimestamp = Shapes::TimestampShape.new(name: 'CreatedTimestamp')
    DeleteProjectRequest = Shapes::StructureShape.new(name: 'DeleteProjectRequest')
    DeleteProjectResult = Shapes::StructureShape.new(name: 'DeleteProjectResult')
    DeleteStack = Shapes::BooleanShape.new(name: 'DeleteStack')
    DeleteUserProfileRequest = Shapes::StructureShape.new(name: 'DeleteUserProfileRequest')
    DeleteUserProfileResult = Shapes::StructureShape.new(name: 'DeleteUserProfileResult')
    DescribeProjectRequest = Shapes::StructureShape.new(name: 'DescribeProjectRequest')
    DescribeProjectResult = Shapes::StructureShape.new(name: 'DescribeProjectResult')
    DescribeUserProfileRequest = Shapes::StructureShape.new(name: 'DescribeUserProfileRequest')
    DescribeUserProfileResult = Shapes::StructureShape.new(name: 'DescribeUserProfileResult')
    DisassociateTeamMemberRequest = Shapes::StructureShape.new(name: 'DisassociateTeamMemberRequest')
    DisassociateTeamMemberResult = Shapes::StructureShape.new(name: 'DisassociateTeamMemberResult')
    Email = Shapes::StringShape.new(name: 'Email')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidServiceRoleException = Shapes::StructureShape.new(name: 'InvalidServiceRoleException')
    LastModifiedTimestamp = Shapes::TimestampShape.new(name: 'LastModifiedTimestamp')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListProjectsRequest = Shapes::StructureShape.new(name: 'ListProjectsRequest')
    ListProjectsResult = Shapes::StructureShape.new(name: 'ListProjectsResult')
    ListResourcesRequest = Shapes::StructureShape.new(name: 'ListResourcesRequest')
    ListResourcesResult = Shapes::StructureShape.new(name: 'ListResourcesResult')
    ListTagsForProjectRequest = Shapes::StructureShape.new(name: 'ListTagsForProjectRequest')
    ListTagsForProjectResult = Shapes::StructureShape.new(name: 'ListTagsForProjectResult')
    ListTeamMembersRequest = Shapes::StructureShape.new(name: 'ListTeamMembersRequest')
    ListTeamMembersResult = Shapes::StructureShape.new(name: 'ListTeamMembersResult')
    ListUserProfilesRequest = Shapes::StructureShape.new(name: 'ListUserProfilesRequest')
    ListUserProfilesResult = Shapes::StructureShape.new(name: 'ListUserProfilesResult')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ProjectAlreadyExistsException = Shapes::StructureShape.new(name: 'ProjectAlreadyExistsException')
    ProjectArn = Shapes::StringShape.new(name: 'ProjectArn')
    ProjectConfigurationException = Shapes::StructureShape.new(name: 'ProjectConfigurationException')
    ProjectCreationFailedException = Shapes::StructureShape.new(name: 'ProjectCreationFailedException')
    ProjectDescription = Shapes::StringShape.new(name: 'ProjectDescription')
    ProjectId = Shapes::StringShape.new(name: 'ProjectId')
    ProjectName = Shapes::StringShape.new(name: 'ProjectName')
    ProjectNotFoundException = Shapes::StructureShape.new(name: 'ProjectNotFoundException')
    ProjectSummary = Shapes::StructureShape.new(name: 'ProjectSummary')
    ProjectTemplateId = Shapes::StringShape.new(name: 'ProjectTemplateId')
    ProjectsList = Shapes::ListShape.new(name: 'ProjectsList')
    RemoteAccessAllowed = Shapes::BooleanShape.new(name: 'RemoteAccessAllowed')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourcesResult = Shapes::ListShape.new(name: 'ResourcesResult')
    Role = Shapes::StringShape.new(name: 'Role')
    SshPublicKey = Shapes::StringShape.new(name: 'SshPublicKey')
    StackId = Shapes::StringShape.new(name: 'StackId')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagProjectRequest = Shapes::StructureShape.new(name: 'TagProjectRequest')
    TagProjectResult = Shapes::StructureShape.new(name: 'TagProjectResult')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TeamMember = Shapes::StructureShape.new(name: 'TeamMember')
    TeamMemberAlreadyAssociatedException = Shapes::StructureShape.new(name: 'TeamMemberAlreadyAssociatedException')
    TeamMemberNotFoundException = Shapes::StructureShape.new(name: 'TeamMemberNotFoundException')
    TeamMemberResult = Shapes::ListShape.new(name: 'TeamMemberResult')
    UntagProjectRequest = Shapes::StructureShape.new(name: 'UntagProjectRequest')
    UntagProjectResult = Shapes::StructureShape.new(name: 'UntagProjectResult')
    UpdateProjectRequest = Shapes::StructureShape.new(name: 'UpdateProjectRequest')
    UpdateProjectResult = Shapes::StructureShape.new(name: 'UpdateProjectResult')
    UpdateTeamMemberRequest = Shapes::StructureShape.new(name: 'UpdateTeamMemberRequest')
    UpdateTeamMemberResult = Shapes::StructureShape.new(name: 'UpdateTeamMemberResult')
    UpdateUserProfileRequest = Shapes::StructureShape.new(name: 'UpdateUserProfileRequest')
    UpdateUserProfileResult = Shapes::StructureShape.new(name: 'UpdateUserProfileResult')
    UserArn = Shapes::StringShape.new(name: 'UserArn')
    UserProfileAlreadyExistsException = Shapes::StructureShape.new(name: 'UserProfileAlreadyExistsException')
    UserProfileDisplayName = Shapes::StringShape.new(name: 'UserProfileDisplayName')
    UserProfileNotFoundException = Shapes::StructureShape.new(name: 'UserProfileNotFoundException')
    UserProfileSummary = Shapes::StructureShape.new(name: 'UserProfileSummary')
    UserProfilesList = Shapes::ListShape.new(name: 'UserProfilesList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AssociateTeamMemberRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectId"))
    AssociateTeamMemberRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken"))
    AssociateTeamMemberRequest.add_member(:user_arn, Shapes::ShapeRef.new(shape: UserArn, required: true, location_name: "userArn"))
    AssociateTeamMemberRequest.add_member(:project_role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "projectRole"))
    AssociateTeamMemberRequest.add_member(:remote_access_allowed, Shapes::ShapeRef.new(shape: RemoteAccessAllowed, location_name: "remoteAccessAllowed", metadata: {"box"=>true}))
    AssociateTeamMemberRequest.struct_class = Types::AssociateTeamMemberRequest

    AssociateTeamMemberResult.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken"))
    AssociateTeamMemberResult.struct_class = Types::AssociateTeamMemberResult

    CreateProjectRequest.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "name"))
    CreateProjectRequest.add_member(:id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "id"))
    CreateProjectRequest.add_member(:description, Shapes::ShapeRef.new(shape: ProjectDescription, location_name: "description"))
    CreateProjectRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken"))
    CreateProjectRequest.struct_class = Types::CreateProjectRequest

    CreateProjectResult.add_member(:id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "id"))
    CreateProjectResult.add_member(:arn, Shapes::ShapeRef.new(shape: ProjectArn, required: true, location_name: "arn"))
    CreateProjectResult.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken"))
    CreateProjectResult.add_member(:project_template_id, Shapes::ShapeRef.new(shape: ProjectTemplateId, location_name: "projectTemplateId"))
    CreateProjectResult.struct_class = Types::CreateProjectResult

    CreateUserProfileRequest.add_member(:user_arn, Shapes::ShapeRef.new(shape: UserArn, required: true, location_name: "userArn"))
    CreateUserProfileRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: UserProfileDisplayName, required: true, location_name: "displayName"))
    CreateUserProfileRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "emailAddress"))
    CreateUserProfileRequest.add_member(:ssh_public_key, Shapes::ShapeRef.new(shape: SshPublicKey, location_name: "sshPublicKey"))
    CreateUserProfileRequest.struct_class = Types::CreateUserProfileRequest

    CreateUserProfileResult.add_member(:user_arn, Shapes::ShapeRef.new(shape: UserArn, required: true, location_name: "userArn"))
    CreateUserProfileResult.add_member(:display_name, Shapes::ShapeRef.new(shape: UserProfileDisplayName, location_name: "displayName"))
    CreateUserProfileResult.add_member(:email_address, Shapes::ShapeRef.new(shape: Email, location_name: "emailAddress"))
    CreateUserProfileResult.add_member(:ssh_public_key, Shapes::ShapeRef.new(shape: SshPublicKey, location_name: "sshPublicKey"))
    CreateUserProfileResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: CreatedTimestamp, location_name: "createdTimestamp"))
    CreateUserProfileResult.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: LastModifiedTimestamp, location_name: "lastModifiedTimestamp"))
    CreateUserProfileResult.struct_class = Types::CreateUserProfileResult

    DeleteProjectRequest.add_member(:id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "id"))
    DeleteProjectRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken"))
    DeleteProjectRequest.add_member(:delete_stack, Shapes::ShapeRef.new(shape: DeleteStack, location_name: "deleteStack"))
    DeleteProjectRequest.struct_class = Types::DeleteProjectRequest

    DeleteProjectResult.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "stackId"))
    DeleteProjectResult.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, location_name: "projectArn"))
    DeleteProjectResult.struct_class = Types::DeleteProjectResult

    DeleteUserProfileRequest.add_member(:user_arn, Shapes::ShapeRef.new(shape: UserArn, required: true, location_name: "userArn"))
    DeleteUserProfileRequest.struct_class = Types::DeleteUserProfileRequest

    DeleteUserProfileResult.add_member(:user_arn, Shapes::ShapeRef.new(shape: UserArn, required: true, location_name: "userArn"))
    DeleteUserProfileResult.struct_class = Types::DeleteUserProfileResult

    DescribeProjectRequest.add_member(:id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "id"))
    DescribeProjectRequest.struct_class = Types::DescribeProjectRequest

    DescribeProjectResult.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, location_name: "name"))
    DescribeProjectResult.add_member(:id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "id"))
    DescribeProjectResult.add_member(:arn, Shapes::ShapeRef.new(shape: ProjectArn, location_name: "arn"))
    DescribeProjectResult.add_member(:description, Shapes::ShapeRef.new(shape: ProjectDescription, location_name: "description"))
    DescribeProjectResult.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken"))
    DescribeProjectResult.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: CreatedTimestamp, location_name: "createdTimeStamp"))
    DescribeProjectResult.add_member(:stack_id, Shapes::ShapeRef.new(shape: StackId, location_name: "stackId"))
    DescribeProjectResult.add_member(:project_template_id, Shapes::ShapeRef.new(shape: ProjectTemplateId, location_name: "projectTemplateId"))
    DescribeProjectResult.struct_class = Types::DescribeProjectResult

    DescribeUserProfileRequest.add_member(:user_arn, Shapes::ShapeRef.new(shape: UserArn, required: true, location_name: "userArn"))
    DescribeUserProfileRequest.struct_class = Types::DescribeUserProfileRequest

    DescribeUserProfileResult.add_member(:user_arn, Shapes::ShapeRef.new(shape: UserArn, required: true, location_name: "userArn"))
    DescribeUserProfileResult.add_member(:display_name, Shapes::ShapeRef.new(shape: UserProfileDisplayName, location_name: "displayName"))
    DescribeUserProfileResult.add_member(:email_address, Shapes::ShapeRef.new(shape: Email, location_name: "emailAddress"))
    DescribeUserProfileResult.add_member(:ssh_public_key, Shapes::ShapeRef.new(shape: SshPublicKey, location_name: "sshPublicKey"))
    DescribeUserProfileResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: CreatedTimestamp, required: true, location_name: "createdTimestamp"))
    DescribeUserProfileResult.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: LastModifiedTimestamp, required: true, location_name: "lastModifiedTimestamp"))
    DescribeUserProfileResult.struct_class = Types::DescribeUserProfileResult

    DisassociateTeamMemberRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectId"))
    DisassociateTeamMemberRequest.add_member(:user_arn, Shapes::ShapeRef.new(shape: UserArn, required: true, location_name: "userArn"))
    DisassociateTeamMemberRequest.struct_class = Types::DisassociateTeamMemberRequest

    DisassociateTeamMemberResult.struct_class = Types::DisassociateTeamMemberResult

    ListProjectsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListProjectsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", metadata: {"box"=>true}))
    ListProjectsRequest.struct_class = Types::ListProjectsRequest

    ListProjectsResult.add_member(:projects, Shapes::ShapeRef.new(shape: ProjectsList, required: true, location_name: "projects"))
    ListProjectsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListProjectsResult.struct_class = Types::ListProjectsResult

    ListResourcesRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectId"))
    ListResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", metadata: {"box"=>true}))
    ListResourcesRequest.struct_class = Types::ListResourcesRequest

    ListResourcesResult.add_member(:resources, Shapes::ShapeRef.new(shape: ResourcesResult, location_name: "resources"))
    ListResourcesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListResourcesResult.struct_class = Types::ListResourcesResult

    ListTagsForProjectRequest.add_member(:id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "id"))
    ListTagsForProjectRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListTagsForProjectRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", metadata: {"box"=>true}))
    ListTagsForProjectRequest.struct_class = Types::ListTagsForProjectRequest

    ListTagsForProjectResult.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForProjectResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListTagsForProjectResult.struct_class = Types::ListTagsForProjectResult

    ListTeamMembersRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectId"))
    ListTeamMembersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListTeamMembersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", metadata: {"box"=>true}))
    ListTeamMembersRequest.struct_class = Types::ListTeamMembersRequest

    ListTeamMembersResult.add_member(:team_members, Shapes::ShapeRef.new(shape: TeamMemberResult, required: true, location_name: "teamMembers"))
    ListTeamMembersResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListTeamMembersResult.struct_class = Types::ListTeamMembersResult

    ListUserProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListUserProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", metadata: {"box"=>true}))
    ListUserProfilesRequest.struct_class = Types::ListUserProfilesRequest

    ListUserProfilesResult.add_member(:user_profiles, Shapes::ShapeRef.new(shape: UserProfilesList, required: true, location_name: "userProfiles"))
    ListUserProfilesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListUserProfilesResult.struct_class = Types::ListUserProfilesResult

    ProjectSummary.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "projectId"))
    ProjectSummary.add_member(:project_arn, Shapes::ShapeRef.new(shape: ProjectArn, location_name: "projectArn"))
    ProjectSummary.struct_class = Types::ProjectSummary

    ProjectsList.member = Shapes::ShapeRef.new(shape: ProjectSummary)

    Resource.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    Resource.struct_class = Types::Resource

    ResourcesResult.member = Shapes::ShapeRef.new(shape: Resource)

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagProjectRequest.add_member(:id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "id"))
    TagProjectRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagProjectRequest.struct_class = Types::TagProjectRequest

    TagProjectResult.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    TagProjectResult.struct_class = Types::TagProjectResult

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    TeamMember.add_member(:user_arn, Shapes::ShapeRef.new(shape: UserArn, required: true, location_name: "userArn"))
    TeamMember.add_member(:project_role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "projectRole"))
    TeamMember.add_member(:remote_access_allowed, Shapes::ShapeRef.new(shape: RemoteAccessAllowed, location_name: "remoteAccessAllowed", metadata: {"box"=>true}))
    TeamMember.struct_class = Types::TeamMember

    TeamMemberResult.member = Shapes::ShapeRef.new(shape: TeamMember)

    UntagProjectRequest.add_member(:id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "id"))
    UntagProjectRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "tags"))
    UntagProjectRequest.struct_class = Types::UntagProjectRequest

    UntagProjectResult.struct_class = Types::UntagProjectResult

    UpdateProjectRequest.add_member(:id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "id"))
    UpdateProjectRequest.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, location_name: "name"))
    UpdateProjectRequest.add_member(:description, Shapes::ShapeRef.new(shape: ProjectDescription, location_name: "description"))
    UpdateProjectRequest.struct_class = Types::UpdateProjectRequest

    UpdateProjectResult.struct_class = Types::UpdateProjectResult

    UpdateTeamMemberRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location_name: "projectId"))
    UpdateTeamMemberRequest.add_member(:user_arn, Shapes::ShapeRef.new(shape: UserArn, required: true, location_name: "userArn"))
    UpdateTeamMemberRequest.add_member(:project_role, Shapes::ShapeRef.new(shape: Role, location_name: "projectRole"))
    UpdateTeamMemberRequest.add_member(:remote_access_allowed, Shapes::ShapeRef.new(shape: RemoteAccessAllowed, location_name: "remoteAccessAllowed", metadata: {"box"=>true}))
    UpdateTeamMemberRequest.struct_class = Types::UpdateTeamMemberRequest

    UpdateTeamMemberResult.add_member(:user_arn, Shapes::ShapeRef.new(shape: UserArn, location_name: "userArn"))
    UpdateTeamMemberResult.add_member(:project_role, Shapes::ShapeRef.new(shape: Role, location_name: "projectRole"))
    UpdateTeamMemberResult.add_member(:remote_access_allowed, Shapes::ShapeRef.new(shape: RemoteAccessAllowed, location_name: "remoteAccessAllowed", metadata: {"box"=>true}))
    UpdateTeamMemberResult.struct_class = Types::UpdateTeamMemberResult

    UpdateUserProfileRequest.add_member(:user_arn, Shapes::ShapeRef.new(shape: UserArn, required: true, location_name: "userArn"))
    UpdateUserProfileRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: UserProfileDisplayName, location_name: "displayName"))
    UpdateUserProfileRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: Email, location_name: "emailAddress"))
    UpdateUserProfileRequest.add_member(:ssh_public_key, Shapes::ShapeRef.new(shape: SshPublicKey, location_name: "sshPublicKey"))
    UpdateUserProfileRequest.struct_class = Types::UpdateUserProfileRequest

    UpdateUserProfileResult.add_member(:user_arn, Shapes::ShapeRef.new(shape: UserArn, required: true, location_name: "userArn"))
    UpdateUserProfileResult.add_member(:display_name, Shapes::ShapeRef.new(shape: UserProfileDisplayName, location_name: "displayName"))
    UpdateUserProfileResult.add_member(:email_address, Shapes::ShapeRef.new(shape: Email, location_name: "emailAddress"))
    UpdateUserProfileResult.add_member(:ssh_public_key, Shapes::ShapeRef.new(shape: SshPublicKey, location_name: "sshPublicKey"))
    UpdateUserProfileResult.add_member(:created_timestamp, Shapes::ShapeRef.new(shape: CreatedTimestamp, location_name: "createdTimestamp"))
    UpdateUserProfileResult.add_member(:last_modified_timestamp, Shapes::ShapeRef.new(shape: LastModifiedTimestamp, location_name: "lastModifiedTimestamp"))
    UpdateUserProfileResult.struct_class = Types::UpdateUserProfileResult

    UserProfileSummary.add_member(:user_arn, Shapes::ShapeRef.new(shape: UserArn, location_name: "userArn"))
    UserProfileSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: UserProfileDisplayName, location_name: "displayName"))
    UserProfileSummary.add_member(:email_address, Shapes::ShapeRef.new(shape: Email, location_name: "emailAddress"))
    UserProfileSummary.add_member(:ssh_public_key, Shapes::ShapeRef.new(shape: SshPublicKey, location_name: "sshPublicKey"))
    UserProfileSummary.struct_class = Types::UserProfileSummary

    UserProfilesList.member = Shapes::ShapeRef.new(shape: UserProfileSummary)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-04-19"

      api.metadata = {
        "apiVersion" => "2017-04-19",
        "endpointPrefix" => "codestar",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "CodeStar",
        "serviceFullName" => "AWS CodeStar",
        "signatureVersion" => "v4",
        "targetPrefix" => "CodeStar_20170419",
        "uid" => "codestar-2017-04-19",
      }

      api.add_operation(:associate_team_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateTeamMember"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateTeamMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateTeamMemberResult)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ProjectNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TeamMemberAlreadyAssociatedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidServiceRoleException)
        o.errors << Shapes::ShapeRef.new(shape: ProjectConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:create_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProject"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProjectResult)
        o.errors << Shapes::ShapeRef.new(shape: ProjectAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ProjectCreationFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidServiceRoleException)
        o.errors << Shapes::ShapeRef.new(shape: ProjectConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:create_user_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUserProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUserProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserProfileResult)
        o.errors << Shapes::ShapeRef.new(shape: UserProfileAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProject"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProjectResult)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidServiceRoleException)
      end)

      api.add_operation(:delete_user_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUserProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserProfileResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProject"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProjectResult)
        o.errors << Shapes::ShapeRef.new(shape: ProjectNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidServiceRoleException)
        o.errors << Shapes::ShapeRef.new(shape: ProjectConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:describe_user_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUserProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeUserProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUserProfileResult)
        o.errors << Shapes::ShapeRef.new(shape: UserProfileNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:disassociate_team_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateTeamMember"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateTeamMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateTeamMemberResult)
        o.errors << Shapes::ShapeRef.new(shape: ProjectNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidServiceRoleException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:list_projects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProjects"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProjectsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProjectsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourcesResult)
        o.errors << Shapes::ShapeRef.new(shape: ProjectNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_tags_for_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForProject"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForProjectResult)
        o.errors << Shapes::ShapeRef.new(shape: ProjectNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:list_team_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTeamMembers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTeamMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTeamMembersResult)
        o.errors << Shapes::ShapeRef.new(shape: ProjectNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_user_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUserProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListUserProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUserProfilesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:tag_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagProject"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: TagProjectResult)
        o.errors << Shapes::ShapeRef.new(shape: ProjectNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:untag_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagProject"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagProjectResult)
        o.errors << Shapes::ShapeRef.new(shape: ProjectNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
      end)

      api.add_operation(:update_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProject"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProjectResult)
        o.errors << Shapes::ShapeRef.new(shape: ProjectNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_team_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTeamMember"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTeamMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTeamMemberResult)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ProjectNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidServiceRoleException)
        o.errors << Shapes::ShapeRef.new(shape: ProjectConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: TeamMemberNotFoundException)
      end)

      api.add_operation(:update_user_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserProfileResult)
        o.errors << Shapes::ShapeRef.new(shape: UserProfileNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
