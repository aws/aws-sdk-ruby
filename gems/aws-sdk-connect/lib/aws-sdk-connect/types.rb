# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Connect
  module Types

    # @note When making an API call, you may pass CreateUserRequest
    #   data as a hash:
    #
    #       {
    #         username: "AgentUsername", # required
    #         password: "Password",
    #         identity_info: {
    #           first_name: "AgentFirstName",
    #           last_name: "AgentLastName",
    #           email: "Email",
    #         },
    #         phone_config: { # required
    #           phone_type: "SOFT_PHONE", # required, accepts SOFT_PHONE, DESK_PHONE
    #           auto_accept: false,
    #           after_contact_work_time_limit: 1,
    #           desk_phone_number: "PhoneNumber",
    #         },
    #         directory_user_id: "DirectoryUserId",
    #         security_profile_ids: ["SecurityProfileId"], # required
    #         routing_profile_id: "RoutingProfileId", # required
    #         hierarchy_group_id: "HierarchyGroupId",
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] username
    #   The user name in Amazon Connect for the user to create.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password for the user account to create. This is required if you
    #   are using Amazon Connect for identity management. If you are using
    #   SAML for identity management and include this parameter, an
    #   `InvalidRequestException` is returned.
    #   @return [String]
    #
    # @!attribute [rw] identity_info
    #   Information about the user, including email address, first name, and
    #   last name.
    #   @return [Types::UserIdentityInfo]
    #
    # @!attribute [rw] phone_config
    #   Specifies the phone settings for the user, including
    #   AfterContactWorkTimeLimit, AutoAccept, DeskPhoneNumber, and
    #   PhoneType.
    #   @return [Types::UserPhoneConfig]
    #
    # @!attribute [rw] directory_user_id
    #   The unique identifier for the user account in the directory service
    #   directory used for identity management. If Amazon Connect is unable
    #   to access the existing directory, you can use the `DirectoryUserId`
    #   to authenticate users. If you include the parameter, it is assumed
    #   that Amazon Connect cannot access the directory. If the parameter is
    #   not included, the UserIdentityInfo is used to authenticate users
    #   from your existing directory.
    #
    #   This parameter is required if you are using an existing directory
    #   for identity management in Amazon Connect when Amazon Connect cannot
    #   access your directory to authenticate users. If you are using SAML
    #   for identity management and include this parameter, an
    #   `InvalidRequestException` is returned.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_ids
    #   The unique identifier of the security profile to assign to the user
    #   created.
    #   @return [Array<String>]
    #
    # @!attribute [rw] routing_profile_id
    #   The unique identifier for the routing profile to assign to the user
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] hierarchy_group_id
    #   The unique identifier for the hierarchy group to assign to the user
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect.
    #   Select the alias of the instance in the Instance alias column. The
    #   instance ID is displayed in the Overview section of your instance
    #   settings. For example, the instance ID is the set of characters at
    #   the end of the instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateUserRequest AWS API Documentation
    #
    class CreateUserRequest < Struct.new(
      :username,
      :password,
      :identity_info,
      :phone_config,
      :directory_user_id,
      :security_profile_ids,
      :routing_profile_id,
      :hierarchy_group_id,
      :instance_id)
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The unique identifier for the user account in Amazon Connect
    #   @return [String]
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of the user account created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateUserResponse AWS API Documentation
    #
    class CreateUserResponse < Struct.new(
      :user_id,
      :user_arn)
      include Aws::Structure
    end

    # The credentials to use for federation.
    #
    # @!attribute [rw] access_token
    #   An access token generated for a federated user to access Amazon
    #   Connect
    #   @return [String]
    #
    # @!attribute [rw] access_token_expiration
    #   A token generated with an expiration time for the session a user is
    #   logged in to Amazon Connect
    #   @return [Time]
    #
    # @!attribute [rw] refresh_token
    #   Renews a token generated for a user to access the Amazon Connect
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] refresh_token_expiration
    #   Renews the expiration timer for a generated token.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/Credentials AWS API Documentation
    #
    class Credentials < Struct.new(
      :access_token,
      :access_token_expiration,
      :refresh_token,
      :refresh_token_expiration)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteUserRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         user_id: "UserId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect.
    #   Select the alias of the instance in the Instance alias column. The
    #   instance ID is displayed in the Overview section of your instance
    #   settings. For example, the instance ID is the set of characters at
    #   the end of the instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The unique identifier of the user to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteUserRequest AWS API Documentation
    #
    class DeleteUserRequest < Struct.new(
      :instance_id,
      :user_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeUserHierarchyGroupRequest
    #   data as a hash:
    #
    #       {
    #         hierarchy_group_id: "HierarchyGroupId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] hierarchy_group_id
    #   The identifier for the hierarchy group to return.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect.
    #   Select the alias of the instance in the Instance alias column. The
    #   instance ID is displayed in the Overview section of your instance
    #   settings. For example, the instance ID is the set of characters at
    #   the end of the instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserHierarchyGroupRequest AWS API Documentation
    #
    class DescribeUserHierarchyGroupRequest < Struct.new(
      :hierarchy_group_id,
      :instance_id)
      include Aws::Structure
    end

    # @!attribute [rw] hierarchy_group
    #   Returns a `HierarchyGroup` object.
    #   @return [Types::HierarchyGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserHierarchyGroupResponse AWS API Documentation
    #
    class DescribeUserHierarchyGroupResponse < Struct.new(
      :hierarchy_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeUserHierarchyStructureRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect.
    #   Select the alias of the instance in the Instance alias column. The
    #   instance ID is displayed in the Overview section of your instance
    #   settings. For example, the instance ID is the set of characters at
    #   the end of the instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserHierarchyStructureRequest AWS API Documentation
    #
    class DescribeUserHierarchyStructureRequest < Struct.new(
      :instance_id)
      include Aws::Structure
    end

    # @!attribute [rw] hierarchy_structure
    #   A `HierarchyStructure` object.
    #   @return [Types::HierarchyStructure]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserHierarchyStructureResponse AWS API Documentation
    #
    class DescribeUserHierarchyStructureResponse < Struct.new(
      :hierarchy_structure)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeUserRequest
    #   data as a hash:
    #
    #       {
    #         user_id: "UserId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] user_id
    #   Unique identifier for the user account to return.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect.
    #   Select the alias of the instance in the Instance alias column. The
    #   instance ID is displayed in the Overview section of your instance
    #   settings. For example, the instance ID is the set of characters at
    #   the end of the instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserRequest AWS API Documentation
    #
    class DescribeUserRequest < Struct.new(
      :user_id,
      :instance_id)
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   A `User` object that contains information about the user account and
    #   configuration settings.
    #   @return [Types::User]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserResponse AWS API Documentation
    #
    class DescribeUserResponse < Struct.new(
      :user)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFederationTokenRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect.
    #   Select the alias of the instance in the Instance alias column. The
    #   instance ID is displayed in the Overview section of your instance
    #   settings. For example, the instance ID is the set of characters at
    #   the end of the instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetFederationTokenRequest AWS API Documentation
    #
    class GetFederationTokenRequest < Struct.new(
      :instance_id)
      include Aws::Structure
    end

    # @!attribute [rw] credentials
    #   The credentials to use for federation.
    #   @return [Types::Credentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetFederationTokenResponse AWS API Documentation
    #
    class GetFederationTokenResponse < Struct.new(
      :credentials)
      include Aws::Structure
    end

    # A `HierarchyGroup` object that contains information about a hierarchy
    # group in your Amazon Connect instance.
    #
    # @!attribute [rw] id
    #   The identifier for the hierarchy group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the hierarchy group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the hierarchy group in your instance.
    #   @return [String]
    #
    # @!attribute [rw] level_id
    #   The identifier for the level in the hierarchy group.
    #   @return [String]
    #
    # @!attribute [rw] hierarchy_path
    #   A `HierarchyPath` object that contains information about the levels
    #   in the hierarchy group.
    #   @return [Types::HierarchyPath]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HierarchyGroup AWS API Documentation
    #
    class HierarchyGroup < Struct.new(
      :id,
      :arn,
      :name,
      :level_id,
      :hierarchy_path)
      include Aws::Structure
    end

    # A `HierarchyGroupSummary` object that contains information about the
    # hierarchy group, including ARN, Id, and Name.
    #
    # @!attribute [rw] id
    #   The identifier of the hierarchy group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN for the hierarchy group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the hierarchy group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HierarchyGroupSummary AWS API Documentation
    #
    class HierarchyGroupSummary < Struct.new(
      :id,
      :arn,
      :name)
      include Aws::Structure
    end

    # A `HierarchyLevel` object that contains information about the levels
    # in a hierarchy group, including ARN, Id, and Name.
    #
    # @!attribute [rw] id
    #   The identifier for the hierarchy group level.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN for the hierarchy group level.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the hierarchy group level.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HierarchyLevel AWS API Documentation
    #
    class HierarchyLevel < Struct.new(
      :id,
      :arn,
      :name)
      include Aws::Structure
    end

    # A `HierarchyPath` object that contains information about the levels of
    # the hierarchy group.
    #
    # @!attribute [rw] level_one
    #   A `HierarchyGroupSummary` object that contains information about the
    #   level of the hierarchy group, including ARN, Id, and Name.
    #   @return [Types::HierarchyGroupSummary]
    #
    # @!attribute [rw] level_two
    #   A `HierarchyGroupSummary` object that contains information about the
    #   level of the hierarchy group, including ARN, Id, and Name.
    #   @return [Types::HierarchyGroupSummary]
    #
    # @!attribute [rw] level_three
    #   A `HierarchyGroupSummary` object that contains information about the
    #   level of the hierarchy group, including ARN, Id, and Name.
    #   @return [Types::HierarchyGroupSummary]
    #
    # @!attribute [rw] level_four
    #   A `HierarchyGroupSummary` object that contains information about the
    #   level of the hierarchy group, including ARN, Id, and Name.
    #   @return [Types::HierarchyGroupSummary]
    #
    # @!attribute [rw] level_five
    #   A `HierarchyGroupSummary` object that contains information about the
    #   level of the hierarchy group, including ARN, Id, and Name.
    #   @return [Types::HierarchyGroupSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HierarchyPath AWS API Documentation
    #
    class HierarchyPath < Struct.new(
      :level_one,
      :level_two,
      :level_three,
      :level_four,
      :level_five)
      include Aws::Structure
    end

    # A `HierarchyStructure` object that contains information about the
    # hierarchy group structure.
    #
    # @!attribute [rw] level_one
    #   A `HierarchyLevel` object that contains information about the
    #   hierarchy group level.
    #   @return [Types::HierarchyLevel]
    #
    # @!attribute [rw] level_two
    #   A `HierarchyLevel` object that contains information about the
    #   hierarchy group level.
    #   @return [Types::HierarchyLevel]
    #
    # @!attribute [rw] level_three
    #   A `HierarchyLevel` object that contains information about the
    #   hierarchy group level.
    #   @return [Types::HierarchyLevel]
    #
    # @!attribute [rw] level_four
    #   A `HierarchyLevel` object that contains information about the
    #   hierarchy group level.
    #   @return [Types::HierarchyLevel]
    #
    # @!attribute [rw] level_five
    #   A `HierarchyLevel` object that contains information about the
    #   hierarchy group level.
    #   @return [Types::HierarchyLevel]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/HierarchyStructure AWS API Documentation
    #
    class HierarchyStructure < Struct.new(
      :level_one,
      :level_two,
      :level_three,
      :level_four,
      :level_five)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRoutingProfilesRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect.
    #   Select the alias of the instance in the Instance alias column. The
    #   instance ID is displayed in the Overview section of your instance
    #   settings. For example, the instance ID is the set of characters at
    #   the end of the instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of routing profiles to return in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRoutingProfilesRequest AWS API Documentation
    #
    class ListRoutingProfilesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] routing_profile_summary_list
    #   An array of `RoutingProfileSummary` objects that include the ARN,
    #   Id, and Name of the routing profile.
    #   @return [Array<Types::RoutingProfileSummary>]
    #
    # @!attribute [rw] next_token
    #   A string returned in the response. Use the value returned in the
    #   response as the value of the NextToken in a subsequent request to
    #   retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRoutingProfilesResponse AWS API Documentation
    #
    class ListRoutingProfilesResponse < Struct.new(
      :routing_profile_summary_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSecurityProfilesRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect.
    #   Select the alias of the instance in the Instance alias column. The
    #   instance ID is displayed in the Overview section of your instance
    #   settings. For example, the instance ID is the set of characters at
    #   the end of the instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of security profiles to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListSecurityProfilesRequest AWS API Documentation
    #
    class ListSecurityProfilesRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] security_profile_summary_list
    #   An array of `SecurityProfileSummary` objects.
    #   @return [Array<Types::SecurityProfileSummary>]
    #
    # @!attribute [rw] next_token
    #   A string returned in the response. Use the value returned in the
    #   response as the value of the NextToken in a subsequent request to
    #   retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListSecurityProfilesResponse AWS API Documentation
    #
    class ListSecurityProfilesResponse < Struct.new(
      :security_profile_summary_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListUserHierarchyGroupsRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect.
    #   Select the alias of the instance in the Instance alias column. The
    #   instance ID is displayed in the Overview section of your instance
    #   settings. For example, the instance ID is the set of characters at
    #   the end of the instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of hierarchy groups to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUserHierarchyGroupsRequest AWS API Documentation
    #
    class ListUserHierarchyGroupsRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] user_hierarchy_group_summary_list
    #   An array of `HierarchyGroupSummary` objects.
    #   @return [Array<Types::HierarchyGroupSummary>]
    #
    # @!attribute [rw] next_token
    #   A string returned in the response. Use the value returned in the
    #   response as the value of the NextToken in a subsequent request to
    #   retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUserHierarchyGroupsResponse AWS API Documentation
    #
    class ListUserHierarchyGroupsResponse < Struct.new(
      :user_hierarchy_group_summary_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListUsersRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect.
    #   Select the alias of the instance in the Instance alias column. The
    #   instance ID is displayed in the Overview section of your instance
    #   settings. For example, the instance ID is the set of characters at
    #   the end of the instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUsersRequest AWS API Documentation
    #
    class ListUsersRequest < Struct.new(
      :instance_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] user_summary_list
    #   An array of `UserSummary` objects that contain information about the
    #   users in your instance.
    #   @return [Array<Types::UserSummary>]
    #
    # @!attribute [rw] next_token
    #   A string returned in the response. Use the value returned in the
    #   response as the value of the NextToken in a subsequent request to
    #   retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUsersResponse AWS API Documentation
    #
    class ListUsersResponse < Struct.new(
      :user_summary_list,
      :next_token)
      include Aws::Structure
    end

    # A `RoutingProfileSummary` object that contains information about a
    # routing profile, including ARN, Id, and Name.
    #
    # @!attribute [rw] id
    #   The identifier of the routing profile.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the routing profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the routing profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/RoutingProfileSummary AWS API Documentation
    #
    class RoutingProfileSummary < Struct.new(
      :id,
      :arn,
      :name)
      include Aws::Structure
    end

    # A `SecurityProfileSummary` object that contains information about a
    # security profile, including ARN, Id, Name.
    #
    # @!attribute [rw] id
    #   The identifier of the security profile.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the security profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the security profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SecurityProfileSummary AWS API Documentation
    #
    class SecurityProfileSummary < Struct.new(
      :id,
      :arn,
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartOutboundVoiceContactRequest
    #   data as a hash:
    #
    #       {
    #         destination_phone_number: "PhoneNumber", # required
    #         contact_flow_id: "ContactFlowId", # required
    #         instance_id: "InstanceId", # required
    #         client_token: "ClientToken",
    #         source_phone_number: "PhoneNumber",
    #         queue_id: "QueueId",
    #         attributes: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #       }
    #
    # @!attribute [rw] destination_phone_number
    #   The phone number of the customer in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] contact_flow_id
    #   The identifier for the contact flow to connect the outbound call to.
    #
    #   To find the `ContactFlowId`, open the contact flow you want to use
    #   in the Amazon Connect contact flow editor. The ID for the contact
    #   flow is displayed in the address bar as part of the URL. For
    #   example, the contact flow ID is the set of characters at the end of
    #   the URL, after 'contact-flow/' such as
    #   `78ea8fd5-2659-4f2b-b528-699760ccfc1b`.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect.
    #   Select the alias of the instance in the Instance alias column. The
    #   instance ID is displayed in the Overview section of your instance
    #   settings. For example, the instance ID is the set of characters at
    #   the end of the instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. The token is valid for 7 days after
    #   creation. If a contact is already started, the contact ID is
    #   returned. If the contact is disconnected, a new contact is started.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] source_phone_number
    #   The phone number, in E.164 format, associated with your Amazon
    #   Connect instance to use for the outbound call.
    #   @return [String]
    #
    # @!attribute [rw] queue_id
    #   The queue to add the call to. If you specify a queue, the phone
    #   displayed for caller ID is the phone number specified in the queue.
    #   If you do not specify a queue, the queue used will be the queue
    #   defined in the contact flow.
    #
    #   To find the `QueueId`, open the queue you want to use in the Amazon
    #   Connect Queue editor. The ID for the queue is displayed in the
    #   address bar as part of the URL. For example, the queue ID is the set
    #   of characters at the end of the URL, after 'queue/' such as
    #   `queue/aeg40574-2d01-51c3-73d6-bf8624d2168c`.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Specify a custom key-value pair using an attribute map. The
    #   attributes are standard Amazon Connect attributes, and can be
    #   accessed in contact flows just like any other contact attributes.
    #
    #   There can be up to 32,768 UTF-8 bytes across all key-value pairs.
    #   Attribute keys can include only alphanumeric, dash, and underscore
    #   characters.
    #
    #   For example, if you want play a greeting when the customer answers
    #   the call, you can pass the customer name in attributes similar to
    #   the following:
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartOutboundVoiceContactRequest AWS API Documentation
    #
    class StartOutboundVoiceContactRequest < Struct.new(
      :destination_phone_number,
      :contact_flow_id,
      :instance_id,
      :client_token,
      :source_phone_number,
      :queue_id,
      :attributes)
      include Aws::Structure
    end

    # @!attribute [rw] contact_id
    #   The unique identifier of this contact within your Amazon Connect
    #   instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartOutboundVoiceContactResponse AWS API Documentation
    #
    class StartOutboundVoiceContactResponse < Struct.new(
      :contact_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopContactRequest
    #   data as a hash:
    #
    #       {
    #         contact_id: "ContactId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] contact_id
    #   The unique identifier of the contact to end.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect.
    #   Select the alias of the instance in the Instance alias column. The
    #   instance ID is displayed in the Overview section of your instance
    #   settings. For example, the instance ID is the set of characters at
    #   the end of the instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StopContactRequest AWS API Documentation
    #
    class StopContactRequest < Struct.new(
      :contact_id,
      :instance_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StopContactResponse AWS API Documentation
    #
    class StopContactResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateContactAttributesRequest
    #   data as a hash:
    #
    #       {
    #         initial_contact_id: "ContactId", # required
    #         instance_id: "InstanceId", # required
    #         attributes: { # required
    #           "AttributeName" => "AttributeValue",
    #         },
    #       }
    #
    # @!attribute [rw] initial_contact_id
    #   The unique identifier of the contact for which to update attributes.
    #   This is the identifier for the contact associated with the first
    #   interaction with the contact center.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your Amazon Connect instance, open the AWS console and select Amazon
    #   Connect. Select the instance alias of the instance. The instance ID
    #   is displayed in the Overview section of your instance settings. For
    #   example, the instance ID is the set of characters at the end of the
    #   instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The key-value pairs for the attribute to update.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactAttributesRequest AWS API Documentation
    #
    class UpdateContactAttributesRequest < Struct.new(
      :initial_contact_id,
      :instance_id,
      :attributes)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactAttributesResponse AWS API Documentation
    #
    class UpdateContactAttributesResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateUserHierarchyRequest
    #   data as a hash:
    #
    #       {
    #         hierarchy_group_id: "HierarchyGroupId",
    #         user_id: "UserId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] hierarchy_group_id
    #   The identifier for the hierarchy group to assign to the user.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user account to assign the hierarchy group to.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect.
    #   Select the alias of the instance in the Instance alias column. The
    #   instance ID is displayed in the Overview section of your instance
    #   settings. For example, the instance ID is the set of characters at
    #   the end of the instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserHierarchyRequest AWS API Documentation
    #
    class UpdateUserHierarchyRequest < Struct.new(
      :hierarchy_group_id,
      :user_id,
      :instance_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserIdentityInfoRequest
    #   data as a hash:
    #
    #       {
    #         identity_info: { # required
    #           first_name: "AgentFirstName",
    #           last_name: "AgentLastName",
    #           email: "Email",
    #         },
    #         user_id: "UserId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] identity_info
    #   A `UserIdentityInfo` object.
    #   @return [Types::UserIdentityInfo]
    #
    # @!attribute [rw] user_id
    #   The identifier for the user account to update identity information
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect.
    #   Select the alias of the instance in the Instance alias column. The
    #   instance ID is displayed in the Overview section of your instance
    #   settings. For example, the instance ID is the set of characters at
    #   the end of the instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserIdentityInfoRequest AWS API Documentation
    #
    class UpdateUserIdentityInfoRequest < Struct.new(
      :identity_info,
      :user_id,
      :instance_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserPhoneConfigRequest
    #   data as a hash:
    #
    #       {
    #         phone_config: { # required
    #           phone_type: "SOFT_PHONE", # required, accepts SOFT_PHONE, DESK_PHONE
    #           auto_accept: false,
    #           after_contact_work_time_limit: 1,
    #           desk_phone_number: "PhoneNumber",
    #         },
    #         user_id: "UserId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] phone_config
    #   A `UserPhoneConfig` object that contains settings for
    #   `AfterContactWorkTimeLimit`, `AutoAccept`, `DeskPhoneNumber`, and
    #   `PhoneType` to assign to the user.
    #   @return [Types::UserPhoneConfig]
    #
    # @!attribute [rw] user_id
    #   The identifier for the user account to change phone settings for.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect.
    #   Select the alias of the instance in the Instance alias column. The
    #   instance ID is displayed in the Overview section of your instance
    #   settings. For example, the instance ID is the set of characters at
    #   the end of the instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserPhoneConfigRequest AWS API Documentation
    #
    class UpdateUserPhoneConfigRequest < Struct.new(
      :phone_config,
      :user_id,
      :instance_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserRoutingProfileRequest
    #   data as a hash:
    #
    #       {
    #         routing_profile_id: "RoutingProfileId", # required
    #         user_id: "UserId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] routing_profile_id
    #   The identifier of the routing profile to assign to the user.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier for the user account to assign the routing profile
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect.
    #   Select the alias of the instance in the Instance alias column. The
    #   instance ID is displayed in the Overview section of your instance
    #   settings. For example, the instance ID is the set of characters at
    #   the end of the instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserRoutingProfileRequest AWS API Documentation
    #
    class UpdateUserRoutingProfileRequest < Struct.new(
      :routing_profile_id,
      :user_id,
      :instance_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserSecurityProfilesRequest
    #   data as a hash:
    #
    #       {
    #         security_profile_ids: ["SecurityProfileId"], # required
    #         user_id: "UserId", # required
    #         instance_id: "InstanceId", # required
    #       }
    #
    # @!attribute [rw] security_profile_ids
    #   The identifiers for the security profiles to assign to the user.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user account to assign the security profiles.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The identifier for your Amazon Connect instance. To find the ID of
    #   your instance, open the AWS console and select Amazon Connect.
    #   Select the alias of the instance in the Instance alias column. The
    #   instance ID is displayed in the Overview section of your instance
    #   settings. For example, the instance ID is the set of characters at
    #   the end of the instance ARN, after instance/, such as
    #   10a4c4eb-f57e-4d4c-b602-bf39176ced07.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserSecurityProfilesRequest AWS API Documentation
    #
    class UpdateUserSecurityProfilesRequest < Struct.new(
      :security_profile_ids,
      :user_id,
      :instance_id)
      include Aws::Structure
    end

    # A `User` object that contains information about a user account in your
    # Amazon Connect instance, including configuration settings.
    #
    # @!attribute [rw] id
    #   The identifier of the user account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the user account.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name assigned to the user account.
    #   @return [String]
    #
    # @!attribute [rw] identity_info
    #   A `UserIdentityInfo` object.
    #   @return [Types::UserIdentityInfo]
    #
    # @!attribute [rw] phone_config
    #   A `UserPhoneConfig` object.
    #   @return [Types::UserPhoneConfig]
    #
    # @!attribute [rw] directory_user_id
    #   The directory Id for the user account in the existing directory used
    #   for identity management.
    #   @return [String]
    #
    # @!attribute [rw] security_profile_ids
    #   The identifier(s) for the security profile assigned to the user.
    #   @return [Array<String>]
    #
    # @!attribute [rw] routing_profile_id
    #   The identifier of the routing profile assigned to the user.
    #   @return [String]
    #
    # @!attribute [rw] hierarchy_group_id
    #   The identifier for the hierarchy group assigned to the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/User AWS API Documentation
    #
    class User < Struct.new(
      :id,
      :arn,
      :username,
      :identity_info,
      :phone_config,
      :directory_user_id,
      :security_profile_ids,
      :routing_profile_id,
      :hierarchy_group_id)
      include Aws::Structure
    end

    # A `UserIdentityInfo` object that contains information about the
    # user's identity, including email address, first name, and last name.
    #
    # @note When making an API call, you may pass UserIdentityInfo
    #   data as a hash:
    #
    #       {
    #         first_name: "AgentFirstName",
    #         last_name: "AgentLastName",
    #         email: "Email",
    #       }
    #
    # @!attribute [rw] first_name
    #   The first name used in the user account. This is required if you are
    #   using Amazon Connect or SAML for identity management.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name used in the user account. This is required if you are
    #   using Amazon Connect or SAML for identity management.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address added to the user account. If you are using SAML
    #   for identity management and include this parameter, an
    #   `InvalidRequestException` is returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UserIdentityInfo AWS API Documentation
    #
    class UserIdentityInfo < Struct.new(
      :first_name,
      :last_name,
      :email)
      include Aws::Structure
    end

    # A `UserPhoneConfig` object that contains information about the user
    # phone configuration settings.
    #
    # @note When making an API call, you may pass UserPhoneConfig
    #   data as a hash:
    #
    #       {
    #         phone_type: "SOFT_PHONE", # required, accepts SOFT_PHONE, DESK_PHONE
    #         auto_accept: false,
    #         after_contact_work_time_limit: 1,
    #         desk_phone_number: "PhoneNumber",
    #       }
    #
    # @!attribute [rw] phone_type
    #   The phone type selected for the user, either Soft phone or Desk
    #   phone.
    #   @return [String]
    #
    # @!attribute [rw] auto_accept
    #   The Auto accept setting for the user, Yes or No.
    #   @return [Boolean]
    #
    # @!attribute [rw] after_contact_work_time_limit
    #   The After Call Work (ACW) timeout setting, in seconds, for the user.
    #   @return [Integer]
    #
    # @!attribute [rw] desk_phone_number
    #   The phone number for the user's desk phone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UserPhoneConfig AWS API Documentation
    #
    class UserPhoneConfig < Struct.new(
      :phone_type,
      :auto_accept,
      :after_contact_work_time_limit,
      :desk_phone_number)
      include Aws::Structure
    end

    # A `UserSummary` object that contains Information about a user,
    # including ARN, Id, and user name.
    #
    # @!attribute [rw] id
    #   The identifier for the user account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN for the user account.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The Amazon Connect user name for the user account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UserSummary AWS API Documentation
    #
    class UserSummary < Struct.new(
      :id,
      :arn,
      :username)
      include Aws::Structure
    end

  end
end
