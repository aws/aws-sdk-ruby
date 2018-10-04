# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Mobile
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountActionRequiredException = Shapes::StructureShape.new(name: 'AccountActionRequiredException')
    AttributeKey = Shapes::StringShape.new(name: 'AttributeKey')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    Attributes = Shapes::MapShape.new(name: 'Attributes')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BundleDescription = Shapes::StringShape.new(name: 'BundleDescription')
    BundleDetails = Shapes::StructureShape.new(name: 'BundleDetails')
    BundleId = Shapes::StringShape.new(name: 'BundleId')
    BundleList = Shapes::ListShape.new(name: 'BundleList')
    BundleTitle = Shapes::StringShape.new(name: 'BundleTitle')
    BundleVersion = Shapes::StringShape.new(name: 'BundleVersion')
    ConsoleUrl = Shapes::StringShape.new(name: 'ConsoleUrl')
    Contents = Shapes::BlobShape.new(name: 'Contents')
    CreateProjectRequest = Shapes::StructureShape.new(name: 'CreateProjectRequest')
    CreateProjectResult = Shapes::StructureShape.new(name: 'CreateProjectResult')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DeleteProjectRequest = Shapes::StructureShape.new(name: 'DeleteProjectRequest')
    DeleteProjectResult = Shapes::StructureShape.new(name: 'DeleteProjectResult')
    DescribeBundleRequest = Shapes::StructureShape.new(name: 'DescribeBundleRequest')
    DescribeBundleResult = Shapes::StructureShape.new(name: 'DescribeBundleResult')
    DescribeProjectRequest = Shapes::StructureShape.new(name: 'DescribeProjectRequest')
    DescribeProjectResult = Shapes::StructureShape.new(name: 'DescribeProjectResult')
    DownloadUrl = Shapes::StringShape.new(name: 'DownloadUrl')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExportBundleRequest = Shapes::StructureShape.new(name: 'ExportBundleRequest')
    ExportBundleResult = Shapes::StructureShape.new(name: 'ExportBundleResult')
    ExportProjectRequest = Shapes::StructureShape.new(name: 'ExportProjectRequest')
    ExportProjectResult = Shapes::StructureShape.new(name: 'ExportProjectResult')
    Feature = Shapes::StringShape.new(name: 'Feature')
    IconUrl = Shapes::StringShape.new(name: 'IconUrl')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListBundlesRequest = Shapes::StructureShape.new(name: 'ListBundlesRequest')
    ListBundlesResult = Shapes::StructureShape.new(name: 'ListBundlesResult')
    ListProjectsRequest = Shapes::StructureShape.new(name: 'ListProjectsRequest')
    ListProjectsResult = Shapes::StructureShape.new(name: 'ListProjectsResult')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    Platform = Shapes::StringShape.new(name: 'Platform')
    Platforms = Shapes::ListShape.new(name: 'Platforms')
    ProjectDetails = Shapes::StructureShape.new(name: 'ProjectDetails')
    ProjectId = Shapes::StringShape.new(name: 'ProjectId')
    ProjectName = Shapes::StringShape.new(name: 'ProjectName')
    ProjectRegion = Shapes::StringShape.new(name: 'ProjectRegion')
    ProjectState = Shapes::StringShape.new(name: 'ProjectState')
    ProjectSummaries = Shapes::ListShape.new(name: 'ProjectSummaries')
    ProjectSummary = Shapes::StructureShape.new(name: 'ProjectSummary')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    Resources = Shapes::ListShape.new(name: 'Resources')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    ShareUrl = Shapes::StringShape.new(name: 'ShareUrl')
    SnapshotId = Shapes::StringShape.new(name: 'SnapshotId')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UpdateProjectRequest = Shapes::StructureShape.new(name: 'UpdateProjectRequest')
    UpdateProjectResult = Shapes::StructureShape.new(name: 'UpdateProjectResult')

    Attributes.key = Shapes::ShapeRef.new(shape: AttributeKey)
    Attributes.value = Shapes::ShapeRef.new(shape: AttributeValue)

    BundleDetails.add_member(:bundle_id, Shapes::ShapeRef.new(shape: BundleId, location_name: "bundleId"))
    BundleDetails.add_member(:title, Shapes::ShapeRef.new(shape: BundleTitle, location_name: "title"))
    BundleDetails.add_member(:version, Shapes::ShapeRef.new(shape: BundleVersion, location_name: "version"))
    BundleDetails.add_member(:description, Shapes::ShapeRef.new(shape: BundleDescription, location_name: "description"))
    BundleDetails.add_member(:icon_url, Shapes::ShapeRef.new(shape: IconUrl, location_name: "iconUrl"))
    BundleDetails.add_member(:available_platforms, Shapes::ShapeRef.new(shape: Platforms, location_name: "availablePlatforms"))
    BundleDetails.struct_class = Types::BundleDetails

    BundleList.member = Shapes::ShapeRef.new(shape: BundleDetails)

    CreateProjectRequest.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, location: "querystring", location_name: "name"))
    CreateProjectRequest.add_member(:region, Shapes::ShapeRef.new(shape: ProjectRegion, location: "querystring", location_name: "region"))
    CreateProjectRequest.add_member(:contents, Shapes::ShapeRef.new(shape: Contents, location_name: "contents"))
    CreateProjectRequest.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location: "querystring", location_name: "snapshotId"))
    CreateProjectRequest.struct_class = Types::CreateProjectRequest
    CreateProjectRequest[:payload] = :contents
    CreateProjectRequest[:payload_member] = CreateProjectRequest.member(:contents)

    CreateProjectResult.add_member(:details, Shapes::ShapeRef.new(shape: ProjectDetails, location_name: "details"))
    CreateProjectResult.struct_class = Types::CreateProjectResult

    DeleteProjectRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location: "uri", location_name: "projectId"))
    DeleteProjectRequest.struct_class = Types::DeleteProjectRequest

    DeleteProjectResult.add_member(:deleted_resources, Shapes::ShapeRef.new(shape: Resources, location_name: "deletedResources"))
    DeleteProjectResult.add_member(:orphaned_resources, Shapes::ShapeRef.new(shape: Resources, location_name: "orphanedResources"))
    DeleteProjectResult.struct_class = Types::DeleteProjectResult

    DescribeBundleRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: BundleId, required: true, location: "uri", location_name: "bundleId"))
    DescribeBundleRequest.struct_class = Types::DescribeBundleRequest

    DescribeBundleResult.add_member(:details, Shapes::ShapeRef.new(shape: BundleDetails, location_name: "details"))
    DescribeBundleResult.struct_class = Types::DescribeBundleResult

    DescribeProjectRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location: "querystring", location_name: "projectId"))
    DescribeProjectRequest.add_member(:sync_from_resources, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "syncFromResources"))
    DescribeProjectRequest.struct_class = Types::DescribeProjectRequest

    DescribeProjectResult.add_member(:details, Shapes::ShapeRef.new(shape: ProjectDetails, location_name: "details"))
    DescribeProjectResult.struct_class = Types::DescribeProjectResult

    ExportBundleRequest.add_member(:bundle_id, Shapes::ShapeRef.new(shape: BundleId, required: true, location: "uri", location_name: "bundleId"))
    ExportBundleRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, location: "querystring", location_name: "projectId"))
    ExportBundleRequest.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location: "querystring", location_name: "platform"))
    ExportBundleRequest.struct_class = Types::ExportBundleRequest

    ExportBundleResult.add_member(:download_url, Shapes::ShapeRef.new(shape: DownloadUrl, location_name: "downloadUrl"))
    ExportBundleResult.struct_class = Types::ExportBundleResult

    ExportProjectRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location: "uri", location_name: "projectId"))
    ExportProjectRequest.struct_class = Types::ExportProjectRequest

    ExportProjectResult.add_member(:download_url, Shapes::ShapeRef.new(shape: DownloadUrl, location_name: "downloadUrl"))
    ExportProjectResult.add_member(:share_url, Shapes::ShapeRef.new(shape: ShareUrl, location_name: "shareUrl"))
    ExportProjectResult.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: SnapshotId, location_name: "snapshotId"))
    ExportProjectResult.struct_class = Types::ExportProjectResult

    ListBundlesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBundlesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListBundlesRequest.struct_class = Types::ListBundlesRequest

    ListBundlesResult.add_member(:bundle_list, Shapes::ShapeRef.new(shape: BundleList, location_name: "bundleList"))
    ListBundlesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBundlesResult.struct_class = Types::ListBundlesResult

    ListProjectsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListProjectsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListProjectsRequest.struct_class = Types::ListProjectsRequest

    ListProjectsResult.add_member(:projects, Shapes::ShapeRef.new(shape: ProjectSummaries, location_name: "projects"))
    ListProjectsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListProjectsResult.struct_class = Types::ListProjectsResult

    Platforms.member = Shapes::ShapeRef.new(shape: Platform)

    ProjectDetails.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, location_name: "name"))
    ProjectDetails.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "projectId"))
    ProjectDetails.add_member(:region, Shapes::ShapeRef.new(shape: ProjectRegion, location_name: "region"))
    ProjectDetails.add_member(:state, Shapes::ShapeRef.new(shape: ProjectState, location_name: "state"))
    ProjectDetails.add_member(:created_date, Shapes::ShapeRef.new(shape: Date, location_name: "createdDate"))
    ProjectDetails.add_member(:last_updated_date, Shapes::ShapeRef.new(shape: Date, location_name: "lastUpdatedDate"))
    ProjectDetails.add_member(:console_url, Shapes::ShapeRef.new(shape: ConsoleUrl, location_name: "consoleUrl"))
    ProjectDetails.add_member(:resources, Shapes::ShapeRef.new(shape: Resources, location_name: "resources"))
    ProjectDetails.struct_class = Types::ProjectDetails

    ProjectSummaries.member = Shapes::ShapeRef.new(shape: ProjectSummary)

    ProjectSummary.add_member(:name, Shapes::ShapeRef.new(shape: ProjectName, location_name: "name"))
    ProjectSummary.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, location_name: "projectId"))
    ProjectSummary.struct_class = Types::ProjectSummary

    Resource.add_member(:type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "type"))
    Resource.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    Resource.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "arn"))
    Resource.add_member(:feature, Shapes::ShapeRef.new(shape: Feature, location_name: "feature"))
    Resource.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "attributes"))
    Resource.struct_class = Types::Resource

    Resources.member = Shapes::ShapeRef.new(shape: Resource)

    UpdateProjectRequest.add_member(:contents, Shapes::ShapeRef.new(shape: Contents, location_name: "contents"))
    UpdateProjectRequest.add_member(:project_id, Shapes::ShapeRef.new(shape: ProjectId, required: true, location: "querystring", location_name: "projectId"))
    UpdateProjectRequest.struct_class = Types::UpdateProjectRequest
    UpdateProjectRequest[:payload] = :contents
    UpdateProjectRequest[:payload_member] = UpdateProjectRequest.member(:contents)

    UpdateProjectResult.add_member(:details, Shapes::ShapeRef.new(shape: ProjectDetails, location_name: "details"))
    UpdateProjectResult.struct_class = Types::UpdateProjectResult


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-07-01"

      api.metadata = {
        "apiVersion" => "2017-07-01",
        "endpointPrefix" => "mobile",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Mobile",
        "signatureVersion" => "v4",
        "signingName" => "AWSMobileHubService",
        "uid" => "mobile-2017-07-01",
      }

      api.add_operation(:create_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProject"
        o.http_method = "POST"
        o.http_request_uri = "/projects"
        o.input = Shapes::ShapeRef.new(shape: CreateProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProjectResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:delete_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProject"
        o.http_method = "DELETE"
        o.http_request_uri = "/projects/{projectId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProjectResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:describe_bundle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBundle"
        o.http_method = "GET"
        o.http_request_uri = "/bundles/{bundleId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeBundleRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBundleResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:describe_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProject"
        o.http_method = "GET"
        o.http_request_uri = "/project"
        o.input = Shapes::ShapeRef.new(shape: DescribeProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProjectResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:export_bundle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportBundle"
        o.http_method = "POST"
        o.http_request_uri = "/bundles/{bundleId}"
        o.input = Shapes::ShapeRef.new(shape: ExportBundleRequest)
        o.output = Shapes::ShapeRef.new(shape: ExportBundleResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:export_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportProject"
        o.http_method = "POST"
        o.http_request_uri = "/exports/{projectId}"
        o.input = Shapes::ShapeRef.new(shape: ExportProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: ExportProjectResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:list_bundles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBundles"
        o.http_method = "GET"
        o.http_request_uri = "/bundles"
        o.input = Shapes::ShapeRef.new(shape: ListBundlesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBundlesResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_projects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProjects"
        o.http_method = "GET"
        o.http_request_uri = "/projects"
        o.input = Shapes::ShapeRef.new(shape: ListProjectsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProjectsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProject"
        o.http_method = "POST"
        o.http_request_uri = "/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProjectResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccountActionRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)
    end

  end
end
