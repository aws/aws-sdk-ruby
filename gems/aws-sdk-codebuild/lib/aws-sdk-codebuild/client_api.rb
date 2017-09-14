# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeBuild
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountLimitExceededException = Shapes::StructureShape.new(name: 'AccountLimitExceededException')
    ArtifactNamespace = Shapes::StringShape.new(name: 'ArtifactNamespace')
    ArtifactPackaging = Shapes::StringShape.new(name: 'ArtifactPackaging')
    ArtifactsType = Shapes::StringShape.new(name: 'ArtifactsType')
    BatchDeleteBuildsInput = Shapes::StructureShape.new(name: 'BatchDeleteBuildsInput')
    BatchDeleteBuildsOutput = Shapes::StructureShape.new(name: 'BatchDeleteBuildsOutput')
    BatchGetBuildsInput = Shapes::StructureShape.new(name: 'BatchGetBuildsInput')
    BatchGetBuildsOutput = Shapes::StructureShape.new(name: 'BatchGetBuildsOutput')
    BatchGetProjectsInput = Shapes::StructureShape.new(name: 'BatchGetProjectsInput')
    BatchGetProjectsOutput = Shapes::StructureShape.new(name: 'BatchGetProjectsOutput')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Build = Shapes::StructureShape.new(name: 'Build')
    BuildArtifacts = Shapes::StructureShape.new(name: 'BuildArtifacts')
    BuildIds = Shapes::ListShape.new(name: 'BuildIds')
    BuildNotDeleted = Shapes::StructureShape.new(name: 'BuildNotDeleted')
    BuildPhase = Shapes::StructureShape.new(name: 'BuildPhase')
    BuildPhaseType = Shapes::StringShape.new(name: 'BuildPhaseType')
    BuildPhases = Shapes::ListShape.new(name: 'BuildPhases')
    Builds = Shapes::ListShape.new(name: 'Builds')
    BuildsNotDeleted = Shapes::ListShape.new(name: 'BuildsNotDeleted')
    ComputeType = Shapes::StringShape.new(name: 'ComputeType')
    CreateProjectInput = Shapes::StructureShape.new(name: 'CreateProjectInput')
    CreateProjectOutput = Shapes::StructureShape.new(name: 'CreateProjectOutput')
    DeleteProjectInput = Shapes::StructureShape.new(name: 'DeleteProjectInput')
    DeleteProjectOutput = Shapes::StructureShape.new(name: 'DeleteProjectOutput')
    EnvironmentImage = Shapes::StructureShape.new(name: 'EnvironmentImage')
    EnvironmentImages = Shapes::ListShape.new(name: 'EnvironmentImages')
    EnvironmentLanguage = Shapes::StructureShape.new(name: 'EnvironmentLanguage')
    EnvironmentLanguages = Shapes::ListShape.new(name: 'EnvironmentLanguages')
    EnvironmentPlatform = Shapes::StructureShape.new(name: 'EnvironmentPlatform')
    EnvironmentPlatforms = Shapes::ListShape.new(name: 'EnvironmentPlatforms')
    EnvironmentType = Shapes::StringShape.new(name: 'EnvironmentType')
    EnvironmentVariable = Shapes::StructureShape.new(name: 'EnvironmentVariable')
    EnvironmentVariableType = Shapes::StringShape.new(name: 'EnvironmentVariableType')
    EnvironmentVariables = Shapes::ListShape.new(name: 'EnvironmentVariables')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    KeyInput = Shapes::StringShape.new(name: 'KeyInput')
    LanguageType = Shapes::StringShape.new(name: 'LanguageType')
    ListBuildsForProjectInput = Shapes::StructureShape.new(name: 'ListBuildsForProjectInput')
    ListBuildsForProjectOutput = Shapes::StructureShape.new(name: 'ListBuildsForProjectOutput')
    ListBuildsInput = Shapes::StructureShape.new(name: 'ListBuildsInput')
    ListBuildsOutput = Shapes::StructureShape.new(name: 'ListBuildsOutput')
    ListCuratedEnvironmentImagesInput = Shapes::StructureShape.new(name: 'ListCuratedEnvironmentImagesInput')
    ListCuratedEnvironmentImagesOutput = Shapes::StructureShape.new(name: 'ListCuratedEnvironmentImagesOutput')
    ListProjectsInput = Shapes::StructureShape.new(name: 'ListProjectsInput')
    ListProjectsOutput = Shapes::StructureShape.new(name: 'ListProjectsOutput')
    LogsLocation = Shapes::StructureShape.new(name: 'LogsLocation')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    PhaseContext = Shapes::StructureShape.new(name: 'PhaseContext')
    PhaseContexts = Shapes::ListShape.new(name: 'PhaseContexts')
    PlatformType = Shapes::StringShape.new(name: 'PlatformType')
    Project = Shapes::StructureShape.new(name: 'Project')
    ProjectArtifacts = Shapes::StructureShape.new(name: 'ProjectArtifacts')
    ProjectDescription = Shapes::StringShape.new(name: 'ProjectDescription')
    ProjectEnvironment = Shapes::StructureShape.new(name: 'ProjectEnvironment')
    ProjectName = Shapes::StringShape.new(name: 'ProjectName')
    ProjectNames = Shapes::ListShape.new(name: 'ProjectNames')
    ProjectSortByType = Shapes::StringShape.new(name: 'ProjectSortByType')
    ProjectSource = Shapes::StructureShape.new(name: 'ProjectSource')
    Projects = Shapes::ListShape.new(name: 'Projects')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SortOrderType = Shapes::StringShape.new(name: 'SortOrderType')
    SourceAuth = Shapes::StructureShape.new(name: 'SourceAuth')
    SourceAuthType = Shapes::StringShape.new(name: 'SourceAuthType')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    StartBuildInput = Shapes::StructureShape.new(name: 'StartBuildInput')
    StartBuildOutput = Shapes::StructureShape.new(name: 'StartBuildOutput')
    StatusType = Shapes::StringShape.new(name: 'StatusType')
    StopBuildInput = Shapes::StructureShape.new(name: 'StopBuildInput')
    StopBuildOutput = Shapes::StructureShape.new(name: 'StopBuildOutput')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TimeOut = Shapes::IntegerShape.new(name: 'TimeOut')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UpdateProjectInput = Shapes::StructureShape.new(name: 'UpdateProjectInput')
    UpdateProjectOutput = Shapes::StructureShape.new(name: 'UpdateProjectOutput')
    ValueInput = Shapes::StringShape.new(name: 'ValueInput')
    WrapperBoolean = Shapes::BooleanShape.new(name: 'WrapperBoolean')
    WrapperInt = Shapes::IntegerShape.new(name: 'WrapperInt')
    WrapperLong = Shapes::IntegerShape.new(name: 'WrapperLong')

    BatchDeleteBuildsInput.add_member(:ids, Shapes::ShapeRef.new(shape: BuildIds, required: true, location_name: "ids"))
    BatchDeleteBuildsInput.struct_class = Types::BatchDeleteBuildsInput

    BatchDeleteBuildsOutput.add_member(:builds_deleted, Shapes::ShapeRef.new(shape: BuildIds, location_name: "buildsDeleted"))
    BatchDeleteBuildsOutput.add_member(:builds_not_deleted, Shapes::ShapeRef.new(shape: BuildsNotDeleted, location_name: "buildsNotDeleted"))
    BatchDeleteBuildsOutput.struct_class = Types::BatchDeleteBuildsOutput

    BatchGetBuildsInput.add_member(:ids, Shapes::ShapeRef.new(shape: BuildIds, required: true, location_name: "ids"))
    BatchGetBuildsInput.struct_class = Types::BatchGetBuildsInput

    BatchGetBuildsOutput.add_member(:builds, Shapes::ShapeRef.new(shape: Builds, location_name: "builds"))
    BatchGetBuildsOutput.add_member(:builds_not_found, Shapes::ShapeRef.new(shape: BuildIds, location_name: "buildsNotFound"))
    BatchGetBuildsOutput.struct_class = Types::BatchGetBuildsOutput

    BatchGetProjectsInput.add_member(:names, Shapes::ShapeRef.new(shape: ProjectNames, required: true, location_name: "names"))
    BatchGetProjectsInput.struct_class = Types::BatchGetProjectsInput

    BatchGetProjectsOutput.add_member(:projects, Shapes::ShapeRef.new(shape: Projects, location_name: "projects"))
    BatchGetProjectsOutput.add_member(:projects_not_found, Shapes::ShapeRef.new(shape: ProjectNames, location_name: "projectsNotFound"))
    BatchGetProjectsOutput.struct_class = Types::BatchGetProjectsOutput

    Build.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id"))
    Build.add_member(:arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    Build.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    Build.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    Build.add_member(:current_phase, Shapes::ShapeRef.new(shape: String, location_name: "currentPhase"))
    Build.add_member(:build_status, Shapes::ShapeRef.new(shape: StatusType, location_name: "buildStatus"))
    Build.add_member(:source_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "sourceVersion"))
    Build.add_member(:project_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "projectName"))
    Build.add_member(:phases, Shapes::ShapeRef.new(shape: BuildPhases, location_name: "phases"))
    Build.add_member(:source, Shapes::ShapeRef.new(shape: ProjectSource, location_name: "source"))
    Build.add_member(:artifacts, Shapes::ShapeRef.new(shape: BuildArtifacts, location_name: "artifacts"))
    Build.add_member(:environment, Shapes::ShapeRef.new(shape: ProjectEnvironment, location_name: "environment"))
    Build.add_member(:logs, Shapes::ShapeRef.new(shape: LogsLocation, location_name: "logs"))
    Build.add_member(:timeout_in_minutes, Shapes::ShapeRef.new(shape: WrapperInt, location_name: "timeoutInMinutes"))
    Build.add_member(:build_complete, Shapes::ShapeRef.new(shape: Boolean, location_name: "buildComplete"))
    Build.add_member(:initiator, Shapes::ShapeRef.new(shape: String, location_name: "initiator"))
    Build.struct_class = Types::Build

    BuildArtifacts.add_member(:location, Shapes::ShapeRef.new(shape: String, location_name: "location"))
    BuildArtifacts.add_member(:sha256sum, Shapes::ShapeRef.new(shape: String, location_name: "sha256sum"))
    BuildArtifacts.add_member(:md5sum, Shapes::ShapeRef.new(shape: String, location_name: "md5sum"))
    BuildArtifacts.struct_class = Types::BuildArtifacts

    BuildIds.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    BuildNotDeleted.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id"))
    BuildNotDeleted.add_member(:status_code, Shapes::ShapeRef.new(shape: String, location_name: "statusCode"))
    BuildNotDeleted.struct_class = Types::BuildNotDeleted

    BuildPhase.add_member(:phase_type, Shapes::ShapeRef.new(shape: BuildPhaseType, location_name: "phaseType"))
    BuildPhase.add_member(:phase_status, Shapes::ShapeRef.new(shape: StatusType, location_name: "phaseStatus"))
    BuildPhase.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    BuildPhase.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    BuildPhase.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: WrapperLong, location_name: "durationInSeconds"))
    BuildPhase.add_member(:contexts, Shapes::ShapeRef.new(shape: PhaseContexts, location_name: "contexts"))
    BuildPhase.struct_class = Types::BuildPhase

    BuildPhases.member = Shapes::ShapeRef.new(shape: BuildPhase)

    Builds.member = Shapes::ShapeRef.new(shape: Build)

    BuildsNotDeleted.member = Shapes::ShapeRef.new(shape: BuildNotDeleted)

    CreateProjectInput.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, required: true, location_name: "name"))
    CreateProjectInput.add_member(:description, Shapes::ShapeRef.new(shape: ProjectDescription, location_name: "description"))
    CreateProjectInput.add_member(:source, Shapes::ShapeRef.new(shape: ProjectSource, required: true, location_name: "source"))
    CreateProjectInput.add_member(:artifacts, Shapes::ShapeRef.new(shape: ProjectArtifacts, required: true, location_name: "artifacts"))
    CreateProjectInput.add_member(:environment, Shapes::ShapeRef.new(shape: ProjectEnvironment, required: true, location_name: "environment"))
    CreateProjectInput.add_member(:service_role, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "serviceRole"))
    CreateProjectInput.add_member(:timeout_in_minutes, Shapes::ShapeRef.new(shape: TimeOut, location_name: "timeoutInMinutes"))
    CreateProjectInput.add_member(:encryption_key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "encryptionKey"))
    CreateProjectInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateProjectInput.struct_class = Types::CreateProjectInput

    CreateProjectOutput.add_member(:project, Shapes::ShapeRef.new(shape: Project, location_name: "project"))
    CreateProjectOutput.struct_class = Types::CreateProjectOutput

    DeleteProjectInput.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "name"))
    DeleteProjectInput.struct_class = Types::DeleteProjectInput

    DeleteProjectOutput.struct_class = Types::DeleteProjectOutput

    EnvironmentImage.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    EnvironmentImage.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    EnvironmentImage.struct_class = Types::EnvironmentImage

    EnvironmentImages.member = Shapes::ShapeRef.new(shape: EnvironmentImage)

    EnvironmentLanguage.add_member(:language, Shapes::ShapeRef.new(shape: LanguageType, location_name: "language"))
    EnvironmentLanguage.add_member(:images, Shapes::ShapeRef.new(shape: EnvironmentImages, location_name: "images"))
    EnvironmentLanguage.struct_class = Types::EnvironmentLanguage

    EnvironmentLanguages.member = Shapes::ShapeRef.new(shape: EnvironmentLanguage)

    EnvironmentPlatform.add_member(:platform, Shapes::ShapeRef.new(shape: PlatformType, location_name: "platform"))
    EnvironmentPlatform.add_member(:languages, Shapes::ShapeRef.new(shape: EnvironmentLanguages, location_name: "languages"))
    EnvironmentPlatform.struct_class = Types::EnvironmentPlatform

    EnvironmentPlatforms.member = Shapes::ShapeRef.new(shape: EnvironmentPlatform)

    EnvironmentVariable.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "name"))
    EnvironmentVariable.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "value"))
    EnvironmentVariable.add_member(:type, Shapes::ShapeRef.new(shape: EnvironmentVariableType, location_name: "type"))
    EnvironmentVariable.struct_class = Types::EnvironmentVariable

    EnvironmentVariables.member = Shapes::ShapeRef.new(shape: EnvironmentVariable)

    ListBuildsForProjectInput.add_member(:project_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "projectName"))
    ListBuildsForProjectInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrderType, location_name: "sortOrder"))
    ListBuildsForProjectInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListBuildsForProjectInput.struct_class = Types::ListBuildsForProjectInput

    ListBuildsForProjectOutput.add_member(:ids, Shapes::ShapeRef.new(shape: BuildIds, location_name: "ids"))
    ListBuildsForProjectOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListBuildsForProjectOutput.struct_class = Types::ListBuildsForProjectOutput

    ListBuildsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrderType, location_name: "sortOrder"))
    ListBuildsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListBuildsInput.struct_class = Types::ListBuildsInput

    ListBuildsOutput.add_member(:ids, Shapes::ShapeRef.new(shape: BuildIds, location_name: "ids"))
    ListBuildsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListBuildsOutput.struct_class = Types::ListBuildsOutput

    ListCuratedEnvironmentImagesInput.struct_class = Types::ListCuratedEnvironmentImagesInput

    ListCuratedEnvironmentImagesOutput.add_member(:platforms, Shapes::ShapeRef.new(shape: EnvironmentPlatforms, location_name: "platforms"))
    ListCuratedEnvironmentImagesOutput.struct_class = Types::ListCuratedEnvironmentImagesOutput

    ListProjectsInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: ProjectSortByType, location_name: "sortBy"))
    ListProjectsInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrderType, location_name: "sortOrder"))
    ListProjectsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListProjectsInput.struct_class = Types::ListProjectsInput

    ListProjectsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListProjectsOutput.add_member(:projects, Shapes::ShapeRef.new(shape: ProjectNames, location_name: "projects"))
    ListProjectsOutput.struct_class = Types::ListProjectsOutput

    LogsLocation.add_member(:group_name, Shapes::ShapeRef.new(shape: String, location_name: "groupName"))
    LogsLocation.add_member(:stream_name, Shapes::ShapeRef.new(shape: String, location_name: "streamName"))
    LogsLocation.add_member(:deep_link, Shapes::ShapeRef.new(shape: String, location_name: "deepLink"))
    LogsLocation.struct_class = Types::LogsLocation

    PhaseContext.add_member(:status_code, Shapes::ShapeRef.new(shape: String, location_name: "statusCode"))
    PhaseContext.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    PhaseContext.struct_class = Types::PhaseContext

    PhaseContexts.member = Shapes::ShapeRef.new(shape: PhaseContext)

    Project.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, location_name: "name"))
    Project.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    Project.add_member(:description, Shapes::ShapeRef.new(shape: ProjectDescription, location_name: "description"))
    Project.add_member(:source, Shapes::ShapeRef.new(shape: ProjectSource, location_name: "source"))
    Project.add_member(:artifacts, Shapes::ShapeRef.new(shape: ProjectArtifacts, location_name: "artifacts"))
    Project.add_member(:environment, Shapes::ShapeRef.new(shape: ProjectEnvironment, location_name: "environment"))
    Project.add_member(:service_role, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "serviceRole"))
    Project.add_member(:timeout_in_minutes, Shapes::ShapeRef.new(shape: TimeOut, location_name: "timeoutInMinutes"))
    Project.add_member(:encryption_key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "encryptionKey"))
    Project.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    Project.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "created"))
    Project.add_member(:last_modified, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModified"))
    Project.struct_class = Types::Project

    ProjectArtifacts.add_member(:type, Shapes::ShapeRef.new(shape: ArtifactsType, required: true, location_name: "type"))
    ProjectArtifacts.add_member(:location, Shapes::ShapeRef.new(shape: String, location_name: "location"))
    ProjectArtifacts.add_member(:path, Shapes::ShapeRef.new(shape: String, location_name: "path"))
    ProjectArtifacts.add_member(:namespace_type, Shapes::ShapeRef.new(shape: ArtifactNamespace, location_name: "namespaceType"))
    ProjectArtifacts.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ProjectArtifacts.add_member(:packaging, Shapes::ShapeRef.new(shape: ArtifactPackaging, location_name: "packaging"))
    ProjectArtifacts.struct_class = Types::ProjectArtifacts

    ProjectEnvironment.add_member(:type, Shapes::ShapeRef.new(shape: EnvironmentType, required: true, location_name: "type"))
    ProjectEnvironment.add_member(:image, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "image"))
    ProjectEnvironment.add_member(:compute_type, Shapes::ShapeRef.new(shape: ComputeType, required: true, location_name: "computeType"))
    ProjectEnvironment.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environmentVariables"))
    ProjectEnvironment.add_member(:privileged_mode, Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "privilegedMode"))
    ProjectEnvironment.struct_class = Types::ProjectEnvironment

    ProjectNames.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    ProjectSource.add_member(:type, Shapes::ShapeRef.new(shape: SourceType, required: true, location_name: "type"))
    ProjectSource.add_member(:location, Shapes::ShapeRef.new(shape: String, location_name: "location"))
    ProjectSource.add_member(:buildspec, Shapes::ShapeRef.new(shape: String, location_name: "buildspec"))
    ProjectSource.add_member(:auth, Shapes::ShapeRef.new(shape: SourceAuth, location_name: "auth"))
    ProjectSource.struct_class = Types::ProjectSource

    Projects.member = Shapes::ShapeRef.new(shape: Project)

    SourceAuth.add_member(:type, Shapes::ShapeRef.new(shape: SourceAuthType, required: true, location_name: "type"))
    SourceAuth.add_member(:resource, Shapes::ShapeRef.new(shape: String, location_name: "resource"))
    SourceAuth.struct_class = Types::SourceAuth

    StartBuildInput.add_member(:project_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "projectName"))
    StartBuildInput.add_member(:source_version, Shapes::ShapeRef.new(shape: String, location_name: "sourceVersion"))
    StartBuildInput.add_member(:artifacts_override, Shapes::ShapeRef.new(shape: ProjectArtifacts, location_name: "artifactsOverride"))
    StartBuildInput.add_member(:environment_variables_override, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environmentVariablesOverride"))
    StartBuildInput.add_member(:buildspec_override, Shapes::ShapeRef.new(shape: String, location_name: "buildspecOverride"))
    StartBuildInput.add_member(:timeout_in_minutes_override, Shapes::ShapeRef.new(shape: TimeOut, location_name: "timeoutInMinutesOverride"))
    StartBuildInput.struct_class = Types::StartBuildInput

    StartBuildOutput.add_member(:build, Shapes::ShapeRef.new(shape: Build, location_name: "build"))
    StartBuildOutput.struct_class = Types::StartBuildOutput

    StopBuildInput.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "id"))
    StopBuildInput.struct_class = Types::StopBuildInput

    StopBuildOutput.add_member(:build, Shapes::ShapeRef.new(shape: Build, location_name: "build"))
    StopBuildOutput.struct_class = Types::StopBuildOutput

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: KeyInput, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: ValueInput, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    UpdateProjectInput.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "name"))
    UpdateProjectInput.add_member(:description, Shapes::ShapeRef.new(shape: ProjectDescription, location_name: "description"))
    UpdateProjectInput.add_member(:source, Shapes::ShapeRef.new(shape: ProjectSource, location_name: "source"))
    UpdateProjectInput.add_member(:artifacts, Shapes::ShapeRef.new(shape: ProjectArtifacts, location_name: "artifacts"))
    UpdateProjectInput.add_member(:environment, Shapes::ShapeRef.new(shape: ProjectEnvironment, location_name: "environment"))
    UpdateProjectInput.add_member(:service_role, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "serviceRole"))
    UpdateProjectInput.add_member(:timeout_in_minutes, Shapes::ShapeRef.new(shape: TimeOut, location_name: "timeoutInMinutes"))
    UpdateProjectInput.add_member(:encryption_key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "encryptionKey"))
    UpdateProjectInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    UpdateProjectInput.struct_class = Types::UpdateProjectInput

    UpdateProjectOutput.add_member(:project, Shapes::ShapeRef.new(shape: Project, location_name: "project"))
    UpdateProjectOutput.struct_class = Types::UpdateProjectOutput


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-10-06"

      api.metadata = {
        "endpointPrefix" => "codebuild",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS CodeBuild",
        "signatureVersion" => "v4",
        "targetPrefix" => "CodeBuild_20161006",
      }

      api.add_operation(:batch_delete_builds, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteBuilds"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteBuildsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteBuildsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:batch_get_builds, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetBuilds"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetBuildsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetBuildsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:batch_get_projects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetProjects"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetProjectsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetProjectsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:create_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProject"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateProjectInput)
        o.output = Shapes::ShapeRef.new(shape: CreateProjectOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: AccountLimitExceededException)
      end)

      api.add_operation(:delete_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProject"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProjectInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteProjectOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:list_builds, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBuilds"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBuildsInput)
        o.output = Shapes::ShapeRef.new(shape: ListBuildsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:list_builds_for_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBuildsForProject"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBuildsForProjectInput)
        o.output = Shapes::ShapeRef.new(shape: ListBuildsForProjectOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_curated_environment_images, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCuratedEnvironmentImages"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCuratedEnvironmentImagesInput)
        o.output = Shapes::ShapeRef.new(shape: ListCuratedEnvironmentImagesOutput)
      end)

      api.add_operation(:list_projects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProjects"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProjectsInput)
        o.output = Shapes::ShapeRef.new(shape: ListProjectsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:start_build, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartBuild"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartBuildInput)
        o.output = Shapes::ShapeRef.new(shape: StartBuildOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccountLimitExceededException)
      end)

      api.add_operation(:stop_build, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopBuild"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopBuildInput)
        o.output = Shapes::ShapeRef.new(shape: StopBuildOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProject"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateProjectInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateProjectOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
