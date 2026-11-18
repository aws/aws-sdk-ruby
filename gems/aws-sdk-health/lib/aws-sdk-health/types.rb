# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Health
  module Types

    # An entity representing an affected account, including its account ID
    # and associated tags.
    #
    # @!attribute [rw] account_id
    #   The 12-digit Amazon Web Services account numbers that contains the
    #   affected entities.
    #   @return [String]
    #
    # @!attribute [rw] account_tags
    #   A map of tag key-value pairs attached to the affected account.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/AccountEntity AWS API Documentation
    #
    class AccountEntity < Struct.new(
      :account_id,
      :account_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of entities in an account that are impacted by a specific
    # event aggregated by the entity status codes.
    #
    # @!attribute [rw] account_id
    #   The 12-digit Amazon Web Services account numbers that contains the
    #   affected entities.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of entities that match the filter criteria for the
    #   specified events.
    #   @return [Integer]
    #
    # @!attribute [rw] statuses
    #   The number of affected entities aggregated by the entity status
    #   codes.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/AccountEntityAggregate AWS API Documentation
    #
    class AccountEntityAggregate < Struct.new(
      :account_id,
      :count,
      :statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag key-value pair associated with a resource in an account.
    #
    # @!attribute [rw] key
    #   The tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of tag (resource tag or account tag).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/AccountTag AWS API Documentation
    #
    class AccountTag < Struct.new(
      :key,
      :value,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for narrowing down affected accounts in an organization
    # event.
    #
    # @!attribute [rw] event_arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tag keys to lists of tag values. A tag matches when its key
    #   is in the map and its value is one of the values listed for that
    #   key. Matching is case sensitive, and the filter matches when at
    #   least one key in the map matches.
    #
    #   An account is returned when its own tags, or the tags of one of its
    #   affected resources, match.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/AffectedAccountFilter AWS API Documentation
    #
    class AffectedAccountFilter < Struct.new(
      :event_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an entity that is affected by a Health event.
    #
    # @!attribute [rw] entity_arn
    #   The unique identifier for the entity. Format:
    #   `arn:aws:health:entity-region:aws-account:entity/entity-id `.
    #   Example:
    #   `arn:aws:health:us-east-1:111222333444:entity/AVh5GGT7ul1arKr1sE1K`
    #   @return [String]
    #
    # @!attribute [rw] event_arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #   @return [String]
    #
    # @!attribute [rw] entity_value
    #   The ID of the affected entity.
    #   @return [String]
    #
    # @!attribute [rw] entity_url
    #   The URL of the affected entity.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The 12-digit Amazon Web Services account number that contains the
    #   affected entity.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The most recent time that the entity was updated.
    #   @return [Time]
    #
    # @!attribute [rw] status_code
    #   The most recent status of the entity affected by the event. The
    #   possible values are `IMPAIRED`, `UNIMPAIRED`, `UNKNOWN`, `PENDING`,
    #   and `RESOLVED`.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   A map of resource tag key-value pairs attached to the affected
    #   entity.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] account_tags
    #   A map of account tag key-value pairs for the account that owns the
    #   affected entity. This field is returned only by
    #   DescribeAffectedEntitiesForOrganization and is not populated by
    #   DescribeAffectedEntities.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] entity_metadata
    #   Additional metadata about the affected entity.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/AffectedEntity AWS API Documentation
    #
    class AffectedEntity < Struct.new(
      :entity_arn,
      :event_arn,
      :entity_value,
      :entity_url,
      :aws_account_id,
      :last_updated_time,
      :status_code,
      :resource_tags,
      :account_tags,
      :entity_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # [EnableHealthServiceAccessForOrganization][1] is already in progress.
    # Wait for the action to complete before trying again. To get the
    # current status, use the
    # [DescribeHealthServiceStatusForOrganization][2] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html
    # [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeHealthServiceStatusForOrganization.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tag_keys
    #   The list of tag keys to configure for Health event tracking across
    #   the organization.
    #   @return [Array<Types::TagKeyForOrganization>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/ConfigureTagsForOrganizationRequest AWS API Documentation
    #
    class ConfigureTagsForOrganizationRequest < Struct.new(
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_tag_keys
    #   The list of tag keys that were successfully configured for the
    #   organization, with the current status of each tag key.
    #   @return [Array<Types::OrganizationTagKey>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/ConfigureTagsForOrganizationResponse AWS API Documentation
    #
    class ConfigureTagsForOrganizationResponse < Struct.new(
      :configured_tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tag_keys
    #   The list of resource tag keys to configure for Health event
    #   tracking.
    #   @return [Array<Types::ConfigureTagsTagKey>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/ConfigureTagsRequest AWS API Documentation
    #
    class ConfigureTagsRequest < Struct.new(
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configured_tag_keys
    #   The list of resource tag keys that were successfully configured.
    #   @return [Array<Types::ResourceTagKey>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/ConfigureTagsResponse AWS API Documentation
    #
    class ConfigureTagsResponse < Struct.new(
      :configured_tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource tag key to configure for Health event tracking.
    #
    # @!attribute [rw] key
    #   The tag key name.
    #   @return [String]
    #
    # @!attribute [rw] enabled_for_event_bridge
    #   Whether this tag key is enabled for EventBridge notifications.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/ConfigureTagsTagKey AWS API Documentation
    #
    class ConfigureTagsTagKey < Struct.new(
      :key,
      :enabled_for_event_bridge)
      SENSITIVE = []
      include Aws::Structure
    end

    # A range of dates and times that is used by the [EventFilter][1] and
    # [EntityFilter][2] objects. If `from` is set and `to` is set: match
    # items where the timestamp (`startTime`, `endTime`, or
    # `lastUpdatedTime`) is between `from` and `to` inclusive. If `from` is
    # set and `to` is not set: match items where the timestamp value is
    # equal to or after `from`. If `from` is not set and `to` is set: match
    # items where the timestamp value is equal to or before `to`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_EventFilter.html
    # [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_EntityFilter.html
    #
    # @!attribute [rw] from
    #   The starting date and time of a time range.
    #   @return [Time]
    #
    # @!attribute [rw] to
    #   The ending date and time of a time range.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DateTimeRange AWS API Documentation
    #
    class DateTimeRange < Struct.new(
      :from,
      :to)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   Values to narrow the results returned.
    #   @return [Types::AffectedAccountFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeAffectedAccountsForOrganizationRequest AWS API Documentation
    #
    class DescribeAffectedAccountsForOrganizationRequest < Struct.new(
      :event_arn,
      :next_token,
      :max_results,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] affected_accounts
    #   A JSON set of elements of the affected accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] affected_account_entities
    #   The list of affected account entities, including account IDs and
    #   their associated tags.
    #   @return [Array<Types::AccountEntity>]
    #
    # @!attribute [rw] event_scope_code
    #   This parameter specifies if the Health event is a public Amazon Web
    #   Services service event or an account-specific event.
    #
    #   * If the `eventScopeCode` value is `PUBLIC`, then the
    #     `affectedAccounts` value is always empty.
    #
    #   * If the `eventScopeCode` value is `ACCOUNT_SPECIFIC`, then the
    #     `affectedAccounts` value lists the affected Amazon Web Services
    #     accounts in your organization. For example, if an event affects a
    #     service such as Amazon Elastic Compute Cloud and you have Amazon
    #     Web Services accounts that use that service, those account IDs
    #     appear in the response.
    #
    #   * If the `eventScopeCode` value is `NONE`, then the `eventArn` that
    #     you specified in the request is invalid or doesn't exist.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeAffectedAccountsForOrganizationResponse AWS API Documentation
    #
    class DescribeAffectedAccountsForOrganizationResponse < Struct.new(
      :affected_accounts,
      :affected_account_entities,
      :event_scope_code,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_entity_filters
    #   A JSON set of elements including the `awsAccountId` and the
    #   `eventArn`.
    #   @return [Array<Types::EventAccountFilter>]
    #
    # @!attribute [rw] locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in one batch, between 1 and
    #   100, inclusive.
    #   @return [Integer]
    #
    # @!attribute [rw] organization_entity_account_filters
    #   A JSON set of elements including the `awsAccountId`, `eventArn` and
    #   a set of `statusCodes`.
    #   @return [Array<Types::EntityAccountFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeAffectedEntitiesForOrganizationRequest AWS API Documentation
    #
    class DescribeAffectedEntitiesForOrganizationRequest < Struct.new(
      :organization_entity_filters,
      :locale,
      :next_token,
      :max_results,
      :organization_entity_account_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   A JSON set of elements including the `awsAccountId` and its
    #   `entityArn`, `entityValue` and its `entityArn`, `lastUpdatedTime`,
    #   and `statusCode`.
    #   @return [Array<Types::AffectedEntity>]
    #
    # @!attribute [rw] failed_set
    #   A JSON set of elements of the failed response, including the
    #   `awsAccountId`, `errorMessage`, `errorName`, and `eventArn`.
    #   @return [Array<Types::OrganizationAffectedEntitiesErrorItem>]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeAffectedEntitiesForOrganizationResponse AWS API Documentation
    #
    class DescribeAffectedEntitiesForOrganizationResponse < Struct.new(
      :entities,
      :failed_set,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Values to narrow the results returned. At least one event ARN is
    #   required.
    #   @return [Types::EntityFilter]
    #
    # @!attribute [rw] locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in one batch, between 1 and
    #   100, inclusive.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeAffectedEntitiesRequest AWS API Documentation
    #
    class DescribeAffectedEntitiesRequest < Struct.new(
      :filter,
      :locale,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   The entities that match the filter criteria.
    #   @return [Array<Types::AffectedEntity>]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeAffectedEntitiesResponse AWS API Documentation
    #
    class DescribeAffectedEntitiesResponse < Struct.new(
      :entities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_arns
    #   A list of event ARNs (unique identifiers). For example:
    #   `"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456",
    #   "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"`
    #   @return [Array<String>]
    #
    # @!attribute [rw] aws_account_ids
    #   A list of 12-digit Amazon Web Services account numbers that contains
    #   the affected entities.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filter
    #   Values to narrow the results returned.
    #   @return [Types::OrganizationEntityAggregateFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEntityAggregatesForOrganizationRequest AWS API Documentation
    #
    class DescribeEntityAggregatesForOrganizationRequest < Struct.new(
      :event_arns,
      :aws_account_ids,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_entity_aggregates
    #   The list of entity aggregates for each of the specified accounts
    #   that are affected by each of the specified events.
    #   @return [Array<Types::OrganizationEntityAggregate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEntityAggregatesForOrganizationResponse AWS API Documentation
    #
    class DescribeEntityAggregatesForOrganizationResponse < Struct.new(
      :organization_entity_aggregates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_arns
    #   A list of event ARNs (unique identifiers). For example:
    #   `"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456",
    #   "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"`
    #   @return [Array<String>]
    #
    # @!attribute [rw] filter
    #   Values to narrow the results returned.
    #   @return [Types::EntityAggregateFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEntityAggregatesRequest AWS API Documentation
    #
    class DescribeEntityAggregatesRequest < Struct.new(
      :event_arns,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity_aggregates
    #   The number of entities that are affected by each of the specified
    #   events.
    #   @return [Array<Types::EntityAggregate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEntityAggregatesResponse AWS API Documentation
    #
    class DescribeEntityAggregatesResponse < Struct.new(
      :entity_aggregates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Values to narrow the results returned.
    #   @return [Types::EventFilter]
    #
    # @!attribute [rw] aggregate_field
    #   The only currently supported value is `eventTypeCategory`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventAggregatesRequest AWS API Documentation
    #
    class DescribeEventAggregatesRequest < Struct.new(
      :filter,
      :aggregate_field,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_aggregates
    #   The number of events in each category that meet the optional filter
    #   criteria.
    #   @return [Array<Types::EventAggregate>]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventAggregatesResponse AWS API Documentation
    #
    class DescribeEventAggregatesResponse < Struct.new(
      :event_aggregates,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_event_detail_filters
    #   A set of JSON elements that includes the `awsAccountId` and the
    #   `eventArn`.
    #   @return [Array<Types::EventAccountFilter>]
    #
    # @!attribute [rw] locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventDetailsForOrganizationRequest AWS API Documentation
    #
    class DescribeEventDetailsForOrganizationRequest < Struct.new(
      :organization_event_detail_filters,
      :locale)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] successful_set
    #   Information about the events that could be retrieved.
    #   @return [Array<Types::OrganizationEventDetails>]
    #
    # @!attribute [rw] failed_set
    #   Error messages for any events that could not be retrieved.
    #   @return [Array<Types::OrganizationEventDetailsErrorItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventDetailsForOrganizationResponse AWS API Documentation
    #
    class DescribeEventDetailsForOrganizationResponse < Struct.new(
      :successful_set,
      :failed_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_arns
    #   A list of event ARNs (unique identifiers). For example:
    #   `"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456",
    #   "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"`
    #   @return [Array<String>]
    #
    # @!attribute [rw] locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventDetailsRequest AWS API Documentation
    #
    class DescribeEventDetailsRequest < Struct.new(
      :event_arns,
      :locale)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] successful_set
    #   Information about the events that could be retrieved.
    #   @return [Array<Types::EventDetails>]
    #
    # @!attribute [rw] failed_set
    #   Error messages for any events that could not be retrieved.
    #   @return [Array<Types::EventDetailsErrorItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventDetailsResponse AWS API Documentation
    #
    class DescribeEventDetailsResponse < Struct.new(
      :successful_set,
      :failed_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Values to narrow the results returned.
    #   @return [Types::EventTypeFilter]
    #
    # @!attribute [rw] locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #
    #   <note markdown="1"> If you don't specify the `maxResults` parameter, this operation
    #   returns a maximum of 30 items by default.
    #
    #    </note>
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventTypesRequest AWS API Documentation
    #
    class DescribeEventTypesRequest < Struct.new(
      :filter,
      :locale,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_types
    #   A list of event types that match the filter criteria. Event types
    #   have a category (`issue`, `accountNotification`, or
    #   `scheduledChange`), a service (for example, `EC2`, `RDS`,
    #   `DATAPIPELINE`, `BILLING`), and a code (in the format
    #   `AWS_SERVICE_DESCRIPTION `; for example,
    #   `AWS_EC2_SYSTEM_MAINTENANCE_EVENT`).
    #   @return [Array<Types::EventType>]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventTypesResponse AWS API Documentation
    #
    class DescribeEventTypesResponse < Struct.new(
      :event_types,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Values to narrow the results returned.
    #   @return [Types::OrganizationEventFilter]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in one batch, between 1 and
    #   100, inclusive.
    #   @return [Integer]
    #
    # @!attribute [rw] locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventsForOrganizationRequest AWS API Documentation
    #
    class DescribeEventsForOrganizationRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      :locale)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   The events that match the specified filter criteria.
    #   @return [Array<Types::OrganizationEvent>]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventsForOrganizationResponse AWS API Documentation
    #
    class DescribeEventsForOrganizationResponse < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Values to narrow the results returned.
    #   @return [Types::EventFilter]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in one batch, between 1 and
    #   100, inclusive.
    #   @return [Integer]
    #
    # @!attribute [rw] locale
    #   The locale (language) to return information in. English (en) is the
    #   default and the only supported value at this time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventsRequest AWS API Documentation
    #
    class DescribeEventsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      :locale)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   The events that match the specified filter criteria.
    #   @return [Array<Types::Event>]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeEventsResponse AWS API Documentation
    #
    class DescribeEventsResponse < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] health_service_access_status_for_organization
    #   Information about the status of enabling or disabling the Health
    #   organizational view feature in your organization.
    #
    #   Valid values are `ENABLED | DISABLED | PENDING`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeHealthServiceStatusForOrganizationResponse AWS API Documentation
    #
    class DescribeHealthServiceStatusForOrganizationResponse < Struct.new(
      :health_service_access_status_for_organization)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Values to narrow the results returned.
    #   @return [Types::ServiceLifecycleFilter]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeServiceLifecycleRequest AWS API Documentation
    #
    class DescribeServiceLifecycleRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_lifecycles
    #   The list of service lifecycle entries matching the filter criteria.
    #   @return [Array<Types::ServiceLifecycle>]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeServiceLifecycleResponse AWS API Documentation
    #
    class DescribeServiceLifecycleResponse < Struct.new(
      :service_lifecycles,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] keys
    #   The list of configured tag keys for the organization and their
    #   status.
    #   @return [Array<Types::OrganizationTagKey>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeTagKeysForOrganizationResponse AWS API Documentation
    #
    class DescribeTagKeysForOrganizationResponse < Struct.new(
      :keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] keys
    #   The list of configured resource tag keys and their status.
    #   @return [Array<Types::ResourceTagKey>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeTagKeysResponse AWS API Documentation
    #
    class DescribeTagKeysResponse < Struct.new(
      :keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for narrowing down the tags returned by
    # DescribeTagsForOrganization.
    #
    # @!attribute [rw] tag_types
    #   The types of tags to include in the results.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeTagsForOrganizationFilter AWS API Documentation
    #
    class DescribeTagsForOrganizationFilter < Struct.new(
      :tag_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Values to narrow the results returned.
    #   @return [Types::DescribeTagsForOrganizationFilter]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeTagsForOrganizationRequest AWS API Documentation
    #
    class DescribeTagsForOrganizationRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags associated with Health events across the
    #   organization.
    #   @return [Array<Types::OrganizationTag>]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeTagsForOrganizationResponse AWS API Documentation
    #
    class DescribeTagsForOrganizationResponse < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current onboarding status of the tags feature for the
    #   organization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeTagsOnboardingStatusForOrganizationResponse AWS API Documentation
    #
    class DescribeTagsOnboardingStatusForOrganizationResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current onboarding status of the tags feature for the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeTagsOnboardingStatusResponse AWS API Documentation
    #
    class DescribeTagsOnboardingStatusResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in one batch, between 10 and
    #   100, inclusive.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeTagsRequest AWS API Documentation
    #
    class DescribeTagsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of resource tags associated with Health events.
    #   @return [Array<Types::AccountTag>]
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/DescribeTagsResponse AWS API Documentation
    #
    class DescribeTagsResponse < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON set of elements including the `awsAccountId`, `eventArn` and a
    # set of `statusCodes`.
    #
    # @!attribute [rw] event_arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The 12-digit Amazon Web Services account numbers that contains the
    #   affected entities.
    #   @return [String]
    #
    # @!attribute [rw] status_codes
    #   A list of entity status codes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A map of tag keys to lists of tag values. A tag matches when its key
    #   is in the map and its value is one of the values listed for that
    #   key. Matching is case sensitive, and the filter matches when at
    #   least one key in the map matches.
    #
    #   An entity is returned when the tags of the resource, or of the
    #   account it belongs to, match. When you specify several filters in
    #   `organizationEntityAccountFilters`, the tags must be identical in
    #   every filter.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EntityAccountFilter AWS API Documentation
    #
    class EntityAccountFilter < Struct.new(
      :event_arn,
      :aws_account_id,
      :status_codes,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of entities that are affected by one or more events.
    # Returned by the [DescribeEntityAggregates][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEntityAggregates.html
    #
    # @!attribute [rw] event_arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of entities that match the criteria for the specified
    #   events.
    #   @return [Integer]
    #
    # @!attribute [rw] statuses
    #   The number of affected entities aggregated by the entity status
    #   codes.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EntityAggregate AWS API Documentation
    #
    class EntityAggregate < Struct.new(
      :event_arn,
      :count,
      :statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for narrowing down the entity aggregates returned by
    # DescribeEntityAggregates.
    #
    # @!attribute [rw] tags
    #   A map of tag keys to lists of tag values. A tag matches when its key
    #   is in the map and its value is one of the values listed for that
    #   key. Matching is case sensitive, and the filter matches when at
    #   least one key in the map matches.
    #
    #   Only entities whose tags match are included in the aggregates.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EntityAggregateFilter AWS API Documentation
    #
    class EntityAggregateFilter < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The values to use to filter results from the
    # [DescribeAffectedEntities][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html
    #
    # @!attribute [rw] event_arns
    #   A list of event ARNs (unique identifiers). For example:
    #   `"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456",
    #   "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"`
    #   @return [Array<String>]
    #
    # @!attribute [rw] entity_arns
    #   A list of entity ARNs (unique identifiers).
    #   @return [Array<String>]
    #
    # @!attribute [rw] entity_values
    #   A list of IDs for affected entities.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_updated_times
    #   A list of the most recent dates and times that the entity was
    #   updated.
    #   @return [Array<Types::DateTimeRange>]
    #
    # @!attribute [rw] tags
    #   A map of tag keys to lists of tag values. A tag matches when its key
    #   is in the map and its value is one of the values listed for that
    #   key. The filter matches when at least one key in the map matches.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] status_codes
    #   A list of entity status codes (`IMPAIRED`, `UNIMPAIRED`, or
    #   `UNKNOWN`).
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EntityFilter AWS API Documentation
    #
    class EntityFilter < Struct.new(
      :event_arns,
      :entity_arns,
      :entity_values,
      :last_updated_times,
      :tags,
      :status_codes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an Health event.
    #
    # Health events can be public or account-specific:
    #
    # * *Public events* might be service events that are not specific to an
    #   Amazon Web Services account. For example, if there is an issue with
    #   an Amazon Web Services Region, Health provides information about the
    #   event, even if you don't use services or resources in that Region.
    #
    # * *Account-specific* events are specific to either your Amazon Web
    #   Services account or an account in your organization. For example, if
    #   there's an issue with Amazon Elastic Compute Cloud in a Region that
    #   you use, Health provides information about the event and the
    #   affected resources in the account.
    #
    # You can determine if an event is public or account-specific by using
    # the `eventScopeCode` parameter. For more information, see
    # [eventScopeCode][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html#AWSHealth-Type-Event-eventScopeCode
    #
    # @!attribute [rw] arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The Amazon Web Services service that is affected by the event. For
    #   example, `EC2`, `RDS`.
    #   @return [String]
    #
    # @!attribute [rw] event_type_code
    #   The unique identifier for the event type. The format is
    #   `AWS_SERVICE_DESCRIPTION `; for example,
    #   `AWS_EC2_SYSTEM_MAINTENANCE_EVENT`.
    #   @return [String]
    #
    # @!attribute [rw] event_type_category
    #   A list of event type category codes. Possible values are `issue`,
    #   `accountNotification`, or `scheduledChange`. Currently, the
    #   `investigation` value isn't supported at this time.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region name of the event.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Amazon Web Services Availability Zone of the event. For example,
    #   us-east-1a.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time that the event began.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time that the event ended.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The most recent date and time that the event was updated.
    #   @return [Time]
    #
    # @!attribute [rw] status_code
    #   The most recent status of the event. Possible values are `open`,
    #   `closed`, and `upcoming`.
    #   @return [String]
    #
    # @!attribute [rw] event_scope_code
    #   This parameter specifies if the Health event is a public Amazon Web
    #   Services service event or an account-specific event.
    #
    #   * If the `eventScopeCode` value is `PUBLIC`, then the
    #     `affectedAccounts` value is always empty.
    #
    #   * If the `eventScopeCode` value is `ACCOUNT_SPECIFIC`, then the
    #     `affectedAccounts` value lists the affected Amazon Web Services
    #     accounts in your organization. For example, if an event affects a
    #     service such as Amazon Elastic Compute Cloud and you have Amazon
    #     Web Services accounts that use that service, those account IDs
    #     appear in the response.
    #
    #   * If the `eventScopeCode` value is `NONE`, then the `eventArn` that
    #     you specified in the request is invalid or doesn't exist.
    #   @return [String]
    #
    # @!attribute [rw] actionability
    #   The actionability classification of the event. Possible values are
    #   `ACTION_REQUIRED`, `ACTION_MAY_BE_REQUIRED` and `INFORMATIONAL`.
    #   Events with `ACTION_REQUIRED` actionability require customer action
    #   to resolve or mitigate the event. Events with
    #   `ACTION_MAY_BE_REQUIRED` actionability indicates that the current
    #   status is unknown or conditional and inspection is needed to
    #   determine if action is required. Events with `INFORMATIONAL`
    #   actionability are provided for awareness and do not require
    #   immediate action.
    #   @return [String]
    #
    # @!attribute [rw] personas
    #   A list of persona classifications that indicate the target audience
    #   for the event. Possible values are `OPERATIONS`, `SECURITY`, and
    #   `BILLING`. Events can be associated with multiple personas to
    #   indicate relevance to different teams or roles within an
    #   organization.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/Event AWS API Documentation
    #
    class Event < Struct.new(
      :arn,
      :service,
      :event_type_code,
      :event_type_category,
      :region,
      :availability_zone,
      :start_time,
      :end_time,
      :last_updated_time,
      :status_code,
      :event_scope_code,
      :actionability,
      :personas)
      SENSITIVE = []
      include Aws::Structure
    end

    # The values used to filter results from the
    # [DescribeEventDetailsForOrganization][1] and
    # [DescribeAffectedEntitiesForOrganization][2] operations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html
    # [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html
    #
    # @!attribute [rw] event_arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The 12-digit Amazon Web Services account numbers that contains the
    #   affected entities.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EventAccountFilter AWS API Documentation
    #
    class EventAccountFilter < Struct.new(
      :event_arn,
      :aws_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of events of each issue type. Returned by the
    # [DescribeEventAggregates][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventAggregates.html
    #
    # @!attribute [rw] aggregate_value
    #   The issue type for the associated count.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of events of the associated issue type.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EventAggregate AWS API Documentation
    #
    class EventAggregate < Struct.new(
      :aggregate_value,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The detailed description of the event. Included in the information
    # returned by the [DescribeEventDetails][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html
    #
    # @!attribute [rw] latest_description
    #   The most recent description of the event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EventDescription AWS API Documentation
    #
    class EventDescription < Struct.new(
      :latest_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about an event. A combination of an [Event][1]
    # object, an [EventDescription][2] object, and additional metadata about
    # the event. Returned by the [DescribeEventDetails][3] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html
    # [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_EventDescription.html
    # [3]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html
    #
    # @!attribute [rw] event
    #   Summary information about the event.
    #   @return [Types::Event]
    #
    # @!attribute [rw] event_description
    #   The most recent description of the event.
    #   @return [Types::EventDescription]
    #
    # @!attribute [rw] event_metadata
    #   Additional metadata about the event.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EventDetails AWS API Documentation
    #
    class EventDetails < Struct.new(
      :event,
      :event_description,
      :event_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error information returned when a [DescribeEventDetails][1] operation
    # can't find a specified event.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html
    #
    # @!attribute [rw] event_arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #   @return [String]
    #
    # @!attribute [rw] error_name
    #   The name of the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message that describes the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EventDetailsErrorItem AWS API Documentation
    #
    class EventDetailsErrorItem < Struct.new(
      :event_arn,
      :error_name,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The values to use to filter results from the [DescribeEvents][1] and
    # [DescribeEventAggregates][2] operations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEvents.html
    # [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventAggregates.html
    #
    # @!attribute [rw] actionabilities
    #   A list of actionability values to filter events. Use this to filter
    #   events based on whether they require action (`ACTION_REQUIRED`), may
    #   require action (`ACTION_MAY_BE_REQUIRED`) or are informational
    #   (`INFORMATIONAL`).
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_arns
    #   A list of event ARNs (unique identifiers). For example:
    #   `"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456",
    #   "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"`
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_type_codes
    #   A list of unique identifiers for event types. For example,
    #   `"AWS_EC2_SYSTEM_MAINTENANCE_EVENT","AWS_RDS_MAINTENANCE_SCHEDULED".`
    #   @return [Array<String>]
    #
    # @!attribute [rw] services
    #   The Amazon Web Services services associated with the event. For
    #   example, `EC2`, `RDS`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] regions
    #   A list of Amazon Web Services Regions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zones
    #   A list of Amazon Web Services Availability Zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_times
    #   A list of dates and times that the event began.
    #   @return [Array<Types::DateTimeRange>]
    #
    # @!attribute [rw] end_times
    #   A list of dates and times that the event ended.
    #   @return [Array<Types::DateTimeRange>]
    #
    # @!attribute [rw] last_updated_times
    #   A list of dates and times that the event was last updated.
    #   @return [Array<Types::DateTimeRange>]
    #
    # @!attribute [rw] entity_arns
    #   A list of entity ARNs (unique identifiers).
    #   @return [Array<String>]
    #
    # @!attribute [rw] entity_values
    #   A list of entity identifiers, such as EC2 instance IDs
    #   (`i-34ab692e`) or EBS volumes (`vol-426ab23e`).
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_type_categories
    #   A list of event type category codes. Possible values are `issue`,
    #   `accountNotification`, or `scheduledChange`. Currently, the
    #   `investigation` value isn't supported at this time.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A map of tag keys to lists of tag values. A tag matches when its key
    #   is in the map and its value is one of the values listed for that
    #   key. The filter matches when at least one key in the map matches.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] event_status_codes
    #   A list of event status codes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] personas
    #   A list of persona values to filter events. Use this to filter events
    #   based on their target audience: `OPERATIONS`, `SECURITY`, or
    #   `BILLING`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EventFilter AWS API Documentation
    #
    class EventFilter < Struct.new(
      :actionabilities,
      :event_arns,
      :event_type_codes,
      :services,
      :regions,
      :availability_zones,
      :start_times,
      :end_times,
      :last_updated_times,
      :entity_arns,
      :entity_values,
      :event_type_categories,
      :tags,
      :event_status_codes,
      :personas)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the metadata about a type of event that is reported by
    # Health. The `EventType` shows the category, service, and the event
    # type code of the event. For example, an `issue` might be the category,
    # `EC2` the service, and `AWS_EC2_SYSTEM_MAINTENANCE_EVENT` the event
    # type code.
    #
    # You can use the [DescribeEventTypes][1] API operation to return this
    # information about an event.
    #
    # You can also use the Amazon CloudWatch Events console to create a rule
    # so that you can get notified or take action when Health delivers a
    # specific event to your Amazon Web Services account. For more
    # information, see [Monitor for Health events with Amazon CloudWatch
    # Events][2] in the *Health User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventTypes.html
    # [2]: https://docs.aws.amazon.com/health/latest/ug/cloudwatch-events-health.html
    #
    # @!attribute [rw] service
    #   The Amazon Web Services service that is affected by the event. For
    #   example, `EC2`, `RDS`.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The unique identifier for the event type. The format is
    #   `AWS_SERVICE_DESCRIPTION `; for example,
    #   `AWS_EC2_SYSTEM_MAINTENANCE_EVENT`.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   A list of event type category codes. Possible values are `issue`,
    #   `accountNotification`, or `scheduledChange`. Currently, the
    #   `investigation` value isn't supported at this time.
    #   @return [String]
    #
    # @!attribute [rw] actionability
    #   The actionability classification of the event. Possible values are
    #   `ACTION_REQUIRED`, `ACTION_MAY_BE_REQUIRED` and `INFORMATIONAL`.
    #   Events with `ACTION_REQUIRED` actionability require customer action
    #   to resolve or mitigate the event. Events with
    #   `ACTION_MAY_BE_REQUIRED` actionability indicates that the current
    #   status is unknown or conditional and inspection is needed to
    #   determine if action is required. Events with `INFORMATIONAL`
    #   actionability are provided for awareness and do not require
    #   immediate action.
    #   @return [String]
    #
    # @!attribute [rw] personas
    #   A list of persona classifications that indicate the target audience
    #   for the event. Possible values are `OPERATIONS`, `SECURITY`, and
    #   `BILLING`. Events can be associated with multiple personas to
    #   indicate relevance to different teams or roles within an
    #   organization.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EventType AWS API Documentation
    #
    class EventType < Struct.new(
      :service,
      :code,
      :category,
      :actionability,
      :personas)
      SENSITIVE = []
      include Aws::Structure
    end

    # The values to use to filter results from the [DescribeEventTypes][1]
    # operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventTypes.html
    #
    # @!attribute [rw] event_type_codes
    #   A list of event type codes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] services
    #   The Amazon Web Services services associated with the event. For
    #   example, `EC2`, `RDS`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_type_categories
    #   A list of event type category codes. Possible values are `issue`,
    #   `accountNotification`, or `scheduledChange`. Currently, the
    #   `investigation` value isn't supported at this time.
    #   @return [Array<String>]
    #
    # @!attribute [rw] actionabilities
    #   A list of actionability values to filter event types. Possible
    #   values are `ACTION_REQUIRED`, `ACTION_MAY_BE_REQUIRED` and
    #   `INFORMATIONAL`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] personas
    #   A list of persona classifications to filter event types. Possible
    #   values are `OPERATIONS`, `SECURITY`, and `BILLING`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/EventTypeFilter AWS API Documentation
    #
    class EventTypeFilter < Struct.new(
      :event_type_codes,
      :services,
      :event_type_categories,
      :actionabilities,
      :personas)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified pagination token (`nextToken`) is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/InvalidPaginationToken AWS API Documentation
    #
    class InvalidPaginationToken < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A lifecycle event for an Amazon Web Services service version, such as
    # end-of-support or end-of-life.
    #
    # @!attribute [rw] lifecycle_event_type
    #   The type of lifecycle event (for example, end-of-support,
    #   end-of-life).
    #   @return [String]
    #
    # @!attribute [rw] date
    #   The date of the lifecycle event.
    #   @return [Time]
    #
    # @!attribute [rw] regions
    #   The Amazon Web Services Regions affected by this lifecycle event.
    #   @return [Array<String>]
    #
    # @!attribute [rw] impact_risks
    #   The potential impact risks associated with this lifecycle event.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   A description of the lifecycle event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/LifecycleEvent AWS API Documentation
    #
    class LifecycleEvent < Struct.new(
      :lifecycle_event_type,
      :date,
      :regions,
      :impact_risks,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error information returned when a
    # [DescribeAffectedEntitiesForOrganization][1] operation can't find or
    # process a specific entity.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html
    #
    # @!attribute [rw] aws_account_id
    #   The 12-digit Amazon Web Services account numbers that contains the
    #   affected entities.
    #   @return [String]
    #
    # @!attribute [rw] event_arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #   @return [String]
    #
    # @!attribute [rw] error_name
    #   The name of the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message that describes the error. Follow the error message and
    #   retry your request.
    #
    #   For example, the `InvalidAccountInputError` error message appears if
    #   you call the `DescribeAffectedEntitiesForOrganization` operation and
    #   specify the `AccountSpecific` value for the `EventScopeCode`
    #   parameter, but don't specify an Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/OrganizationAffectedEntitiesErrorItem AWS API Documentation
    #
    class OrganizationAffectedEntitiesErrorItem < Struct.new(
      :aws_account_id,
      :event_arn,
      :error_name,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The aggregate results of entities affected by the specified event in
    # your organization. The results are aggregated by the entity status
    # codes for the specified set of accountsIDs.
    #
    # @!attribute [rw] event_arn
    #   A list of event ARNs (unique identifiers). For example:
    #   `"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456",
    #   "arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101"`
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of entities for the organization that match the filter
    #   criteria for the specified events.
    #   @return [Integer]
    #
    # @!attribute [rw] statuses
    #   The number of affected entities aggregated by the entitiy status
    #   codes.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] accounts
    #   A list of entity aggregates for each of the specified accounts in
    #   your organization that are affected by a specific event. If there
    #   are no `awsAccountIds` provided in the request, this field will be
    #   empty in the response.
    #   @return [Array<Types::AccountEntityAggregate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/OrganizationEntityAggregate AWS API Documentation
    #
    class OrganizationEntityAggregate < Struct.new(
      :event_arn,
      :count,
      :statuses,
      :accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for narrowing down the entity aggregates returned by
    # DescribeEntityAggregatesForOrganization.
    #
    # @!attribute [rw] tags
    #   A map of tag keys to lists of tag values. A tag matches when its key
    #   is in the map and its value is one of the values listed for that
    #   key. Matching is case sensitive, and the filter matches when at
    #   least one key in the map matches.
    #
    #   Only entities whose tags match are included in the aggregates.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/OrganizationEntityAggregateFilter AWS API Documentation
    #
    class OrganizationEntityAggregateFilter < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an event, returned by the
    # [DescribeEventsForOrganization][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventsForOrganization.html
    #
    # @!attribute [rw] arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The Amazon Web Services service that is affected by the event, such
    #   as EC2 and RDS.
    #   @return [String]
    #
    # @!attribute [rw] event_type_code
    #   The unique identifier for the event type. The format is
    #   `AWS_SERVICE_DESCRIPTION`. For example,
    #   `AWS_EC2_SYSTEM_MAINTENANCE_EVENT`.
    #   @return [String]
    #
    # @!attribute [rw] event_type_category
    #   A list of event type category codes. Possible values are `issue`,
    #   `accountNotification`, or `scheduledChange`. Currently, the
    #   `investigation` value isn't supported at this time.
    #   @return [String]
    #
    # @!attribute [rw] event_scope_code
    #   This parameter specifies if the Health event is a public Amazon Web
    #   Services service event or an account-specific event.
    #
    #   * If the `eventScopeCode` value is `PUBLIC`, then the
    #     `affectedAccounts` value is always empty.
    #
    #   * If the `eventScopeCode` value is `ACCOUNT_SPECIFIC`, then the
    #     `affectedAccounts` value lists the affected Amazon Web Services
    #     accounts in your organization. For example, if an event affects a
    #     service such as Amazon Elastic Compute Cloud and you have Amazon
    #     Web Services accounts that use that service, those account IDs
    #     appear in the response.
    #
    #   * If the `eventScopeCode` value is `NONE`, then the `eventArn` that
    #     you specified in the request is invalid or doesn't exist.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region name of the event.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time that the event began.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time that the event ended.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The most recent date and time that the event was updated.
    #   @return [Time]
    #
    # @!attribute [rw] status_code
    #   The most recent status of the event. Possible values are `open`,
    #   `closed`, and `upcoming`.
    #   @return [String]
    #
    # @!attribute [rw] actionability
    #   The actionability classification of the event. Possible values are
    #   `ACTION_REQUIRED`, `ACTION_MAY_BE_REQUIRED` and `INFORMATIONAL`.
    #   Events with `ACTION_REQUIRED` actionability require customer action
    #   to resolve or mitigate the event. Events with
    #   `ACTION_MAY_BE_REQUIRED` actionability indicates that the current
    #   status is unknown or conditional and inspection is needed to
    #   determine if action is required. Events with `INFORMATIONAL`
    #   actionability are provided for awareness and do not require
    #   immediate action.
    #   @return [String]
    #
    # @!attribute [rw] personas
    #   A list of persona classifications that indicate the target audience
    #   for the event. Possible values are `OPERATIONS`, `SECURITY`, and
    #   `BILLING`. Events can be associated with multiple personas to
    #   indicate relevance to different teams or roles within an
    #   organization.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/OrganizationEvent AWS API Documentation
    #
    class OrganizationEvent < Struct.new(
      :arn,
      :service,
      :event_type_code,
      :event_type_category,
      :event_scope_code,
      :region,
      :start_time,
      :end_time,
      :last_updated_time,
      :status_code,
      :actionability,
      :personas)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about an event. A combination of an [Event][1]
    # object, an [EventDescription][2] object, and additional metadata about
    # the event. Returned by the [DescribeEventDetailsForOrganization][3]
    # operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html
    # [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_EventDescription.html
    # [3]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html
    #
    # @!attribute [rw] aws_account_id
    #   The 12-digit Amazon Web Services account numbers that contains the
    #   affected entities.
    #   @return [String]
    #
    # @!attribute [rw] event
    #   Summary information about an Health event.
    #
    #   Health events can be public or account-specific:
    #
    #   * *Public events* might be service events that are not specific to
    #     an Amazon Web Services account. For example, if there is an issue
    #     with an Amazon Web Services Region, Health provides information
    #     about the event, even if you don't use services or resources in
    #     that Region.
    #
    #   * *Account-specific* events are specific to either your Amazon Web
    #     Services account or an account in your organization. For example,
    #     if there's an issue with Amazon Elastic Compute Cloud in a Region
    #     that you use, Health provides information about the event and the
    #     affected resources in the account.
    #
    #   You can determine if an event is public or account-specific by using
    #   the `eventScopeCode` parameter. For more information, see
    #   [eventScopeCode][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html#AWSHealth-Type-Event-eventScopeCode
    #   @return [Types::Event]
    #
    # @!attribute [rw] event_description
    #   The detailed description of the event. Included in the information
    #   returned by the [DescribeEventDetails][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html
    #   @return [Types::EventDescription]
    #
    # @!attribute [rw] event_metadata
    #   Additional metadata about the event.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/OrganizationEventDetails AWS API Documentation
    #
    class OrganizationEventDetails < Struct.new(
      :aws_account_id,
      :event,
      :event_description,
      :event_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error information returned when a
    # [DescribeEventDetailsForOrganization][1] operation can't find a
    # specified event.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html
    #
    # @!attribute [rw] aws_account_id
    #   Error information returned when a
    #   [DescribeEventDetailsForOrganization][1] operation can't find a
    #   specified event.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html
    #   @return [String]
    #
    # @!attribute [rw] event_arn
    #   The unique identifier for the event. The event ARN has the
    #   `arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID
    #   ` format.
    #
    #   For example, an event ARN might look like the following:
    #
    #   `arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456`
    #   @return [String]
    #
    # @!attribute [rw] error_name
    #   The name of the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message that describes the error.
    #
    #   If you call the `DescribeEventDetailsForOrganization` operation and
    #   receive one of the following errors, follow the recommendations in
    #   the message:
    #
    #   * We couldn't find a public event that matches your request. To
    #     find an event that is account specific, you must enter an Amazon
    #     Web Services account ID in the request.
    #
    #   * We couldn't find an account specific event for the specified
    #     Amazon Web Services account. To find an event that is public, you
    #     must enter a null value for the Amazon Web Services account ID in
    #     the request.
    #
    #   * Your Amazon Web Services account doesn't include the Amazon Web
    #     Services Support plan required to use the Health API. You must
    #     have either a Amazon Web Services Business Support+, Amazon Web
    #     Services Enterprise Support, or Amazon Web Services Unified
    #     Operations plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/OrganizationEventDetailsErrorItem AWS API Documentation
    #
    class OrganizationEventDetailsErrorItem < Struct.new(
      :aws_account_id,
      :event_arn,
      :error_name,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The values to filter results from the
    # [DescribeEventsForOrganization][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventsForOrganization.html
    #
    # @!attribute [rw] actionabilities
    #   A list of actionability values to filter events. Use this to filter
    #   events based on whether they require action (`ACTION_REQUIRED`), may
    #   require action (`ACTION_MAY_BE_REQUIRED`) or are informational
    #   (`INFORMATIONAL`).
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_type_codes
    #   A list of unique identifiers for event types. For example,
    #   `"AWS_EC2_SYSTEM_MAINTENANCE_EVENT","AWS_RDS_MAINTENANCE_SCHEDULED".`
    #   @return [Array<String>]
    #
    # @!attribute [rw] aws_account_ids
    #   A list of 12-digit Amazon Web Services account numbers that contains
    #   the affected entities.
    #   @return [Array<String>]
    #
    # @!attribute [rw] services
    #   The Amazon Web Services services associated with the event. For
    #   example, `EC2`, `RDS`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] regions
    #   A list of Amazon Web Services Regions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   A range of dates and times that is used by the [EventFilter][1] and
    #   [EntityFilter][2] objects. If `from` is set and `to` is set: match
    #   items where the timestamp (`startTime`, `endTime`, or
    #   `lastUpdatedTime`) is between `from` and `to` inclusive. If `from`
    #   is set and `to` is not set: match items where the timestamp value is
    #   equal to or after `from`. If `from` is not set and `to` is set:
    #   match items where the timestamp value is equal to or before `to`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_EventFilter.html
    #   [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_EntityFilter.html
    #   @return [Types::DateTimeRange]
    #
    # @!attribute [rw] end_time
    #   A range of dates and times that is used by the [EventFilter][1] and
    #   [EntityFilter][2] objects. If `from` is set and `to` is set: match
    #   items where the timestamp (`startTime`, `endTime`, or
    #   `lastUpdatedTime`) is between `from` and `to` inclusive. If `from`
    #   is set and `to` is not set: match items where the timestamp value is
    #   equal to or after `from`. If `from` is not set and `to` is set:
    #   match items where the timestamp value is equal to or before `to`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_EventFilter.html
    #   [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_EntityFilter.html
    #   @return [Types::DateTimeRange]
    #
    # @!attribute [rw] last_updated_time
    #   A range of dates and times that is used by the [EventFilter][1] and
    #   [EntityFilter][2] objects. If `from` is set and `to` is set: match
    #   items where the timestamp (`startTime`, `endTime`, or
    #   `lastUpdatedTime`) is between `from` and `to` inclusive. If `from`
    #   is set and `to` is not set: match items where the timestamp value is
    #   equal to or after `from`. If `from` is not set and `to` is set:
    #   match items where the timestamp value is equal to or before `to`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/health/latest/APIReference/API_EventFilter.html
    #   [2]: https://docs.aws.amazon.com/health/latest/APIReference/API_EntityFilter.html
    #   @return [Types::DateTimeRange]
    #
    # @!attribute [rw] entity_arns
    #   A list of entity ARNs (unique identifiers).
    #   @return [Array<String>]
    #
    # @!attribute [rw] entity_values
    #   A list of entity identifiers, such as EC2 instance IDs (i-34ab692e)
    #   or EBS volumes (vol-426ab23e).
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_type_categories
    #   A list of event type category codes. Possible values are `issue`,
    #   `accountNotification`, or `scheduledChange`. Currently, the
    #   `investigation` value isn't supported at this time.
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_status_codes
    #   A list of event status codes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] personas
    #   A list of persona values to filter events. Use this to filter events
    #   based on their target audience: `OPERATIONS`, `SECURITY`, or
    #   `BILLING`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A map of tag keys to lists of tag values. A tag matches when its key
    #   is in the map and its value is one of the values listed for that
    #   key. Matching is case sensitive, and the filter matches when at
    #   least one key in the map matches.
    #
    #   An event is returned when one of its affected accounts, or one of
    #   the entities of those accounts, has tags that match.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/OrganizationEventFilter AWS API Documentation
    #
    class OrganizationEventFilter < Struct.new(
      :actionabilities,
      :event_type_codes,
      :aws_account_ids,
      :services,
      :regions,
      :start_time,
      :end_time,
      :last_updated_time,
      :entity_arns,
      :entity_values,
      :event_type_categories,
      :event_status_codes,
      :personas,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag key-value pair associated with a resource across an
    # organization.
    #
    # @!attribute [rw] key
    #   The tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of organization tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/OrganizationTag AWS API Documentation
    #
    class OrganizationTag < Struct.new(
      :key,
      :value,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag key configured for Health event tracking across an organization.
    #
    # @!attribute [rw] key
    #   The tag key name.
    #   @return [String]
    #
    # @!attribute [rw] enabled_for_event_bridge
    #   Whether this tag key is enabled for EventBridge notifications.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The current status of the tag key configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/OrganizationTagKey AWS API Documentation
    #
    class OrganizationTagKey < Struct.new(
      :key,
      :enabled_for_event_bridge,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource tag key configured for Health event tracking.
    #
    # @!attribute [rw] key
    #   The tag key name.
    #   @return [String]
    #
    # @!attribute [rw] enabled_for_event_bridge
    #   Whether this tag key is enabled for EventBridge notifications.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The current status of the tag key configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/ResourceTagKey AWS API Documentation
    #
    class ResourceTagKey < Struct.new(
      :key,
      :enabled_for_event_bridge,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains lifecycle information for an Amazon Web Services service
    # version, including lifecycle events and version recommendations.
    #
    # @!attribute [rw] service
    #   The name of the Amazon Web Services service.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the service.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A human-readable title for the lifecycle entry.
    #   @return [String]
    #
    # @!attribute [rw] recommended_version
    #   The recommended version to upgrade to.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_events
    #   The list of lifecycle events for this service version.
    #   @return [Array<Types::LifecycleEvent>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/ServiceLifecycle AWS API Documentation
    #
    class ServiceLifecycle < Struct.new(
      :service,
      :version,
      :title,
      :recommended_version,
      :lifecycle_events)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for narrowing down service lifecycle results.
    #
    # @!attribute [rw] service
    #   The Amazon Web Services service name to filter by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/ServiceLifecycleFilter AWS API Documentation
    #
    class ServiceLifecycleFilter < Struct.new(
      :service)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag key configured for an organization.
    #
    # @!attribute [rw] key
    #   The tag key name.
    #   @return [String]
    #
    # @!attribute [rw] enabled_for_event_bridge
    #   Whether this tag key is enabled for EventBridge notifications.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/TagKeyForOrganization AWS API Documentation
    #
    class TagKeyForOrganization < Struct.new(
      :key,
      :enabled_for_event_bridge)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified locale is not supported.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/health-2016-08-04/UnsupportedLocale AWS API Documentation
    #
    class UnsupportedLocale < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

