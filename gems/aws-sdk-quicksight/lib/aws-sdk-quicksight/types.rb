# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::QuickSight
  module Types

    # You don't have access to this. The provided credentials couldn't be
    # validated. You might not be authorized to carry out the request.
    # Ensure that your account is authorized to use the Amazon QuickSight
    # service, that your policies have the correct permissions, and that you
    # are using the correct access keys.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request id for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :request_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGroupMembershipRequest
    #   data as a hash:
    #
    #       {
    #         member_name: "GroupMemberName", # required
    #         group_name: "GroupName", # required
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] member_name
    #   The name of the user that you want to add to the group membership.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group that you want to add the user to.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateGroupMembershipRequest AWS API Documentation
    #
    class CreateGroupMembershipRequest < Struct.new(
      :member_name,
      :group_name,
      :aws_account_id,
      :namespace)
      include Aws::Structure
    end

    # @!attribute [rw] group_member
    #   The group member.
    #   @return [Types::GroupMember]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The http status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateGroupMembershipResponse AWS API Documentation
    #
    class CreateGroupMembershipResponse < Struct.new(
      :group_member,
      :request_id,
      :status)
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @note When making an API call, you may pass CreateGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName", # required
    #         description: "GroupDescription",
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] group_name
    #   A name for the group that you want to create.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the group that you want to create.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateGroupRequest AWS API Documentation
    #
    class CreateGroupRequest < Struct.new(
      :group_name,
      :description,
      :aws_account_id,
      :namespace)
      include Aws::Structure
    end

    # The response object for this operation.
    #
    # @!attribute [rw] group
    #   The name of the group.
    #   @return [Types::Group]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The http status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateGroupResponse AWS API Documentation
    #
    class CreateGroupResponse < Struct.new(
      :group,
      :request_id,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteGroupMembershipRequest
    #   data as a hash:
    #
    #       {
    #         member_name: "GroupMemberName", # required
    #         group_name: "GroupName", # required
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] member_name
    #   The name of the user that you want to delete from the group
    #   membership.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group that you want to delete the user from.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteGroupMembershipRequest AWS API Documentation
    #
    class DeleteGroupMembershipRequest < Struct.new(
      :member_name,
      :group_name,
      :aws_account_id,
      :namespace)
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The http status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteGroupMembershipResponse AWS API Documentation
    #
    class DeleteGroupMembershipResponse < Struct.new(
      :request_id,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName", # required
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the group that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteGroupRequest AWS API Documentation
    #
    class DeleteGroupRequest < Struct.new(
      :group_name,
      :aws_account_id,
      :namespace)
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The http status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteGroupResponse AWS API Documentation
    #
    class DeleteGroupResponse < Struct.new(
      :request_id,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteUserByPrincipalIdRequest
    #   data as a hash:
    #
    #       {
    #         principal_id: "String", # required
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] principal_id
    #   The principal ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteUserByPrincipalIdRequest AWS API Documentation
    #
    class DeleteUserByPrincipalIdRequest < Struct.new(
      :principal_id,
      :aws_account_id,
      :namespace)
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The http status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteUserByPrincipalIdResponse AWS API Documentation
    #
    class DeleteUserByPrincipalIdResponse < Struct.new(
      :request_id,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteUserRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "UserName", # required
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteUserRequest AWS API Documentation
    #
    class DeleteUserRequest < Struct.new(
      :user_name,
      :aws_account_id,
      :namespace)
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The http status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteUserResponse AWS API Documentation
    #
    class DeleteUserResponse < Struct.new(
      :request_id,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName", # required
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the group that you want to describe.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeGroupRequest AWS API Documentation
    #
    class DescribeGroupRequest < Struct.new(
      :group_name,
      :aws_account_id,
      :namespace)
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   The name of the group.
    #   @return [Types::Group]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The http status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeGroupResponse AWS API Documentation
    #
    class DescribeGroupResponse < Struct.new(
      :group,
      :request_id,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeUserRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "UserName", # required
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user that you want to describe.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeUserRequest AWS API Documentation
    #
    class DescribeUserRequest < Struct.new(
      :user_name,
      :aws_account_id,
      :namespace)
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The user name.
    #   @return [Types::User]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The http status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeUserResponse AWS API Documentation
    #
    class DescribeUserResponse < Struct.new(
      :user,
      :request_id,
      :status)
      include Aws::Structure
    end

    # The domain specified is not on the allowlist. All domains for embedded
    # dashboards must be added to the approved list by an Amazon QuickSight
    # admin.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DomainNotWhitelistedException AWS API Documentation
    #
    class DomainNotWhitelistedException < Struct.new(
      :message,
      :request_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDashboardEmbedUrlRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         dashboard_id: "String", # required
    #         identity_type: "IAM", # required, accepts IAM, QUICKSIGHT
    #         session_lifetime_in_minutes: 1,
    #         undo_redo_disabled: false,
    #         reset_disabled: false,
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   AWS account ID that contains the dashboard you are embedding.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard, also added to IAM policy
    #   @return [String]
    #
    # @!attribute [rw] identity_type
    #   The authentication method the user uses to sign in (IAM only).
    #   @return [String]
    #
    # @!attribute [rw] session_lifetime_in_minutes
    #   How many minutes the session is valid. The session lifetime must be
    #   between 15 and 600 minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] undo_redo_disabled
    #   Remove the undo/redo button on embedded dashboard. The default is
    #   FALSE, which enables the undo/redo button.
    #   @return [Boolean]
    #
    # @!attribute [rw] reset_disabled
    #   Remove the reset button on embedded dashboard. The default is FALSE,
    #   which allows the reset button.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GetDashboardEmbedUrlRequest AWS API Documentation
    #
    class GetDashboardEmbedUrlRequest < Struct.new(
      :aws_account_id,
      :dashboard_id,
      :identity_type,
      :session_lifetime_in_minutes,
      :undo_redo_disabled,
      :reset_disabled)
      include Aws::Structure
    end

    # @!attribute [rw] embed_url
    #   URL that you can put into your server-side webpage to embed your
    #   dashboard. This URL is valid for 5 minutes, and the resulting
    #   session is valid for 10 hours. The API provides the URL with an
    #   auth\_code that enables a single-signon session.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The http status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GetDashboardEmbedUrlResponse AWS API Documentation
    #
    class GetDashboardEmbedUrlResponse < Struct.new(
      :embed_url,
      :status,
      :request_id)
      include Aws::Structure
    end

    # A *group* in Amazon QuickSight consists of a set of users. You can use
    # groups to make it easier to manage access and security. Currently, an
    # Amazon QuickSight subscription can't contain more than 500 Amazon
    # QuickSight groups.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the group.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The group description.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Group AWS API Documentation
    #
    class Group < Struct.new(
      :arn,
      :group_name,
      :description,
      :principal_id)
      include Aws::Structure
    end

    # A member of an Amazon QuickSight group. Currently, group members must
    # be users. Groups can't be members of another group.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the group member (user).
    #   @return [String]
    #
    # @!attribute [rw] member_name
    #   The name of the group member (user).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GroupMember AWS API Documentation
    #
    class GroupMember < Struct.new(
      :arn,
      :member_name)
      include Aws::Structure
    end

    # The identity type specified is not supported. Supported identity types
    # include IAM and QUICKSIGHT.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/IdentityTypeNotSupportedException AWS API Documentation
    #
    class IdentityTypeNotSupportedException < Struct.new(
      :message,
      :request_id)
      include Aws::Structure
    end

    # An internal failure occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/InternalFailureException AWS API Documentation
    #
    class InternalFailureException < Struct.new(
      :message,
      :request_id)
      include Aws::Structure
    end

    # The `NextToken` value isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message,
      :request_id)
      include Aws::Structure
    end

    # One or more parameters don't have a valid value.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Struct.new(
      :message,
      :request_id)
      include Aws::Structure
    end

    # A limit is exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Limit exceeded.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message,
      :resource_type,
      :request_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGroupMembershipsRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName", # required
    #         next_token: "String",
    #         max_results: 1,
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the group that you want to see a membership list of.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return from this request.
    #   @return [Integer]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListGroupMembershipsRequest AWS API Documentation
    #
    class ListGroupMembershipsRequest < Struct.new(
      :group_name,
      :next_token,
      :max_results,
      :aws_account_id,
      :namespace)
      include Aws::Structure
    end

    # @!attribute [rw] group_member_list
    #   The list of the members of the group.
    #   @return [Array<Types::GroupMember>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The http status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListGroupMembershipsResponse AWS API Documentation
    #
    class ListGroupMembershipsResponse < Struct.new(
      :group_member_list,
      :next_token,
      :request_id,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGroupsRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         next_token: "String",
    #         max_results: 1,
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListGroupsRequest AWS API Documentation
    #
    class ListGroupsRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results,
      :namespace)
      include Aws::Structure
    end

    # @!attribute [rw] group_list
    #   The list of the groups.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The http status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListGroupsResponse AWS API Documentation
    #
    class ListGroupsResponse < Struct.new(
      :group_list,
      :next_token,
      :request_id,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListUserGroupsRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "UserName", # required
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] user_name
    #   The Amazon QuickSight user name that you want to list group
    #   memberships for.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The AWS Account ID that the user is in. Currently, you use the ID
    #   for the AWS account that contains your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return from this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListUserGroupsRequest AWS API Documentation
    #
    class ListUserGroupsRequest < Struct.new(
      :user_name,
      :aws_account_id,
      :namespace,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] group_list
    #   The list of groups the user is a member of.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListUserGroupsResponse AWS API Documentation
    #
    class ListUserGroupsResponse < Struct.new(
      :group_list,
      :next_token,
      :request_id,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListUsersRequest
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "AwsAccountId", # required
    #         next_token: "String",
    #         max_results: 1,
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return from this request.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListUsersRequest AWS API Documentation
    #
    class ListUsersRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results,
      :namespace)
      include Aws::Structure
    end

    # @!attribute [rw] user_list
    #   The list of users.
    #   @return [Array<Types::User>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The http status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListUsersResponse AWS API Documentation
    #
    class ListUsersResponse < Struct.new(
      :user_list,
      :next_token,
      :request_id,
      :status)
      include Aws::Structure
    end

    # One or more preconditions aren't met.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PreconditionNotMetException AWS API Documentation
    #
    class PreconditionNotMetException < Struct.new(
      :message,
      :request_id)
      include Aws::Structure
    end

    # The user is not found. This error can happen in any operation that
    # requires finding a user based on a provided user name, such as
    # `DeleteUser`, `DescribeUser`, and so on.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/QuickSightUserNotFoundException AWS API Documentation
    #
    class QuickSightUserNotFoundException < Struct.new(
      :message,
      :request_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterUserRequest
    #   data as a hash:
    #
    #       {
    #         identity_type: "IAM", # required, accepts IAM, QUICKSIGHT
    #         email: "String", # required
    #         user_role: "ADMIN", # required, accepts ADMIN, AUTHOR, READER, RESTRICTED_AUTHOR, RESTRICTED_READER
    #         iam_arn: "String",
    #         session_name: "RoleSessionName",
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #         user_name: "UserName",
    #       }
    #
    # @!attribute [rw] identity_type
    #   Amazon QuickSight supports several ways of managing the identity of
    #   users. This parameter accepts two values:
    #
    #   * `IAM`\: A user whose identity maps to an existing IAM user or
    #     role.
    #
    #   * `QUICKSIGHT`\: A user whose identity is owned and managed
    #     internally by Amazon QuickSight.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the user that you want to register.
    #   @return [String]
    #
    # @!attribute [rw] user_role
    #   The Amazon QuickSight role of the user. The user role can be one of
    #   the following:
    #
    #   * `READER`\: A user who has read-only access to dashboards.
    #
    #   * `AUTHOR`\: A user who can create data sources, data sets,
    #     analyses, and dashboards.
    #
    #   * `ADMIN`\: A user who is an author, who can also manage Amazon
    #     QuickSight settings.
    #   @return [String]
    #
    # @!attribute [rw] iam_arn
    #   The ARN of the IAM user or role that you are registering with Amazon
    #   QuickSight.
    #   @return [String]
    #
    # @!attribute [rw] session_name
    #   The name of the session with the assumed IAM role. By using this
    #   parameter, you can register multiple users with the same IAM role,
    #   provided that each has a different session name. For more
    #   information on assuming IAM roles, see [ `assume-role` ][1] in the
    #   *AWS CLI Reference.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/reference/sts/assume-role.html
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The Amazon QuickSight user name that you want to create for the user
    #   you are registering.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RegisterUserRequest AWS API Documentation
    #
    class RegisterUserRequest < Struct.new(
      :identity_type,
      :email,
      :user_role,
      :iam_arn,
      :session_name,
      :aws_account_id,
      :namespace,
      :user_name)
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The user name.
    #   @return [Types::User]
    #
    # @!attribute [rw] user_invitation_url
    #   The URL the user visits to complete registration and provide a
    #   password. This is returned only for users with an identity type of
    #   `QUICKSIGHT`.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The http status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RegisterUserResponse AWS API Documentation
    #
    class RegisterUserResponse < Struct.new(
      :user,
      :user_invitation_url,
      :request_id,
      :status)
      include Aws::Structure
    end

    # The resource specified doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ResourceExistsException AWS API Documentation
    #
    class ResourceExistsException < Struct.new(
      :message,
      :resource_type,
      :request_id)
      include Aws::Structure
    end

    # One or more resources can't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_type,
      :request_id)
      include Aws::Structure
    end

    # This resource is currently unavailable.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type for this request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ResourceUnavailableException AWS API Documentation
    #
    class ResourceUnavailableException < Struct.new(
      :message,
      :resource_type,
      :request_id)
      include Aws::Structure
    end

    # The number of minutes specified for the lifetime of a session is not
    # valid. The session lifetime must be from 15 to 600 minutes.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SessionLifetimeInMinutesInvalidException AWS API Documentation
    #
    class SessionLifetimeInMinutesInvalidException < Struct.new(
      :message,
      :request_id)
      include Aws::Structure
    end

    # Access is throttled.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :request_id)
      include Aws::Structure
    end

    # This error indicates that you are calling an operation on an Amazon
    # QuickSight subscription where the edition doesn't include support for
    # that operation. Amazon QuickSight currently has Standard Edition and
    # Enterprise Edition. Not every operation and capability is available in
    # every edition.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UnsupportedUserEditionException AWS API Documentation
    #
    class UnsupportedUserEditionException < Struct.new(
      :message,
      :request_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "GroupName", # required
    #         description: "GroupDescription",
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the group that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the group that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the group is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateGroupRequest AWS API Documentation
    #
    class UpdateGroupRequest < Struct.new(
      :group_name,
      :description,
      :aws_account_id,
      :namespace)
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   The name of the group.
    #   @return [Types::Group]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The http status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateGroupResponse AWS API Documentation
    #
    class UpdateGroupResponse < Struct.new(
      :group,
      :request_id,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "UserName", # required
    #         aws_account_id: "AwsAccountId", # required
    #         namespace: "Namespace", # required
    #         email: "String", # required
    #         role: "ADMIN", # required, accepts ADMIN, AUTHOR, READER, RESTRICTED_AUTHOR, RESTRICTED_READER
    #       }
    #
    # @!attribute [rw] user_name
    #   The Amazon QuickSight user name that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the AWS account that the user is in. Currently, you use
    #   the ID for the AWS account that contains your Amazon QuickSight
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the user that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The Amazon QuickSight role of the user. The user role can be one of
    #   the following:
    #
    #   * `READER`\: A user who has read-only access to dashboards.
    #
    #   * `AUTHOR`\: A user who can create data sources, data sets,
    #     analyses, and dashboards.
    #
    #   * `ADMIN`\: A user who is an author, who can also manage Amazon
    #     QuickSight settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateUserRequest AWS API Documentation
    #
    class UpdateUserRequest < Struct.new(
      :user_name,
      :aws_account_id,
      :namespace,
      :email,
      :role)
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The Amazon QuickSight user.
    #   @return [Types::User]
    #
    # @!attribute [rw] request_id
    #   The AWS request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The http status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateUserResponse AWS API Documentation
    #
    class UpdateUserResponse < Struct.new(
      :user,
      :request_id,
      :status)
      include Aws::Structure
    end

    # A registered user of Amazon QuickSight. Currently, an Amazon
    # QuickSight subscription can't contain more than 20 million users.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the user.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The user's user name.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The user's email address.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The Amazon QuickSight role for the user.
    #   @return [String]
    #
    # @!attribute [rw] identity_type
    #   The type of identity authentication used by the user.
    #   @return [String]
    #
    # @!attribute [rw] active
    #   Active status of user. When you create an Amazon QuickSight user
    #   that’s not an IAM user or an AD user, that user is inactive until
    #   they sign in and provide a password
    #   @return [Boolean]
    #
    # @!attribute [rw] principal_id
    #   The principal ID of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/User AWS API Documentation
    #
    class User < Struct.new(
      :arn,
      :user_name,
      :email,
      :role,
      :identity_type,
      :active,
      :principal_id)
      include Aws::Structure
    end

  end
end
