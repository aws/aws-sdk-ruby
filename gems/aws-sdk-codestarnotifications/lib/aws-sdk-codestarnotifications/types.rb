# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeStarNotifications
  module Types

    # AWS CodeStar Notifications can't create the notification rule because
    # you do not have sufficient permissions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS CodeStar Notifications can't complete the request because the
    # resource is being modified by another process. Wait a few minutes and
    # try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Some or all of the configuration is incomplete, missing, or not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/ConfigurationException AWS API Documentation
    #
    class ConfigurationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateNotificationRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "NotificationRuleName", # required
    #         event_type_ids: ["EventTypeId"], # required
    #         resource: "NotificationRuleResource", # required
    #         targets: [ # required
    #           {
    #             target_type: "TargetType",
    #             target_address: "TargetAddress",
    #           },
    #         ],
    #         detail_type: "BASIC", # required, accepts BASIC, FULL
    #         client_request_token: "ClientRequestToken",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         status: "ENABLED", # accepts ENABLED, DISABLED
    #       }
    #
    # @!attribute [rw] name
    #   The name for the notification rule. Notifictaion rule names must be
    #   unique in your AWS account.
    #   @return [String]
    #
    # @!attribute [rw] event_type_ids
    #   A list of event types associated with this notification rule. For a
    #   list of allowed events, see EventTypeSummary.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource
    #   The Amazon Resource Name (ARN) of the resource to associate with the
    #   notification rule. Supported resources include pipelines in AWS
    #   CodePipeline, repositories in AWS CodeCommit, and build projects in
    #   AWS CodeBuild.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   A list of Amazon Resource Names (ARNs) of SNS topics to associate
    #   with the notification rule.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] detail_type
    #   The level of detail to include in the notifications for this
    #   resource. BASIC will include only the contents of the event as it
    #   would appear in AWS CloudWatch. FULL will include any supplemental
    #   information provided by AWS CodeStar Notifications and/or the
    #   service for the resource for which the notification is created.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique, client-generated idempotency token that, when provided in
    #   a request, ensures the request cannot be repeated with a changed
    #   parameter. If a request with the same parameters is received and a
    #   token is included, the request returns information about the initial
    #   request that used that token.
    #
    #   <note markdown="1"> The AWS SDKs prepopulate client request tokens. If you are using an
    #   AWS SDK, an idempotency token is created for you.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to apply to this notification rule. Key names cannot
    #   start with "aws".
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The status of the notification rule. The default value is ENABLED.
    #   If the status is set to DISABLED, notifications aren't sent for the
    #   notification rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/CreateNotificationRuleRequest AWS API Documentation
    #
    class CreateNotificationRuleRequest < Struct.new(
      :name,
      :event_type_ids,
      :resource,
      :targets,
      :detail_type,
      :client_request_token,
      :tags,
      :status)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the notification rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/CreateNotificationRuleResult AWS API Documentation
    #
    class CreateNotificationRuleResult < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteNotificationRuleRequest
    #   data as a hash:
    #
    #       {
    #         arn: "NotificationRuleArn", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the notification rule you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/DeleteNotificationRuleRequest AWS API Documentation
    #
    class DeleteNotificationRuleRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the deleted notification rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/DeleteNotificationRuleResult AWS API Documentation
    #
    class DeleteNotificationRuleResult < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteTargetRequest
    #   data as a hash:
    #
    #       {
    #         target_address: "TargetAddress", # required
    #         force_unsubscribe_all: false,
    #       }
    #
    # @!attribute [rw] target_address
    #   The Amazon Resource Name (ARN) of the SNS topic to delete.
    #   @return [String]
    #
    # @!attribute [rw] force_unsubscribe_all
    #   A Boolean value that can be used to delete all associations with
    #   this SNS topic. The default value is FALSE. If set to TRUE, all
    #   associations between that target and every notification rule in your
    #   AWS account are deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/DeleteTargetRequest AWS API Documentation
    #
    class DeleteTargetRequest < Struct.new(
      :target_address,
      :force_unsubscribe_all)
      SENSITIVE = [:target_address]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/DeleteTargetResult AWS API Documentation
    #
    class DeleteTargetResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeNotificationRuleRequest
    #   data as a hash:
    #
    #       {
    #         arn: "NotificationRuleArn", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the notification rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/DescribeNotificationRuleRequest AWS API Documentation
    #
    class DescribeNotificationRuleRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the notification rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the notification rule.
    #   @return [String]
    #
    # @!attribute [rw] event_types
    #   A list of the event types associated with the notification rule.
    #   @return [Array<Types::EventTypeSummary>]
    #
    # @!attribute [rw] resource
    #   The Amazon Resource Name (ARN) of the resource associated with the
    #   notification rule.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   A list of the SNS topics associated with the notification rule.
    #   @return [Array<Types::TargetSummary>]
    #
    # @!attribute [rw] detail_type
    #   The level of detail included in the notifications for this resource.
    #   BASIC will include only the contents of the event as it would appear
    #   in AWS CloudWatch. FULL will include any supplemental information
    #   provided by AWS CodeStar Notifications and/or the service for the
    #   resource for which the notification is created.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The name or email alias of the person who created the notification
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the notification rule. Valid statuses are on (sending
    #   notifications) or off (not sending notifications).
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The date and time the notification rule was created, in timestamp
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The date and time the notification rule was most recently updated,
    #   in timestamp format.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags associated with the notification rule.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/DescribeNotificationRuleResult AWS API Documentation
    #
    class DescribeNotificationRuleResult < Struct.new(
      :arn,
      :name,
      :event_types,
      :resource,
      :targets,
      :detail_type,
      :created_by,
      :status,
      :created_timestamp,
      :last_modified_timestamp,
      :tags)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # Returns information about an event that has triggered a notification
    # rule.
    #
    # @!attribute [rw] event_type_id
    #   The system-generated ID of the event.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the service for which the event applies.
    #   @return [String]
    #
    # @!attribute [rw] event_type_name
    #   The name of the event.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type of the event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/EventTypeSummary AWS API Documentation
    #
    class EventTypeSummary < Struct.new(
      :event_type_id,
      :service_name,
      :event_type_name,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value for the enumeration token used in the request to return the
    # next batch of the results is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the AWS CodeStar Notifications limits has been exceeded. Limits
    # apply to accounts, notification rules, notifications, resources, and
    # targets. For more information, see Limits.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a filter to apply to the list of returned event
    # types. You can filter by resource type or service name.
    #
    # @note When making an API call, you may pass ListEventTypesFilter
    #   data as a hash:
    #
    #       {
    #         name: "RESOURCE_TYPE", # required, accepts RESOURCE_TYPE, SERVICE_NAME
    #         value: "ListEventTypesFilterValue", # required
    #       }
    #
    # @!attribute [rw] name
    #   The system-generated name of the filter type you want to filter by.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The name of the resource type (for example, pipeline) or service
    #   name (for example, CodePipeline) that you want to filter by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/ListEventTypesFilter AWS API Documentation
    #
    class ListEventTypesFilter < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEventTypesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "RESOURCE_TYPE", # required, accepts RESOURCE_TYPE, SERVICE_NAME
    #             value: "ListEventTypesFilterValue", # required
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filters
    #   The filters to use to return information by service or resource
    #   type.
    #   @return [Array<Types::ListEventTypesFilter>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   A non-negative integer used to limit the number of returned results.
    #   The default number is 50. The maximum number of results that can be
    #   returned is 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/ListEventTypesRequest AWS API Documentation
    #
    class ListEventTypesRequest < Struct.new(
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_types
    #   Information about each event, including service name, resource type,
    #   event ID, and event name.
    #   @return [Array<Types::EventTypeSummary>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that can be used in a request to return the
    #   next batch of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/ListEventTypesResult AWS API Documentation
    #
    class ListEventTypesResult < Struct.new(
      :event_types,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a filter to apply to the list of returned
    # notification rules. You can filter by event type, owner, resource, or
    # target.
    #
    # @note When making an API call, you may pass ListNotificationRulesFilter
    #   data as a hash:
    #
    #       {
    #         name: "EVENT_TYPE_ID", # required, accepts EVENT_TYPE_ID, CREATED_BY, RESOURCE, TARGET_ADDRESS
    #         value: "ListNotificationRulesFilterValue", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the attribute you want to use to filter the returned
    #   notification rules.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the attribute you want to use to filter the returned
    #   notification rules. For example, if you specify filtering by
    #   *RESOURCE* in Name, you might specify the ARN of a pipeline in AWS
    #   CodePipeline for the value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/ListNotificationRulesFilter AWS API Documentation
    #
    class ListNotificationRulesFilter < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListNotificationRulesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "EVENT_TYPE_ID", # required, accepts EVENT_TYPE_ID, CREATED_BY, RESOURCE, TARGET_ADDRESS
    #             value: "ListNotificationRulesFilterValue", # required
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filters
    #   The filters to use to return information by service or resource
    #   type. For valid values, see ListNotificationRulesFilter.
    #
    #   <note markdown="1"> A filter with the same name can appear more than once when used with
    #   OR statements. Filters with different names should be applied with
    #   AND statements.
    #
    #    </note>
    #   @return [Array<Types::ListNotificationRulesFilter>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   A non-negative integer used to limit the number of returned results.
    #   The maximum number of results that can be returned is 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/ListNotificationRulesRequest AWS API Documentation
    #
    class ListNotificationRulesRequest < Struct.new(
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An enumeration token that can be used in a request to return the
    #   next batch of the results.
    #   @return [String]
    #
    # @!attribute [rw] notification_rules
    #   The list of notification rules for the AWS account, by Amazon
    #   Resource Name (ARN) and ID.
    #   @return [Array<Types::NotificationRuleSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/ListNotificationRulesResult AWS API Documentation
    #
    class ListNotificationRulesResult < Struct.new(
      :next_token,
      :notification_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         arn: "NotificationRuleArn", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the notification rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags associated with the notification rule.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/ListTagsForResourceResult AWS API Documentation
    #
    class ListTagsForResourceResult < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a filter to apply to the list of returned targets.
    # You can filter by target type, address, or status. For example, to
    # filter results to notification rules that have active Amazon SNS
    # topics as targets, you could specify a ListTargetsFilter Name as
    # TargetType and a Value of SNS, and a Name of TARGET\_STATUS and a
    # Value of ACTIVE.
    #
    # @note When making an API call, you may pass ListTargetsFilter
    #   data as a hash:
    #
    #       {
    #         name: "TARGET_TYPE", # required, accepts TARGET_TYPE, TARGET_ADDRESS, TARGET_STATUS
    #         value: "ListTargetsFilterValue", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the attribute you want to use to filter the returned
    #   targets.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the attribute you want to use to filter the returned
    #   targets. For example, if you specify *SNS* for the Target type, you
    #   could specify an Amazon Resource Name (ARN) for a topic as the
    #   value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/ListTargetsFilter AWS API Documentation
    #
    class ListTargetsFilter < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTargetsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "TARGET_TYPE", # required, accepts TARGET_TYPE, TARGET_ADDRESS, TARGET_STATUS
    #             value: "ListTargetsFilterValue", # required
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filters
    #   The filters to use to return information by service or resource
    #   type. Valid filters include target type, target address, and target
    #   status.
    #
    #   <note markdown="1"> A filter with the same name can appear more than once when used with
    #   OR statements. Filters with different names should be applied with
    #   AND statements.
    #
    #    </note>
    #   @return [Array<Types::ListTargetsFilter>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   A non-negative integer used to limit the number of returned results.
    #   The maximum number of results that can be returned is 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/ListTargetsRequest AWS API Documentation
    #
    class ListTargetsRequest < Struct.new(
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] targets
    #   The list of notification rule targets.
    #   @return [Array<Types::TargetSummary>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that can be used in a request to return the
    #   next batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/ListTargetsResult AWS API Documentation
    #
    class ListTargetsResult < Struct.new(
      :targets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a specified notification rule.
    #
    # @!attribute [rw] id
    #   The unique ID of the notification rule.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the notification rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/NotificationRuleSummary AWS API Documentation
    #
    class NotificationRuleSummary < Struct.new(
      :id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource with the same name or ID already exists. Notification rule
    # names must be unique in your AWS account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS CodeStar Notifications can't find a resource that matches the
    # provided ARN.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SubscribeRequest
    #   data as a hash:
    #
    #       {
    #         arn: "NotificationRuleArn", # required
    #         target: { # required
    #           target_type: "TargetType",
    #           target_address: "TargetAddress",
    #         },
    #         client_request_token: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the notification rule for which
    #   you want to create the association.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   Information about the SNS topics associated with a notification
    #   rule.
    #   @return [Types::Target]
    #
    # @!attribute [rw] client_request_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/SubscribeRequest AWS API Documentation
    #
    class SubscribeRequest < Struct.new(
      :arn,
      :target,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the notification rule for which
    #   you have created assocations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/SubscribeResult AWS API Documentation
    #
    class SubscribeResult < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         arn: "NotificationRuleArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the notification rule to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags to associate with the resource. Tag key names
    #   cannot start with "aws".
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/TagResourceResult AWS API Documentation
    #
    class TagResourceResult < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the SNS topics associated with a notification rule.
    #
    # @note When making an API call, you may pass Target
    #   data as a hash:
    #
    #       {
    #         target_type: "TargetType",
    #         target_address: "TargetAddress",
    #       }
    #
    # @!attribute [rw] target_type
    #   The target type. Can be an Amazon SNS topic.
    #   @return [String]
    #
    # @!attribute [rw] target_address
    #   The Amazon Resource Name (ARN) of the SNS topic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/Target AWS API Documentation
    #
    class Target < Struct.new(
      :target_type,
      :target_address)
      SENSITIVE = [:target_address]
      include Aws::Structure
    end

    # Information about the targets specified for a notification rule.
    #
    # @!attribute [rw] target_address
    #   The Amazon Resource Name (ARN) of the SNS topic.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The type of the target (for example, SNS).
    #   @return [String]
    #
    # @!attribute [rw] target_status
    #   The status of the target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/TargetSummary AWS API Documentation
    #
    class TargetSummary < Struct.new(
      :target_address,
      :target_type,
      :target_status)
      SENSITIVE = [:target_address]
      include Aws::Structure
    end

    # @note When making an API call, you may pass UnsubscribeRequest
    #   data as a hash:
    #
    #       {
    #         arn: "NotificationRuleArn", # required
    #         target_address: "TargetAddress", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the notification rule.
    #   @return [String]
    #
    # @!attribute [rw] target_address
    #   The ARN of the SNS topic to unsubscribe from the notification rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/UnsubscribeRequest AWS API Documentation
    #
    class UnsubscribeRequest < Struct.new(
      :arn,
      :target_address)
      SENSITIVE = [:target_address]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the the notification rule from
    #   which you have removed a subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/UnsubscribeResult AWS API Documentation
    #
    class UnsubscribeResult < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         arn: "NotificationRuleArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the notification rule from which
    #   to remove the tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The key names of the tags to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/UntagResourceResult AWS API Documentation
    #
    class UntagResourceResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateNotificationRuleRequest
    #   data as a hash:
    #
    #       {
    #         arn: "NotificationRuleArn", # required
    #         name: "NotificationRuleName",
    #         status: "ENABLED", # accepts ENABLED, DISABLED
    #         event_type_ids: ["EventTypeId"],
    #         targets: [
    #           {
    #             target_type: "TargetType",
    #             target_address: "TargetAddress",
    #           },
    #         ],
    #         detail_type: "BASIC", # accepts BASIC, FULL
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the notification rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the notification rule.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the notification rule. Valid statuses include enabled
    #   (sending notifications) or disabled (not sending notifications).
    #   @return [String]
    #
    # @!attribute [rw] event_type_ids
    #   A list of event types associated with this notification rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] targets
    #   The address and type of the targets to receive notifications from
    #   this notification rule.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] detail_type
    #   The level of detail to include in the notifications for this
    #   resource. BASIC will include only the contents of the event as it
    #   would appear in AWS CloudWatch. FULL will include any supplemental
    #   information provided by AWS CodeStar Notifications and/or the
    #   service for the resource for which the notification is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/UpdateNotificationRuleRequest AWS API Documentation
    #
    class UpdateNotificationRuleRequest < Struct.new(
      :arn,
      :name,
      :status,
      :event_type_ids,
      :targets,
      :detail_type)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/UpdateNotificationRuleResult AWS API Documentation
    #
    class UpdateNotificationRuleResult < Aws::EmptyStructure; end

    # One or more parameter values are not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
