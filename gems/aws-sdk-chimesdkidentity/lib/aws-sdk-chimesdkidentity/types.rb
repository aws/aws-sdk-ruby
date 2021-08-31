# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ChimeSDKIdentity
  module Types

    # The details of an `AppInstance`, an instance of an Amazon Chime SDK
    # messaging application.
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the messaging instance.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of an `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which an `AppInstance` was created. In epoch
    #   milliseconds.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The time an `AppInstance` was last updated. In epoch milliseconds.
    #   @return [Time]
    #
    # @!attribute [rw] metadata
    #   The metadata of an `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/AppInstance AWS API Documentation
    #
    class AppInstance < Struct.new(
      :app_instance_arn,
      :name,
      :created_timestamp,
      :last_updated_timestamp,
      :metadata)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # The details of an `AppInstanceAdmin`.
    #
    # @!attribute [rw] admin
    #   The `AppInstanceAdmin` data.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance` for which the user is an administrator.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which an administrator was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/AppInstanceAdmin AWS API Documentation
    #
    class AppInstanceAdmin < Struct.new(
      :admin,
      :app_instance_arn,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of the details of an `AppInstanceAdmin`.
    #
    # @!attribute [rw] admin
    #   The details of the `AppInstanceAdmin`.
    #   @return [Types::Identity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/AppInstanceAdminSummary AWS API Documentation
    #
    class AppInstanceAdminSummary < Struct.new(
      :admin)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the data-retention settings for an `AppInstance`.
    #
    # @note When making an API call, you may pass AppInstanceRetentionSettings
    #   data as a hash:
    #
    #       {
    #         channel_retention_settings: {
    #           retention_days: 1,
    #         },
    #       }
    #
    # @!attribute [rw] channel_retention_settings
    #   The length of time in days to retain the messages in a channel.
    #   @return [Types::ChannelRetentionSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/AppInstanceRetentionSettings AWS API Documentation
    #
    class AppInstanceRetentionSettings < Struct.new(
      :channel_retention_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of the data for an `AppInstance`.
    #
    # @!attribute [rw] app_instance_arn
    #   The `AppInstance` ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/AppInstanceSummary AWS API Documentation
    #
    class AppInstanceSummary < Struct.new(
      :app_instance_arn,
      :name,
      :metadata)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # The details of an `AppInstanceUser`.
    #
    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the `AppInstanceUser` was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The time at which the `AppInstanceUser` was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/AppInstanceUser AWS API Documentation
    #
    class AppInstanceUser < Struct.new(
      :app_instance_user_arn,
      :name,
      :metadata,
      :created_timestamp,
      :last_updated_timestamp)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # Summary of the details of an `AppInstanceUser`.
    #
    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of an `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the `AppInstanceUser`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/AppInstanceUserSummary AWS API Documentation
    #
    class AppInstanceUserSummary < Struct.new(
      :app_instance_user_arn,
      :name,
      :metadata)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # The input parameters don't match the service's restrictions.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the retention settings for a channel.
    #
    # @note When making an API call, you may pass ChannelRetentionSettings
    #   data as a hash:
    #
    #       {
    #         retention_days: 1,
    #       }
    #
    # @!attribute [rw] retention_days
    #   The time in days to retain the messages in a channel.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ChannelRetentionSettings AWS API Documentation
    #
    class ChannelRetentionSettings < Struct.new(
      :retention_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be processed because of conflict in the current
    # state of the resource.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAppInstanceAdminRequest
    #   data as a hash:
    #
    #       {
    #         app_instance_admin_arn: "ChimeArn", # required
    #         app_instance_arn: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] app_instance_admin_arn
    #   The ARN of the administrator of the current `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/CreateAppInstanceAdminRequest AWS API Documentation
    #
    class CreateAppInstanceAdminRequest < Struct.new(
      :app_instance_admin_arn,
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_admin
    #   The name and ARN of the admin for the `AppInstance`.
    #   @return [Types::Identity]
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the of the admin for the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/CreateAppInstanceAdminResponse AWS API Documentation
    #
    class CreateAppInstanceAdminResponse < Struct.new(
      :app_instance_admin,
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAppInstanceRequest
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyResourceName", # required
    #         metadata: "Metadata",
    #         client_request_token: "ClientRequestToken", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the `AppInstance`. Limited to a 1KB string in UTF-8.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The `ClientRequestToken` of the `AppInstance`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to the `AppInstanceUser`.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/CreateAppInstanceRequest AWS API Documentation
    #
    class CreateAppInstanceRequest < Struct.new(
      :name,
      :metadata,
      :client_request_token,
      :tags)
      SENSITIVE = [:name, :metadata, :client_request_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The Amazon Resource Number (ARN) of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/CreateAppInstanceResponse AWS API Documentation
    #
    class CreateAppInstanceResponse < Struct.new(
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAppInstanceUserRequest
    #   data as a hash:
    #
    #       {
    #         app_instance_arn: "ChimeArn", # required
    #         app_instance_user_id: "UserId", # required
    #         name: "UserName", # required
    #         metadata: "Metadata",
    #         client_request_token: "ClientRequestToken", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance` request.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_user_id
    #   The user ID of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The user's name.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The request's metadata. Limited to a 1KB string in UTF-8.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The token assigned to the user requesting an `AppInstance`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to the `AppInstanceUser`.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/CreateAppInstanceUserRequest AWS API Documentation
    #
    class CreateAppInstanceUserRequest < Struct.new(
      :app_instance_arn,
      :app_instance_user_id,
      :name,
      :metadata,
      :client_request_token,
      :tags)
      SENSITIVE = [:app_instance_user_id, :name, :metadata, :client_request_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The user's ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/CreateAppInstanceUserResponse AWS API Documentation
    #
    class CreateAppInstanceUserResponse < Struct.new(
      :app_instance_user_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAppInstanceAdminRequest
    #   data as a hash:
    #
    #       {
    #         app_instance_admin_arn: "ChimeArn", # required
    #         app_instance_arn: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] app_instance_admin_arn
    #   The ARN of the `AppInstance`'s administrator.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DeleteAppInstanceAdminRequest AWS API Documentation
    #
    class DeleteAppInstanceAdminRequest < Struct.new(
      :app_instance_admin_arn,
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAppInstanceRequest
    #   data as a hash:
    #
    #       {
    #         app_instance_arn: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DeleteAppInstanceRequest AWS API Documentation
    #
    class DeleteAppInstanceRequest < Struct.new(
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAppInstanceUserRequest
    #   data as a hash:
    #
    #       {
    #         app_instance_user_arn: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the user request being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DeleteAppInstanceUserRequest AWS API Documentation
    #
    class DeleteAppInstanceUserRequest < Struct.new(
      :app_instance_user_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAppInstanceAdminRequest
    #   data as a hash:
    #
    #       {
    #         app_instance_admin_arn: "ChimeArn", # required
    #         app_instance_arn: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] app_instance_admin_arn
    #   The ARN of the `AppInstanceAdmin`.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DescribeAppInstanceAdminRequest AWS API Documentation
    #
    class DescribeAppInstanceAdminRequest < Struct.new(
      :app_instance_admin_arn,
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_admin
    #   The ARN and name of the `AppInstanceUser`, the ARN of the
    #   `AppInstance`, and the created and last-updated timestamps. All
    #   timestamps use epoch milliseconds.
    #   @return [Types::AppInstanceAdmin]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DescribeAppInstanceAdminResponse AWS API Documentation
    #
    class DescribeAppInstanceAdminResponse < Struct.new(
      :app_instance_admin)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAppInstanceRequest
    #   data as a hash:
    #
    #       {
    #         app_instance_arn: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DescribeAppInstanceRequest AWS API Documentation
    #
    class DescribeAppInstanceRequest < Struct.new(
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance
    #   The ARN, metadata, created and last-updated timestamps, and the name
    #   of the `AppInstance`. All timestamps use epoch milliseconds.
    #   @return [Types::AppInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DescribeAppInstanceResponse AWS API Documentation
    #
    class DescribeAppInstanceResponse < Struct.new(
      :app_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAppInstanceUserRequest
    #   data as a hash:
    #
    #       {
    #         app_instance_user_arn: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DescribeAppInstanceUserRequest AWS API Documentation
    #
    class DescribeAppInstanceUserRequest < Struct.new(
      :app_instance_user_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user
    #   The name of the `AppInstanceUser`.
    #   @return [Types::AppInstanceUser]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/DescribeAppInstanceUserResponse AWS API Documentation
    #
    class DescribeAppInstanceUserResponse < Struct.new(
      :app_instance_user)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client is permanently forbidden from making the request.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAppInstanceRetentionSettingsRequest
    #   data as a hash:
    #
    #       {
    #         app_instance_arn: "ChimeArn", # required
    #       }
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/GetAppInstanceRetentionSettingsRequest AWS API Documentation
    #
    class GetAppInstanceRetentionSettingsRequest < Struct.new(
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_retention_settings
    #   The retention settings for the `AppInstance`.
    #   @return [Types::AppInstanceRetentionSettings]
    #
    # @!attribute [rw] initiate_deletion_timestamp
    #   The timestamp representing the time at which the specified items are
    #   retained, in Epoch Seconds.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/GetAppInstanceRetentionSettingsResponse AWS API Documentation
    #
    class GetAppInstanceRetentionSettingsResponse < Struct.new(
      :app_instance_retention_settings,
      :initiate_deletion_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a user.
    #
    # @!attribute [rw] arn
    #   The ARN in an Identity.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name in an Identity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/Identity AWS API Documentation
    #
    class Identity < Struct.new(
      :arn,
      :name)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAppInstanceAdminsRequest
    #   data as a hash:
    #
    #       {
    #         app_instance_arn: "ChimeArn", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of administrators that you want to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token returned from previous API requests until the number of
    #   administrators is reached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListAppInstanceAdminsRequest AWS API Documentation
    #
    class ListAppInstanceAdminsRequest < Struct.new(
      :app_instance_arn,
      :max_results,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_admins
    #   The information for each administrator.
    #   @return [Array<Types::AppInstanceAdminSummary>]
    #
    # @!attribute [rw] next_token
    #   The token returned from previous API requests until the number of
    #   administrators is reached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListAppInstanceAdminsResponse AWS API Documentation
    #
    class ListAppInstanceAdminsResponse < Struct.new(
      :app_instance_arn,
      :app_instance_admins,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAppInstanceUsersRequest
    #   data as a hash:
    #
    #       {
    #         app_instance_arn: "ChimeArn", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of requests that you want returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested users are
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListAppInstanceUsersRequest AWS API Documentation
    #
    class ListAppInstanceUsersRequest < Struct.new(
      :app_instance_arn,
      :max_results,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_users
    #   The information for each requested `AppInstanceUser`.
    #   @return [Array<Types::AppInstanceUserSummary>]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API calls until all requested users are
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListAppInstanceUsersResponse AWS API Documentation
    #
    class ListAppInstanceUsersResponse < Struct.new(
      :app_instance_arn,
      :app_instance_users,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAppInstancesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of `AppInstance`s that you want to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API requests until you reach the
    #   maximum number of `AppInstances`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListAppInstancesRequest AWS API Documentation
    #
    class ListAppInstancesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] app_instances
    #   The information for each `AppInstance`.
    #   @return [Array<Types::AppInstanceSummary>]
    #
    # @!attribute [rw] next_token
    #   The token passed by previous API requests until the maximum number
    #   of `AppInstance`s is reached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ListAppInstancesResponse AWS API Documentation
    #
    class ListAppInstancesResponse < Struct.new(
      :app_instances,
      :next_token)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutAppInstanceRetentionSettingsRequest
    #   data as a hash:
    #
    #       {
    #         app_instance_arn: "ChimeArn", # required
    #         app_instance_retention_settings: { # required
    #           channel_retention_settings: {
    #             retention_days: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] app_instance_retention_settings
    #   The time in days to retain data. Data type: number.
    #   @return [Types::AppInstanceRetentionSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/PutAppInstanceRetentionSettingsRequest AWS API Documentation
    #
    class PutAppInstanceRetentionSettingsRequest < Struct.new(
      :app_instance_arn,
      :app_instance_retention_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_retention_settings
    #   The time in days to retain data. Data type: number.
    #   @return [Types::AppInstanceRetentionSettings]
    #
    # @!attribute [rw] initiate_deletion_timestamp
    #   The time at which the API deletes data.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/PutAppInstanceRetentionSettingsResponse AWS API Documentation
    #
    class PutAppInstanceRetentionSettingsResponse < Struct.new(
      :app_instance_retention_settings,
      :initiate_deletion_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds the resource limit.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ResourceLimitExceededException AWS API Documentation
    #
    class ResourceLimitExceededException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service encountered an unexpected error.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ServiceFailureException AWS API Documentation
    #
    class ServiceFailureException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is currently unavailable.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a tag applied to a resource.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The key of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = [:key, :value]
      include Aws::Structure
    end

    # The client exceeded its request rate limit.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/ThrottledClientException AWS API Documentation
    #
    class ThrottledClientException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client is not currently authorized to make the request.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/UnauthorizedClientException AWS API Documentation
    #
    class UnauthorizedClientException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAppInstanceRequest
    #   data as a hash:
    #
    #       {
    #         app_instance_arn: "ChimeArn", # required
    #         name: "NonEmptyResourceName", # required
    #         metadata: "Metadata", # required
    #       }
    #
    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name that you want to change.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata that you want to change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/UpdateAppInstanceRequest AWS API Documentation
    #
    class UpdateAppInstanceRequest < Struct.new(
      :app_instance_arn,
      :name,
      :metadata)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_arn
    #   The ARN of the `AppInstance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/UpdateAppInstanceResponse AWS API Documentation
    #
    class UpdateAppInstanceResponse < Struct.new(
      :app_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAppInstanceUserRequest
    #   data as a hash:
    #
    #       {
    #         app_instance_user_arn: "ChimeArn", # required
    #         name: "UserName", # required
    #         metadata: "Metadata", # required
    #       }
    #
    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `AppInstanceUser`.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of the `AppInstanceUser`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/UpdateAppInstanceUserRequest AWS API Documentation
    #
    class UpdateAppInstanceUserRequest < Struct.new(
      :app_instance_user_arn,
      :name,
      :metadata)
      SENSITIVE = [:name, :metadata]
      include Aws::Structure
    end

    # @!attribute [rw] app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-identity-2021-04-20/UpdateAppInstanceUserResponse AWS API Documentation
    #
    class UpdateAppInstanceUserResponse < Struct.new(
      :app_instance_user_arn)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
