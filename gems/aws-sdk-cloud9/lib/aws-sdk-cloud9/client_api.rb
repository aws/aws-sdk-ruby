# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Cloud9
  # @api private
  module ClientApi

    include Seahorse::Model

    AutomaticStopTimeMinutes = Shapes::IntegerShape.new(name: 'AutomaticStopTimeMinutes')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BoundedEnvironmentIdList = Shapes::ListShape.new(name: 'BoundedEnvironmentIdList')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateEnvironmentEC2Request = Shapes::StructureShape.new(name: 'CreateEnvironmentEC2Request')
    CreateEnvironmentEC2Result = Shapes::StructureShape.new(name: 'CreateEnvironmentEC2Result')
    CreateEnvironmentMembershipRequest = Shapes::StructureShape.new(name: 'CreateEnvironmentMembershipRequest')
    CreateEnvironmentMembershipResult = Shapes::StructureShape.new(name: 'CreateEnvironmentMembershipResult')
    DeleteEnvironmentMembershipRequest = Shapes::StructureShape.new(name: 'DeleteEnvironmentMembershipRequest')
    DeleteEnvironmentMembershipResult = Shapes::StructureShape.new(name: 'DeleteEnvironmentMembershipResult')
    DeleteEnvironmentRequest = Shapes::StructureShape.new(name: 'DeleteEnvironmentRequest')
    DeleteEnvironmentResult = Shapes::StructureShape.new(name: 'DeleteEnvironmentResult')
    DescribeEnvironmentMembershipsRequest = Shapes::StructureShape.new(name: 'DescribeEnvironmentMembershipsRequest')
    DescribeEnvironmentMembershipsResult = Shapes::StructureShape.new(name: 'DescribeEnvironmentMembershipsResult')
    DescribeEnvironmentStatusRequest = Shapes::StructureShape.new(name: 'DescribeEnvironmentStatusRequest')
    DescribeEnvironmentStatusResult = Shapes::StructureShape.new(name: 'DescribeEnvironmentStatusResult')
    DescribeEnvironmentsRequest = Shapes::StructureShape.new(name: 'DescribeEnvironmentsRequest')
    DescribeEnvironmentsResult = Shapes::StructureShape.new(name: 'DescribeEnvironmentsResult')
    Environment = Shapes::StructureShape.new(name: 'Environment')
    EnvironmentDescription = Shapes::StringShape.new(name: 'EnvironmentDescription')
    EnvironmentId = Shapes::StringShape.new(name: 'EnvironmentId')
    EnvironmentIdList = Shapes::ListShape.new(name: 'EnvironmentIdList')
    EnvironmentList = Shapes::ListShape.new(name: 'EnvironmentList')
    EnvironmentMember = Shapes::StructureShape.new(name: 'EnvironmentMember')
    EnvironmentMembersList = Shapes::ListShape.new(name: 'EnvironmentMembersList')
    EnvironmentName = Shapes::StringShape.new(name: 'EnvironmentName')
    EnvironmentStatus = Shapes::StringShape.new(name: 'EnvironmentStatus')
    EnvironmentType = Shapes::StringShape.new(name: 'EnvironmentType')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListEnvironmentsRequest = Shapes::StructureShape.new(name: 'ListEnvironmentsRequest')
    ListEnvironmentsResult = Shapes::StructureShape.new(name: 'ListEnvironmentsResult')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MemberPermissions = Shapes::StringShape.new(name: 'MemberPermissions')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    Permissions = Shapes::StringShape.new(name: 'Permissions')
    PermissionsList = Shapes::ListShape.new(name: 'PermissionsList')
    String = Shapes::StringShape.new(name: 'String')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UpdateEnvironmentMembershipRequest = Shapes::StructureShape.new(name: 'UpdateEnvironmentMembershipRequest')
    UpdateEnvironmentMembershipResult = Shapes::StructureShape.new(name: 'UpdateEnvironmentMembershipResult')
    UpdateEnvironmentRequest = Shapes::StructureShape.new(name: 'UpdateEnvironmentRequest')
    UpdateEnvironmentResult = Shapes::StructureShape.new(name: 'UpdateEnvironmentResult')
    UserArn = Shapes::StringShape.new(name: 'UserArn')

    BoundedEnvironmentIdList.member = Shapes::ShapeRef.new(shape: EnvironmentId)

    CreateEnvironmentEC2Request.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location_name: "name"))
    CreateEnvironmentEC2Request.add_member(:description, Shapes::ShapeRef.new(shape: EnvironmentDescription, location_name: "description"))
    CreateEnvironmentEC2Request.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken"))
    CreateEnvironmentEC2Request.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, required: true, location_name: "instanceType"))
    CreateEnvironmentEC2Request.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "subnetId"))
    CreateEnvironmentEC2Request.add_member(:automatic_stop_time_minutes, Shapes::ShapeRef.new(shape: AutomaticStopTimeMinutes, location_name: "automaticStopTimeMinutes"))
    CreateEnvironmentEC2Request.add_member(:owner_arn, Shapes::ShapeRef.new(shape: UserArn, location_name: "ownerArn"))
    CreateEnvironmentEC2Request.struct_class = Types::CreateEnvironmentEC2Request

    CreateEnvironmentEC2Result.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "environmentId"))
    CreateEnvironmentEC2Result.struct_class = Types::CreateEnvironmentEC2Result

    CreateEnvironmentMembershipRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    CreateEnvironmentMembershipRequest.add_member(:user_arn, Shapes::ShapeRef.new(shape: UserArn, required: true, location_name: "userArn"))
    CreateEnvironmentMembershipRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: MemberPermissions, required: true, location_name: "permissions"))
    CreateEnvironmentMembershipRequest.struct_class = Types::CreateEnvironmentMembershipRequest

    CreateEnvironmentMembershipResult.add_member(:membership, Shapes::ShapeRef.new(shape: EnvironmentMember, location_name: "membership"))
    CreateEnvironmentMembershipResult.struct_class = Types::CreateEnvironmentMembershipResult

    DeleteEnvironmentMembershipRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    DeleteEnvironmentMembershipRequest.add_member(:user_arn, Shapes::ShapeRef.new(shape: UserArn, required: true, location_name: "userArn"))
    DeleteEnvironmentMembershipRequest.struct_class = Types::DeleteEnvironmentMembershipRequest

    DeleteEnvironmentMembershipResult.struct_class = Types::DeleteEnvironmentMembershipResult

    DeleteEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    DeleteEnvironmentRequest.struct_class = Types::DeleteEnvironmentRequest

    DeleteEnvironmentResult.struct_class = Types::DeleteEnvironmentResult

    DescribeEnvironmentMembershipsRequest.add_member(:user_arn, Shapes::ShapeRef.new(shape: UserArn, location_name: "userArn"))
    DescribeEnvironmentMembershipsRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "environmentId"))
    DescribeEnvironmentMembershipsRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: PermissionsList, location_name: "permissions"))
    DescribeEnvironmentMembershipsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    DescribeEnvironmentMembershipsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribeEnvironmentMembershipsRequest.struct_class = Types::DescribeEnvironmentMembershipsRequest

    DescribeEnvironmentMembershipsResult.add_member(:memberships, Shapes::ShapeRef.new(shape: EnvironmentMembersList, location_name: "memberships"))
    DescribeEnvironmentMembershipsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    DescribeEnvironmentMembershipsResult.struct_class = Types::DescribeEnvironmentMembershipsResult

    DescribeEnvironmentStatusRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    DescribeEnvironmentStatusRequest.struct_class = Types::DescribeEnvironmentStatusRequest

    DescribeEnvironmentStatusResult.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentStatus, location_name: "status"))
    DescribeEnvironmentStatusResult.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    DescribeEnvironmentStatusResult.struct_class = Types::DescribeEnvironmentStatusResult

    DescribeEnvironmentsRequest.add_member(:environment_ids, Shapes::ShapeRef.new(shape: BoundedEnvironmentIdList, required: true, location_name: "environmentIds"))
    DescribeEnvironmentsRequest.struct_class = Types::DescribeEnvironmentsRequest

    DescribeEnvironmentsResult.add_member(:environments, Shapes::ShapeRef.new(shape: EnvironmentList, location_name: "environments"))
    DescribeEnvironmentsResult.struct_class = Types::DescribeEnvironmentsResult

    Environment.add_member(:id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "id"))
    Environment.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "name"))
    Environment.add_member(:description, Shapes::ShapeRef.new(shape: EnvironmentDescription, location_name: "description"))
    Environment.add_member(:type, Shapes::ShapeRef.new(shape: EnvironmentType, location_name: "type"))
    Environment.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    Environment.add_member(:owner_arn, Shapes::ShapeRef.new(shape: String, location_name: "ownerArn"))
    Environment.struct_class = Types::Environment

    EnvironmentIdList.member = Shapes::ShapeRef.new(shape: EnvironmentId)

    EnvironmentList.member = Shapes::ShapeRef.new(shape: Environment)

    EnvironmentMember.add_member(:permissions, Shapes::ShapeRef.new(shape: Permissions, location_name: "permissions"))
    EnvironmentMember.add_member(:user_id, Shapes::ShapeRef.new(shape: String, location_name: "userId"))
    EnvironmentMember.add_member(:user_arn, Shapes::ShapeRef.new(shape: UserArn, location_name: "userArn"))
    EnvironmentMember.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "environmentId"))
    EnvironmentMember.add_member(:last_access, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastAccess"))
    EnvironmentMember.struct_class = Types::EnvironmentMember

    EnvironmentMembersList.member = Shapes::ShapeRef.new(shape: EnvironmentMember)

    ListEnvironmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEnvironmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListEnvironmentsRequest.struct_class = Types::ListEnvironmentsRequest

    ListEnvironmentsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEnvironmentsResult.add_member(:environment_ids, Shapes::ShapeRef.new(shape: EnvironmentIdList, location_name: "environmentIds"))
    ListEnvironmentsResult.struct_class = Types::ListEnvironmentsResult

    PermissionsList.member = Shapes::ShapeRef.new(shape: Permissions)

    UpdateEnvironmentMembershipRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    UpdateEnvironmentMembershipRequest.add_member(:user_arn, Shapes::ShapeRef.new(shape: UserArn, required: true, location_name: "userArn"))
    UpdateEnvironmentMembershipRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: MemberPermissions, required: true, location_name: "permissions"))
    UpdateEnvironmentMembershipRequest.struct_class = Types::UpdateEnvironmentMembershipRequest

    UpdateEnvironmentMembershipResult.add_member(:membership, Shapes::ShapeRef.new(shape: EnvironmentMember, location_name: "membership"))
    UpdateEnvironmentMembershipResult.struct_class = Types::UpdateEnvironmentMembershipResult

    UpdateEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    UpdateEnvironmentRequest.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "name"))
    UpdateEnvironmentRequest.add_member(:description, Shapes::ShapeRef.new(shape: EnvironmentDescription, location_name: "description"))
    UpdateEnvironmentRequest.struct_class = Types::UpdateEnvironmentRequest

    UpdateEnvironmentResult.struct_class = Types::UpdateEnvironmentResult


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-09-23"

      api.metadata = {
        "apiVersion" => "2017-09-23",
        "endpointPrefix" => "cloud9",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Cloud9",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSCloud9WorkspaceManagementService",
        "uid" => "cloud9-2017-09-23",
      }

      api.add_operation(:create_environment_ec2, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnvironmentEC2"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEnvironmentEC2Request)
        o.output = Shapes::ShapeRef.new(shape: CreateEnvironmentEC2Result)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:create_environment_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnvironmentMembership"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEnvironmentMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEnvironmentMembershipResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEnvironmentResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_environment_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEnvironmentMembership"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEnvironmentMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEnvironmentMembershipResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:describe_environment_memberships, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEnvironmentMemberships"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEnvironmentMembershipsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEnvironmentMembershipsResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_environment_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEnvironmentStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEnvironmentStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEnvironmentStatusResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:describe_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEnvironments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEnvironmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEnvironmentsResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:list_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentsResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEnvironmentResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_environment_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnvironmentMembership"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEnvironmentMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEnvironmentMembershipResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)
    end

  end
end
