# frozen_string_literal: true

# This is generated code!

module Aws::Cloud9
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AutomaticStopTimeMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloud9#AutomaticStopTimeMinutes', name: 'AutomaticStopTimeMinutes', traits: {"smithy.api#range" => {"min" => 0, "max" => 20160}})
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client"})
    BoundedEnvironmentIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloud9#BoundedEnvironmentIdList', name: 'BoundedEnvironmentIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloud9#ClientRequestToken', name: 'ClientRequestToken', traits: {"smithy.api#pattern" => "^[\\x20-\\x7E]{10,128}$"})
    ConcurrentAccessException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#ConcurrentAccessException', name: 'ConcurrentAccessException', traits: {"smithy.api#error" => "client"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client"})
    ConnectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloud9#ConnectionType', name: 'ConnectionType')
    CreateEnvironmentEC2Request = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#CreateEnvironmentEC2Request', name: 'CreateEnvironmentEC2Request')
    CreateEnvironmentEC2Result = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#CreateEnvironmentEC2Result', name: 'CreateEnvironmentEC2Result')
    CreateEnvironmentMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#CreateEnvironmentMembershipRequest', name: 'CreateEnvironmentMembershipRequest')
    CreateEnvironmentMembershipResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#CreateEnvironmentMembershipResult', name: 'CreateEnvironmentMembershipResult')
    DeleteEnvironmentMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#DeleteEnvironmentMembershipRequest', name: 'DeleteEnvironmentMembershipRequest')
    DeleteEnvironmentMembershipResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#DeleteEnvironmentMembershipResult', name: 'DeleteEnvironmentMembershipResult')
    DeleteEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#DeleteEnvironmentRequest', name: 'DeleteEnvironmentRequest')
    DeleteEnvironmentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#DeleteEnvironmentResult', name: 'DeleteEnvironmentResult')
    DescribeEnvironmentMembershipsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#DescribeEnvironmentMembershipsRequest', name: 'DescribeEnvironmentMembershipsRequest')
    DescribeEnvironmentMembershipsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#DescribeEnvironmentMembershipsResult', name: 'DescribeEnvironmentMembershipsResult')
    DescribeEnvironmentStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#DescribeEnvironmentStatusRequest', name: 'DescribeEnvironmentStatusRequest')
    DescribeEnvironmentStatusResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#DescribeEnvironmentStatusResult', name: 'DescribeEnvironmentStatusResult')
    DescribeEnvironmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#DescribeEnvironmentsRequest', name: 'DescribeEnvironmentsRequest')
    DescribeEnvironmentsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#DescribeEnvironmentsResult', name: 'DescribeEnvironmentsResult')
    Environment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#Environment', name: 'Environment')
    EnvironmentArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloud9#EnvironmentArn', name: 'EnvironmentArn', traits: {"smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):cloud9:([a-z]{2}-[a-z]+-\\d{1}):[0-9]{12}:environment:[a-zA-Z0-9]{8,32}$"})
    EnvironmentDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloud9#EnvironmentDescription', name: 'EnvironmentDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#sensitive" => {}})
    EnvironmentId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloud9#EnvironmentId', name: 'EnvironmentId', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{8,32}$"})
    EnvironmentIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloud9#EnvironmentIdList', name: 'EnvironmentIdList')
    EnvironmentLifecycle = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#EnvironmentLifecycle', name: 'EnvironmentLifecycle')
    EnvironmentLifecycleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloud9#EnvironmentLifecycleStatus', name: 'EnvironmentLifecycleStatus')
    EnvironmentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloud9#EnvironmentList', name: 'EnvironmentList')
    EnvironmentMember = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#EnvironmentMember', name: 'EnvironmentMember')
    EnvironmentMembersList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloud9#EnvironmentMembersList', name: 'EnvironmentMembersList')
    EnvironmentName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloud9#EnvironmentName', name: 'EnvironmentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 60}})
    EnvironmentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloud9#EnvironmentStatus', name: 'EnvironmentStatus')
    EnvironmentType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloud9#EnvironmentType', name: 'EnvironmentType')
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#ForbiddenException', name: 'ForbiddenException', traits: {"smithy.api#error" => "client"})
    ImageId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloud9#ImageId', name: 'ImageId', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    InstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloud9#InstanceType', name: 'InstanceType', traits: {"smithy.api#length" => {"min" => 5, "max" => 20}, "smithy.api#pattern" => "^[a-z]+[1-9][.][a-z0-9]+$"})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloud9#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InternalServerErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#InternalServerErrorException', name: 'InternalServerErrorException', traits: {"smithy.api#error" => "server"})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListEnvironmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#ListEnvironmentsRequest', name: 'ListEnvironmentsRequest')
    ListEnvironmentsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#ListEnvironmentsResult', name: 'ListEnvironmentsResult')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ManagedCredentialsAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloud9#ManagedCredentialsAction', name: 'ManagedCredentialsAction')
    ManagedCredentialsStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloud9#ManagedCredentialsStatus', name: 'ManagedCredentialsStatus')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloud9#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 0, "max" => 25}})
    MemberPermissions = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloud9#MemberPermissions', name: 'MemberPermissions')
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client"})
    NullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloud9#NullableBoolean', name: 'NullableBoolean')
    Permissions = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloud9#Permissions', name: 'Permissions')
    PermissionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloud9#PermissionsList', name: 'PermissionsList')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloud9#String', name: 'String')
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloud9#SubnetId', name: 'SubnetId', traits: {"smithy.api#length" => {"min" => 15, "max" => 24}, "smithy.api#pattern" => "^(subnet-[0-9a-f]{8}|subnet-[0-9a-f]{17})$"})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#Tag', name: 'Tag', traits: {"smithy.api#sensitive" => {}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloud9#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#sensitive" => {}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloud9#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#sensitive" => {}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloud9#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#sensitive" => {}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloud9#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.cloud9#Timestamp', name: 'Timestamp')
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateEnvironmentMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#UpdateEnvironmentMembershipRequest', name: 'UpdateEnvironmentMembershipRequest')
    UpdateEnvironmentMembershipResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#UpdateEnvironmentMembershipResult', name: 'UpdateEnvironmentMembershipResult')
    UpdateEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#UpdateEnvironmentRequest', name: 'UpdateEnvironmentRequest')
    UpdateEnvironmentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloud9#UpdateEnvironmentResult', name: 'UpdateEnvironmentResult')
    UserArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloud9#UserArn', name: 'UserArn', traits: {"smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):(iam|sts)::\\d+:(root|(user\\/[\\w+=/:,.@-]{1,64}|federated-user\\/[\\w+=/:,.@-]{2,32}|assumed-role\\/[\\w+=:,.@-]{1,64}\\/[\\w+=,.@-]{1,64}))$"})

    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    BadRequestException.add_member(:class_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'className'))
    BadRequestException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'code', traits: {"smithy.api#default" => 0}))
    BadRequestException.type = Types::BadRequestException
    BoundedEnvironmentIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId)
    ConcurrentAccessException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ConcurrentAccessException.add_member(:class_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'className'))
    ConcurrentAccessException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'code', traits: {"smithy.api#default" => 0}))
    ConcurrentAccessException.type = Types::ConcurrentAccessException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ConflictException.add_member(:class_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'className'))
    ConflictException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'code', traits: {"smithy.api#default" => 0}))
    ConflictException.type = Types::ConflictException
    ConnectionType.add_member(:connect_ssh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECT_SSH', traits: {"smithy.api#enumValue" => "CONNECT_SSH"}))
    ConnectionType.add_member(:connect_ssm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECT_SSM', traits: {"smithy.api#enumValue" => "CONNECT_SSM"}))
    CreateEnvironmentEC2Request.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentEC2Request.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentDescription, location_name: 'description'))
    CreateEnvironmentEC2Request.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken'))
    CreateEnvironmentEC2Request.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'instanceType', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentEC2Request.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId, location_name: 'subnetId'))
    CreateEnvironmentEC2Request.add_member(:image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageId, location_name: 'imageId', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentEC2Request.add_member(:automatic_stop_time_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomaticStopTimeMinutes, location_name: 'automaticStopTimeMinutes'))
    CreateEnvironmentEC2Request.add_member(:owner_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserArn, location_name: 'ownerArn'))
    CreateEnvironmentEC2Request.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateEnvironmentEC2Request.add_member(:connection_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionType, location_name: 'connectionType'))
    CreateEnvironmentEC2Request.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'dryRun'))
    CreateEnvironmentEC2Request.type = Types::CreateEnvironmentEC2Request
    CreateEnvironmentEC2Result.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId'))
    CreateEnvironmentEC2Result.type = Types::CreateEnvironmentEC2Result
    CreateEnvironmentMembershipRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentMembershipRequest.add_member(:user_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserArn, location_name: 'userArn', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentMembershipRequest.add_member(:permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberPermissions, location_name: 'permissions', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentMembershipRequest.type = Types::CreateEnvironmentMembershipRequest
    CreateEnvironmentMembershipResult.add_member(:membership, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentMember, location_name: 'membership', traits: {"smithy.api#required" => {}}))
    CreateEnvironmentMembershipResult.type = Types::CreateEnvironmentMembershipResult
    DeleteEnvironmentMembershipRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#required" => {}}))
    DeleteEnvironmentMembershipRequest.add_member(:user_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserArn, location_name: 'userArn', traits: {"smithy.api#required" => {}}))
    DeleteEnvironmentMembershipRequest.type = Types::DeleteEnvironmentMembershipRequest
    DeleteEnvironmentMembershipResult.type = Types::DeleteEnvironmentMembershipResult
    DeleteEnvironmentRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#required" => {}}))
    DeleteEnvironmentRequest.type = Types::DeleteEnvironmentRequest
    DeleteEnvironmentResult.type = Types::DeleteEnvironmentResult
    DescribeEnvironmentMembershipsRequest.add_member(:user_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserArn, location_name: 'userArn'))
    DescribeEnvironmentMembershipsRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId'))
    DescribeEnvironmentMembershipsRequest.add_member(:permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionsList, location_name: 'permissions'))
    DescribeEnvironmentMembershipsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    DescribeEnvironmentMembershipsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    DescribeEnvironmentMembershipsRequest.type = Types::DescribeEnvironmentMembershipsRequest
    DescribeEnvironmentMembershipsResult.add_member(:memberships, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentMembersList, location_name: 'memberships'))
    DescribeEnvironmentMembershipsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    DescribeEnvironmentMembershipsResult.type = Types::DescribeEnvironmentMembershipsResult
    DescribeEnvironmentStatusRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#required" => {}}))
    DescribeEnvironmentStatusRequest.type = Types::DescribeEnvironmentStatusRequest
    DescribeEnvironmentStatusResult.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    DescribeEnvironmentStatusResult.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    DescribeEnvironmentStatusResult.type = Types::DescribeEnvironmentStatusResult
    DescribeEnvironmentsRequest.add_member(:environment_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BoundedEnvironmentIdList, location_name: 'environmentIds', traits: {"smithy.api#required" => {}}))
    DescribeEnvironmentsRequest.type = Types::DescribeEnvironmentsRequest
    DescribeEnvironmentsResult.add_member(:environments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentList, location_name: 'environments'))
    DescribeEnvironmentsResult.type = Types::DescribeEnvironmentsResult
    Environment.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'id'))
    Environment.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'name'))
    Environment.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentDescription, location_name: 'description'))
    Environment.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    Environment.add_member(:connection_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionType, location_name: 'connectionType'))
    Environment.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    Environment.add_member(:owner_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ownerArn', traits: {"smithy.api#required" => {}}))
    Environment.add_member(:lifecycle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentLifecycle, location_name: 'lifecycle'))
    Environment.add_member(:managed_credentials_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedCredentialsStatus, location_name: 'managedCredentialsStatus'))
    Environment.type = Types::Environment
    EnvironmentIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId)
    EnvironmentLifecycle.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentLifecycleStatus, location_name: 'status'))
    EnvironmentLifecycle.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'reason'))
    EnvironmentLifecycle.add_member(:failure_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'failureResource'))
    EnvironmentLifecycle.type = Types::EnvironmentLifecycle
    EnvironmentLifecycleStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    EnvironmentLifecycleStatus.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    EnvironmentLifecycleStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    EnvironmentLifecycleStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    EnvironmentLifecycleStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    EnvironmentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Environment)
    EnvironmentMember.add_member(:permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Permissions, location_name: 'permissions', traits: {"smithy.api#required" => {}}))
    EnvironmentMember.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'userId', traits: {"smithy.api#required" => {}}))
    EnvironmentMember.add_member(:user_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserArn, location_name: 'userArn', traits: {"smithy.api#required" => {}}))
    EnvironmentMember.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#required" => {}}))
    EnvironmentMember.add_member(:last_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastAccess'))
    EnvironmentMember.type = Types::EnvironmentMember
    EnvironmentMembersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentMember)
    EnvironmentStatus.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "error"}))
    EnvironmentStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "creating"}))
    EnvironmentStatus.add_member(:connecting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECTING', traits: {"smithy.api#enumValue" => "connecting"}))
    EnvironmentStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "ready"}))
    EnvironmentStatus.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "stopping"}))
    EnvironmentStatus.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "stopped"}))
    EnvironmentStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "deleting"}))
    EnvironmentType.add_member(:ssh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSH', traits: {"smithy.api#enumValue" => "ssh"}))
    EnvironmentType.add_member(:ec2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2', traits: {"smithy.api#enumValue" => "ec2"}))
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ForbiddenException.add_member(:class_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'className'))
    ForbiddenException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'code', traits: {"smithy.api#default" => 0}))
    ForbiddenException.type = Types::ForbiddenException
    InternalServerErrorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InternalServerErrorException.add_member(:class_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'className'))
    InternalServerErrorException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'code', traits: {"smithy.api#default" => 0}))
    InternalServerErrorException.type = Types::InternalServerErrorException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    LimitExceededException.add_member(:class_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'className'))
    LimitExceededException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'code', traits: {"smithy.api#default" => 0}))
    LimitExceededException.type = Types::LimitExceededException
    ListEnvironmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListEnvironmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults'))
    ListEnvironmentsRequest.type = Types::ListEnvironmentsRequest
    ListEnvironmentsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken'))
    ListEnvironmentsResult.add_member(:environment_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentIdList, location_name: 'environmentIds'))
    ListEnvironmentsResult.type = Types::ListEnvironmentsResult
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ManagedCredentialsAction.add_member(:enable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLE', traits: {"smithy.api#enumValue" => "ENABLE"}))
    ManagedCredentialsAction.add_member(:disable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLE', traits: {"smithy.api#enumValue" => "DISABLE"}))
    ManagedCredentialsStatus.add_member(:enabled_on_create, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED_ON_CREATE', traits: {"smithy.api#enumValue" => "ENABLED_ON_CREATE"}))
    ManagedCredentialsStatus.add_member(:enabled_by_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED_BY_OWNER', traits: {"smithy.api#enumValue" => "ENABLED_BY_OWNER"}))
    ManagedCredentialsStatus.add_member(:disabled_by_default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED_BY_DEFAULT', traits: {"smithy.api#enumValue" => "DISABLED_BY_DEFAULT"}))
    ManagedCredentialsStatus.add_member(:disabled_by_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED_BY_OWNER', traits: {"smithy.api#enumValue" => "DISABLED_BY_OWNER"}))
    ManagedCredentialsStatus.add_member(:disabled_by_collaborator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED_BY_COLLABORATOR', traits: {"smithy.api#enumValue" => "DISABLED_BY_COLLABORATOR"}))
    ManagedCredentialsStatus.add_member(:pending_removal_by_collaborator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_REMOVAL_BY_COLLABORATOR', traits: {"smithy.api#enumValue" => "PENDING_REMOVAL_BY_COLLABORATOR"}))
    ManagedCredentialsStatus.add_member(:pending_start_removal_by_collaborator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_START_REMOVAL_BY_COLLABORATOR', traits: {"smithy.api#enumValue" => "PENDING_START_REMOVAL_BY_COLLABORATOR"}))
    ManagedCredentialsStatus.add_member(:pending_removal_by_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_REMOVAL_BY_OWNER', traits: {"smithy.api#enumValue" => "PENDING_REMOVAL_BY_OWNER"}))
    ManagedCredentialsStatus.add_member(:pending_start_removal_by_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_START_REMOVAL_BY_OWNER', traits: {"smithy.api#enumValue" => "PENDING_START_REMOVAL_BY_OWNER"}))
    ManagedCredentialsStatus.add_member(:failed_removal_by_collaborator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_REMOVAL_BY_COLLABORATOR', traits: {"smithy.api#enumValue" => "FAILED_REMOVAL_BY_COLLABORATOR"}))
    ManagedCredentialsStatus.add_member(:failed_removal_by_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_REMOVAL_BY_OWNER', traits: {"smithy.api#enumValue" => "FAILED_REMOVAL_BY_OWNER"}))
    MemberPermissions.add_member(:read_write, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ_WRITE', traits: {"smithy.api#enumValue" => "read-write"}))
    MemberPermissions.add_member(:read_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ_ONLY', traits: {"smithy.api#enumValue" => "read-only"}))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    NotFoundException.add_member(:class_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'className'))
    NotFoundException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'code', traits: {"smithy.api#default" => 0}))
    NotFoundException.type = Types::NotFoundException
    Permissions.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OWNER', traits: {"smithy.api#enumValue" => "owner"}))
    Permissions.add_member(:read_write, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ_WRITE', traits: {"smithy.api#enumValue" => "read-write"}))
    Permissions.add_member(:read_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ_ONLY', traits: {"smithy.api#enumValue" => "read-only"}))
    PermissionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Permissions)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    TooManyRequestsException.add_member(:class_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'className'))
    TooManyRequestsException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'code', traits: {"smithy.api#default" => 0}))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: 'ResourceARN', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateEnvironmentMembershipRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#required" => {}}))
    UpdateEnvironmentMembershipRequest.add_member(:user_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserArn, location_name: 'userArn', traits: {"smithy.api#required" => {}}))
    UpdateEnvironmentMembershipRequest.add_member(:permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MemberPermissions, location_name: 'permissions', traits: {"smithy.api#required" => {}}))
    UpdateEnvironmentMembershipRequest.type = Types::UpdateEnvironmentMembershipRequest
    UpdateEnvironmentMembershipResult.add_member(:membership, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentMember, location_name: 'membership'))
    UpdateEnvironmentMembershipResult.type = Types::UpdateEnvironmentMembershipResult
    UpdateEnvironmentRequest.add_member(:environment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentId, location_name: 'environmentId', traits: {"smithy.api#required" => {}}))
    UpdateEnvironmentRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'name'))
    UpdateEnvironmentRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentDescription, location_name: 'description'))
    UpdateEnvironmentRequest.add_member(:managed_credentials_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedCredentialsAction, location_name: 'managedCredentialsAction'))
    UpdateEnvironmentRequest.type = Types::UpdateEnvironmentRequest
    UpdateEnvironmentResult.type = Types::UpdateEnvironmentResult

    AWSCloud9WorkspaceManagementService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloud9#AWSCloud9WorkspaceManagementService"
      service.name = "AWSCloud9WorkspaceManagementService"
      service.version = "2017-09-23"
      service.traits = {"aws.api#service" => {"sdkId" => "Cloud9", "arnNamespace" => "cloud9", "cloudFormationName" => "Cloud9", "cloudTrailEventSource" => "cloud9.amazonaws.com", "endpointPrefix" => "cloud9"}, "aws.auth#sigv4" => {"name" => "cloud9"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Cloud9"}
      service.add_operation(:create_environment_ec2, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloud9#CreateEnvironmentEC2"
        operation.name = "CreateEnvironmentEC2"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentEC2Request)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentEC2Result)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_environment_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloud9#CreateEnvironmentMembership"
        operation.name = "CreateEnvironmentMembership"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentMembershipRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEnvironmentMembershipResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloud9#DeleteEnvironment"
        operation.name = "DeleteEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_environment_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloud9#DeleteEnvironmentMembership"
        operation.name = "DeleteEnvironmentMembership"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentMembershipRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEnvironmentMembershipResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_environment_memberships, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloud9#DescribeEnvironmentMemberships"
        operation.name = "DescribeEnvironmentMemberships"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEnvironmentMembershipsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEnvironmentMembershipsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEnvironmentMemberships.new
      end)
      service.add_operation(:describe_environment_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloud9#DescribeEnvironmentStatus"
        operation.name = "DescribeEnvironmentStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEnvironmentStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEnvironmentStatusResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:describe_environments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloud9#DescribeEnvironments"
        operation.name = "DescribeEnvironments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEnvironmentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEnvironmentsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
      end)
      service.add_operation(:list_environments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloud9#ListEnvironments"
        operation.name = "ListEnvironments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEnvironmentsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListEnvironments.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloud9#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloud9#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentAccessException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloud9#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentAccessException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloud9#UpdateEnvironment"
        operation.name = "UpdateEnvironment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_environment_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloud9#UpdateEnvironmentMembership"
        operation.name = "UpdateEnvironmentMembership"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentMembershipRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEnvironmentMembershipResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
